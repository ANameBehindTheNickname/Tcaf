//
//
//  Copyright © 2022 Vitalii Kravets. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    private let placeholder = "Enter a number"
    
    var body: some View {
        VStack {
            TextField(placeholder, text: $text)
                .keyboardType(.numberPad)
                .padding()
            
            Divider()
                .padding(.bottom)
            
            ColoredButton(
                title: "Get fact",
                color: .green,
                action: { /* TODO: - add action */ }
            )
            .buttonStyle(.plain)
            
            ColoredButton(
                title: "Get random fact",
                color: .blue,
                action: { /* TODO: - add action */ }
            )
            
            ScrollView {
                // TODO: -
                Text("Number fact will be displayed here")
            }
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
