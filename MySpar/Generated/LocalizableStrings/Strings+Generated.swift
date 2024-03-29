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
  internal enum GoodParameters {
    /// Все характеристики
    internal static let allParameters = L10n.tr("Localizable", "goodParameters.allParameters", fallback: "Все характеристики")
    /// Углеводы/100г
    internal static let carbonates = L10n.tr("Localizable", "goodParameters.carbonates", fallback: "Углеводы/100г")
    /// 3,3 г
    internal static let carbonatesValue = L10n.tr("Localizable", "goodParameters.carbonatesValue", fallback: "3,3 г")
    /// Энергетическая
    /// ценность, ккал/100 г
    internal static let energyValuable = L10n.tr("Localizable", "goodParameters.energyValuable", fallback: "Энергетическая\nценность, ккал/100 г")
    /// 25 ккал, 105
    /// кДж
    internal static let energyValuableValue = L10n.tr("Localizable", "goodParameters.energyValuableValue", fallback: "25 ккал, 105\nкДж")
    /// Жиры/100 г
    internal static let fats = L10n.tr("Localizable", "goodParameters.fats", fallback: "Жиры/100 г")
    /// 0,1 г
    internal static let fatsValue = L10n.tr("Localizable", "goodParameters.fatsValue", fallback: "0,1 г")
    /// Основные характеристики
    internal static let mainParameters = L10n.tr("Localizable", "goodParameters.mainParameters", fallback: "Основные характеристики")
    /// Производство
    internal static let production = L10n.tr("Localizable", "goodParameters.production", fallback: "Производство")
    /// Россия, Краснодарский
    /// край
    internal static let productionValue = L10n.tr("Localizable", "goodParameters.productionValue", fallback: "Россия, Краснодарский\nкрай")
    /// Белки/100 г
    internal static let protein = L10n.tr("Localizable", "goodParameters.protein", fallback: "Белки/100 г")
    /// 1,3 г
    internal static let proteinValue = L10n.tr("Localizable", "goodParameters.proteinValue", fallback: "1,3 г")
    /// ..........................................................................................
    internal static let stumbString = L10n.tr("Localizable", "goodParameters.stumbString", fallback: "..........................................................................................")
  }
  internal enum PurchaseDetailView {
    /// ₽/кг
    internal static let fractional = L10n.tr("Localizable", "purchaseDetailView.fractional", fallback: "₽/кг")
    /// 55.9
    internal static let price = L10n.tr("Localizable", "purchaseDetailView.price", fallback: "55.9")
    /// 199
    internal static let strikethrough = L10n.tr("Localizable", "purchaseDetailView.strikethrough", fallback: "199")
  }
  internal enum RatingStackView {
    /// 4.1
    internal static let rate = L10n.tr("Localizable", "ratingStackView.rate", fallback: "4.1")
    /// 19 отзывов
    internal static let reviewAmount = L10n.tr("Localizable", "ratingStackView.reviewAmount", fallback: "19 отзывов")
  }
  internal enum ReviewsListView {
    /// Все 152
    internal static let allReviews = L10n.tr("Localizable", "reviewsListView.allReviews", fallback: "Все 152")
    /// Оставить отзыв
    internal static let makeReview = L10n.tr("Localizable", "reviewsListView.makeReview", fallback: "Оставить отзыв")
    /// Отзывы
    internal static let title = L10n.tr("Localizable", "reviewsListView.title", fallback: "Отзывы")
  }
  internal enum ReviewsView {
    /// 7 мая 2021
    internal static let date = L10n.tr("Localizable", "reviewsView.date", fallback: "7 мая 2021")
    /// Хорошая добавка, мне очень понравилась! Хочу, что бы все добавки были такими!
    internal static let description = L10n.tr("Localizable", "reviewsView.description", fallback: "Хорошая добавка, мне очень понравилась! Хочу, что бы все добавки были такими!")
    /// Александр В.
    internal static let name = L10n.tr("Localizable", "reviewsView.name", fallback: "Александр В.")
  }
  internal enum SelectionAmountView {
    /// 1 шт
    internal static let item = L10n.tr("Localizable", "selectionAmountView.item", fallback: "1 шт")
    /// —
    internal static let minus = L10n.tr("Localizable", "selectionAmountView.minus", fallback: "—")
    /// ＋
    internal static let plus = L10n.tr("Localizable", "selectionAmountView.plus", fallback: "＋")
    /// 120,0₽
    internal static let sum = L10n.tr("Localizable", "selectionAmountView.sum", fallback: "120,0₽")
  }
  internal enum SelectionType {
    /// Шт
    internal static let item = L10n.tr("Localizable", "selectionType.item", fallback: "Шт")
    /// Кг
    internal static let kilo = L10n.tr("Localizable", "selectionType.kilo", fallback: "Кг")
  }
  internal enum TabView {
    /// Корзина
    internal static let cart = L10n.tr("Localizable", "tabView.cart", fallback: "Корзина")
    /// Каталог
    internal static let catalog = L10n.tr("Localizable", "tabView.catalog", fallback: "Каталог")
    /// Главная
    internal static let main = L10n.tr("Localizable", "tabView.main", fallback: "Главная")
    /// Профиль
    internal static let profile = L10n.tr("Localizable", "tabView.profile", fallback: "Профиль")
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
