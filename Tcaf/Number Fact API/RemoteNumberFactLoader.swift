//
//
//  Copyright © 2022 Vitalii Kravets. All rights reserved.
//

import Foundation

public final class RemoteNumberFactLoader: NumberFactLoader {
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    private let client: HTTPClient
    
    public init(client: HTTPClient) {
        self.client = client
    }
    
    public func getNumberFact(from url: URL) async throws -> String {
        do {
            let (data, response) = try await client.get(from: url)
            return try map(data, from: response)
        } catch {
            throw Error.connectivity
        }
    }
    
    private func map(_ data: Data, from response: HTTPURLResponse) throws -> String {
        guard response.statusCode == 200,
              !data.isEmpty,
              let numberFact = String(data: data, encoding: .utf8) else {
            throw Error.invalidData
        }
        
        return numberFact
    }
}
