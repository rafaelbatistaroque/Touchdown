import SwiftUI

struct CategoryGridView: View {
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false, content: {
      LazyHGrid(rows: layouts.gridLayout, alignment: .center, spacing: layouts.columnSpacing, pinnedViews: [], content: {
        Section(
          header: SectionView(rotateClockwise: false),
          footer: SectionView(rotateClockwise: true)
        ) {
          ForEach(data.categories) { category in
            CategoryItemView(category: category)
          }
        }
      })
      .frame(height: 140)
      .padding(.horizontal, 15)
      .padding(.vertical, 10)
    })
  }
}

struct CategoryGridView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryGridView()
      .previewLayout(.sizeThatFits)
      .padding()
      .background(colors.background)
  }
}
