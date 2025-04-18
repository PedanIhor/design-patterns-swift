import Foundation

class Logger {
    nonisolated(unsafe) static let instance: Logger = {
        let instance = Logger()
        // Configure Logger
        return instance
    }()
    private init() {}

    func log(_ message: String) {
        print("[LOG]: \(message)")
    }
}

extension Logger: NSCopying {
    func copy(with zone: NSZone? = nil) -> Any {
        return self
    }
}
