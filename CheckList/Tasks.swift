//
//  tasks.swift
//  CheckList
//
//  Created by 이원재 on 12/23/21.
//

import SwiftUI

struct Tasks: View {
    @ObservedObject var tasks = ReadData()
    var body: some View {
        List {
            Text($tasks[0].taskName)
            Text($tasks[1].taskName)
    }
}

struct Tasks_Previews: PreviewProvider {
    static var previews: some View {
        Tasks()
    }
}
