//
//
//  Copyright © 2022 Vitalii Kravets. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Binding var store: ContentViewStore
    
    var body: some View {
        VStack {
            TextField(store.placeholder, text: $store.text)
                .keyboardType(.numberPad)
                .padding()
            
            Divider()
                .padding(.bottom)
            
            ColoredButton(
                title: "Get fact",
                color: .green,
                action: store.getNumberFact
            )
            .buttonStyle(.plain)
            .disabled(!store.canGetNumberFact)
            
            ColoredButton(
                title: "Get random fact",
                color: .blue,
                action: store.getRandomNumberFact
            )
            
            ScrollView {
                Text(store.numberFact)
            }
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: .constant(.init()))
    }
}
