import SwiftUI

struct GoodParametersView: View {
    
    // MARK: - Constants and Variables:
    private let minLinesNumber = 1
    private let maxLinesNumber = 2
    
    // MARK: - Constants and Variables:
    private let stumbStrings = L10n.GoodParameters.stumbString
    
    var body: some View {
        VStack {
            HStack {
                Text(L10n.GoodParameters.mainParameters)
                    .font(.mediumTitle)
                
                Spacer()
            }
            
            HStack(alignment: .firstTextBaseline) {
                Text(L10n.GoodParameters.production)
                    .setParameterTitle(with: minLinesNumber, textAlignment: .leading)

                Text(stumbStrings)
                    .setStumbView()

                Text(L10n.GoodParameters.productionValue)
                    .setParameterTitle(with: maxLinesNumber, textAlignment: .trailing)
            }
            
            HStack(alignment: .firstTextBaseline) {
                Text(L10n.GoodParameters.energyValuable)
                    .setParameterTitle(with: maxLinesNumber, textAlignment: .leading)

                Text(stumbStrings)
                    .setStumbView()

                Text(L10n.GoodParameters.energyValuableValue)
                    .setParameterTitle(with: maxLinesNumber, textAlignment: .trailing)
            }
            
            HStack(alignment: .firstTextBaseline) {
                Text(L10n.GoodParameters.fats)
                    .setParameterTitle(with: minLinesNumber, textAlignment: .leading)

                Text(stumbStrings)
                    .setStumbView()
                
                Text(L10n.GoodParameters.fatsValue)
            }
            
            HStack(alignment: .firstTextBaseline) {
                Text(L10n.GoodParameters.protein)
                    .setParameterTitle(with: minLinesNumber, textAlignment: .leading)

                Text(stumbStrings)
                    .setStumbView()
                
                Text(L10n.GoodParameters.proteinValue)
            }
            
            HStack(alignment: .firstTextBaseline) {
                Text(L10n.GoodParameters.carbonates)
                    .setParameterTitle(with: minLinesNumber, textAlignment: .leading)

                Text(stumbStrings)
                    .setStumbView()
                
                Text(L10n.GoodParameters.carbonatesValue)
            }
            
            HStack {
                Button {} label: {
                    Text(L10n.GoodParameters.allParameters)
                        .font(.mediumTitle)
                        .foregroundColor(.customGreen)
                }
                
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    GoodParametersView()
}

// MARK: - Modifiers:
private struct ParameterTitle: ViewModifier {
    
    // MARK: - Constants and Variables:
    private let linesNumber: Int
    private let alignment: TextAlignment
    
    // MARK: - Lifecycle:
    init(linesNumber: Int, alignment: TextAlignment) {
        self.linesNumber = linesNumber
        self.alignment = alignment
    }
    
    // MARK: - UI;
    func body(content: Content) -> some View {
        content
            .fixedSize(horizontal: true, vertical: false)
            .font(.bodyRegular)
            .lineLimit(linesNumber)
            .multilineTextAlignment(alignment)
            .padding(.bottom)
    }
}

private struct StumbParameter: ViewModifier {
    
    // MARK: - Constants and Variables:
    private let minimumLines = 1
    
    // MARK: - UI:
    func body(content: Content) -> some View {
        content
            .lineLimit(minimumLines)
            .padding(.bottom)
            .font(.bodyRegular)
    }
}

// MARK: - Modifier Extensions:
private extension View {
    func setParameterTitle(with lines: Int, textAlignment: TextAlignment) -> some View {
        modifier(ParameterTitle(linesNumber: lines, alignment: textAlignment))
    }
    
    func setStumbView() -> some View {
        modifier(StumbParameter())
    }
}
