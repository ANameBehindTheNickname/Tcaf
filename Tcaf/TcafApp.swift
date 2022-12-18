//
//
//  Copyright © 2022 Vitalii Kravets. All rights reserved.
//

import SwiftUI

@main
struct TcafApp: App {
    @State var store = ContentViewStore()
    let baseURL = URL(string: "http://numbersapi.com")!
    let numberFactLoader = makeNumberFactLoader()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: $store)
                .onAppear {
                    store.numberFactAction = { getFact(pathComponent: store.text) }
                    store.randomNumberFactAction = { getFact(pathComponent: "random/math") }
                }
        }
    }
    
    func getFact(pathComponent: String) {
        Task {
            store.numberFact = try await numberFactLoader.getNumberFact(from: baseURL.appendingPathComponent(pathComponent))
        }
    }
}

private func makeNumberFactLoader() -> NumberFactLoader {
    let session = URLSession(configuration: .default)
    let client = URLSessionHTTPClient(session: session)
    return RemoteNumberFactLoader(client: client)
}
