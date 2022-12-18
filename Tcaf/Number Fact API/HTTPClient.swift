//
//
//  Copyright © 2022 Vitalii Kravets. All rights reserved.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL) async throws -> (Data, HTTPURLResponse)
}
