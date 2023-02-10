//
//  ContentView.swift
//  Calulator
//
//  Created by sueun kim on 2023/02/01.
//

import SwiftUI

struct ContentView: View {
    @State private var totalNumber : String = "0"
    @State var tempNumber:Int = 0
    @State var operatorType : ButtonType = .clear
    @State var isNotEditing : Bool = true // 계산기 사용하고 있지 않음: true
    // 계산기 사용중: false
    
    enum ButtonType:String {
        case first, second, third, forth, fifth, sixth, seventh,
             eighth, nineth, zero
        case dot, equal, plus, minus, multiple, devide
        case percent, opposite, clear
        var ButtonDisplayName : String {
            switch self {
            case .first :
                return "1"
            case .second :
                return "2"
            case .third:
                return "3"
            case .forth:
                return "4"
            case .fifth:
                return "5"
            case .sixth:
                return "6"
            case .seventh:
                return "7"
            case .eighth:
                return "8"
            case .nineth:
                return "9"
            case .zero:
                return "0"
            case .dot:
                return "."
            case .equal:
                return "="
            case .plus:
                return "+"
            case .minus:
                return "-"
            case .multiple:
                return "X"
            case .devide:
                return "/"
            case .percent:
                return "%"
            case .opposite:
                return "+/-"
            case .clear:
                return "C"
            }
        }
        var backgroundColor : Color {
            switch self {
            case .first,.second,  .third, .fifth, .forth, .sixth, .seventh , .eighth, .nineth, .zero, .dot:
                return Color("NumberButton")
            case .equal, .plus, .minus, .multiple, .devide:
                return Color.orange
            case .percent, .opposite, .clear:
                return Color.gray
            }
        }
        var foregroundColor : Color {
            switch self {
            case .first,.second,  .third, .fifth, .forth, .sixth, .seventh , .eighth, .nineth, .zero, .dot, .equal, .plus, .minus, .multiple, .devide:
                return Color.white
            case .percent, .opposite, .clear:
                return Color.black
            }
        }
    }
    let buttonNumber : [[ButtonType]] = [
        [.clear, .opposite, .percent, .devide],
        [.seventh, .eighth, .nineth, .multiple],
        [.forth, .fifth, .sixth, .minus],
        [.first, .second, .third, .plus],
        [.zero, .dot, .equal]
    ]
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                HStack{
                    Spacer()
                    Text(totalNumber)
                        .font(.system(size:78))
                        .foregroundColor(.white)
                        .padding()
                }
                ForEach(buttonNumber,id:\.self) { line in
                    HStack{
                        ForEach(line, id:\.self){ item in
                            Button{
                                if isNotEditing { //입력 상태가 아니면 totalNumber = 0
                                    if item == .clear{ totalNumber = "0" }
                                    else if item == .plus || item == .minus || item == .multiple || item == .devide || item == .opposite {
                                        totalNumber = "Error"
                                    }
                                    else {
                                        totalNumber = item.ButtonDisplayName
                                        isNotEditing = false
                                    }
                                } else { // 입력받는 상태면 실행
                                    if item == .clear{
                                        totalNumber = "0"
                                        isNotEditing = true
                                    }
                                    else if item == .plus{
                                        tempNumber = Int(totalNumber) ?? 0
                                        operatorType = .plus
                                        isNotEditing = true
                                    } else if item == .multiple{
                                        tempNumber = Int(totalNumber) ?? 0
                                        operatorType = .multiple
                                        isNotEditing = true
                                    } else if item == .minus{
                                        tempNumber = Int(totalNumber) ?? 0
                                        operatorType = .minus
                                        isNotEditing = true
                                    }
                                    else if item == .minus{
                                        tempNumber = Int(totalNumber) ?? 0
                                        operatorType = .minus
                                        isNotEditing = true
                                    }
                                    else if item == .devide {
                                        tempNumber = Int(totalNumber) ?? 0
                                        operatorType = .devide
                                        isNotEditing = true
                                    }
                                    else if item == .equal {
                                        if operatorType == .plus { totalNumber = String((Int(totalNumber) ?? 0) + tempNumber) }
                                        else if operatorType == .multiple { totalNumber = String((Int(totalNumber) ?? 0) * tempNumber) }
                                        else if operatorType == .minus { totalNumber = String(tempNumber - (Int(totalNumber) ?? 0))  }
                                        else if operatorType == .devide{ totalNumber = String(tempNumber / (Int(totalNumber) ?? 0))  }
                                        }
                                        else { totalNumber += item.ButtonDisplayName }
                                    }
                            }label: {
                                Text(item.ButtonDisplayName)
                                    .frame(width:calculateButtonWidth(button: item),height:  calculateButtonHeight(button: item))
                                    .background(item.backgroundColor)
                                    .foregroundColor(item.foregroundColor)
                                    .cornerRadius(40)
                                    .foregroundColor(.white)
                                    .font(.system(size:33))
                                    .bold()
                            }
                        }
                    }
                }
            }
        }
    }
    private func calculateButtonWidth(button:ButtonType)->CGFloat{
        switch button{
        case .zero:
            return (UIScreen.main.bounds.width - 5 * 10) / 4 * 2
        default:
            return ((UIScreen.main.bounds.width - 5 * 10) / 4)
        }
    }
    private func calculateButtonHeight(button : ButtonType)->CGFloat{
            return ((UIScreen.main.bounds.width - 5 * 10) / 4)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
