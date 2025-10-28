//
//  TabViewExample.swift
//  Temp
//
//  Created by next on 24/10/25.
//

import SwiftUI

struct TabViewExample: View {
    @State var selectedTab = 0
    var body: some View {
        
        TabView(selection: $selectedTab){
            
            VStack{
                Text("First Page")
                Button("Go to profile"){
                    selectedTab = 2
                }
            
            }
                .tabItem{
                    Label("Home", systemImage: "house")
                        
                }
                .tag(0)
            
            
            Text("Second Page")
                .tabItem{
                    Label("About", systemImage: "person")
                        
                }
                .tag(1)
            
            
            Text("Profile Page")
                .tabItem{
                    Label("Profile", systemImage: "person.fill")
                        
                }
                .tag(2)
            
            
            Text("Contact Page")
                .tabItem{
                    VStack{
                        Image(systemName: "phone.fill")
                        Text("Contact")
                        
                    }
                }
                .tag(3)
        
        
        }
        
    }
}

struct TabViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExample()
    }
}
