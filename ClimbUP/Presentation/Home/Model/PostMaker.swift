import Foundation

struct PostMaker: Identifiable {
    var id = UUID()
    let title: String
    let content: String
    let line: Int
}

extension PostMaker {
    static func all() -> [PostMaker] {
        return [
            PostMaker(id: UUID(), title: "첫 번째 게시물 제목", content: "첫 번째 게시물 내용 \n첫 번째 게시물 내용2", line: 1),
            PostMaker(id: UUID(), title: "두 번째 게시물 제목", content: "두 번째 게시물 내용 \n두 번째 게시물 내용2", line: 1),
            PostMaker(id: UUID(), title: "세 번째 게시물 제목", content: "세 번째 게시물 내용 \n세 번째 게시물 내용2", line: 1)
        ]
    }
}
