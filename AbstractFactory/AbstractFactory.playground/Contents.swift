import UIKit
//MARK: Build Protocol
protocol Sedan{
    func drive()
}

protocol Suv{
    func drive()
}

//MARK: Build Factory
protocol Factory{
    func buildSedan() -> Sedan
    func buildSuv() -> Suv
}

//MARK: Build Sedan
class CompactSedan: Sedan {
    func drive() {
        print("Drive Compact Sedan")
    }
}
class MiddleSedan: Sedan {
    func drive() {
        print("Drive Middle Sedan")
    }
}
class FullSedan: Sedan {
    func drive() {
        print("Drive Full Sedan")
    }
}

//MARK: Build SUV
class CompactSuv: Suv{
    func drive() {
        print("Drive Compact SUV")
    }
}
class MiddleSuv: Suv{
    func drive() {
        print("Drive Middle SUV")
    }
}
class FullSuv: Suv{
    func drive() {
        print("Drive Full SUV")
    }
}

//MARK: Set Factory

class FactoryA: Factory{
    func buildSedan() -> Sedan {
        return CompactSedan()
    }
    
    func buildSuv() -> Suv {
        return CompactSuv()
    }
}

class FactoryB: Factory{
    func buildSedan() -> Sedan {
        return FullSedan()
    }
    
    func buildSuv() -> Suv {
        return FullSuv()
    }
}

class FactoryC: Factory{
    func buildSedan() -> Sedan {
        return MiddleSedan()
    }
    
    func buildSuv() -> Suv {
        MiddleSuv()
    }

}

//MARK: Using

let factoryA = FactoryA()
//let compactSedan = factoryA.buildSedan().drive() ??
let compactSedan = factoryA.buildSedan()
compactSedan.drive()
//let compactSuv = factoryA.buildSuv().drive() ??
let compactSuv = factoryA.buildSuv()
compactSuv.drive()

let factoryB = FactoryB()
let fullSedan = factoryB.buildSedan()
fullSedan.drive()
let fullSuv = factoryB.buildSuv()
fullSuv.drive()

let factoryC = FactoryC()
let middleSedan = factoryC.buildSedan()
middleSedan.drive()
let middleSuv = factoryC.buildSuv()
middleSuv.drive()
