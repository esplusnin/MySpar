import SwiftUI

struct ReviewView: View {
    
    // MARK: - Constans and Variables:
    private let width: CGFloat = 300
    private let height: CGFloat = 200
    private let colorOpacity: CGFloat = 0.15
    private let cornerRadius: CGFloat = 15
    private let borderWidth: CGFloat = 0.5
    private let shadowRadius: CGFloat = 5
    
    private let currentRating = 4
    
    // MARK: - UI:
    var body: some View {
        VStack(alignment: .leading) {
            Text(L10n.ReviewsView.name)
                .font(.mediumTitle)
            
            Text(L10n.ReviewsView.date)
                .font(.bodyRegular)
                .foregroundColor(.customGray)
            
            HStack {
                ForEach(0..<5) { number in
                    Image(systemName: Resources.Symbols.star)
                        .frame(width: UIConstants.baseSide,
                               height: UIConstants.baseSide)
                        .foregroundColor(number == currentRating ? Color.customGray : Color.yellow)
                }
            }
            
            Text(L10n.ReviewsView.description)
                .font(.bodyRegular)
        }
        .frame(width: width, height: height)
        .padding(.horizontal)
        .overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(.black.opacity(colorOpacity), lineWidth: borderWidth)
                .shadow(color: .black, radius: shadowRadius)
                .shadow(color: .black, radius: shadowRadius)
        )
    }
}

#Preview {
    ReviewView()
}
