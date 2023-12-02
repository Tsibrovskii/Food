//
//  ViewController.swift
//  Food
//
//  Created by Aleksei Tsibrovskii on 02.12.2023.
//

import UIKit

protocol ViewProtocol: AnyObject {
    func update(value: String)
    func showError()
    func showEmpty()
}

class ViewController: UIViewController, ViewProtocol {
    func showError() {
        
    }
    
    func showEmpty() {
        
    }

    init(viewModel: ViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    let viewModel: ViewModelProtocol
    
    func update(value: String) {
//        view.update(value)
    }
}
