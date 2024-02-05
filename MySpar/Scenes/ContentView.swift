import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            GoodDetailNavigationView()
            
            ScrollView {
                VStack(spacing: 20) {
                    GoodPresentationView()
                    
                    GoodDescriptionView()
                    
                    GoodParametersView()
                    
                    ReviewView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
