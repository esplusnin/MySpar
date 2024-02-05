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
                
                Spacer()
            }
            .padding(.leading, loyaltyLabelLeadingInset)
            
            Image(.sparGood)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: imageHeight)
            
            RatingStackView()
        }
    }
}

#Preview {
    GoodPresentationView()
}
