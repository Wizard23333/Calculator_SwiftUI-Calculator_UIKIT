//
//  Calculator.swift
//  Calculator_SwiftUI
//
//  Created by 吴昊天 on 2021/5/5.
//

import Foundation

struct Calculator {
    //参数和运算符默认为nil
    private var FirstArgument: String? = nil
    
    private var SecondArgument: String? = nil
    
    private var Operator: String? = nil
    
    private var Answer: String? = nil {
        didSet {
            removeRedundantZero()
        }
    }
    
    var NumberOnScreen = "0"

    //切换参数的状态标志 //true的时候可以切换第二个参数
    private var FlagNextArgument = false

    mutating func TouchOnNumbers(Number: String) {
        //可选项的操作
        FlagNextArgument = false
        if SecondArgument != nil, SecondArgument != "0" || Number == "." {
            SecondArgument! += Number
        }
        else {
            SecondArgument = Number 
        }
        updateArgument()
    }
    
    mutating func updateArgument() {
        if FlagNextArgument == false {
            NumberOnScreen = SecondArgument ?? "0"
        }
        else {
            FirstArgument = SecondArgument
            SecondArgument = "0"
            FlagNextArgument = false
        }
    }
    
    
    mutating func TouchOnOperators(Number: String) {
        Operator = Number
        FlagNextArgument = true
        updateArgument()
        
    }
    
    mutating func TouchOnEqual(Number: String) {
        calculateAns()
        FirstArgument = SecondArgument
        SecondArgument = Answer
        updateArgument()//更新答案
        FlagNextArgument = true
        updateArgument()//接纳下一位参数
    }
    
    //原ClearAll
    mutating func TouchOnAC(Number: String) {
        Clear()
        FlagNextArgument = false
        updateArgument()
    }
    
    //原OppositeNumber
    mutating func TouchOnOpposite(Number: String) {
        OppsiteSecondArgument()
        updateArgument()
    }
    
    //原PercentNumber
    mutating func TouchOnPercent(Number: String) {
        PercentSecond()
        updateArgument()
    }
    
    
    private mutating func removeRedundantZero() {
        if Answer != nil && Answer!.count >= 3 {
            let removeIndex1 = Answer!.index(Answer!.endIndex, offsetBy: -1)
            let removeIndex2 = Answer!.index(Answer!.endIndex, offsetBy: -2)
            if Answer![removeIndex1] == "0" && Answer![removeIndex2] == "." {
                Answer!.removeLast(2)
            }
        }
    }
    
    //将第二个操作数变为其相反数
    private mutating func OppsiteSecondArgument() {
        if SecondArgument != nil {
            if SecondArgument! != "0" {
                if SecondArgument![SecondArgument!.startIndex] == "-" {
                    SecondArgument!.remove(at: SecondArgument!.startIndex)
                }
                else {
                    SecondArgument = "-" + SecondArgument!
                }
            }
        }
    }
    
    //清除操作
    private mutating func Clear() {
        FirstArgument = "0"
        SecondArgument = "0"
        Operator = nil
        Answer = nil
    }
    
    //百分号操作
    private mutating func PercentSecond() {
        if SecondArgument != nil && SecondArgument != "0" {
            if Double(SecondArgument!) != nil {
                let a = Double(SecondArgument!)! / 100
                SecondArgument = String(a)
            }
            else {
                SecondArgument = "输入错误"
            }
            
        }
    }
    
    private mutating func calculateAns() {
        if Operator != nil {
            let A1 = Double(FirstArgument!)
            let A2 = Double(SecondArgument!)
            if A1 != nil, A2 != nil {
                switch Operator {
                case "+":
                    Answer = String(A1! + A2!)
                case "−":
                    Answer = String(A1! - A2!)
                case "×":
                    Answer = String(A1! * A2!)
                case "÷":
                    Answer = String(A1! / A2!)
                default:
                    Answer = "?"
                }
            }
            else {
                Answer = "输入错误"
            }
        }
    }
    
    init(first: String?, Second: String?) {
        FirstArgument = first
        SecondArgument = Second
    }
}
