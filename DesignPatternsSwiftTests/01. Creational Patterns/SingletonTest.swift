import XCTest
@testable import DesignPatternsSwift

class SingletonTest: XCTestCase {
    func testSingleton() {
        let first = Logger.instance
        let seconds = Logger.instance
        
        XCTAssertTrue(first === seconds, "Both variable must refer to the same object")
    }
}
