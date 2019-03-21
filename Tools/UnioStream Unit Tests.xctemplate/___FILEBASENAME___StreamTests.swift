//___FILEHEADER___

import RxCocoa
import RxSwift
import Unio
import XCTest

final class ___VARIABLE_productName___StreamTests: XCTestCase {

    private var dependency: Dependency!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        dependency = Dependency()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        dependency.testTarget
    }
}

extension ___VARIABLE_productName___StreamTests {

    private struct Dependency {

        let testTarget: ___VARIABLE_productName___Stream

        init() {
            self.testTarget = ___VARIABLE_productName___Stream()
        }
    }
}
