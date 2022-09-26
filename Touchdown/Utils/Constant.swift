import SwiftUI

//MARK: Data
let data: (players: [Player], categories: [Category], products: [Product]) = (
    Bundle.main.decode("player.json"),
    Bundle.main.decode("category.json"),
    Bundle.main.decode("product.json")
)
//MARK: Color
let colors = (
    background: Color("ColorBackground"),
    gray: Color(UIColor.systemGray4)
)

//MARK: Layout
let layouts = (
    columnSpacing: CGFloat(10),
    rowSpacing: CGFloat(10),
    gridLayout: Array(repeating: GridItem(.flexible(), spacing: CGFloat(10)), count: 2)
)

//MARK: UX
//MARK: API
//MARK: Font
//MARK: String
//MARK: Misc
