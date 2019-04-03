//___FILEHEADER___

import RxCocoa
import RxSwift
import Unio

protocol ___VARIABLE_productName___StreamType: AnyObject {
    var input: Relay<___VARIABLE_productName___Stream.Input> { get }
    var output: Relay<___VARIABLE_productName___Stream.Output> { get }
}

final class ___VARIABLE_productName___Stream: UnioStream<___VARIABLE_productName___Stream.Logic>, ___VARIABLE_productName___StreamType {

    init(extra: Extra = .init()) {
        super.init(input: Input(),
                   state: State(),
                   extra: extra,
                   logic: Logic())
    }
}

extension ___VARIABLE_productName___Stream {

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

    struct Logic: LogicType {
        typealias Input = ___VARIABLE_productName___Stream.Input
        typealias Output = ___VARIABLE_productName___Stream.Output
        typealias State = ___VARIABLE_productName___Stream.State
        typealias Extra = ___VARIABLE_productName___Stream.Extra

        let disposeBag = DisposeBag()
    }
}

extension ___VARIABLE_productName___Stream.Logic {

    func bind(from dependency: Dependency<Input, State, Extra>) -> Output {

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
