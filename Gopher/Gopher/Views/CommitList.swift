//
//  CommitList.swift
//  Gopher
//
//  Created by Dane Acena on 8/15/21.
//

import SwiftUI

struct CommitList: View{
    var body: some View{
        List(repository){ Repo in
            CommitRow(commit: Repo)
        }
    }
}


struct CommitList_preview: PreviewProvider {
    static var previews: some View{
        CommitList()
    }
}
