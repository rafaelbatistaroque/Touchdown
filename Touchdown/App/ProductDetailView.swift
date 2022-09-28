import SwiftUI

struct ProductDetailView: View {

	@EnvironmentObject var shop: Shop

  var body: some View {
    VStack(alignment: .leading, spacing: 5, content: {
      NavigationBarDetailView()
        .padding(.horizontal)
        .padding(.top, UIApplication.getKeyWindow()?.safeAreaInsets.top)
      
      HeaderDetailView()
        .padding(.horizontal)
      
      TopPartDetailView()
        .padding(.horizontal)
        .zIndex(1)
      
      VStack(alignment: .center, spacing: 0, content: {

				RatingsSizesDetailView()
					.padding(.top, -20)
					.padding(.bottom, 10)

        ScrollView(.vertical, showsIndicators: false, content: {
					Text(shop.selectedProduct?.description ?? samplePruduct.description)
            .font(.system(.body, design: .rounded))
            .foregroundColor(.gray)
            .multilineTextAlignment(.leading)
        })

				QuantityFavoriteDetailVIew()
					.padding(.vertical, 10)

				AddToCartDetailsView()
					.padding(.bottom, 20)
      })
      .padding(.horizontal)
      .background(Color.white.clipShape(CustomShape()).padding(.top, -105))
      
    })
    .zIndex(0)
    .ignoresSafeArea(.all, edges: .all)
    .background(
      Color(
				red: shop.selectedProduct?.red ?? samplePruduct.red,
        green: shop.selectedProduct?.green ?? samplePruduct.green,
        blue: shop.selectedProduct?.blue ?? samplePruduct.blue
      ).ignoresSafeArea(.all, edges: .all)
    )
  }
}

struct ProductDatailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView()
			.environmentObject(Shop())
      .previewLayout(.fixed(width: 375, height: 812))
  }
}
