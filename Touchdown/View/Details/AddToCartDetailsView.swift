import SwiftUI

struct AddToCartDetailsView: View {
    var body: some View {
        Button(action: {}, label: {
					Spacer()
					Text("Add to cart".uppercased())
						.font(.system(.title2, design: .rounded))
						.fontWeight(.bold)
						.foregroundColor(.white)
					Spacer()
				})
				.padding(15)
				.background(Color(
					red: samplePruduct.red,
					green: samplePruduct.green,
					blue: samplePruduct.blue
				))
				.clipShape(Capsule())
    }
}

struct AddToCartDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailsView()
				.previewLayout(.sizeThatFits)
				.padding()
    }
}
