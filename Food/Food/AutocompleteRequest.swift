//
//  AutocompleteRequest.swift
//  Food
//
//  Created by Aleksei Tsibrovskii on 14.12.2023.
//

import Foundation

struct AutocompleteRequest: APIRequestProtocol {
    func makeRequest(host: String) -> URLRequest? {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = host
        urlComponents.path = endpoint
        urlComponents.queryItems = parameters
        guard let url = urlComponents.url else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = HTTPMethod
        headers?.forEach({ (key: String, value: String) in
            request.addValue(value, forHTTPHeaderField: key)
        })
        return request
    }
    
    var headers: [String: String]? {
        return [
            "apikey": "AgyTVSI1YGWROrV03KcYUlhsT0GHPtNt"
        ]
    }
    
    let query: String
    let number: Int
    let endpoint: String
        
    var parameters: [URLQueryItem]? {
        let result: [URLQueryItem] = [
            URLQueryItem(name: "query", value: query),
            URLQueryItem(name: "number", value: String(number))
        ]
        return result
    }

    init(query: String, number: Int, endpoint: String) {
        self.query = query
        self.number = number
        self.endpoint = endpoint
    }
}
