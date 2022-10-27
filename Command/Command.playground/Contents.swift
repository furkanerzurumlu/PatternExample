import UIKit

protocol DoorCommand {
    func execute() -> String
}

final class OpenCommand: DoorCommand{
    
    let doors: String
    
    init(doors: String){
        self.doors = doors
    }
    func execute() -> String {
        return "Opened \(doors)"
    }
}

final class CloseCommand: DoorCommand{
    let doors: String
    init (doors: String){
        self.doors = doors
    }
    
    func execute() -> String {
        return "Closed \(doors)"
    }
}


final class UnderDoorsOp {
    let openCommand: DoorCommand
    let closeCommand: CloseCommand
    
    init(doors: String){
        self.openCommand = OpenCommand(doors: doors)
        self.closeCommand = CloseCommand(doors: doors)
    }
    
    func close() -> String {
        return closeCommand.execute()
    }
    
    func open() -> String {
        return openCommand.execute()
    }
}


//MARK: Usage

let bigDoors = "Big Doors"
let doorModule = UnderDoorsOp(doors: bigDoors)

doorModule.open()
doorModule.close()
