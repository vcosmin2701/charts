import SwiftUI
import Charts

struct ToyShape: Identifiable {
    var type: String
    var count: Double
    var id = UUID()
}

struct BarChart: View {
    var data: [ToyShape] = [
        .init(type: "Cube", count: 5),
        .init(type: "Sphere", count: 4),
        .init(type: "Pyramid", count: 10)
    ]
    
    var body: some View {
        Chart {
            ForEach(data) { shape in
                BarMark(
                    x: .value("Shape Type", shape.type),
                    y: .value("Total Count", shape.count)
                )
            }
        }
        .frame(maxWidth: 300, maxHeight: 350)
    }
}

#Preview {
    BarChart()
}
