import SwiftUI

struct HomeView: View {
    let postMakers = PostMaker.all()
    
    @State var isSearchViewPresented = false
    
    var body: some View {
        ZStack(alignment: .top) {
            Image(uiImage: UIImage.homeBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                HStack {
                    Image(uiImage: UIImage.homeMiniLogo)
                        .padding(.leading, 20)
                    
                    Spacer()
                    
                    Button(action: {
                        self.isSearchViewPresented.toggle()
                    }, label: {
                        Image(uiImage: UIImage(systemName: "magnifyingglass")!)
                    })
                    .fullScreenCover(isPresented: $isSearchViewPresented) {
                        SearchView()
                    }
                    
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
                
                VStack(alignment: .leading) {
                    Text("게시판")
                        .font(.ab18)
                        .padding(.bottom, 4)
                        .padding(.leading, 20)
                    
                    ScrollView {
                        HStack {
                            Text("최신글")
                                .font(.asb12)
                                .padding(.bottom, 12)
                            
                            Spacer()
                            
                            Text("더보기")
                                .font(.asb11)
                                .foregroundStyle(Color.darkGray)
                                .padding(.trailing, 20)
                                .padding(.bottom, 12)
                        }
                        
                        ForEach(self.postMakers) { postMaker in
                            PostMakerCell(postMaker: postMaker)
                                .listRowInsets(EdgeInsets())
                        }
                        .listStyle(PlainListStyle())
                        .padding(.trailing, 20)
                        .simultaneousGesture(DragGesture(minimumDistance: 0), including: .all)
                        
                        HStack {
                            Text("인기글")
                                .font(.asb12)
                                .padding(.bottom, 12)
                                .padding(.top, 8)
                            
                            Spacer()
                            
                            Text("더보기")
                                .font(.asb11)
                                .foregroundStyle(Color.darkGray)
                                .padding(.trailing, 20)
                                .padding(.bottom, 12)
                        }
                        
                        ForEach(self.postMakers) { postMaker in
                            PostMakerCell(postMaker: postMaker)
                                .listRowInsets(EdgeInsets())
                        }
                        .listStyle(PlainListStyle())
                        .padding(.trailing, 20)
                        .simultaneousGesture(DragGesture(minimumDistance: 0), including: .all)
                        
                    }
                    .padding(.leading, 20)
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
