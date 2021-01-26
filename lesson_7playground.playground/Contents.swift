import UIKit

// 1.Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.
// 2.Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch.


enum LibraryErrors: Error{
    case inLibraryNotBook, notMoney
}

struct Book{
    var price: Int
    var numberOfBooks: Int
    let product: Product
}

struct Product{
    let name: String
}

class Library {
    var deposite = 270

    var catalog = [
        "novel": Book(price: 100, numberOfBooks: 1,product: Product(name: "novel") ),
        "detective": Book(price: 150, numberOfBooks: 2, product: Product(name: "detective")),
        "poems": Book(price: 120, numberOfBooks: 3, product: Product(name: "poems"))]
    func getBook(nameBook: String) throws {
        guard var book = catalog[nameBook] else {
            throw LibraryErrors.inLibraryNotBook
        }
        guard book.numberOfBooks > 0 else {
            throw LibraryErrors.inLibraryNotBook
        }
        guard  book.price <= deposite else {
            throw LibraryErrors.notMoney
        }
        deposite -= book.price
        book.numberOfBooks -= 1
        catalog[nameBook] = book
        print("Приобретена книга: \(nameBook)")
    }
}

let library = Library()

try? library.getBook(nameBook: "poems")
library.deposite
library.catalog


do {
    try library.getBook(nameBook: "detective" )
} catch LibraryErrors.inLibraryNotBook {
    print("Книги нет в библиотеке")
} catch LibraryErrors.notMoney{
    print("Нет денег")
}


