import SwiftUI

struct DiscountLabelView: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(
                    to: CGPoint(x: 0, y: 0))
                path.addQuadCurve(
                    to: CGPoint(x: 65, y: -10),
                    control: CGPoint(x: 25, y: 10))
                path.addLine(
                    to: CGPoint(x: 75, y: 30))
                path.addQuadCurve(
                    to: CGPoint(x: 0, y: 30),
                    control: CGPoint(x: 35, y: 45))
            }
            .fill(.customRed)
      
            Text(L10n.DiscountLabelView.title + "%")
                .font(.mediumTitle)
                .foregroundColor(.customWhite)
        }
        .frame(width: 70, height: 35)
    }
}

#Preview {
    DiscountLabelView()
}
