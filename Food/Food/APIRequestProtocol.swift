//
//  APIRequestProtocol.swift
//  Food
//
//  Created by Aleksei Tsibrovskii on 10.12.2023.
//

import Foundation

protocol APIRequestProtocol {
    
    var HTTPMethod: String { get }
    var endpoint: String { get }
    var parameters: [URLQueryItem]? { get }
    var headers: [String: String]? { get }
    var host: String { get }
    
    func makeRequest(host: String) -> URLRequest?
}

extension APIRequestProtocol {
    
    var HTTPMethod: String {
        return "GET"
    }
    
    var parameters: [String: String]? {
        return nil
    }
    
    var headers: [String: String]? {
        return [
            "apikey": "AgyTVSI1YGWROrV03KcYUlhsT0GHPtNt"
        ]
    }
    
    var host: String {
        return "api.apilayer.com"
    }
    
    func makeRequest() -> URLRequest? {
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
}
