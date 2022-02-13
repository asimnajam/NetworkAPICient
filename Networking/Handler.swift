//
//  Handler.swift
//  ImageCaching
//
//  Created by Asim Najam on 2/13/22.
//

import Foundation

final class Handler {
    let networking: NetworkRequestable
    let jsonParser: JSONParser = JSONParser()
    
    init(networking: NetworkRequestable = Networking()) {
        self.networking = networking
    }
    
    func perform<T: Decodable>(model: T.Type, success: @escaping (T) -> Void, failure: @escaping (Error) -> Void) {
        networking.makeReq(client: HTTPClient()) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case let .success(data):
                success(self.jsonParser.decode(data: data!, model: T.self)!)
            case let .failure(error):
                failure(error)
            }
        }
    }
}
