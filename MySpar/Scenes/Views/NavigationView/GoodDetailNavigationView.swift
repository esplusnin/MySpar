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
            
            SeparatorView(isVertical: false)
        }
    }
}

#Preview {
    GoodDetailNavigationView()
}

// MARK: - Modifiers:
private struct NavigationSymbol: ViewModifier {
    
    // MARK: - Constants and Variables:
    private let baseFontSize: CGFloat = 60
    
    // MARK: - UI:
    func body(content: Content) -> some View {
        content
            .frame(width: UIConstants.baseSide,
                   height: UIConstants.baseSide)
            .font(.system(size: UIConstants.baseSide,
                          weight: .semibold))
            .foregroundColor(.customGreen)
    }
}

// MARK: - Modifiers Extensions:
private extension View {
    func setupNavigationSymbol() -> some View {
        modifier(NavigationSymbol())
    }
}
