import SwiftUI

struct GoodDescriptionView: View {
    
    // MARK: - UI:
    var body: some View {
        VStack(alignment: .leading, spacing: UIConstants.baseSpacing) {
            Text(L10n.GoodDescriptionView.title)
                .font(.largeBoldTitle)
            
            HStack {
                Image(.spain)
                    .resizable()
                    .frame(width: UIConstants.baseSide,
                           height: UIConstants.baseSide)
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
