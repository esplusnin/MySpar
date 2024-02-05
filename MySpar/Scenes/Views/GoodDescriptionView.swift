import SwiftUI

struct GoodDescriptionView: View {
    
    // MARK: - Constants and Variables:
    private let spacing: CGFloat = 15
    private let baseSide: CGFloat = 20
    
    // MARK: - UI:
    var body: some View {
        VStack(alignment: .leading, spacing: spacing) {
            Text(L10n.GoodDescriptionView.title)
                .font(.largeBoldTitle)
            
            HStack {
                Image(.spain)
                    .resizable()
                    .frame(width: baseSide, height: baseSide)
                    .clipShape(.circle)
                
                Text(L10n.GoodDescriptionView.country)
                    .font(.bodyRegular)
            }
            
            Text(L10n.GoodDescriptionView.descriptionTitle)
                .font(.mediumTitle)
            
            Text(L10n.GoodDescriptionView.description)
                .font(.bodyRegular)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal)
    }
}

#Preview {
    GoodDescriptionView()
}
