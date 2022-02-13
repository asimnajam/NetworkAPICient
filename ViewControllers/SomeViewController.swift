//
//  SomeViewController.swift
//  ImageCaching
//
//  Created by Asim Najam on 2/13/22.
//

import UIKit

final class SomeViewController: UIViewController {
    private let someViewModel = SomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        someViewModel.fetch()
    }
}
