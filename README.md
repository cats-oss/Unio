<p align='center'>
<img src='https://user-images.githubusercontent.com/2082134/54809507-d9a1b580-4cc6-11e9-93cf-2ffd8e1e952c.png' width='200px'>
</p>
<p align='center'>
<strong>Un</strong>idirectional <strong>I</strong>nput <strong>O</strong>utput framework
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
But these can only access `func accept(_:)` (or `func on(_:)`) via KeyPath if Input is wrapped with `Relay`.

```swift
let input: Relay<Input>

input.accept("query", for: \.searchText)
input.onEvent(.next(()), for: \.buttonTap)
```

![](https://user-images.githubusercontent.com/2082134/54809413-8fb8cf80-4cc6-11e9-9dc2-07cd14f5c2d8.jpg)

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
But these can only access `func asObservable()` via KeyPath if Output is wrapped with `Relay`.

```swift
let output: Relay<Output>

output.observable(for: \.repositories)
    .subscribe(onNext: { print($0) })

output.observable(for: \.isEnabled)
    .subscribe(onNext: { print($0) })

output.observable(for: \.error)
    .subscribe(onNext: { print($0) })
```

If a property is BehaviorRelay (or BehaviorSubject), be able to access value via KeyPath.

```swift
output.value(for: \.repositories)

try? output.value(for: \.isEnabled)
```

![](https://user-images.githubusercontent.com/2082134/54809443-a2cb9f80-4cc6-11e9-8d10-dfe2403f798b.jpg)

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
- `dependency.inputObservable(for:)` ... returns a Observable that is property of [Input](#input).
- `dependency.readOnlyReference(from:for:)` ... returns a read only BehaviorRelay (or BehaviorSubject) (that is wrapped by `ReadOnly<T>`) from property of [Output](#output).

Here is a exmaple of implementation.

```swift
extension GitHubSearchViewStream.Logic {

    func bind(from dependency: Dependency<Input, State, Extra>) -> Output {
        let apiStream = dependency.extra.apiStream

        dependency.inputObservable(for: \.searchText)
            .bind(to: apiStream.input.accept(for: \.searchText))
            .disposed(by: disposeBag)

        let repositories = apiStream.output
            .observable(for: \.searchResponse)
            .map { $0.items }

        return Output(repositories: repositories)
    }
}
```

### UnioStream

UnioStream represents ViewModels of MVVM (it can also be used as Models).
It has `input: Relay<Input>` and `output: Relay<Output>`.
It automatically generates `input: Relay<Input>` and `output: Relay<Output>` from instances of [Input](#input), [State](#state), [Extra](#extra) and [Logic](#logic).

```swift
class UnioStream<Logic: LogicType> {

    let input: Relay<Logic.Input>
    let output: Relay<Logic.Output>

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
    var input: Relay<GitHubSearchViewStream.Input> { get }
    var output: Relay<GitHubSearchViewStream.Output> { get }
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

        dependency.inputObservable(for: \.searchText)
            .bind(to: apiStream.input.accept(for: \.searchText))
            .disposed(by: disposeBag)

        let repositories = apiStream.output
            .observable(for: \.searchResponse)
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
            .bind(to: viewStream.input.accept(for: \.searchText))
            .disposed(by: disposeBag)

        viewStream.output.observable(for: \.repositories)
            .bind(to: tableView.rx.items(cellIdentifier: "Cell")) {
                (row, repository, cell) in
                cell.textLabel?.text = repository.fullName
                cell.detailTextLabel?.text = repository.htmlUrl.absoluteString
            }
            .disposed(by: disposeBag)
    }
}
```

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
