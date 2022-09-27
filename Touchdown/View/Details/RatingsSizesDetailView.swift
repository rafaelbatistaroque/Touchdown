import SwiftUI

struct RatingsSizesDetailView: View {

	let sizes: [String] = ["XS", "S", "M", "L", "XL"]

	var body: some View {
		HStack(alignment: .top, spacing: 3, content: {
			VStack(alignment: .leading, spacing: 3, content: {
				Text("Ratings")
					.font(.footnote)
					.fontWeight(.semibold)
					.foregroundColor(.gray)

				HStack(alignment: .center, spacing: 3, content: {
					ForEach(1...5, id: \.self, content: { item in
						Button(action: {}, label: {
							Image(systemName: "star.fill")
								.frame(width: 28, height: 28, alignment: .center)
								.background(colors.gray.cornerRadius(5))
								.foregroundColor(.white)
						})
					})
				})
			})

			Spacer()

			VStack(alignment: .trailing, spacing: 3, content: {
				Text("Sizes")
					.font(.footnote)
					.fontWeight(.semibold)
					.foregroundColor(colors.gray)

				HStack(alignment: .center, spacing: 5, content: {
					ForEach(sizes, id: \.self, content: { size in
						Button(action: {}, label: {
							Text(size)
								.font(.footnote)
								.fontWeight(.heavy)
								.foregroundColor(colors.gray)
								.frame(width: 28, height: 28, alignment: .center)
								.background(Color.white.cornerRadius(5))
								.background(
									RoundedRectangle(cornerRadius: 5)
										.stroke(colors.gray, lineWidth: 2)
								)
						})
					})
				})

			})
		})
	}
}

struct RatingsSizesDetailView_Previews: PreviewProvider {
	static var previews: some View {
		RatingsSizesDetailView()
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
