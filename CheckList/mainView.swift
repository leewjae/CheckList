//
//  BottomTab.swift
//  CheckList
//
//  Created by 이원재 on 12/22/21.
//

import SwiftUI

struct BottomTab: View {
    var body: some View {
        TabView {
            Tasks()
                .tabItem {
                    Image(systemName: "pencil")
                    Text("To Do's")
                }
            addTask()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Add Task")
            }
            Text("Calendar")
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calendar")
            }
            Text("Finished Task")
                .tabItem {
                    Image(systemName: "checkmark")
                    Text("See Task Done")
            }
        }
    }
}

struct BottomTab_Previews: PreviewProvider {
    static var previews: some View {
        BottomTab()
    }
}
