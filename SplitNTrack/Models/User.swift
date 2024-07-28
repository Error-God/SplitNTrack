//
//  User.swift
//  SplitNTrack
//
//  Created by Kumar, Govinda on 26/07/24.
//

import Foundation

struct User: Codable, Identifiable {
    var id: Int
    var name: String
    var mobile: String
    var email: String
    var password: String
    var dateOfBirth: Date
}

