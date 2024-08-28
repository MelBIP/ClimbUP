import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Image(uiImage: UIImage.homeBackground)
            
            VStack {
                HStack {
                    Image(uiImage: UIImage.homeMiniLogo)
                        .padding(.leading, 20)
                    
                    Spacer()
                    
                    Button(action: {
                        // SearchView로 이동
                    }, label: {
                        Image(uiImage: UIImage(systemName: "magnifyingglass")!)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Image(uiImage: UIImage(systemName: "gearshape")!)
                    })
                    .padding(.trailing, 20)
                }
                
                Image(uiImage: UIImage.v2Level)
                // VB ~ V10 조건 맞춰서 뜰 수 있게
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("마지막 운동")
                            .font(.ab16)
                        
                        Text("24.06.15")
                            .font(.ab14)
                            .foregroundStyle(Color.darkGray)
                    }
                    .padding(.leading, 20)
                    
                    Spacer()
                    
                    VStack {
                        Text("현재 레벨")
                            .font(.ab16)
                        
                        Text("V2")
                            .font(.ab16)
                            .foregroundStyle(Color.v2Level)
                            // VB ~ V10 조건 맞춰서 볼 수 색 변경
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("이달 운동 시간")
                            .font(.ab16)
                        
                        Text("5시간 38분")
                            .font(.ab16)
                            .foregroundStyle(Color.darkGray)
                    }
                    .padding(.trailing, 20)
                }
                
                Text("기록하러 가기")
                    .font(.ab24)
                
                Text("실시간 기록")
                    .font(.am16)
                
                Text("지난 운동 기록")
                    .font(.am16)
                
                Text("클라이밍 외 운동 기록")
                    .font(.am16)
            }
        }
    }
}

#Preview {
    HomeView()
}
