import XCTest
@testable import DesignPatternsSwift

class AbstractFactoryTests: XCTestCase {
    func testAbstractFactoryPattern() {
        // Testing ModernFurnitureFactory
        let modernFactory = ModernFurnitureFactory()
        let modernSet = proceedFactory(modernFactory)
        XCTAssertEqual(modernSet.chair.sitOn(), "Sitting on a modern chair.")
        XCTAssertEqual(modernSet.table.eatAt(), "Eating at a modern table.")
        XCTAssertEqual(modernSet.sofa.lieOn(), "Lying on a modern sofa.")
        
        let artDecoFactory = ArtDecoFurnitureFactory()
        let artDecoSet = proceedFactory(artDecoFactory)
        XCTAssertEqual(artDecoSet.chair.sitOn(), "Sitting on an Art Deco chair.")
        XCTAssertEqual(artDecoSet.table.eatAt(), "Eating at an Art Deco table.")
        XCTAssertEqual(artDecoSet.sofa.lieOn(), "Lying on an Art Deco sofa.")
        
        let victorianFactory = VictorianFurnitureFactory()
        let victorianSet = proceedFactory(victorianFactory)
        XCTAssertEqual(victorianSet.chair.sitOn(), "Sitting on a Victorian chair.")
        XCTAssertEqual(victorianSet.table.eatAt(), "Eating at a Victorian table.")
        XCTAssertEqual(victorianSet.sofa.lieOn(), "Lying on a Victorian sofa.")
    }
    
    /// This method doesn't care of a factory type. It just calls interface methods and returns produced products.
    private func proceedFactory(_ factory: FurnitureAbstractFactory) -> (chair: Chair, table: Table, sofa: Sofa) {
        let chair = factory.createChair()
        let table = factory.createTable()
        let sofa = factory.createSofa()
        
        return (chair, table, sofa)
    }
}
