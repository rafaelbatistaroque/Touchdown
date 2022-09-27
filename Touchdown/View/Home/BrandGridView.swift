import SwiftUI

struct BrandGridView: View {
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false, content: {
      LazyHGrid(rows: layouts.gridLayout, spacing: layouts.columnSpacing, content: {
        ForEach(data.brands) { brand in
          BrandItemView(brand: brand)
        }
      })
      .frame(height: 200)
      .padding(15)
    })
  }
}

struct BrandGridView_Previews: PreviewProvider {
  static var previews: some View {
    BrandGridView()
      .previewLayout(.sizeThatFits)
      .background(colors.background)
  }
}
