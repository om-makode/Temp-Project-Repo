//
//  LazyVGridExample.swift
//  Temp
//
//  Created by next on 25/10/25.
//

import SwiftUI

struct LazyVGridExample: View {
    let columns: [GridItem] = [
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        
        LazyVGrid(columns: columns){
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
        } 
    }
}

struct LazyVGridExample_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridExample()
    }
}
