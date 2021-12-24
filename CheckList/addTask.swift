//
//  addTask.swift
//  CheckList
//
//  Created by 이원재 on 12/22/21.
//

import Foundation
import SwiftUI

struct addTask: View {
//    @State private var taskName: String = ""
//    @State private var taskDate = Date()
    @ObservedObject var taskObject = stateTaskObject()
    var body: some View {
        VStack {
            Group {
                Text("Add Schedule to Your Device")
                Spacer()
                HStack {
                    Text("Task")
                    TextField(text: $taskObject.taskName, prompt: Text("Required")) {
                    }
                }
                HStack {
                    DatePicker("Due Date", selection: $taskObject.taskDate)
                }
                Button("add", action: onBtnClick(taskObject: taskObject))
                Spacer()
            }
            .padding()
        }
    }
}

func onBtnClick(taskObject : stateTaskObject) -> () -> () {
    
    return {
        
        do {
            let taskData : task = task(title: taskObject.taskName, dueDate: taskObject.taskDate)
            let jsonData = try JSONEncoder().encode(taskData)
            let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
            let pathWithFileName = documentDirectory.appendingPathComponent("tasks")
            
            do {
                try jsonData.write(to: pathWithFileName)
            } catch {
                print("무야호")
            }
            
        } catch {
            print("error has occured")
            return
        }
        
        taskObject.taskName = ""
        taskObject.taskDate = Date()
    }
}

struct addTask_Previews: PreviewProvider {
    static var previews: some View {
        addTask()
    }
}

class stateTaskObject : ObservableObject {
    @Published var taskName : String = ""
    @Published var taskDate =  Date()
}
