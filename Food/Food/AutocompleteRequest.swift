//
//  AutocompleteRequest.swift
//  Food
//
//  Created by Aleksei Tsibrovskii on 14.12.2023.
//

import Foundation
import Alamofire

struct NewsListRequest: APIRequestProtocol {
    let query: String
    let number: Int
    let endpoint: String = "https://api.apilayer.com/spoonacular/recipes/autocomplete"

    func makeRequest() -> Alamofire.Request {
        return AF.request(endpoint, method: HTTPMethod, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
    }
        
    var parameters: [String: String]? {
        let result: [String : String] = [
            "query": query,
            "number": String(number)
        ]
        return result
    }
    
    var headers: HTTPHeaders {
        return [
            "Content-Type": "application/json"
        ]
    }

    init(query: String, number: Int) {
        self.query = query
        self.number = number
    }
}
