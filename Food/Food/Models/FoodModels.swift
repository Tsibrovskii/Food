//
//  FoodModels.swift
//  Food
//
//  Created by Aleksei Tsibrovskii on 09.12.2023.
//

import Foundation

enum FoodTypes {
    struct FoodTypesRawList: Decodable {
        var foodTypesRaw: [FoodTypeRaw]
    }
    
    struct FoodTypeRaw: Decodable {
        var id: Int
        var imageType: String
        var name: String
        
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case imageType = "imageType"
            case name = "title"
        }
    }
    
    struct FoodType {
        var id: String
        var name: String
    }
}
