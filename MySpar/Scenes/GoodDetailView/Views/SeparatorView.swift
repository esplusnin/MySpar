import SwiftUI

struct SeparatorView: View {
    
    // MARK: - Constants and Variables:
    private let isVertical: Bool
    private let opacity: CGFloat = 0.1
    
    // MARK: - Lifecycle:
    init(isVertical: Bool) {
        self.isVertical = isVertical
    }
    
    // MARK: - UI:
    var body: some View {
        Color(.customBlack)
            .frame(maxWidth: isVertical ? UIConstants.separatorBaseHeight : .greatestFiniteMagnitude,
                   maxHeight: isVertical ? .greatestFiniteMagnitude : UIConstants.separatorBaseHeight)
            .background(Color.customGray)
            .opacity(opacity)
    }
}

#Preview {
    SeparatorView(isVertical: true)
}
