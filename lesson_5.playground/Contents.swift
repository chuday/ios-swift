import UIKit

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести сами объекты в консоль.

enum Window {
    case open, closed
}
enum Engine {
    case start, stop
}

protocol Car {
    var name: String {get}
    var year: Int {get}
    var engine: Engine {get set}
    var window: Window {get set}
    
    func stateWindow()
    
}

extension Car {
    mutating func stateEngine() {
        switch engine {
        case .start:
            return self.engine = Engine.stop
        case .stop:
            return self.engine = Engine.start
        }
    }
}

class trunkCar: Car {
    enum trunkType {
        case empty, full
    }
    
    var name: String
    let year: Int
    var trunk: trunkType
    var window: Window
    var engine: Engine
    
    init(name: String, year: Int, trunk: trunkType, window: Window, engine: Engine) {
        self.name = name
        self.year = year
        self.trunk = trunk
        self.window = window
        self.engine = engine
    }
    func stateWindow() {
        switch window{
        case .open:
            return self.window = Window.closed
        case .closed:
            return self.window = Window.open
        }
    }
}
extension trunkCar: CustomStringConvertible {
    var description: String {
        return " \t Автомобиль: \(name) \n год выпуска: \(year) \n багажник: \(trunk) \n состоятние окон: \(window) \n двигатель: \(engine)"
    }
}


class sportCar: Car {
    enum typeSportCar {
        case coupe, roadster
    }
    
    var name: String
    let year: Int
    var window: Window
    var engine: Engine
    var type: typeSportCar
    
    init(name: String, year: Int, window: Window, engine: Engine, type: typeSportCar ) {
        self.name = name
        self.year = year
        self.window = window
        self.engine = engine
        self.type = type
    }
    func stateWindow() {
        switch window{
        case .open:
            return self.window = Window.closed
        case .closed:
            return self.window = Window.open
        }
        
    }
    
}
extension sportCar: CustomStringConvertible {
    var description: String {
        return " \t Автомобиль: \(name) \n год выпуска: \(year) \n тип: \(type)\n состоятние окон: \(window) \n двигатель: \(engine)"
    }
}

var carOne = trunkCar(name: "Volvo", year: 2000, trunk: .empty, window: .closed, engine: .start)
var carTwo = sportCar(name: "Lotus", year: 1990, window: .open, engine: .stop, type: .coupe)

print(carOne.engine)
print(carOne.trunk)

print(carTwo.name)
print(carTwo.type)

print(carOne)
print(carTwo)

