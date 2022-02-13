//
//  SomeUseCase.swift
//  ImageCaching
//
//  Created by Asim Najam on 2/13/22.
//

import Foundation

class SomeUseCase: SomeUseCaseService {
    let handler = Handler()
    
//    init(networking: NetworkRequestable = Networking()) {
//        self.networking = networking
//    }
    
    func fetchUser(success: @escaping (Live) -> Void, failure: @escaping (Error) -> Void) {
        handler.perform(model: Live.self) { data in
            print(data)
        } failure: { error in
            print(error)
        }
    }
}
