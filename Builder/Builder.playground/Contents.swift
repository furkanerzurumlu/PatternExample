import UIKit

protocol TypeBuilder{
    var id: Int {get}
    var name: String {get}
    var computer: String {get}
    var title: String {get}
    var status: String {get}
    
}

struct TypeFirst: TypeBuilder {
    let id: Int
    let name = "Ahmet Furkan"
    let computer = "Macbook Air M1"
    let title = "Intern"
    let status = "Online"
    
    init(id:Int) {
        self.id = id
    }
}


struct TypeSecond: TypeBuilder {
    let id: Int
    let name = "Furkan"
    let computer = "Macbook Air M1"
    let title = "Senior iOS Developer"
    let status = "Offline"
    
    init(id:Int) {
        self.id = id
    }
}


struct BuilderBasedType {
    var id: Int
    var name: String
    var computer: String
    var title: String
    var status: String
    
    init(builder: TypeBuilder) {
        self.id = builder.id
        self.name = builder.name
        self.computer = builder.computer
        self.title = builder.title
        self.status = builder.status
    }
}


//MARK: Run Builder

let user1 = BuilderBasedType(builder: TypeSecond(id:1))
print(user1)

let user2 = BuilderBasedType(builder: TypeFirst(id:2))
print(user2)
