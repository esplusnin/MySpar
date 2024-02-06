import SwiftUI

// MARK: - Custom Fonts:
extension Font {
    static let largeBoldTitle = Font.system(size: 32, weight: .heavy, design: .rounded)
    static let mediumTitle = Font.system(size: 20, weight: .bold, design: .rounded)
    static let smallTitle = Font.system(size: 16, weight: .bold, design: .rounded)
    
    static let bodyMedium = Font.system(size: 18, weight: .medium)
    static let bodyRegular = Font.system(size: 16, weight: .regular)
    static let bodySmall = Font.system(size: 14, weight: .regular)
}

// MARK: - Fractional expressions:
@available(iOS 15.0, *)
extension UIFont {
    static func fractionFont(ofSize pointSize: CGFloat) -> UIFont {
        let systemFontDesc = UIFont.boldSystemFont(ofSize: pointSize).fontDescriptor
        let featureSettings: [UIFontDescriptor.FeatureKey: Int] = [
            .type: kFractionsType,
            .selector: kDiagonalFractionsSelector
        ]
        let attributes = [
            UIFontDescriptor.AttributeName.featureSettings: [
                featureSettings
            ]
        ]
        let fractionFontDesc = systemFontDesc.addingAttributes(attributes)
        return UIFont(descriptor: fractionFontDesc, size: pointSize)
    }
}

@available(iOS 15.0, *)
extension Font {
    static func fraction(_ style: UIFont.TextStyle) -> Font {
        let preferredFont = UIFont.preferredFont(forTextStyle: style)
        let size = preferredFont.pointSize
        return Font(UIFont.fractionFont(ofSize: size) as CTFont)
    }
}
