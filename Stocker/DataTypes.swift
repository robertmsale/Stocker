//
//  DataTypes.swift
//  Stocker
//
//  Created by Robert Sale on 1/29/23.
//

import Foundation

struct User: Codable, Hashable {
    var id: UUID = UUID()
    var name: String = "Default"
    var username: String = "meteorite"
    var email: String = "password"
}
