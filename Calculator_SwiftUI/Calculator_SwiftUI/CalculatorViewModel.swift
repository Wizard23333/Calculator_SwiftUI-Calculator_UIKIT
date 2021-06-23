//
//  CalculatorViewModel.swift
//  Calculator_SwiftUI
//
//  Created by 吴昊天 on 2021/5/5.
//

import SwiftUI

class CalculatorViewModel: ObservableObject {
    @Published var calculator = Calculator(first: "0", Second: "0")
    
    //字典
    let symbolOnButton: [Int: String] = [
        0: "0",
        1: "1",
        2: "2",
        3: "3",
        4: "4",
        5: "5",
        6: "6",
        7: "7",
        8: "8",
        9: "9",
        10: ".",
        21: "+",
        22: "−",
        23: "×",
        24: "÷",
        25: "%",
        26: "+/-",
        27: "AC",
        28: "="
    ]
    func TouchOnButtons(FlagOnButton: Int) {
        switch FlagOnButton {
        case 0...11:
            calculator.TouchOnNumbers(Number: symbolOnButton[FlagOnButton]!)
        case 21...24:
            calculator.TouchOnOperators(Number: symbolOnButton[FlagOnButton]!)
        case 28:
            calculator.TouchOnEqual(Number: symbolOnButton[FlagOnButton]!)
        case 27:
            calculator.TouchOnAC(Number: symbolOnButton[FlagOnButton]!)
        case 26:
            calculator.TouchOnOpposite(Number: symbolOnButton[FlagOnButton]!)
        case 25:
            calculator.TouchOnPercent(Number: symbolOnButton[FlagOnButton]!)
        default:
            print("exception")
        }
    }
    
    
}
