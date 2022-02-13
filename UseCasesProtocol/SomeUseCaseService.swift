//
//  SomeUseCaseService.swift
//  ImageCaching
//
//  Created by Asim Najam on 2/13/22.
//

import Foundation

protocol SomeUseCaseService {
    func fetchUser(success: @escaping (Live) -> Void, failure: @escaping (Error) -> Void)
}
