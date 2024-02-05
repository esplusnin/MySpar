import SwiftUI

struct RatingStackView: View {
    var body: some View {
        HStack {
            HStack {
                Image(systemName: Resources.Symbols.star)
                    .resizable()
                    .frame(width: UIConstants.baseSide, height: UIConstants.baseSide)
                    .foregroundColor(.customYellow)
                
                Text(L10n.RatingStackView.rate)
                    .font(.mediumTitle)
                
                SeparatorView(isVertical: true)
                
                Text(L10n.RatingStackView.reviewAmount)
                    .font(.mediumTitle)
                    .foregroundColor(.customGray)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: UIConstants.baseSide)
            
            DiscountLabelView()
        }
    }
}

#Preview {
    RatingStackView()
}
