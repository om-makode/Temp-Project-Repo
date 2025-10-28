//
//  ToolBarExample.swift
//  Temp
//
//  Created by next on 24/10/25.
//

import SwiftUI

struct ToolBarExample: View {
    var body: some View {
        NavigationView{
            ZStack{
            
                Color.green.ignoresSafeArea()
                Text("Hello").foregroundColor(.red)
            
            }
            .navigationTitle("Navigation Title")
            
//                .navigationBarItems(
//                    leading: Image(systemName: "house"),
//                    trailing: Image(systemName: "heart"))
            
            
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        Menu("\(Image(systemName: "house"))"){
                            Button("1"){
                                print("1")
                            }
                            Button("2"){
                                print("2")
                            }
                            Button("1"){
                                print("1")
                            }
                            Button("2"){
                                print("2")
                            }
                            Button("1"){
                                print("1")
                            }
                            
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing){
                        Image(systemName: "heart.fill")
                    }
                    ToolbarItem(placement: .principal){
                        Image(systemName: "house.fill")
                    }
                    ToolbarItem(placement: .bottomBar){
                        Image(systemName: "phone")
                    }
                    ToolbarItem(placement: .automatic){
                        Image(systemName: "person")
                    }
                    ToolbarItem(placement: .status){
                        Image(systemName: "person.fill")
                    }
                    
                }
        }
    }
}

struct ToolBarExample_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarExample()
    }
}
