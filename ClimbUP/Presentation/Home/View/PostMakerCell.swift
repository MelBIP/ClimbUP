import SwiftUI

struct PostMakerCell: View {
    let postMaker: PostMaker
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(postMaker.title)
                .font(.asb12)
            
            Text(postMaker.content)
                .font(.asb11)
                .foregroundColor(.darkGray)
            
            Divider()
                .frame(height: postMaker.line?)
                .foregroundColor(.darkGray)
        }
    }
}
