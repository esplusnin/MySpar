import SwiftUI

struct ReviewView: View {
    
    // MARK: - Constants and Variables:
    private let gridSpacing: CGFloat = 30
    private let buttonHeight: CGFloat = 40
    private let buttonCornerRadius: CGFloat = 20
    private let buttonBorderWidth: CGFloat = 3
    
    private let gridItem = GridItem(.flexible(), spacing: 0)
    
    var body: some View {
        VStack {
            HStack {
                Text(L10n.ReviewsListView.title)
                    .font(.mediumTitle)
                    .foregroundColor(.customBlack)
                
                Spacer()
                
                Button {} label: {
                    Text(L10n.ReviewsListView.allReviews)
                        .font(.smallTitle)
                        .foregroundColor(.customGreen)
                }
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [gridItem], spacing: gridSpacing) {
                    ForEach(0..<10) { _ in
                        ReviewCellView()
                    }
                }
                .padding()
            }
            
            Button {} label: {
                Text(L10n.ReviewsListView.makeReview)
                    .frame(maxWidth: .greatestFiniteMagnitude, maxHeight: buttonHeight)
                    .font(.mediumTitle)
                    .foregroundColor(.customGreen)
                    .overlay(
                        RoundedRectangle(cornerRadius: buttonCornerRadius)
                            .stroke(.customGreen, lineWidth: buttonBorderWidth)
                    )
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ReviewView()
}
