//
//  SegmentedControllExample.swift
//  Temp
//
//  Created by next on 24/10/25.
//

import SwiftUI

struct SegmentedControllExample: View {
    @State var selectedOption = 0
    
    let options = ["First", "Second", "Third"]
    var body: some View {
        VStack{
        Picker("Options", selection: $selectedOption){
            Text("First").tag(0)
            Text("Second").tag(1)
        }.pickerStyle(SegmentedPickerStyle())
        
            
        Text("Hello")
            
            
            
        Picker("Picker",selection: $selectedOption){
            ForEach(0..<options.count){ index in
                Text(options[index])
                    .tag("index")
                    
            }
        }.pickerStyle(SegmentedPickerStyle())
        
        Text("\(options[selectedOption])")
            
        }
    }
}

struct SegmentedControllExample_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControllExample()
    }
}
