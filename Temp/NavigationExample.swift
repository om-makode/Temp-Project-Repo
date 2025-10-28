//
//  NavigationExample.swift
//  Temp
//
//  Created by next on 27/10/25.
//

import SwiftUI

struct NavigationExample: View {
    @State var text : String = ""
    var body: some View {
        NavigationView{
            VStack{
                
                NavigationLink(destination: ScreenB(message: "Hello", text: $text)){
                    Text("Go to Second Screen")
                  
                }
                Text(text)
                
            }.navigationTitle("Screen A")
        }
        
    }
}

struct ScreenB: View {
    let message : String
    @Binding var text: String
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            Text("Second Screen")
            Text("Message : \(message)")
            TextField("Enter Text", text: $text).padding()
            Button("Dismiss"){
                presentationMode.wrappedValue.dismiss()
            }
        }
        
    }
}

struct NavigationExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationExample()
    }
}
