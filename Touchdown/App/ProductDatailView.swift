import SwiftUI

struct ProductDatailView: View {

    var product: Product

    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.getKeyWindow()?.safeAreaInsets.top)

            HeaderDetailView()
                .padding(.horizontal)

            TopPartDetailView()
                .padding(.horizontal)

            Spacer()
        })
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: product.red,
                green: product.green,
                blue: product.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDatailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDatailView(product: samplePruduct)
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
