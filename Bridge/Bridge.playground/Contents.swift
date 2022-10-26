import UIKit

protocol Car {
    func drive()
}

protocol ColoredCar{
    var car: Car {get set}
    func drive()
}

//MARK: Build Class
class Sedan: Car{
    func drive() {
        print("Drive Sedan")
    }
}
class Suv: Car{
    func drive() {
        print("Drive SUV")
    }
}

class RedCar: ColoredCar {
    var car: Car
    init(car:Car){
        self.car = car
    }
    func drive() {
        car.drive()
        print("Red Car.")
    }
}

//MARK: Usage
let suv = Suv()
let redSuv = RedCar(car: suv)
redSuv.drive()
