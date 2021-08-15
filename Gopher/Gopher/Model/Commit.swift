//
//  commits.swift
//  Gopher
//
//  Created by Dane Acena on 8/15/21.
//

import Foundation

// Codable - used for decoding and ecoding the JSON data we get from our API call
// Identifiable isu sed to help us make a unique identifier for our Commit object so the app can keep track of it

struct Commit: Codable, Identifiable{
//    var authorName: String
    var sha: String
//    var message: String
    var id = UUID()
}
