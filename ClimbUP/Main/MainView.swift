import SwiftUI

struct MainView: View {
    @State var isSignInViewPresented = false
    @State var isSignUpViewPresented = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(uiImage: UIImage.climbUPLogo)
                .frame(width: 200, height: 200)
            
            Spacer(minLength: 280)
            
            VStack {
                Button(action: {
                    print("로그인 페이지로 이동")
                    
                    self.isSignInViewPresented.toggle()
                }, label: {
                    Text("로그인")
                        .foregroundStyle(.white)
                        .font(.psb17)
                })
                .fullScreenCover(isPresented: $isSignInViewPresented) {
                    SignInView()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.mainBlue)
                .cornerRadius(8)
                .padding(.horizontal, 20)
                .padding(.bottom, 8)
                
                Button(action: {
                    print("회원가입 페이지로 이동")
                    
                    self.isSignUpViewPresented.toggle()
                }, label: {
                    Text("회원가입")
                        .foregroundStyle(.gray)
                        .font(.psb14)
                })
                .padding(.bottom, 32)
                .fullScreenCover(isPresented: $isSignUpViewPresented) {
                    SignUpView()
                }
            }
        }
    }
}


#Preview {
    MainView()
}
