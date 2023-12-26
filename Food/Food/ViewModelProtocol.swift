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
    func autocompleteSearch(_ text: String) async throws
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
    
    func autocompleteSearch(_ text: String) async throws {
        do {
            if let request = AutocompleteRequest(query: text).makeRequest(host: "api.apilayer.com") {
                let (data, _) = try await URLSession.shared.data(for: request)
                print("response \(String(decoding: data, as: UTF8.self))")
            }
        } catch {
            throw error
        }
    }
    
    weak var view: ViewProtocol?
    
//    private userDefaults: UserDefaults
//
//
//    func xxx() {
//        view?.update(userDefaults.getxxx)
//    }
    
}
