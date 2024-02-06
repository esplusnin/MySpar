import SwiftUI

struct GoodLoyaltyLabel: View {
    
    // MARK: - Constants and Variables:
    private let backgroundWidth: CGFloat = 120
    private let backgroundHeight: CGFloat = 30
    private let cornerRadius: CGFloat = 10
    
    // MARK: - UI:
    var body: some View {
        ZStack {
            Color(.customGreen)
                .frame(width: backgroundWidth,
                       height: backgroundHeight)
                .clipShape(.rect(cornerRadius: cornerRadius))

            Text(L10n.GoodLoyaltyLabel.title)
                .font(.bodySmall)
                .foregroundColor(.customWhite)
                .padding()
        }
    }
}

#Preview {
    GoodLoyaltyLabel()
}
