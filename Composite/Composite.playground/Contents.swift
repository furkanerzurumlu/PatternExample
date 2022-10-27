import UIKit

protocol Shape{
    func draw()
}


class Square: Shape{
    var color: String
    
    init(color: String){
        self.color = color
    }
    
    var width: CGFloat{
        return 100.0
    }
    
    var height: CGFloat{
        return 100.0
    }
    
    func draw() {
        print("Draw color:{\(color)}")
    }
}


class Oval: Shape {
    var color: String
    
    init(color:String){
        self.color = color
    }
    
    var width: CGFloat{
        return 100.0
    }
    
    var height: CGFloat{
        return 100.0
    }
    
    func draw() {
        print("Draw color:{\(color)}")
    }
}


class Composite: Shape {
    var list:[Shape] = []
    
    init(element:Shape...){
        list = element
    }
    
    func pushLeaf(item: Shape){
        list.append(item)
    }
    
    func popLeaf(){
        list.removeLast()
    }
    
    var count: Int {
        return list.count
    }
    
    func draw() {
        for item in list {
            item.draw()
        }
    }
}

let obj = Composite(element: Square(color: "#eee"),Square(color: "#ffffff"),Oval(color: "#f6f6f6"))
obj.pushLeaf(item: "#000000")
obj.count
obj.draw
