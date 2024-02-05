import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GoodDetailNavigationView()
            
            GoodPresentationView()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
