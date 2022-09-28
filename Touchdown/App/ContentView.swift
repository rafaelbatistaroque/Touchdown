import SwiftUI

struct ContentView: View {

	@EnvironmentObject var shop: Shop

  var body: some View {
    
    ZStack {
			if shop.showingProduct == false && shop.selectedProduct == nil {
				VStack(spacing: 0) {
					NavigationBarView()
						.padding(.horizontal, 15)
						.padding(.bottom)
						.padding(.top, UIApplication.getKeyWindow()?.safeAreaInsets.top)
						.background(.white)
						.shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)

					ScrollView(.vertical, showsIndicators: false, content: {
						VStack(spacing: 0) {
							FeaturedTabView()
								.padding(.vertical, 20)
								.frame(height: UIScreen.main.bounds.width / 1.475)

							CategoryGridView()

							TitleView(title: "Helmet")

							LazyVGrid(columns: layouts.gridLayout, spacing: 15, content:{
								ForEach(data.products) { product in
									ProductItemView(product: product)
										.onTapGesture {
											feedbackMedium.impactOccurred()
											withAnimation(.easeOut) {
												shop.selectedProduct = product
												shop.showingProduct = true
											}
										}
								}
							})
							.padding(15)

							TitleView(title: "Brands")

							BrandGridView()

							FooterView()
								.padding(.horizontal)
						}
					})
				}
				.background(colors.background.ignoresSafeArea(.all, edges: .all))
			} else {
				ProductDetailView()
			}
    }
    .ignoresSafeArea(.all, edges: .top)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
			.environmentObject(Shop())
  }
}
