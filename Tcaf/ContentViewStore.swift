//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

struct ContentViewStore {
    var text = ""
    var numberFact = ""
    let placeholder = "Enter a number"
    
    var numberFactAction: (() -> Void)?
    var randomNumberFactAction: (() -> Void)?
    var canGetNumberFact: Bool {
        !text.isEmpty
    }
    
    func getNumberFact() {
        guard canGetNumberFact else { return }

        numberFactAction?()
    }
    
    func getRandomNumberFact() {
        randomNumberFactAction?()
    }
}
