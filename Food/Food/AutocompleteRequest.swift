//
//  AutocompleteRequest.swift
//  Food
//
//  Created by Aleksei Tsibrovskii on 14.12.2023.
//

import Foundation
import Alamofire

struct NewsListRequest: APIRequestProtocol {
    var headers: [String : String]?
    
    let query: String
    let number: Int
    var endpoint: String

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

    init(query: String, number: Int) {
        self.query = query
        self.number = number
    }
}
