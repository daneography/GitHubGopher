//
//  commits.swift
//  Gopher
//
//  Created by Dane Acena on 8/15/21.
//

import Foundation

// Codable - used for decoding and ecoding the JSON data we get from our API call
// Identifiable - used to help us make a unique identifier for our Commit object so the app can keep track of it

struct Repository: Codable{
    var sha: String
    var commit: Commit
    
}

struct Commit: Codable {
    let id: Int
    let author: Author
}

struct Author: Codable {
    let name: String
}
