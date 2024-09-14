import SwiftUI

struct HomeView: View {
    let postMakers = PostMaker.all()
    
    var body: some View {
        ZStack(alignment: .top) {
            Image(uiImage: UIImage.homeBackground)
                .edgesIgnoringSafeArea(.top)
            
            VStack(alignment: .leading) {
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
                
                HStack {
                    Spacer()
                    
                    Image(uiImage: UIImage.v2Level)
                        .padding(.top, 60)
                    // VB ~ V10 조건 맞춰서 뜰 수 있게
                    
                    Spacer()
                }
                .padding(.bottom, 25)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("마지막 운동")
                            .font(.ab16)
                        
                        Text("24.06.15")
                            .font(.ab14)
                            .foregroundColor(.darkGray)
                            .padding(.top, 2)
                    }
                    .padding(.leading, 20)
                    
                    Spacer()
                    
                    VStack {
                        Text("현재 레벨")
                            .font(.ab16)
                        
                        Text("V2")
                            .font(.ab16)
                            .foregroundColor(.v2Level)
                            .padding(.top, 2)
                            // VB ~ V10 조건 맞춰서 볼 수 색 변경
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("이달 운동 시간")
                            .font(.ab16)
                        
                        Text("5시간 38분")
                            .font(.ab14)
                            .foregroundColor(.darkGray)
                            .padding(.top, 2)
                    }
                    .padding(.trailing, 20)
                }
                .padding(.bottom, 36)
                
                ScrollView {
                    VStack(alignment: .leading) {
                        Text("기록하러 가기")
                            .font(.ab24)
                            .padding(.bottom, 12)
                        
                        Text("실시간 기록")
                            .font(.am16)
                            .padding(.bottom, 12)
                        
                        Text("지난 운동 기록")
                            .font(.am16)
                            .padding(.bottom, 12)
                        
                        Text("클라이밍 외 운동 기록")
                            .font(.am16)
                            .padding(.bottom, 36)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack(alignment: .leading) {
                        Text("게시판")
                            .font(.ab18)
                            .padding(.bottom, 4)
                        
                        HStack {
                            Text("최신글")
                                .font(.asb12)
                            
                            Spacer()
                            
                            Text("더보기")
                                .font(.asb11)
                                .foregroundStyle(Color.darkGray)
                                .padding(.trailing, 20)
                        }
                        .padding(.bottom, 4)
                    }
                    
                    List(self.postMakers) { postMaker in
                        PostMakerCell(postMaker: postMaker)
                    }
                    .padding(.bottom, 12)
                    .background(Color.red)
                    
                    HStack {
                        Text("인기글")
                            .font(.asb12)
                        
                        Spacer()
                        
                        Text("더보기")
                            .font(.asb11)
                            .foregroundStyle(Color.darkGray)
                            .padding(.trailing, 20)
                    }
                    .padding(.bottom, 4)
                    
                    List(self.postMakers) { postMaker in
                        PostMakerCell(postMaker: postMaker)
                    }
                }
                .padding(.leading, 20)
                
                Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
}
