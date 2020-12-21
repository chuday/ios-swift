import UIKit

var str = "Hello, playground"

// Решение квадратного уравнения ax^2+bx+c=0

var a = 3.0
var b = 6.0
var c = 2.5
var x1 = 0.0
var x2 = 0.0

var d = pow(b,2)-4*a*c

if (a==0)
{ print ("ошибка! a = 0")
}

else if (d<0)
{
    print ("корней нет в уравнении")
}

else if (d==0)
{
    x1 = (-b+sqrt(d))/(2*a)
}

else if (d>0)
{
    x1 = (-b+sqrt(d))/(2*a)
    x2 = (-b-sqrt(d))/(2*a)
}


// Вычисление площади, периметра и гипотенузы треугольника

var o:Double = 3
var w:Double = 3
var e:Double = 3

var p = o + w + e
print ("Периметр равен \(p)")

var g = sqrt(pow(o,2) + pow (w, 2))
print ("Гипотенуза равна \(g)")

var r = ((o*w)/2)
print ("Площадь равна \(r)")


