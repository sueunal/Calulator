//
//  ContentView.swift
//  Calulator
//
//  Created by sueun kim on 2023/02/01.
//

import SwiftUI

struct ContentView: View {
    @State private var totalNumber : String = "0"
    
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
                return "$"
            case .percent:
                return "%"
            case .opposite:
                return "/"
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
                ForEach(buttonNumber,id:\.self) {line in
                    HStack{
                        ForEach(line, id:\.self){ item in
                            Button{
                                if totalNumber == "0" {
                                    if item == .clear{ totalNumber = "0" }
                                    else if item == .plus || item == .minus || item == .multiple || item == .devide || item == .opposite {
                                        totalNumber = "Error"
                                    }
                                    else { totalNumber = item.ButtonDisplayName }
                                } else {
                                    if item == .clear{ totalNumber = "0" }
                                    else { totalNumber += item.ButtonDisplayName }
                                }
                            } label: {
                            Text(item.ButtonDisplayName)
                                .frame(width: 80,height: 80)
                                .background(item.backgroundColor)
                                .foregroundColor(item.foregroundColor)
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .bold()
                                .font(.system(size:33))
                            }
                        }
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
