import XCTest
@testable import DesignPatternsSwift

class BuilderTests: XCTest {
    
    var carDirector: CarDirector = CarDirector()
    
    override func setUp() {
        super.setUp()
    }
    
    func test_cityCarBuilder() {
        let cityCarBuilder = CityCarBuilder()
        carDirector.update(builder: cityCarBuilder)
        carDirector.constructBasicCar()
        let basicCityCar = cityCarBuilder.product
        XCTAssertEqual(basicCityCar.body, "Compact body")
        XCTAssertEqual(basicCityCar.wheels, "Small wheels")
        XCTAssertEqual(basicCityCar.engine, "Small engine")
        XCTAssertEqual(basicCityCar.interior, "Basic interior")
        XCTAssertEqual(basicCityCar.airco, "Air Conditioning")
        XCTAssertEqual(basicCityCar.navigation, "Basic Navigation")

        carDirector.constructLuxuryCar()
        let luxuryCityCar = cityCarBuilder.product
        XCTAssertEqual(luxuryCityCar.body, "Compact body")
        XCTAssertEqual(luxuryCityCar.wheels, "Small wheels")
        XCTAssertEqual(luxuryCityCar.engine, "Small engine")
        XCTAssertEqual(luxuryCityCar.interior, "Luxury interior")
        XCTAssertEqual(luxuryCityCar.airco, "Smart Climate Controle")
        XCTAssertEqual(luxuryCityCar.navigation, "Superior satelite navigation")
    }
    
    func test_SUVCarBuilder() {
        let suvBuilder = SUVCarBuilder()
        carDirector.update(builder: suvBuilder)
        carDirector.constructBasicCar()
        let basicSUVCar = suvBuilder.product
        XCTAssertEqual(basicSUVCar.body, "SUV body")
        XCTAssertEqual(basicSUVCar.wheels, "Large wheels")
        XCTAssertEqual(basicSUVCar.engine, "Powerful engine")
        XCTAssertEqual(basicSUVCar.interior, "Basic interior")
        XCTAssertEqual(basicSUVCar.airco, "Air Conditioning")
        XCTAssertEqual(basicSUVCar.navigation, "Basic Navigation")
        
        carDirector.constructLuxuryCar()
        let luxurySUVCar = suvBuilder.product
        XCTAssertEqual(luxurySUVCar.body, "SUV body")
        XCTAssertEqual(luxurySUVCar.wheels, "Large wheels")
        XCTAssertEqual(luxurySUVCar.engine, "Powerful engine")
        XCTAssertEqual(luxurySUVCar.interior, "Luxury interior")
        XCTAssertEqual(luxurySUVCar.airco, "Smart Climate Controle")
        XCTAssertEqual(luxurySUVCar.navigation, "Superior satelite navigation")
    }
}
