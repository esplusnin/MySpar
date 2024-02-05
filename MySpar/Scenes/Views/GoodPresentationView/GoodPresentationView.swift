import SwiftUI

struct GoodPresentationView: View {
    
    // MARK: - Constants and Variables:
    private let loyaltyLabelLeadingInset: CGFloat = 20
    private let imageHeight: CGFloat = 300
    
    // MARK: - UI:
    var body: some View {
        VStack {
            HStack {
                GoodLoyaltyLabel()
                    .padding(.leading)
                
                Spacer()
            }
            
            Image(.sparGood)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: imageHeight)
            
            RatingStackView()
                .padding(.horizontal)
        }
    }
}

#Preview {
    GoodPresentationView()
}
