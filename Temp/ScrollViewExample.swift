//
//  ScrollViewExample.swift
//  Temp
//
//  Created by next on 25/10/25.
//

import SwiftUI

struct ScrollViewExample: View {
    var body: some View {
        
        VStack{
        ScrollView(.vertical, showsIndicators: true, content: {
            VStack{
                ForEach(0..<50){ _ in
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width:300,height:300)
                
                }
                
            }
        })
            Text("Hello")
            ScrollView(.horizontal, showsIndicators: true, content: {
                HStack{
                ForEach(0..<50){ _ in
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width:300, height: 300)
                    }
                }
                
            })
                
            }
        }
    }


struct ScrollViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewExample()
    }
}
