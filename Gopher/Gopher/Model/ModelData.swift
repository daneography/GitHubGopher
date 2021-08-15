//
//  ModelData.swift
//  Gopher
//
//  Created by Dane Acena on 8/15/21.
//

import Foundation

class apiCall {
    func getGitHubCommits(completion:@escaping ([Repo]) -> ()) {
        guard let url = URL(string:"https://api.github.com/repos/apple/swift/commits?per_page=25") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) {
            (data, _, _) in
            let commits = try! JSONDecoder().decode([Repo].self, from: data!)
            print(commits)
            
            DispatchQueue.main.async {
                completion(commits)
            }
        }
        .resume()
    }
}
