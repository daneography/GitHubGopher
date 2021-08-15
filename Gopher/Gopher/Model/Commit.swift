//
//  commits.swift
//  Gopher
//
//  Created by Dane Acena on 8/15/21.
//

import Foundation

struct Commit: Hashable, Codable{
    var id = UUID()
    var authorName: String
    var sha: String
    var message: String
}
