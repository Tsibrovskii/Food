//
//  AutocompleteRequest.swift
//  Food
//
//  Created by Aleksei Tsibrovskii on 14.12.2023.
//

import Foundation

struct AutocompleteRequest: APIRequestProtocol {
    
    var endpoint: String {
        "/spoonacular/recipes/autocomplete"
    }

    var parameters: [URLQueryItem]? {
        let result: [URLQueryItem] = [
            URLQueryItem(name: "query", value: query),
            URLQueryItem(name: "number", value: String(number))
        ]
        return result
    }
    
    let query: String
    let number: Int

    init(query: String, number: Int = 10) {
        self.query = query
        self.number = number
    }
}
