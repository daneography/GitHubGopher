//
//  commitRow.swift
//  Gopher
//
//  Created by Dane Acena on 8/15/21.
//

import SwiftUI

struct CommitRow: View{
    var commit: Repo
    
    var body: some View {
        VStack(alignment: .leading){
            Text(commit.commit.author.name)
                .font(.title)
            Text(commit.sha)
                .font(.subheadline)
            Text(commit.commit.message)
                .font(.body)
            Spacer()
        }
    }
}

struct CommitRow_Previews: PreviewProvider{
    static var previews: some View {
        Group{
            CommitRow(commit: repository[0])
            CommitRow(commit: repository[1])
        }
        .previewLayout(.fixed(width: 300, height: 500))
    }
}
