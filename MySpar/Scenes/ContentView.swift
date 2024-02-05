import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                GoodDetailNavigationView()
                
                ScrollView {
                GoodPresentationView()
                GoodDescriptionView()
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
