import UIKit

protocol Car {
    func carDetails(name:String, wheel:Int)
}

class FirstCarDeatils: Car{
    func carDetails(name: String, wheel: Int){
        print("Car name is \(name) and car have \(wheel) wheels")
    }
}

class SecondCarDetails {
    func carDetails(details: String) {
        print("Second car details:" + details)
    }
}

class CarDetailsAdaptor: Car {
    var secondCarObject: SecondCarDetails?
    init(objOfSecondCar: SecondCarDetails){
        secondCarObject = objOfSecondCar
    }
    func carDetails(name: String, wheel: Int) {
        secondCarObject?.carDetails(details: "Car name is \(name) and car have \(wheel) wheels")
    }
}


//MARK: Run not adaptor

var firstCarObj = FirstCarDeatils()
firstCarObj.carDetails(name: "Swift", wheel: 4)

//MARK: Run with adaptor

var secondCarObj = SecondCarDetails()
var adaptorObj = CarDetailsAdaptor(objOfSecondCar: secondCarObj)
adaptorObj.carDetails(name: "Ford", wheel: 4)
