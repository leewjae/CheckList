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
            Text("HELLO Name")
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Add Task")
            }
            Text("Friends Screen")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Friends")
            }
            Text("Nearby Screen")
                .tabItem {
                    Image(systemName: "mappin.circle.fill")
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
