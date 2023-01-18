import ComposableArchitecture
import SwiftUI

@main
struct SwiftNewsApp: App {
  var body: some Scene {
    WindowGroup {
      NavigationView {
        RSSFeedView(
            store: Store(
                initialState: RSSFeed(
                    id: .init(),
                    title: "Mosfet",
                    articles: [],
                    isFetchingData: false,
                    feed: .donnywals,
                    availableFeeds: FeedURL.allCases
                ),
                reducer: rssFeedReducer,
                environment: .live
            )
        )
      }
    }
  }
}
