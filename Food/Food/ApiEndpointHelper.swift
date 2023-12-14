//
//  ApiEndpointHelper.swift
//  Food
//
//  Created by Aleksei Tsibrovskii on 07.12.2023.
//

import Foundation

final class ApiEndpointHelper {
    let baseUrl = "https://api.apilayer.com"
    let autocomplete = "/spoonacular/recipes/autocomplete"
    let complexSearch = "/spoonacular/recipes/complexSearch"
    let key = "AgyTVSI1YGWROrV03KcYUlhsT0GHPtNt"
    
    enum HTTPMethods: String {
        case GET = "GET"
    }
}
