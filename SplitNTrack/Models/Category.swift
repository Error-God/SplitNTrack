//
//  Category.swift
//  SplitNTrack
//
//  Created by Kumar, Govinda on 26/07/24.
//

import Foundation

struct Category: Codable, Identifiable {
    var id: Int
    var name: String
    var types: [String]
    var createdBy: Int
}

