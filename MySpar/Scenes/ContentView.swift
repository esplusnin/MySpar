import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            GoodDetailView()
                .tabItem {
                    Image(.spar).renderingMode(.template)
                    Text(L10n.TabView.main)
                        
                }
            
            Text(L10n.TabView.catalog)
                .tabItem {
                    Label(L10n.TabView.catalog,
                          systemImage: Resources.Symbols.catalog)
                }
            
            Text(L10n.TabView.cart)
                .tabItem {
                    Label(L10n.TabView.cart,
                          systemImage: Resources.Symbols.cart)
                }
            
            Text(L10n.TabView.profile)
                .tabItem {
                    Label(L10n.TabView.profile, 
                          systemImage: Resources.Symbols.profile)
                }
        }
        .accentColor(.customGreen)
        .onAppear {
            UITabBar.appearance().barTintColor = UIColor.customBackgroundWhite
        }
    }
}

#Preview {
    ContentView()
}
