//___FILEHEADER___

import Unio
import RxSwift
import RxCocoa

final class Mock___VARIABLE_productName___Stream: ___VARIABLE_productName___StreamType {

    let input: Relay<___VARIABLE_productName___Stream.Input>
    let output: Relay<___VARIABLE_productName___Stream.Output>

    let _input = ___VARIABLE_productName___Stream.Input()

    /*
     * Define Output dependencies.
     */

    init() {
        self.input = Relay(_input)
        let _output = ___VARIABLE_productName___Stream.Output(/* inject output dependencies */)
        self.output = Relay(_output)
    }
}
