import SwiftUI

struct SeparatorView: View {
    
    // MARK: - Constants and Variables:
    private let height: CGFloat = 1
    private let opacity: CGFloat = 0.1
    
    // MARK: - UI:
    var body: some View {
        Color(.customBlack)
            .frame(height: height)
            .background(Color.customGray)
            .opacity(opacity)
    }
}

#Preview {
    SeparatorView()
}
