//
//  ModelData.swift
//  Gopher
//
//  Created by Dane Acena on 8/15/21.
//

import Foundation

//class apiCall {
//     func getGitHubCommits(completion:@escaping ([Repo]) -> ()) {
//         guard let url = URL(string:"https://api.github.com/repos/apple/swift/commits?per_page=25") else {
//             return
//         }
//
//         URLSession.shared.dataTask(with: url) {
//             (data, _, _) in
//             let repository = try! JSONDecoder().decode([Repo].self, from: data!)
//             print(repository)
//
//             DispatchQueue.main.async {
//                 completion(repository)
//             }
//         }
//         .resume()
//     }
// }

//// FOR LOCALLY SOURCE FILE
var repository: [Repo] = load("commitsSample.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
