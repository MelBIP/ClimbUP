import SwiftUI

struct PostMakerCell: View {
    let postMaker: PostMaker
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(postMaker.title)
                .font(.asb12)
                .padding(.bottom, 4)
            
            Text(postMaker.content)
                .font(.asb11)
                .foregroundColor(.darkGray)
                .padding(.bottom, 4)
            
            Divider()
                .frame(height: CGFloat(postMaker.line))
                .foregroundColor(.darkGray)
                .padding(.bottom, 8)
        }
    }
}
