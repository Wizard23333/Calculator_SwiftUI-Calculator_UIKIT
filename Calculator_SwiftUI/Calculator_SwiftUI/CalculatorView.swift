//
//  ContentView.swift
//  Calculator_SwiftUI
//
//  Created by 吴昊天 on 2021/5/5.
//

import SwiftUI

struct CalculatorView: View {
    @ObservedObject var viewModel: CalculatorViewModel
    
    var body: some View {
        VStack(spacing: 2) {
            Spacer()//占据空间
            HStack(spacing: 20) {
                Spacer()
                Text(viewModel.calculator.NumberOnScreen)
                    .font(.system(size: 80.0))//.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                    .padding(.trailing, 20)
                    .minimumScaleFactor(0.2)
                    .lineLimit(1)
            }
            HStack(spacing: 2) {
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 27)}) {
                    Text("AC")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 0.3764434457, green: 0.3764906526, blue: 0.3764222264, alpha: 1)))}
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 26)}) {
                    Text("+/-")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 0.3764434457, green: 0.3764906526, blue: 0.3764222264, alpha: 1)))}
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 25)}) {
                    Text("%")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 0.3764434457, green: 0.3764906526, blue: 0.3764222264, alpha: 1)))}
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 24)}) {
                    Text("÷")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 1, green: 0.6253351569, blue: 0.05749034137, alpha: 1)))}
            }
            .foregroundColor(.white)
            
            HStack(spacing: 2) {
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 7)}) {
                    Text("7")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 0.3764434457, green: 0.3764906526, blue: 0.3764222264, alpha: 0.7535295297)))}
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 8)}) {
                    Text("8")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 0.3764434457, green: 0.3764906526, blue: 0.3764222264, alpha: 0.7535295297)))}
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 9)}) {
                    Text("9")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 0.3764434457, green: 0.3764906526, blue: 0.3764222264, alpha: 0.7535295297)))}
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 23)}) {
                    Text("×")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 1, green: 0.6253351569, blue: 0.05749034137, alpha: 1)))}
            }
            .foregroundColor(.white)
            HStack(spacing: 2) {
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 4)}) {
                    Text("4")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 0.3764434457, green: 0.3764906526, blue: 0.3764222264, alpha: 0.7535295297)))}
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 5)}) {
                    Text("5")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 0.3764434457, green: 0.3764906526, blue: 0.3764222264, alpha: 0.7535295297)))}
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 6)}) {
                    Text("6")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 0.3764434457, green: 0.3764906526, blue: 0.3764222264, alpha: 0.7535295297)))}
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 22)}) {
                    Text("−")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 1, green: 0.6253351569, blue: 0.05749034137, alpha: 1)))}
            }
            .foregroundColor(.white)
            HStack(spacing: 2) {
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 1)}) {
                    Text("1")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 0.3764434457, green: 0.3764906526, blue: 0.3764222264, alpha: 0.7535295297)))}
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 2)}) {
                    Text("2")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 0.3764434457, green: 0.3764906526, blue: 0.3764222264, alpha: 0.7535295297)))}
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 3)}) {
                    Text("3")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 0.3764434457, green: 0.3764906526, blue: 0.3764222264, alpha: 0.7535295297)))}
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 21)}) {
                    Text("+")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 1, green: 0.6253351569, blue: 0.05749034137, alpha: 1)))}
            }
            .foregroundColor(.white)
            HStack(spacing: 2) {
                Button(action: {viewModel.TouchOnButtons(FlagOnButton: 0)}) {
                    Text("0")
                        .font(.system(size: 40.0))
                        .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                        .background(Color(#colorLiteral(red: 0.3764434457, green: 0.3764906526, blue: 0.3764222264, alpha: 0.7535295297)))}
                HStack(spacing: 2) {
                    Button(action: {viewModel.TouchOnButtons(FlagOnButton: 10)}) {
                        Text(".")
                            .font(.system(size: 40.0))
                            .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                            .background(Color(#colorLiteral(red: 0.3764434457, green: 0.3764906526, blue: 0.3764222264, alpha: 0.7535295297)))}
                    Button(action: {viewModel.TouchOnButtons(FlagOnButton: 28)}) {
                        Text("=")
                            .font(.system(size: 40.0))
                            .frame(maxWidth:.infinity, maxHeight: (UIScreen.screenWidth - 5) / 4)
                            .background(Color(#colorLiteral(red: 1, green: 0.6253351569, blue: 0.05749034137, alpha: 1)))}
                }
            }
            .foregroundColor(.white)
        }
        .padding(.bottom, 0)
    }
}

extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CalculatorView(viewModel: CalculatorViewModel())
        }
    }
}
