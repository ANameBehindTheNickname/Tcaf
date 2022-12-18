//
//
//  Copyright © 2022 Vitalii Kravets. All rights reserved.
//

import Foundation

public protocol NumberFactLoader {
    func getNumberFact(from url: URL) async throws -> String
}
