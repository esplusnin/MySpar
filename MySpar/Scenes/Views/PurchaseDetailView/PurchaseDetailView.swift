import SwiftUI

struct PurchaseDetailView: View {
    
    // MARK: - Constants and Variables:
    private let separatorOpacity: CGFloat = 0.15
    private let shadowRadius: CGFloat = 3
    private let shadowYCoordinate: CGFloat = -5
    
    // MARK: - UI:
    var body: some View {
        VStack(spacing: UIConstants.baseSpacing) {
            Rectangle()
                .foregroundColor(.customGray.opacity(separatorOpacity))
                .frame(maxWidth: .infinity, maxHeight: UIConstants.separatorBaseHeight)
                .shadow(color: .black, radius: shadowRadius, y: shadowYCoordinate)
                .shadow(color: .black, radius: shadowRadius, y: shadowYCoordinate)
            
            TypeSelectionSegmentControl()
                .padding(.horizontal)
            
            HStack {
                VStack {
                    HStack {
                        Text(L10n.PurchaseDetailView.price)
                            .font(.largeBoldTitle)
                        
                        if #available(iOS 15, *) {
                            Text(L10n.PurchaseDetailView.fractional)
                                .font(.fraction(.headline))
                        } else {
                            Text(L10n.PurchaseDetailView.fractional)
                                .font(.smallTitle)
                        }
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text(L10n.PurchaseDetailView.strikethrough)
                            .font(.bodySmall)
                            .foregroundColor(.customGray)
                            .overlay(
                                Color(.customGray)
                                    .frame(
                                        maxWidth: .greatestFiniteMagnitude,
                                        maxHeight: UIConstants.separatorBaseHeight)
                            )
                        
                        Spacer()
                    }
                }
                
                Spacer()
                
                SelectionAmountSegmentControlView()
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    PurchaseDetailView()
}
