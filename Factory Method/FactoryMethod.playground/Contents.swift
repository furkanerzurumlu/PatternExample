import UIKit

protocol SenderProtocol{
    func send(package:String)
}

class FastMail: SenderProtocol{
    func send(package: String) {
        print("Fast Delivere")
    }
}

class RegularMail: SenderProtocol{
    func send(package: String) {
        print("Regular Deliver")
    }
}

//MARK: Setup Factory
class DeliverFactory{
    static func makeSender(deliverTime: Bool) -> SenderProtocol{
        return deliverTime ? FastMail() : RegularMail()
    }
}

let package = "Phone"

DeliverFactory.makeSender(deliverTime: true).send(package: package)

DeliverFactory.makeSender(deliverTime: false).send(package: package)
