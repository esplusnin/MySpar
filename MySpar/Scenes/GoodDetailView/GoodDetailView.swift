import SwiftUI

struct GoodDetailView: View {
    var body: some View {
        VStack {
            GoodDetailNavigationView()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: UIConstants.baseSpacing) {
                    GoodPresentationView()
                    
                    GoodDescriptionView()
                    
                    GoodParametersView()
                    
                    ReviewView()
                }
            }
            
            PurchaseDetailView()
        }
    }
}

#Preview {
    GoodDetailView()
}
