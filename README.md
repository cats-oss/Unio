<p align='center'>
<img src='https://user-images.githubusercontent.com/2082134/54809507-d9a1b580-4cc6-11e9-93cf-2ffd8e1e952c.png' width='200px'>
</p>
<p align='center'>
<strong>Un</strong>idirectional <strong>I</strong>nput <strong>O</strong>utput framework
</p>
<p align='center'>
  <a href='https://github.com/Carthage/Carthage'>
    <img src='https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat' alt='Carthage compatible' />
  </a>
  <a href='https://travis-ci.org/cats-oss/Unio'>
    <img src='https://travis-ci.org/cats-oss/Unio.svg?branch=master' alt='Build Status' />
  </a>
  <a href='https://cocoapods.org/pods/Unio'>
    <img src='https://img.shields.io/cocoapods/v/Unio.svg?style=flat' alt='Version' />
  </a>
  <a href='https://cocoapods.org/pods/Unio'>
    <img src='https://img.shields.io/cocoapods/l/Unio.svg?style=flat' alt='License' />
  </a>
  <a href='https://cocoapods.org/pods/Unio'>
    <img src='https://img.shields.io/cocoapods/p/Unio.svg?style=flat' alt='Platform' />
  </a>
</p>

## Introduction

Ordinary ViewModels of MVVM might be implemented like this. There are two inputs which one is a input from outside (`func search(query:)`), another is a input relay for inside (`_search: PublishRelay`). These inputs can be together as one if it is possible to express something that can *only be received inside* and can *only input outside*.

In addition, there are two outputs which one is a observable property ( `repositories: Observable<[Repository]>`), another is a computed property (`repositoriesValue: [Repository]`). These outputs are related an inner state (`_repositories: BehaviorRelay<[Repository]>`). These outputs can be together as one if it is possible to express something that can *only be received outside* and can *only input inside*.

```swift
class SearchViewModel {
    let repositories: Observable<[Repository]>
    let error: Observable<Error>

    var repositoriesValue: [Repository] {
        return _repositories.value
    }

    private let _repositories = BehaviorRelay<[Repository]>(value: [])
    private let _search = PublishRelay<String>()
    private let disposeBag = DisposeBag()

    init() {
        let apiAciton = SearchAPIAction()

        self.repositories = _repositories.asObservable()
        self.error = apiAction.error

        apiAction.response
            .bind(to: _repositories)
            .disposed(by: disposeBag)

        _search
            .subscribe(onNext: { apiAction.execute($0) })
            .disposed(by: disposeBag)
    }

    func search(query: String) {
        _search.accept(query)
    }
}
```

## About Unio

Unio is KeyPath based **Un**idirectional **I**nput / **O**utput framework that works with RxSwift.
It resolves [above issues](#introduction) by using those components.

- [Input](#input)
- [Output](#output)
- [State](#state)
- [Extra](#extra)
- [Logic](#logic)
- [UnioStream](#uniostream)

### Input

The rule of Input is having PublishRelay (or PublishSubject) properties that are defined internal scope.

```swift
struct Input: InputType {
    let searchText = PublishRelay<String?>()
    let buttonTap = PublishSubject<Void>()
}
```

Properties of Input are defined internal scope.
But these can only access `func accept(_:)` (or `AnyObserver`) via KeyPath if Input is wrapped with `InputWrapper`.

```swift
let input: InputWrapper<Input>

input.searchText("query")  // accesses `func accept(_:)`
input.buttonTap.onNext(()) // accesses `AnyObserver`
```

![](https://user-images.githubusercontent.com/2082134/64858916-afbcc080-d663-11e9-8a70-92a9293f7c83.png)

### Output

The rule of Output is having BehaviorRelay (or BehaviorSubject and so on) properties that are defined internal scope.

```swift
struct Output: OutputType {
    let repositories: BehaviorRelay<[GitHub.Repository]>
    let isEnabled: BehaviorSubject<Bool>
    let error: Observable<Error>
}
```

Properties of Output are defined internal scope.
But these can only access `func asObservable()` via KeyPath if Output is wrapped with `OutputWrapper`.

```swift
let output: OutputWrapper<Output>

output.repositories
    .subscribe(onNext: { print($0) })

output.isEnabled
    .subscribe(onNext: { print($0) })

output.error
    .subscribe(onNext: { print($0) })
```

If a property is BehaviorRelay (or BehaviorSubject), be able to access value via KeyPath.

```swift
let p: Property<[GitHub.Repository]> = output.repositories
p.value

let t: ThrowableProperty<Bool> = output.isEnabled
try? t.throwableValue()
```

![](https://user-images.githubusercontent.com/2082134/64858314-f7dae380-d661-11e9-9a79-3ca5c53fd90a.png)

### State

The rule of State is having inner states of [UnioStream](#uniostream).

```swift
struct State: StateType {
    let repositories = BehaviorRelay<[GitHub.Repository]>(value: [])
}
```

### Extra

The rule of Extra is having other dependencies of [UnioStream](#uniostream).

```swift
struct Extra: ExtraType {
    let apiStream: GitHubSearchAPIStream()
}
```

### Logic

The rule of Logic is generating [Output](#output) from Dependency<Input, State, Extra>.
It generates [Output](#output) to call `func bind(from:)`.
`func bind(from:)` is called once when [UnioStream](#uniostream) is initialized.
If you want to use DisposeBags in `func bind(from:)`, define properties of DisposeBag in Logic.

```swift
struct Logic: LogicType {
    typealias Input = GitHubSearchViewStream.Input
    typealias Output = GitHubSearchViewStream.Output
    typealias State = GitHubSearchViewStream.State
    typealias Extra = GitHubSearchViewStream.Extra

    let disposeBag = DisposeBag()

    func bind(from dependency: Dependency<Input, State, Extra>) -> Output
}
```

Connect sequences and generate [Output](#output) in `func bind(from:)` to use below properties and methods.

- `dependency.state`
- `dependency.extra`
- `dependency.inputObservables` ... returns a Observable that is property of [Input](#input).

Here is a exmaple of implementation.

```swift
extension GitHubSearchViewStream.Logic {

    func bind(from dependency: Dependency<Input, State, Extra>) -> Output {
        let apiStream = dependency.extra.apiStream

        dependency.inputObservables.searchText
            .bind(to: apiStream.searchText)
            .disposed(by: disposeBag)

        let repositories = apiStream.output.searchResponse
            .map { $0.items }

        return Output(repositories: repositories)
    }
}
```

### UnioStream

UnioStream represents ViewModels of MVVM (it can also be used as Models).
It has `input: InputWrapper<Input>` and `output: OutputWrapper<Output>`.
It automatically generates `input: InputWrapper<Input>` and `output: OutputWrapper<Output>` from instances of [Input](#input), [State](#state), [Extra](#extra) and [Logic](#logic).

```swift
class UnioStream<Logic: LogicType> {

    let input: InputWrapper<Logic.Input>
    let output: OutputWrapper<Logic.Output>

    init(input: Logic.Input, state: Logic.State, extra: Logic.Extra, logic: Logic)
}
```

Be able to define a subclass of UnioStream like this.

```swift
fianl class GitHubSearchViewStream: UnioStream<GitHubSearchViewStream.Logic> {

    init() {
        super.init(input: Input(), state: State(), extra: Extra(), logic: Logic())
    }
}
```

## Usage

Here is an example.

![](https://user-images.githubusercontent.com/2082134/54809487-bf67d780-4cc6-11e9-83aa-4fa69060702a.gif)

Define GitHubSearchViewStream for searching GitHub repositories.

```swift
protocol GitHubSearchViewStreamType: AnyObject {
    var input: InputWrapper<GitHubSearchViewStream.Input> { get }
    var output: OutputWrapper<GitHubSearchViewStream.Output> { get }
}

final class GitHubSearchViewStream: UnioStream<GitHubSearchViewStream.Logic>, GitHubSearchViewStreamType {

    init() {
        super.init(input: Input(), state: State(), extra: Extra(), logic: Logic())
    }

    typealias State = NoState

    struct Input: InputType {
        let searchText = PublishRelay<String?>()
    }

    struct Output: OutputType {
        let repositories: Observable<[GitHub.Repository]>
    }

    struct Extra: ExtraType {
        let apiStream: GitHubSearchAPIStream()
    }

    struct Logic: LogicType {
        typealias Input = GitHubSearchViewStream.Input
        typealias Output = GitHubSearchViewStream.Output
        typealias State = GitHubSearchViewStream.State
        typealias Extra = GitHubSearchViewStream.Extra

        let disposeBag = DisposeBag()
    }
}

extension GitHubSearchViewStream.Logic {

    func bind(from dependency: Dependency<Input, State, Extra>) -> Output {
        let apiStream = dependency.extra.apiStream

        dependency.inputObservables.searchText
            .bind(to: apiStream.input.searchText)
            .disposed(by: disposeBag)

        let repositories = apiStream.output.searchResponse
            .map { $0.items }

        return Output(repositories: repositories)
    }
}
```

Bind searchBar text to viewStream input. On the other hand, bind viewStream output to tableView data source.

```swift
final class GitHubSearchViewController: UIViewController {

    let searchBar = UISearchBar(frame: .zero)
    let tableView = UITableView(frame: .zero)

    private let viewStream = GitHubSearchViewStream()
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()

        searchBar.rx.text
            .bind(to: viewStream.input.searchText)
            .disposed(by: disposeBag)

        viewStream.output.repositories
            .bind(to: tableView.rx.items(cellIdentifier: "Cell")) {
                (row, repository, cell) in
                cell.textLabel?.text = repository.fullName
                cell.detailTextLabel?.text = repository.htmlUrl.absoluteString
            }
            .disposed(by: disposeBag)
    }
}
```

The documentation which does not use `KeyPath Dynamic Member Lookup` is [here](https://github.com/cats-oss/Unio/tree/0.4.1#about-unio).

#### Migration Guides

- [Unio 0.5.0 Migration Guide](./Documentation/Unio0_5_0MigrationGuide.md)

### Xcode Template

You can use Xcode Templates for Unio. Let's install with `./Tools/install-xcode-template.sh` command!

![](https://user-images.githubusercontent.com/2082134/54809497-cdb5f380-4cc6-11e9-97f1-a75bd4439891.png)

![](https://user-images.githubusercontent.com/2082134/54809365-6f891080-4cc6-11e9-82c9-444b1fdefc07.gif)

## Installation

### Carthage

If you’re using [Carthage](https://github.com/Carthage/Carthage), simply add
Unio to your `Cartfile`:

```ruby
github "cats-oss/Unio"
```

### CocoaPods

Unio is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Unio"
```

## Requirements

- Swift 5 or greater
- iOS 9.0 or greater
- [RxSwift](https://github.com/ReactiveX/RxSwift) 5.0 or greater

## License

Unio is released under the MIT License.
