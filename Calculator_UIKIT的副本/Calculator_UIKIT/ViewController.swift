//
//  ViewController.swift
//  Calculator_UIKIT
//
//  Created by 吴昊天 on 2021/5/4.
//

import UIKit

class ViewController: UIViewController {

    var calculator = Calculator(first: "0", Second: "0")
    
    //切换参数的状态标志 //true的时候可以切换第二个参数
    var FlagNextArgument = false
    
    @IBOutlet var NumberButtons: [UIButton]!
    
    //点击数字和 "."的动作
    @IBAction func TouchOnNumbers(_ sender: UIButton) {
        //可选项的操作
        FlagNextArgument = false
        if calculator.SecondArgument != nil, calculator.SecondArgument != "0" || sender.currentTitle == "." {
            calculator.SecondArgument! += sender.currentTitle ?? "?"
        }
        else {
            calculator.SecondArgument = sender.currentTitle ?? "?"
        }
        updateArgument()
    }
    
    func updateArgument() {
        if FlagNextArgument == false {
            NumberOnScreen.text = calculator.SecondArgument ?? "0"
        }
        else {
            calculator.FirstArgument = calculator.SecondArgument
            calculator.SecondArgument = "0"
            FlagNextArgument = false
        }
    }
    
    @IBOutlet var OperatorButtons: [UIButton]!
    
    
    @IBAction func TouchOnOperators(_ sender: UIButton) {
        calculator.Operator = sender.currentTitle
        for index in OperatorButtons.indices {
            if OperatorButtons[index].currentTitle == calculator.Operator {
                OperatorButtons[index].layer.borderWidth = 2
                OperatorButtons[index].layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            }
            else {
                OperatorButtons[index].layer.borderWidth = 0
            }
        }
        FlagNextArgument = true
        NumberOnScreen.blink()
        updateArgument()
        
    }
    
    @IBAction func TouchOnEqual(_ sender: UIButton) {
        calculator.calculateAns()
        calculator.FirstArgument = calculator.SecondArgument
        calculator.SecondArgument = calculator.Answer
        updateArgument()//更新答案
        FlagNextArgument = true
        updateArgument()//接纳下一位参数
    }
    
    
    @IBAction func ClearAll(_ sender: UIButton) {
        calculator.Clear()
        for index in OperatorButtons.indices {
            if OperatorButtons[index].currentTitle == calculator.Operator {
                OperatorButtons[index].layer.borderWidth = 2
                OperatorButtons[index].layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            }
            else {
                OperatorButtons[index].layer.borderWidth = 0
            }
        }
        FlagNextArgument = false
        NumberOnScreen.blink()
        updateArgument()
    }
    
    //正负操作
    @IBAction func OppositeNumber(_ sender: UIButton) {
        calculator.OppsiteSecondArgument()
        updateArgument()
    }
    
    
    @IBAction func PercentNumber(_ sender: UIButton) {
        calculator.PercentSecond()
        updateArgument()
    }
    
    
    @IBOutlet weak var NumberOnScreen: UILabel! {
        didSet {
            //自适应调节字体大小
            NumberOnScreen.adjustsFontSizeToFitWidth = true
            NumberOnScreen.minimumScaleFactor = 0.2//最小为原来的0.3倍
        }
    }
}

//扩展UIView实现点击清除键时闪动一下
extension UIView{
     func blink() {
         self.alpha = 0.2
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [.curveLinear], animations: {self.alpha = 1.0}, completion: nil)
     }
}
