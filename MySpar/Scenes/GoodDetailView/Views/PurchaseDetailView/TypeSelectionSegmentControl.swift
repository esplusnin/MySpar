import SwiftUI

struct TypeSelectionSegmentControl: View {
    
    // MARK: - States:
    @State private var chosenType = L10n.SelectionType.item
    
    // MARK: - Constants and Variables:
    private let selectionTypes = [L10n.SelectionType.item, L10n.SelectionType.kilo]
    
    // MARK: - Constants and Variables:
    var body: some View {
        Picker("", selection: $chosenType) {
            ForEach(selectionTypes, id: \.self) {
                Text($0)
            }
        }
        .pickerStyle(.segmented)
    }
}

#Preview {
    TypeSelectionSegmentControl()
}
