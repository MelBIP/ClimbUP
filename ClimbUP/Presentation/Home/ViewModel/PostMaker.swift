struct PostMaker {
    let title: String
    let content: String
    let line: Int
}

extension PostMaker {
    static func all() -> [PostMaker] {
        return [
            PostMaker(title: "첫 번째 게시물 제목", content: "첫 번째 게시물 내용", line: 1)
            PostMaker(title: "두 번째 게시물 제목", content: "두 번째 게시물 내용", line: 1)
            PostMaker(title: "세 번째 게시물 제목", content: "세 번째 게시물 내용", line: 1)
        ]
    }
}
