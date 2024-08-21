import SwiftUI

struct SignInView: View {
    @State var id: String = ""
    @State var password: String = ""
    @State private var showPassword = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("로그인")
                .font(.pb40)
                .padding(.bottom, 52)
            
            TextField("아이디를 입력해주세요", text: $id)
                .padding()
                .background(Color.lightBlue)
                .cornerRadius(8)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
            
            ZStack {
                if showPassword {
                    TextField("비밀번호를 입력해주세요", text: $password)
                        .padding()
                        .background(Color.lightBlue)
                        .cornerRadius(8)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                } else {
                    SecureField("비밀번호를 입력해주세요", text: $password)
                        .padding()
                        .background(Color.lightBlue)
                        .cornerRadius(8)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                }
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        self.showPassword.toggle()
                    }, label: {
                        Image(systemName: showPassword ? "eye" : "eye.slash")
                            .foregroundColor(Color.gray)
                    })
                    .padding(.bottom, 20)
                    .padding(.trailing, 32)
                }
            }
            
            DividerWithLabel(label: "간편 로그인", horizontalPadding: 20, color: .darkGray)
            
            HStack(spacing: 24) {
                Image(.google)
                Image(.kaKaoTalk)
                Image(.apple)
            }
            
            Spacer()
            
            Button(action: {
                print("로그인 버튼")
            }, label: {
                Text("로그인")
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
    SignInView()
}
