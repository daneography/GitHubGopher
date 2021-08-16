//
//  ModelData.swift
//  Gopher
//
//  Created by Dane Acena on 8/15/21.
//

import Foundation

var repository: [Repo] = load("commitsSample.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    print("Success")
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

//class apiCall {
//
//    func getGitHubCommits(completion:@escaping ([Repo]) -> ()) {
//
//        guard let url = URL(string:"https://api.github.com/repos/TheAlgorithms/Python/commits?per_page=25")
//        guard let url = Bundle.main.url(forResource: "commitsSample.json", withExtension: nil)
//        else {
//            return
//        }
//
//        URLSession.shared.dataTask(with: url) { (data, response, error) in
//            let commits = try! JSONDecoder().decode([Repo].self, from: data!)
//            print(commits)
//
//            DispatchQueue.main.async {
//                completion(commits)
//            }
//        }
//        .resume()
//    }
//}
