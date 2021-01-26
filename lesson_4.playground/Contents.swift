import UIKit

// 1.Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
// 2.Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
// 3.Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
// 4.В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
// 5.Создать несколько объектов каждого класса. Применить к ним различные действия.
// 6.Вывести значения свойств экземпляров в консоль.



enum Transmission {
    case manual, auto
}
enum EngineStart {
    case start, stop
}
enum WindowState {
    case open, close
}
enum RoofRack {
    case full, empty
}
enum Nitro {
    case on, off
}

class Car {
    let nameCar: String
    let year: Int
    let transmission: Transmission
    var volumeTrunk: Double
    var engine: EngineStart
    var window: WindowState
    init(nameCar: String, year: Int, transmission: Transmission, volumeTrunk: Double, engine: EngineStart, window: WindowState) {
        self.nameCar = nameCar
        self.year = year
        self.transmission = transmission
        self.volumeTrunk = volumeTrunk
        self.engine = engine
        self.window = window
    }
    
}

class TrunkCar: Car {
    var trunk: RoofRack
    init(nameCar: String, year: Int, transmission: Transmission, volumeTrunk: Double, engine: EngineStart, window: WindowState, trunk: RoofRack) {
        self.trunk = trunk
        super.init(nameCar: "Audi", year: 1990, transmission: .manual, volumeTrunk: 500, engine: .stop, window: .close)
    }
    func trunkStateEmpty () {
        trunk = .empty
    }
    func trunkStateFull () {
        trunk = .full
    }
    class trunkState: TrunkCar {
        override func trunkStateEmpty() {
            super.trunkStateEmpty()
            print("Опустел")
        }
    }
}


class SportCar: Car {
    var nitro: Nitro
    init(nameCar: String, year: Int, transmission: Transmission, volumeTrunk: Double, engine: EngineStart, window: WindowState, nitro: Nitro) {
        self.nitro = nitro
        super.init(nameCar: "Porche", year: 2009, transmission: .auto, volumeTrunk: 300, engine: .start, window: .close)
    }
    func nitroStateOff () {
        nitro = .off
    }
    func nitroStateOn () {
        nitro = .on
    }
    
}

class NitroState: SportCar {
    override func nitroStateOff() {
        super.nitroStateOff()
        print("Ускорение отключено")
    }
}




var car1 = Car(nameCar: "Auto", year: 2001, transmission: .auto, volumeTrunk: 200, engine: .stop, window: .close)
var car2 = SportCar(nameCar: "Bmw", year: 1990, transmission: .auto, volumeTrunk: 300, engine: .stop, window: .close, nitro: .off)
var car3 = TrunkCar(nameCar: "Man", year: 2000, transmission: .auto, volumeTrunk: 1000, engine: .start, window: .open, trunk: .full)

car1.engine
print("Состояние двигателя - \(car1.engine)")

print(car2.nitro)
car2.nitroStateOn()
print(car2.nitro)

car3.nameCar
print(car3.nameCar)



