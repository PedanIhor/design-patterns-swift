struct Car: CustomStringConvertible {
    var body: String = ""
    var wheels: String = ""
    var engine: String = ""
    var interior: String = ""
    var airco: String? = nil
    var navigation: String? = nil
    
    var description: String {
        var options = ""
        if let airco {
            options += " with \(airco)"
        }
        if let navigation {
            options += " and \(navigation)"
        }
        return "Car with \(body), \(wheels), \(engine), and \(interior)\(options)."
    }
}

protocol CarBuilder {
    var product: Car { get }
    
    func reset()
    
    @discardableResult
    func buildBody() -> Self
    
    @discardableResult
    func buildWheels() -> Self
    
    @discardableResult
    func buildEngine() -> Self
    
    @discardableResult
    func addBasicInterior() -> Self

    @discardableResult
    func addLuxuryInterior() -> Self
    
    @discardableResult
    func addBasicAirco() -> Self
    
    @discardableResult
    func addLuxuryAirco() -> Self

    @discardableResult
    func addBasicNavigation() -> Self
    
    @discardableResult
    func addLuxuryNavigation() -> Self
}

class CityCarBuilder: CarBuilder {
    init() {
        self.product = Car()
    }
    private(set) var product: Car
    
    func reset() {
        product = Car()
    }
    
    @discardableResult
    func buildBody() -> Self {
        product.body = "Compact body"
        return self
    }
    
    @discardableResult
    func buildWheels() -> Self {
        product.wheels = "Small wheels"
        return self
    }
    
    @discardableResult
    func buildEngine() -> Self {
        product.engine = "Small engine"
        return self
    }
    
    @discardableResult
    func addBasicInterior() -> Self {
        product.interior = "Basic interior"
        return self
    }
    
    @discardableResult
    func addLuxuryInterior() -> Self {
        product.interior = "Luxury interior"
        return self
    }
    
    @discardableResult
    func addBasicAirco() -> Self {
        product.airco = "Air Conditioning"
        return self
    }
    
    @discardableResult
    func addLuxuryAirco() -> Self {
        product.airco = "Smart Climate Controle"
        return self
    }
    
    @discardableResult
    func addBasicNavigation() -> Self {
        product.navigation = "Basic Navigation"
        return self
    }
    
    @discardableResult
    func addLuxuryNavigation() -> Self {
        product.navigation = "Superior satelite navigation"
        return self
    }
}

class SUVCarBuilder: CarBuilder {
    init() {
        self.product = Car()
    }
    private(set) var product: Car
    
    func reset() {
        product = Car()
    }
    
    @discardableResult
    func buildBody() -> Self {
        product.body = "SUV body"
        return self
    }
    
    @discardableResult
    func buildWheels() -> Self {
        product.wheels = "Large wheels"
        return self
    }
    
    @discardableResult
    func buildEngine() -> Self {
        product.engine = "Powerful engine"
        return self
    }
    
    @discardableResult
    func addBasicInterior() -> Self {
        product.interior = "Basic interior"
        return self
    }
    
    @discardableResult
    func addLuxuryInterior() -> Self {
        product.interior = "Luxury interior"
        return self
    }
    
    @discardableResult
    func addBasicAirco() -> Self {
        product.airco = "Air Conditioning"
        return self
    }
    
    @discardableResult
    func addLuxuryAirco() -> Self {
        product.airco = "Smart Climate Controle"
        return self
    }
    
    @discardableResult
    func addBasicNavigation() -> Self {
        product.navigation = "Basic navigation"
        return self
    }
    
    @discardableResult
    func addLuxuryNavigation() -> Self {
        product.navigation = "Superior satelite navigation"
        return self
    }
}

class CarDirector {
    private var builder: CarBuilder?
    
    func update(builder: CarBuilder) {
        self.builder = builder
    }
    
    func constructBasicCar() {
        builder?.reset()
        constructEssentialParts()?
            .addBasicAirco()
            .addBasicInterior()
            .addBasicNavigation()
    }
    
    func constructLuxuryCar() {
        builder?.reset()
        constructEssentialParts()?
            .addLuxuryAirco()
            .addLuxuryInterior()
            .addLuxuryNavigation()
    }
    
    private func constructEssentialParts() -> CarBuilder? {
        builder?.buildBody().buildWheels().buildEngine()
    }
}
