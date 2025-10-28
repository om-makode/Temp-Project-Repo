//
//  ToolBarExample2.swift
//  Temp
//
//  Created by next on 24/10/25.
//

import SwiftUI

struct ToolBarExample2: View {
    @State var text: String = "Om"
    var body: some View {
        NavigationView{
            ZStack{
            Color.orange.ignoresSafeArea()
            
                ScrollView{
                    TextField("placeholder", text: $text)
                
                    ForEach(0..<50){ item in
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 200, height: 200)
                    }
                
                }
                
                
            Text("Hello")
                .navigationTitle("Hi")
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        Image(systemName: "house")
                    }
                    ToolbarItem(placement: .navigationBarTrailing){
                        Image(systemName: "person")
                    }
                    
                }
                
//                .navigationBarHidden(true)
                
                
            
                
            }
            
        }
    }
}

struct ToolBarExample2_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarExample2()
    }
}
