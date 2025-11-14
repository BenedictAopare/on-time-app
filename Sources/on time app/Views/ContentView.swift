import Foundation
import SwiftUI

public struct ContentView: View {
    @ObservedObject var viewModel: ContentViewModel

    public init(viewModel: ContentViewModel = ContentViewModel()) {
        self.viewModel = viewModel
    }

    public var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.reminders) { reminder in
                    VStack(alignment: .leading) {
                        Text(reminder.title)
                            .font(.headline)
                        Text(reminder.dueDescription)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("ontime")
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel.sample)
    }
}
#endif
