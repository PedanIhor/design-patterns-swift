// Products interfaces

protocol Chair {
    func sitOn() -> String
}

protocol Table {
    func eatAt() -> String
}

protocol Sofa {
    func lieOn() -> String
}

// Abstract factory interface

protocol FurnitureAbstractFactory {
    func createChair() -> Chair
    func createTable() -> Table
    func createSofa() -> Sofa
}

// Products implementations

class VictorianChair: Chair {
    func sitOn() -> String {
        return "Sitting on a Victorian chair."
    }
}

class VictorianTable: Table {
    func eatAt() -> String {
        return "Eating at a Victorian table."
    }
}

class VictorianSofa: Sofa {
    func lieOn() -> String {
        return "Lying on a Victorian sofa."
    }
}

class ModernChair: Chair {
    func sitOn() -> String {
        return "Sitting on a modern chair."
    }
}

class ModernTable: Table {
    func eatAt() -> String {
        return "Eating at a modern table."
    }
}

class ModernSofa: Sofa {
    func lieOn() -> String {
        return "Lying on a modern sofa."
    }
}

class ArtDecoChair: Chair {
    func sitOn() -> String {
        return "Sitting on an Art Deco chair."
    }
}

class ArtDecoTable: Table {
    func eatAt() -> String {
        return "Eating at an Art Deco table."
    }
}

class ArtDecoSofa: Sofa {
    func lieOn() -> String {
        return "Lying on an Art Deco sofa."
    }
}

// Factories implementations
class VictorianFurnitureFactory: FurnitureAbstractFactory {
    func createChair() -> Chair {
        return VictorianChair()
    }
    
    func createTable() -> Table {
        return VictorianTable()
    }
    
    func createSofa() -> Sofa {
        return VictorianSofa()
    }
}

class ModernFurnitureFactory: FurnitureAbstractFactory {
    func createChair() -> Chair {
        return ModernChair()
    }
    
    func createTable() -> Table {
        return ModernTable()
    }
    
    func createSofa() -> Sofa {
        return ModernSofa()
    }
}

class ArtDecoFurnitureFactory: FurnitureAbstractFactory {
    func createChair() -> Chair {
        return ArtDecoChair()
    }
    
    func createTable() -> Table {
        return ArtDecoTable()
    }
    
    func createSofa() -> Sofa {
        return ArtDecoSofa()
    }
}
