import SwiftUI

struct SelectionAmountSegmentControlView: View {
    
    // MARK: - Constants and Variables:
    private let width: CGFloat = 200
    private let height: CGFloat = 50
    private let cornerRadius: CGFloat = 25
    private let symbolsFontSize: CGFloat = 30
    private let sumTextOpacity: CGFloat = 0.5
    
    // MARK: - UI:
    var body: some View {
        HStack(spacing: UIConstants.baseSpacing) {
            Button {} label: {
                Text(L10n.SelectionAmountView.minus)
                    .font(.system(size: symbolsFontSize))
            }
            
            VStack {
                Text(L10n.SelectionAmountView.item)
                    .font(.bodyMedium)
                Text(L10n.SelectionAmountView.sum)
                    .font(.bodyRegular)
                    .opacity(sumTextOpacity)
            }
            
            Button {} label: {
                Text(L10n.SelectionAmountView.plus)
                    .font(.system(size: symbolsFontSize))
            }
        }
        .foregroundColor(.customWhite)
        .frame(width: width, height: height)
        .background(Color.customGreen)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
    }
}

#Preview {
    SelectionAmountSegmentControlView()
}
