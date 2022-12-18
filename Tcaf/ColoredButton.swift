//
//
//  Copyright © 2022 Vitalii Kravets. All rights reserved.
//

import SwiftUI

struct ColoredButton: View {
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Text(title)
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(color)
                .cornerRadius(8)
        })
        .shadow(radius: 2)
    }
}
