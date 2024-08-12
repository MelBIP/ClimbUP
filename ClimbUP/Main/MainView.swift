import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Image(uiImage: UIImage.climbUPLogo)
                .frame(width: 200, height: 200)
            
            Spacer(minLength: 280)
            
            VStack {
                Button(action: {
                    print("Test")
                }, label: {
                    Text("로그인")
                        .foregroundStyle(.white)
                        .font(.psb17)
                        .frame(width: 353, height: 53)
                        .background(Color.mainBlue)
                        .cornerRadius(8)
                })
                .padding(.bottom, 8)
                
                Button(action: {
                    print("회원가입")
                }, label: {
                    Text("회원가입")
                        .foregroundStyle(.gray)
                        .font(.psb14)
                })
                .padding(.bottom, 32)
            }
        }
    }
}

#Preview {
    MainView()
}
