import SwiftUI

struct FeaturedItemView: View {
  
  let player: Player
  
  var body: some View {
    Image(player.image)
      .resizable()
      .scaledToFit()
      .cornerRadius(12)
  }
}

struct FeaturedItemView_Previews: PreviewProvider {
  static var previews: some View {
    FeaturedItemView(player: data.players[0])
      .previewLayout(.sizeThatFits)
      .padding()
      .background(colors.background)
  }
}
