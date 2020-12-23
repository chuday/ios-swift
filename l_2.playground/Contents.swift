import UIKit

// 1.Написать функцию, которая определяет, четное число или нет.

var evenNumberArray = [3, 10, 22, 64, 89, 543, 6]

for sorting in evenNumberArray {
    if sorting % 2 == 0 {
        print ("\(sorting) четное число")
    }
    else {
        print ("\(sorting) нечетное число")
    }
}


// 2.Написать функцию, которая определяет, делится ли число без остатка на 3.

for sortingThree in evenNumberArray {
    if sortingThree % 3 == 0 {
        print ("\(sortingThree) делится на 3 без остатка")
    }
    else {
        print ("\(sortingThree) не делится на 3 без остатка")
    }
}


// 3.Создать возврастающий массив из 100 чисел.

var increasingArray: Array<Int> = []
for i in 1...100 {
    increasingArray.append(i)
}

//4.Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var arrayDelete = increasingArray.filter
    {$0 % 2 != 0 && $0 % 3 == 0}
print (arrayDelete)


//5. *Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.

func fibonacciArray(_ n: Int) -> [Double] {
    var fibonacci: [Double] = [1, 1]
    (2...n).forEach{ i in
        fibonacci.append(fibonacci[i - 1] + fibonacci[i - 2])
    }
    return fibonacci
}
print(fibonacciArray(100))





