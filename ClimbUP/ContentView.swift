import SwiftUI

struct ContentView: View {
    @State private var showMainView = false
    
    var body: some View {
        ZStack {
            if showMainView {
//                MainView()
            } else {
                SplashView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            withAnimation {
                                showMainView = true
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
