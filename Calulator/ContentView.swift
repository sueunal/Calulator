//
//  ContentView.swift
//  Calulator
//
//  Created by sueun kim on 2023/02/01.
//

import SwiftUI

struct ContentView: View {
    @State private var totalNumber : String = "0"
    let buttonNumber : [[String]] = [
        ["C","/","%","$"],
        ["7", "8","9","X"],
        ["4", "5","6","-"],
        ["1", "2","3","+"],
        ["0", "0",".","="]
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
                                Text(item)
                                Button{
                                    if totalNumber == "0"{
                                        totalNumber = "7"
                                    }else {
                                        totalNumber += "7"
                                    }
                                }label: {
                                    Text(item)
                                        .frame(width: 80, height: 80)
                                        .background(Color(("NumberButton")))
                                        .cornerRadius(40)
                                        .foregroundColor(.white).bold()
                                        .font(.system(size:33))
                                    
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
}
