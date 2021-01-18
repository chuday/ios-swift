import UIKit

// 1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
// 2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
// 3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.


struct queue<Element> {
    var elements: [Element] = []
    mutating func push(_ element: Element) {
        elements.append(element)
    }
    mutating func pop() -> Element? {
        return elements.removeLast()
    }
    subscript (index: Int) -> Element? {
        return index > elements.count ? nil : elements[index]
    }
    
}

var numberOne = queue<Int>()
numberOne.push(7)
numberOne.push(2)
numberOne.push(9)
numberOne.push(4)
//number.pop()
print(numberOne.elements)
print(numberOne.elements[2])

numberOne[1]
numberOne[9]

print(numberOne.elements)

func filtrA(array: [Int], function: (Int) -> Bool) -> [Int] {
var newFilter = [Int]()

for i in array {
    if function(i) {
        newFilter.append(i)
    }
}
return newFilter
}
func compareA (i: Int) -> Bool {
return i >= 7
}
print(filtrA(array: numberOne.elements, function: compareA))




var numberTwo = queue<String>()
numberTwo.push("car")
numberTwo.push("moto")
numberTwo.push("skate")
numberTwo.push("car")
numberTwo.push("car")
//numberTwo.pop()


func sorted(array: [String], function: (String) -> Bool) -> [String] {
    var newArray = [String]()
    
    for i in array {
        if function(i) {
            newArray.append(i)
        }
    }
    return newArray
}
func compare (i: String) -> Bool {
    return i == "car"
}

print(sorted(array: numberTwo.elements, function: compare))




 






