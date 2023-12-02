//
//  ViewModelProtocol.swift
//  Food
//
//  Created by Aleksei Tsibrovskii on 02.12.2023.
//

import Foundation

protocol ViewModelProtocol {
    func viewDidAppear()
    func tapButton()
}

class ViewModel: ViewModelProtocol {
    func viewDidAppear() {
        
    }
    
    func tapButton() {
        
    }
    weak var view: ViewProtocol?
    
//    private userDefaults: UserDefaults
//
//
//    func xxx() {
//        view?.update(userDefaults.getxxx)
//    }
    
}
