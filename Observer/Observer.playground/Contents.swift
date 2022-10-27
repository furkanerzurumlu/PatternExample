import UIKit

protocol ObserverProtocol {
    func update(value: Int)
}

class TestObserver {
    var observer: ObserverProtocol?
    
    var point: Int = 0{
        willSet {
            observer?.update(value: newValue)
        }
    }
}

class Observer: ObserverProtocol {
    func update(value: Int) {
        if value % 2 == 0 {
            print("Even")
        } else {
            print("Odd")
        }
    }
}

let observer = Observer()

let testObs = TestObserver()
testObs.observer = observer

testObs.point += 1
print(testObs.point)


testObs.point += 1
print(testObs.point)
