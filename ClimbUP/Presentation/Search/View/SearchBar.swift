import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    @State var isHomeViewPresented = false
    
    var body: some View {
        HStack {
            Button(action: {
                self.isHomeViewPresented.toggle()
            }, label: {
                Image(uiImage: UIImage(systemName: "chevron.left")!)
                    .font(.system(size: 24))
                    .frame(width: 16, height: 12)
            })
            .fullScreenCover(isPresented: $isHomeViewPresented) {
                HomeView()
            }
            
            HStack {
                HStack {
                    TextField("무엇을 검색하고 싶으신가요?", text: $text)
                        .font(.ab12)
                        .foregroundStyle(.black)
                    
                    if text.isEmpty {
                        Image(systemName: "magnifyingglass")
                    }
                    
                    if !text.isEmpty {
                        Button(action: {
                            self.text = ""
                        }) {
                            Image(systemName: "xmark")
                        }
                    } else {
                        EmptyView()
                    }
                }
                .padding(EdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 20))
                .foregroundColor(.black)
                .background(.white)
                .cornerRadius(100)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .stroke(.black, lineWidth: 1)
                )
            }
        }
        .padding(.horizontal)
    }
}
