import SwiftUI

struct SearchView: View {
    let array = ["바위클라이밍센터", "클라이밍파크 강남점", "더클라임 문래점", "핸드워크 양산점", "서울숲 클라이밍 잠실점", "손상원 클라이밍짐", "더클라임 이수점", "킨디 클라이밍", "그랩잇 클라이밍", "클라이밍파크 성수점", "온클라이밍", "치즈클라이밍", "더클라임 일산점", "피커스 구로점"]
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 30, trailing: 0))
                
                Text("검색 결과")
                    .multilineTextAlignment(.leading)
                    .font(.ab20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                
                List {
                    let filteredArray = array.filter { $0.hasPrefix(searchText) || searchText.isEmpty }
                    
                    if filteredArray.isEmpty {
                        Text("검색 결과가 없습니다.")
                            .foregroundColor(.darkGray)
                            .font(.ab16)
                            .listRowSeparator(.hidden)
                    } else {
                        ForEach(filteredArray, id: \.self) { item in
                            Text(item)
                        }
                    }
                }

                .listStyle(PlainListStyle())
                .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 20))
                .font(.ab16)
                .onTapGesture {
                    hideKeyboard()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

// 키보드 숨기기 -> 아직 SwiftUi에서 지원하지 X
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
