//___FILEHEADER___

import RxCocoa
import RxSwift
import Unio

protocol ___VARIABLE_productName___ViewStreamType: AnyObject {
    var input: InputWrapper<___VARIABLE_productName___ViewStream.Input> { get }
    var output: OutputWrapper<___VARIABLE_productName___ViewStream.Output> { get }
}

final class ___VARIABLE_productName___ViewStream: UnioStream<___VARIABLE_productName___ViewStream>, ___VARIABLE_productName___ViewStreamType {

    init(extra: Extra = .init()) {
        super.init(input: Input(),
                   state: State(),
                   extra: extra)
    }
}

extension ___VARIABLE_productName___ViewStream {

    struct Input: InputType {

        /*
         *  EXAMPLE:
         *
         *  let buttonTap = PublishRelay<Void>()
         */
    }

    struct Output: OutputType {

        /*
         *  EXAMPLE:
         *
         *  let isEnabled: Observable<Bool>
         */
    }

    struct State: StateType {

        /*
         *  EXAMPLE:
         *
         *  let isEnabled = BehaviorRelay<Bool>(value: true)
         */
    }

    struct Extra: ExtraType {

    }

    static func bind(from dependency: Dependency<Input, State, Extra>, disposeBag: DisposeBag) -> Output {

        let state = dependency.state

        /*
         *  EXAMPLE:
         *
         *  dependency.inputObservable(for: \.buttonTap)
         *      .map { _ in false }
         *      .bind(to: state.isEnabled)
         *      .disposed(by: disposeBag)
         */

        return Output(
            /*
             * EXAMPLE:
             *
             * isEnabled: state.isEnabled.asObservable()
             */
        )
    }
}
