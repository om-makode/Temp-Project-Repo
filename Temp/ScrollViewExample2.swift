//
//  ScrollViewExample2.swift
//  Temp
//
//  Created by next on 25/10/25.
//

import SwiftUI

struct ScrollViewExample2: View {
    var body: some View {
        ScrollView{
            VStack{
                ForEach(0..<50){ _ in
                    ScrollView(.horizontal, showsIndicators: true, content: {
                        HStack{
                            ForEach(0..<50){ _ in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 150, height: 120)
                                    .shadow(radius: 10)
                                    .padding(15)
                            }
                        }
                        
                        
                            
                    })
                }
            }
        }
    }
}

struct ScrollViewExample2_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewExample2()
    }
}
