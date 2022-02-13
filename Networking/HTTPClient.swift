//
//  HTTPClient.swift
//  ImageCaching
//
//  Created by Asim Najam on 2/13/22.
//

import Foundation

struct HTTPClient: HTTPClientRequestable {
    var method: HTTPMethod = .get
    
    var header: [String : String]? = nil
    
    var query: [String : String] = [:]
    
    var path: String = "live"
}
