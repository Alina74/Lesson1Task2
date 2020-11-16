import Foundation

class Figure{
    private(set) var name: String = "Figure"
    private(set) var cornerCounter: Int = 0
    func calculateArea()->Double{
        return 0
    }
}

class Triangle: Figure {
    var height: Double = 0.0
    var length: Double = 0.0
    init(height: Double, length: Double){
        self.height = (height)
        self.length = (length)
    }
    override var cornerCounter: Int {
        return 3
    }
    override var name: String {
        return "Triangle"
    }
    override func calculateArea()->Double{
        return 0.5*height*length
    }
}

class Rectangle: Figure, EqualSidesInPair{
    var width: Double = 0.0
    var length: Double = 0.0
    var perimeter: Double = 0.0
    var isEqualSides: Bool = true
//    var perimeter: Double {
//        get{
//            return 2*width + 2*length
//        }
//    }
    init(width: Double, length: Double){
        self.width = width
        self.length = length
    }
    override var cornerCounter: Int {
        return 4
    }
    override var name: String {
        return "Rectangle"
    }
    override func calculateArea()->Double{
        return width*length
    }
}

class Circle: Figure{
    var radius: Double = 0.0
    init(radius: Double){
        self.radius = radius
    }
    override var cornerCounter: Int {
        return 0
    }
    override var name: String {
        return "Circle"
    }
    override func calculateArea()->Double{
        return Double.pi * sqrt(radius)
    }
}

protocol EqualSidesInPair{
    var width: Double {get set}
    var length: Double {get set}
    var perimeter: Double {get set}
    var isEqualSides: Bool { get }
}


extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}


var tr = Triangle(height: 4.cm, length: 2.cm)
//tr.height = 4
//tr.length = 2
print("Triangle name \(tr.name)")
print(tr.calculateArea())
print(tr.cornerCounter)


var cr = Circle(radius: 4)
//cr.radius = 4
print("Circle name \(cr.name)")
print(cr.calculateArea())


var rect = Rectangle(width: 4, length: 4)
//rect.width = 4
//rect.length = 4
print("Rectangle name \(rect.name)")
print(rect.calculateArea())
