import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color(UIColor.mainBlue).ignoresSafeArea()
            
            Image(uiImage: UIImage.whiteLogo)
        }
    }
}

#Preview {
    SplashView()
}
