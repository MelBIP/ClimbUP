import UIKit
import SwiftUI
import SnapKit
import Then

struct UIKitView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let label = UILabel().then {
            $0.text = "테스트"
            $0.textAlignment = .center
        }
        
        view.addSubview(label)
        label.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
        }
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        // 업데이트가 필요하면 이 메서드를 사용하여 UIView를 업데이트하세요.
    }
}
