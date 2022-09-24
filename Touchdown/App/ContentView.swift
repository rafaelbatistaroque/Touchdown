import SwiftUI

struct ContentView: View {
    var body: some View {

        ZStack {
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

                        FooterView()
                            .padding(.horizontal)
                    }
                })
            }
            .background(colors.background.ignoresSafeArea(.all, edges: .all))
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
