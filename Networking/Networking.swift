//
//  Networking.swift
//  ImageCaching
//
//  Created by Asim Najam on 2/13/22.
//

import Foundation

final class Networking: NetworkRequestable {
    func makeReq(client: HTTPClientRequestable, complition: @escaping (Result<Data?, Error>) -> Void) {
        
        session.dataTask(with: URLRequest.create(client)) { (data, response, error) in
            if let response = response as? HTTPURLResponse {
                switch response.statusCode {
                case 200..<300:
                    complition(.success(data))
                default:
                    complition(.failure(error!))
                }
            }
        }.resume()
    }
}
