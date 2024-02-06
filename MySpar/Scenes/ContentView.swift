import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            GoodDetailNavigationView()
            
            ScrollView {
                VStack(spacing: UIConstants.baseSpacing) {
                    GoodPresentationView()
                    
                    GoodDescriptionView()
                    
                    GoodParametersView()
                    
                    ReviewView()
                    
                    PurchaseDetailView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
