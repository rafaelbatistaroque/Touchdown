import SwiftUI

struct AddToCartDetailsView: View {

	@EnvironmentObject var shop: Shop

	var body: some View {
		Button(action: {
			feedbackMedium.impactOccurred()
		}, label: {
			Spacer()
			Text("Add to cart".uppercased())
				.font(.system(.title2, design: .rounded))
				.fontWeight(.bold)
				.foregroundColor(.white)
			Spacer()
		})
		.padding(15)
		.background(Color(
			red: shop.selectedProduct?.red ?? samplePruduct.red,
			green: shop.selectedProduct?.green ?? samplePruduct.green,
			blue: shop.selectedProduct?.blue ?? samplePruduct.blue
		))
		.clipShape(Capsule())
	}
}

struct AddToCartDetailsView_Previews: PreviewProvider {
	static var previews: some View {
		AddToCartDetailsView()
			.environmentObject(Shop())
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
