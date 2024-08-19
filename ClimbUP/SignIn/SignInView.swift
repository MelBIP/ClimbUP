import SwiftUI

struct SignInView: View {
    @State var id: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Text("로그인")
                .font(.pb40)
            
            TextField("아이디를 입력해주세요", text: $id)
                .padding()
                .background(Color.lightBlue)
                .cornerRadius(8)
                .padding(.horizontal, 20)
            
            TextField("비밀번호를 입력해주세요", text: $password)
                .padding()
                .background(Color.lightBlue)
                .cornerRadius(8)
                .padding(.horizontal, 20)
            
            HStack {
                DividerWithLabel(label: "간편 로그인", horizontalPadding: 20, color: .darkGray)
            }
        }
    }
}

#Preview {
    SignInView()
}
