import SwiftUI

struct GoodDetailNavigationView: View {
    
    // MARK: - Constants and Variables:
    private let hStackSpacing: CGFloat = 20
    private let verticalInset: CGFloat = 10
    
    // MARK: - UI:
    var body: some View {
        VStack {
            HStack {
                Button {} label: {
                    Image(systemName: Resources.Symbols.backArrow)
                        .resizable()
                        .setupNavigationSymbol()
                }
                
                Spacer()
                
                HStack(spacing: hStackSpacing) {
                    Button {} label: {
                        Image(systemName: Resources.Symbols.docPlainText)
                            .resizable()
                            .setupNavigationSymbol()
                    }
                    
                    Button {} label: {
                        Image(systemName: Resources.Symbols.upload)
                            .resizable()
                            .setupNavigationSymbol()
                    }
                    
                    Button {} label: {
                        Image(systemName: Resources.Symbols.heart)
                            .resizable()
                            .setupNavigationSymbol()
                    }
                }
            }
            .padding(.horizontal)
            .padding(.vertical, verticalInset)
            
            SeparatorView()            
        }
    }
}

#Preview {
    GoodDetailNavigationView()
}

// MARK: - Modifiers:
private struct NavigationSymbol: ViewModifier {
    
    // MARK: - Constants and Variables:
    private let symbolsSide: CGFloat = 25
    private let baseFontSize: CGFloat = 60
    
    func body(content: Content) -> some View {
        content
            .frame(width: symbolsSide,
                   height: symbolsSide)
            .font(.system(size: symbolsSide,
                          weight: .semibold))
            .foregroundColor(.customGreen)
    }
}

// MARK: - Modifiers extensions:
private extension View {
    func setupNavigationSymbol() -> some View {
        modifier(NavigationSymbol())
    }
}
