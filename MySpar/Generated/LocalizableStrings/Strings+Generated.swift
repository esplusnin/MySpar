// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum DiscountLabelView {
    /// -5%
    internal static let title = L10n.tr("Localizable", "discountLabelView.title", fallback: "-5%")
  }
  internal enum GoodDescriptionView {
    /// Испания, Риоха
    internal static let country = L10n.tr("Localizable", "goodDescriptionView.country", fallback: "Испания, Риоха")
    /// Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов
    internal static let description = L10n.tr("Localizable", "goodDescriptionView.description", fallback: "Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов")
    /// Описание
    internal static let descriptionTitle = L10n.tr("Localizable", "goodDescriptionView.descriptionTitle", fallback: "Описание")
    /// Добавка "Липа"
    /// к чаю 200г
    internal static let title = L10n.tr("Localizable", "goodDescriptionView.title", fallback: "Добавка \"Липа\"\nк чаю 200г")
  }
  internal enum GoodLoyaltyLabel {
    /// Цена по карте
    internal static let title = L10n.tr("Localizable", "goodLoyaltyLabel.title", fallback: "Цена по карте")
  }
  internal enum RatingStackView {
    /// 4.1
    internal static let rate = L10n.tr("Localizable", "ratingStackView.rate", fallback: "4.1")
    /// 19 отзывов
    internal static let reviewAmount = L10n.tr("Localizable", "ratingStackView.reviewAmount", fallback: "19 отзывов")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
