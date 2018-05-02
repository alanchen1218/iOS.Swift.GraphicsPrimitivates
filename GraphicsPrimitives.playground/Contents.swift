//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Point{
    var X: Double
    var Y: Double
}

struct Line{
    var Start: Point
    var End: Point
    
    func length(){
        var x = End.X - Start.X
        x = x * x
        var y = End.Y - Start.Y
        y = y * y
        
        var xy = x + y
        xy = xy.squareRoot()
        print(xy)
    }
}
var z = Point(X:3,Y:3) //defining points on a grid
var r = Point(X:12,Y:12)
let line = Line(Start:z,End: r) // defining the instance of struct
line.length() //calling the function inside the struct

struct Triangle{
    var Points : [Point]
    func AreaTriangle(){
        let a = Points[0]
        let b = Points[1]
        let c = Points[2]
        
        var area = ((b.X - a.Y) * (c.Y - a.Y) - (c.X - a.X) * (b.Y - a.Y))
        area = area * 0.5
        print(area)
    }
}

let pointA = Point(X:1, Y:2)
let pointB = Point(X:1, Y:2)
let pointC = Point(X:1, Y:2)
let abc = Triangle(Points:[pointA, pointB, pointC])





