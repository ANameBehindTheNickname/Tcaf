//
//
//  Copyright © 2022 Vitalii Kravets. All rights reserved.
//

import SwiftUI

@main
struct TcafApp: App {
    @State var store = ContentViewStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: $store)
        }
    }
}
