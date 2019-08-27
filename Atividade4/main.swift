//
//  main.swift
//  Atividade4
//
//  Created by Brenno Tondato de Faria on 14/08/19.
//  Copyright © 2019 Brenno Tondato de Faria. All rights reserved.
//

import Foundation   


func functionOne(x: Double) -> Double{
    return pow(x, 2.0)
}

func derivativeOne(x: Double) -> Double{
    return 2*x
}

func functionTwo(x: Double) -> Double{
    return (pow(x, 3.0)) - (2*(pow(x, 2.0))) + 2
}

func derivativeTwo(x: Double) -> Double{
    return 3*(pow(x, 2.0)) - (4*x)
}

let x0 = 2.0
let beta = 1.0

func NewtonRaphson(x0: Double){
    var f = functionOne(x: x0)
    var x = x0
    
    while f != 0.00 {
        let s = derivativeOne(x: x)
        x = abs(x + beta*(-1 * functionOne(x: x)) * (1/s))

        f = functionOne(x: x)
        print("Function result NR: \(f)")
    }
}

//NewtonRaphson(x0: x0)

print()
print()

func DescendentGradient(x0: Double){
    var f = functionOne(x: x0)
    var x = x0
    
    while f != 0.00 {
        let s = derivativeOne(x: x)
        x = x - beta*s
        f = functionOne(x: x)
        print("Function result GD: \(f)")
    }
}
//DescendentGradient(x0: x0)

print()
print()

func NewtonRaphsonTwo(x0: Double){
    var f = functionTwo(x: x0)
    var x = x0
    
    while f != 0.00 {
        let s = derivativeTwo(x: x)
        x = abs(x + beta*(-1 * functionTwo(x: x)) * (1/s))
        
        f = functionTwo(x: x)
        print("Function result NR 2: \(f)")
    }
}

//NewtonRaphsonTwo(x0: x0)

print()
print()

func DescendentGradientTwo(x0: Double){
    var f = functionTwo(x: x0)
    var x = x0
    
    while f != 0.00 {
        let s = derivativeTwo(x: x)
        x = x - beta*s
        
        f = functionTwo(x: x)
        print("Function result GD 2: \(f)")
    }
}
DescendentGradientTwo(x0: x0)

print()
print()
