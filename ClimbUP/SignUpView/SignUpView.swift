import SwiftUI

struct SignUpView: View {
    @State var id: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("회원가입")
                .font(.pb40)
                .padding(.bottom, 32)
            
            HStack {
                TextField("아이디를 입력해주세요", text: $id)
                    .padding()
                    .background(Color.lightBlue)
                    .cornerRadius(8)
                    .padding(.leading, 20)
                
                Button(action: {
                    print("중복 확인 버튼")
                    // 사용 가능한 아이디면 "사용 가능한 아이디입니다." 띄우기
                    // 중복되면 "사용 불가능한 아이디입니다. 다시 입력해주세요." 띄우기
                }, label: {
                    Text("중복 확인")
                        .foregroundStyle(Color.textBlue)
                        .font(.pr16)
                })
                .padding()
                .background(Color.mainBlue)
                .cornerRadius(8)
                .padding(.trailing, 20)
            }
            
            HStack {
                Text("사용 가능한 아이디입니다.")
                    .foregroundStyle(Color.warningGreen)
                    .font(.pr12)
                    .padding(.leading, 20)
                
//                Text("사용 불가능한 아이디입니다. 다시 입력해주세요.")
//                    .foregroundStyle(Color.warningRed)
//                    .font(.pr12)
//                    .padding(.leading, 20)
                
                Spacer()
            }
            
            TextField("비밀번호를 입력해주세요", text: $password)
                .padding()
                .background(Color.lightBlue)
                .cornerRadius(8)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
            
            TextField("다시 한 번 입력해주세요", text: $password)
                .padding()
                .background(Color.lightBlue)
                .cornerRadius(8)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
            
            DividerWithLabel(label: "간편 회원가입", horizontalPadding: 20, color: .darkGray)
            
            HStack(spacing: 24) {
                Image(.google)
                Image(.kaKaoTalk)
                Image(.apple)
            }
            
            Spacer()
            
            Button(action: {
                print("회원가입 버튼")
            }, label: {
                Text("회원가입")
                    .foregroundStyle(.white)
                    .font(.psb17)
            })
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.mainBlue)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            .padding(.bottom, 28)
        }
    }
}

#Preview {
    SignUpView()
}
