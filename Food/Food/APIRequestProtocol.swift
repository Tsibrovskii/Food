//
//  APIRequestProtocol.swift
//  Food
//
//  Created by Aleksei Tsibrovskii on 10.12.2023.
//

import Foundation
import Alamofire

typealias Method = Alamofire.HTTPMethod

protocol APIRequestProtocol {
    
    var HTTPMethod: Method { get }
    var parameters: [String: String]? { get }
    var headers: HTTPHeaders { get }
    var endpoint: String { get }
    
    func makeRequest() -> Alamofire.Request
}

extension APIRequestProtocol {
    
    var HTTPMethod: Method {
        return .get
    }
    var parameters: [String: String]? {
        return nil
    }
    var headers: HTTPHeaders {
        return [
            "Content-Type": "application/json"
        ]
    }
    
    func makeRequest() -> Alamofire.Request? {
        return AF.request(endpoint, method: HTTPMethod, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
    }
}
