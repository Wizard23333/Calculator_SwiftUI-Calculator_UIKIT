//
//  Calculator.swift
//  Calculator_UIKIT
//
//  Created by 吴昊天 on 2021/5/4.
//

import Foundation

class Calculator {
    
    //参数和运算符默认为nil
    var FirstArgument: String? = nil
    
    var SecondArgument: String? = nil
    
    var Operator: String? = nil
    
    var Answer: String? = nil {
        didSet {
            removeRedundantZero()
        }
    }
    
    func removeRedundantZero() {
        if Answer != nil && Answer!.count >= 3 {
            let removeIndex1 = Answer!.index(Answer!.endIndex, offsetBy: -1)
            let removeIndex2 = Answer!.index(Answer!.endIndex, offsetBy: -2)
            if Answer![removeIndex1] == "0" && Answer![removeIndex2] == "." {
                Answer!.removeLast(2)
            }
        }
    }
    
    //将第二个操作数变为其相反数
    func OppsiteSecondArgument() {
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
    func Clear() {
        FirstArgument = "0"
        SecondArgument = "0"
        Operator = nil
        Answer = nil
    }
    
    //百分号操作
    func PercentSecond() {
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
    
    func calculateAns() {
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
