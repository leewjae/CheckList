//
//  addTask.swift
//  CheckList
//
//  Created by 이원재 on 12/22/21.
//

import Foundation
import SwiftUI

struct addTask: View {
    @State private var taskName: String = ""
    @State private var taskDate = Date()
    var body: some View {
        VStack {
            Group {
                HStack {
                    Text("Task")
                    TextField(text: $taskName, prompt: Text("Required")) {
                    }
                }
                HStack {
                    DatePicker("Due Date", selection: $taskDate)
                }
            }
            .padding()
        }
    }
}

struct addTask_Previews: PreviewProvider {
    static var previews: some View {
        addTask()
    }
}

struct Task : Codable {
    let title: String
    let dueDate: Date
}
