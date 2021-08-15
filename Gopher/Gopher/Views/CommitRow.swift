//
//  commitRow.swift
//  Gopher
//
//  Created by Dane Acena on 8/15/21.
//

import SwiftUI

struct CommitRow: View{
    var commit: Commit
    
    var body: some View {
        HStack {
            Text("Hello, World!")
        }
    }
}

struct CommitRow_Previews: PreviewProvider{
    static var previews: some View {
        CommitRow(commit: commits[0])
    }
}
