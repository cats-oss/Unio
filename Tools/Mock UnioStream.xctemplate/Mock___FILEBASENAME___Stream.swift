//___FILEHEADER___

import RxCocoa
import RxSwift
import Unio

final class Mock___VARIABLE_productName___Stream: ___VARIABLE_productName___StreamType {

    let input: InputWrapper<___VARIABLE_productName___Stream.Input>
    let output: OutputWrapper<___VARIABLE_productName___Stream.Output>

    let _input = ___VARIABLE_productName___Stream.Input()

    /*
     * Define Output dependencies.
     */

    init() {
        self.input = InputWrapper(_input)
        let _output = ___VARIABLE_productName___Stream.Output(/* inject output dependencies */)
        self.output = OutputWrapper(_output)
    }
}
