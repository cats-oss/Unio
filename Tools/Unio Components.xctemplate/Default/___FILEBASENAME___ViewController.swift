//___FILEHEADER___

import Unio
import UIKit
import RxSwift

final class ___VARIABLE_productName___ViewController: UIViewController {

    let viewStream: ___VARIABLE_productName___ViewStreamType = ___VARIABLE_productName___ViewStream()
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()

        /*
         *  EXAMPLE:
         *
         *  let input = viewStream.input
         *
         *  button.rx.tap
         *      .bind(to: input.accept(for: \.buttonTap))
         *      .disposed(by: disposeBag)
         */

        /*
         *  EXAMPLE:
         *
         *  let output = viewStream.output
         *
         *  output.observable(for: \.isEnabled)
         *      .bind(to: button.rx.isEnabled)
         *      .disposed(by: disposeBag)
         *
         *  print("rawValue of isEnabled = \(output.value(for: \.isEnabled))")
         */
    }
}
