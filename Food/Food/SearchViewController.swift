//
//  SearchViewController.swift
//  Food
//
//  Created by Aleksei Tsibrovskii on 25.12.2023.
//

import Foundation
import UIKit

class SearchViewController: UIViewController {

    var delegate: ViewProtocol?

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
    
    override func viewDidLoad() {
        layoutSubviews()
    }
    
    @objc
    func searchFoodTypes() {
        delegate?.searchFoodTypes(autocompleteInput.text ?? "")
    }
}

extension SearchViewController: UITextFieldDelegate {
    
}

private extension SearchViewController {
    
    func layoutSubviews() {
        view.addSubview(autocompleteInput)
        view.addSubview(searchButton)

        autocompleteInput.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.center.equalToSuperview()
        }
        
        searchButton.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.centerX.equalToSuperview()
            make.top.equalTo(autocompleteInput.snp.bottom).offset(10)
        }        
    }
}
