//
//  ContentView.swift
//  Calulator
//
//  Created by sueun kim on 2023/02/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
        VStack {
            Spacer()
            HStack{
                Spacer()
                Text("331,460")
                    .font(.system(size:78))
                    .foregroundColor(.white)
                    .padding()
            }
            HStack{
                Text("C")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                Text("/")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                Text("%")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                Text("$")
                    .frame(width: 80, height: 80)
                    .background(.orange)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                
            }
            
            HStack{
                Button{
                    
                }label: {
                Text("7")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                }
                Text("8")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                Text("9")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                Text("X")
                    .frame(width: 80, height: 80)
                    .background(.orange)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                
            }
            HStack{
                Text("4")
                
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                Text("5")
                
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                Text("6")
                
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                Text("-")
                
                    .frame(width: 80, height: 80)
                    .background(.orange)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
            }
            HStack{
                Text("1")
                
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                Text("2")
                
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                Text("3")
                
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                Text("+")
                
                    .frame(width: 80, height: 80)
                    .background(.orange)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
            }
            HStack{
                Text("0")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                Text("0")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                Text(".")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
                Text("=")
                
                    .frame(width: 80, height: 80)
                    .background(.orange)
                    .cornerRadius(40)
                    .foregroundColor(.white).bold()
                    .font(.system(size:33))
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
