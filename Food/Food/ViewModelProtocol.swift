//
//  ViewModelProtocol.swift
//  Food
//
//  Created by Aleksei Tsibrovskii on 02.12.2023.
//

import Foundation

protocol ViewModelProtocol {
    func viewWillAppear()
    func viewDidAppear()
    func tapButton()
}

final class ViewModel: ViewModelProtocol {
    
    
    /// тут сервисы, user defaults, ....
    /// база
    /// передаются через конструктор
        
    func viewWillAppear() {
        // Загрузка данных
        
        /*
        view.showLoader()
        service.requests() {
            ....
            ...
            
            view?.showError()
            view?.update(value: "xxxx")
        }
        */
        
    }
    
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
