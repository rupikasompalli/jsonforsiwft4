//
//  Movie.swift
//  Movie
//
//  Created by Rupika on 2019-12-27.
//  Copyright © 2019 Rupika. All rights reserved.
//

import Foundation

struct Movie : Codable{
    
    let title : String?
    let image : String?
    let rating : Double?
    let releaseYear : Int?
    let genre : [String]?

    enum CodingKeys: String, CodingKey {

        case title = "title"
        case image = "image"
        case rating = "rating"
        case releaseYear = "releaseYear"
        case genre = "genre"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        image = try values.decodeIfPresent(String.self, forKey: .image)
        rating = try values.decodeIfPresent(Double.self, forKey: .rating)
        releaseYear = try values.decodeIfPresent(Int.self, forKey: .releaseYear)
        genre = try values.decodeIfPresent([String].self, forKey: .genre)
    }
    
}


