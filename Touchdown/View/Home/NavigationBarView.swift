import SwiftUI

struct NavigationBarView: View {

    @State private var isAnimated: Bool = false

    var body: some View {
        HStack {
            Button(action: {

            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })
            .animation(.easeOut, value: isAnimated)
            .offset(x: isAnimated ? 0 : -25)

            Spacer()

            LogoView()
                .animation(.easeOut(duration: 0.5), value: isAnimated)
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)

            Spacer()

            Button(action: {

            }, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)

                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            })
            .animation(.easeOut, value: isAnimated)
            .offset(x: isAnimated ? 0 : +25)

        }
        .onAppear(perform: {
            isAnimated = true
        })
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
