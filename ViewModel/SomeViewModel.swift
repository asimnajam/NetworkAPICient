//
//  SomeViewModel.swift
//  ImageCaching
//
//  Created by Asim Najam on 2/13/22.
//

import Foundation

final class SomeViewModel {
    private let someUseCaseService: SomeUseCaseService
    var user: Live?
    
    init(someUseCaseService: SomeUseCaseService = SomeUseCase()) {
        self.someUseCaseService = someUseCaseService
    }
    
    func fetch() {
        someUseCaseService.fetchUser { user in
            print(user)
        } failure: { error in
            print(error)
        }
    }
}
