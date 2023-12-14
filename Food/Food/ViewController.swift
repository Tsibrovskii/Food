//
//  ViewController.swift
//  Food
//
//  Created by Aleksei Tsibrovskii on 02.12.2023.
//

import UIKit
import SnapKit

protocol ViewProtocol: AnyObject {
    func update(value: String)
    func showError()
    func showEmpty()
}

class ViewController: UIViewController, ViewProtocol, UITextFieldDelegate {
    func showError() {
        
    }
    
    func showEmpty() {
        
    }
    
    private lazy var autocompleteInput: UITextField = {
        let autocompleteInput = UITextField()
        autocompleteInput.backgroundColor = .green
        autocompleteInput.delegate = self
        autocompleteInput.autocorrectionType = .no
        return autocompleteInput
    }()
    
    private lazy var searchButton: UIButton = {
        let searchButton = UIButton()
        searchButton.backgroundColor = .green
        searchButton.setTitle("Search", for: .normal)
        searchButton.tintColor = .blue
        searchButton.addTarget(self, action: #selector(searchFoodTypes), for: .touchUpInside)
        return searchButton
    }()
    
    @objc
    func searchFoodTypes() {
        print("click \(autocompleteInput.text ?? "")")
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
        view.backgroundColor = .white
        view.addSubview(autocompleteInput)
        view.addSubview(searchButton)
        autocompleteInput.translatesAutoresizingMaskIntoConstraints = false
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        autocompleteInput.snp.makeConstraints{(make) -> Void in
            make.width.equalTo(200)
            make.centerX.centerY.equalToSuperview()
        }
        searchButton.snp.makeConstraints({(make) -> Void in
            make.width.equalTo(100)
            make.centerX.equalToSuperview()
            make.top.equalTo(autocompleteInput.snp.bottom).offset(10)
        })
    }
    
    let viewModel: ViewModelProtocol
    
    func update(value: String) {
//        view.update(value)
    }
}
