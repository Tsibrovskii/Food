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
    func showLoader()
    func searchFoodTypes(_ amount: String)
}

class ViewController: UIViewController {
    
    private let viewModel: ViewModelProtocol
    private let searchViewController: SearchViewController
    
    init(viewModel: ViewModelProtocol, searchViewController: SearchViewController) {
        self.viewModel = viewModel
        self.searchViewController = searchViewController
        
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        searchViewController.delegate = self
        
        layoutSubviews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.viewWillAppear()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.viewDidAppear()
    }
    
    func searchFoodTypes(_ amount: String) {
            
        Task {
            do {
                try await viewModel.autocompleteSearch(amount)
            } catch {
                print("Error: \(error)")
            }
        }
    }
}


extension ViewController: ViewProtocol {
    func showLoader() {
        
    }
    
    func showError() {
        
    }
    
    func showEmpty() {
        
    }

    func update(value: String) {
//        view.update(value)
    }
}

extension ViewController: UITextFieldDelegate {
    
}

private extension ViewController {
    
    func layoutSubviews() {
        addChild(searchViewController)
        
        let searchView: UIView = searchViewController.view
        view.addSubview(searchView)
        
        searchView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        searchViewController.didMove(toParent: self)
    }
}
