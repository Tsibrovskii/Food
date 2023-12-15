//
//  FoodModels.swift
//  Food
//
//  Created by Aleksei Tsibrovskii on 09.12.2023.
//

import Foundation

enum FoodTypes {
    
    struct FoodTypesRawList: Decodable {
        let foodTypesRaw: [FoodTypeRaw]
    }
    
    struct FoodTypeRaw: Decodable {
        let id: Int
        let imageType: String
        let name: String
        
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case imageType = "imageType"
            case name = "title"
        }
    }
    
    struct FoodType {
        let id: String
        let name: String
    }
}
