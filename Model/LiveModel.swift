//
//  LiveModel.swift
//  ImageCaching
//
//  Created by Asim Najam on 2/13/22.
//

import Foundation

struct Live: Decodable {
    public var success: Bool?
    public var terms: String?
    public var privacy: String?
    public var timestamp: Date?
    public var source: String?
    public var quotes: [String: Double]?
    
    public init(success: Bool, terms: String, privacy: String, timestamp: Date, source: String, quotes: [String : Double]) {
        self.success = success
        self.terms = terms
        self.privacy = privacy
        self.timestamp = timestamp
        self.source = source
        self.quotes = quotes
    }
}
