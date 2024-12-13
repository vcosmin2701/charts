import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        BarChart()
            .frame(maxWidth: 300, maxHeight: 350)
        
        StackedBarChart()
            .frame(maxWidth: 300, maxHeight: 350)
    }
}

#Preview {
    ContentView()
}
