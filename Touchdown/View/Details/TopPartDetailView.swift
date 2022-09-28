import SwiftUI

struct TopPartDetailView: View {
  
  @State private var isAnimating: Bool = false
	@EnvironmentObject var shop: Shop
  
  var body: some View {
    HStack(alignment: .center, spacing: 6, content: {
      VStack(alignment: .leading, spacing: 6, content: {
        Text("Price")
          .fontWeight(.semibold)
        
        Text(shop.selectedProduct?.formattedPrice ?? samplePruduct.formattedPrice)
          .font(.largeTitle)
          .fontWeight(.black)
          .scaleEffect(1.35, anchor: .leading)
      })
      .offset(y: isAnimating ? -50 : -75)
      
      Spacer()
      
      Image(shop.selectedProduct?.image ?? samplePruduct.image)
        .resizable()
        .scaledToFit()
        .offset(y: isAnimating ? 0 : -35)
    })
    .onAppear(perform: {
      withAnimation(.easeOut(duration: 0.75)){
        isAnimating.toggle()
      }
    })
  }
}

struct TopPartDetailView_Previews: PreviewProvider {
  static var previews: some View {
    TopPartDetailView()
			.environmentObject(Shop())
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
