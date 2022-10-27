import UIKit


protocol LoggerStrategy{
    func log(message: String)
}

struct Logger{
    let strategy: LoggerStrategy
    
    func log(message: String){
        strategy.log(message: message)
    }
}

struct LowercaseStrategy: LoggerStrategy {
    func log(message: String) {
        print(message.lowercased())
    }
}

struct UppercaseStrategy: LoggerStrategy{
    func log(message: String) {
        print(message.uppercased())
    }
}

struct CapitalizedStrategy: LoggerStrategy{
    func log(message: String) {
        print(message.capitalized)
    }
}

//MARK: Usage
var logger = Logger(strategy: CapitalizedStrategy())
logger.log(message: "first commit")

logger = Logger(strategy: UppercaseStrategy())
logger.log(message: "first commit")

logger = Logger(strategy: LowercaseStrategy())
logger.log(message: "First COMMIT")
