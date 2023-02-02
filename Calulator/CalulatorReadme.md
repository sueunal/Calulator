# Calulator 

<img width="228" alt="스크린샷 2023-02-01 오후 5 21 53" src="https://user-images.githubusercontent.com/36671600/216377423-c68f8164-f719-4728-8a98-4d4577bec315.png">

## 계산기 클론 코딩

```
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
```
코드를 작성하여 일단 비슷하게 작성하였다.  
하지만 여기서 문제점이 발생하는데, 계산기와 비슷해보이지만 코드의 차이는 엄청날 것이다.  
이런식으로 200줄이나 되는 코드를 사용한다면 작업의 효율성이나 프로그램의 성능이 떨어진다.  
그렇기때문에 리팩토링 과정이 필요하다. 

##### 반복문을 활용한 리팩토링
계산기를 살펴보면 버튼이 직사각형으로 구성되어있다.
여기서 생각해 볼 수 있는 것은 한줄 한줄을 처음 코드처럼 각각 작성하는 것이 아닌 
반복문을 통해 하나로 작성할 수 있다는 것이다.
```
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
```
이런식으로 코드를 작성해 보면 하나의 가로(HStack)는 2번째 ForEach 문을 통해  
한줄 한줄 반복해서 작동하고, 한줄이 작성되면 세로(VStack)로 그 위에 새로운 줄을 쌓는 방식으로 작성될 수 있다.  
처음 작성된 코드는 200줄 가량되는 분량이었는데 반복문을 2개를 사용함으로써 20줄 정도로 간결해진 것을 확인할 수 있다.


