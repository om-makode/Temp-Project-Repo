//
//  GeometryReaderExample.swift
//  Temp
//
//  Created by next on 28/10/25.
//

import SwiftUI

struct GeometryReaderExample: View {
    var body: some View {
        GeometryReader{ geometry in
            HStack(spacing: 0){
                Rectangle().fill(Color.red).frame(width:geometry.size.width * 0.6666)
                Rectangle().fill(Color.orange)
                
            }
        }
       
    }
}

struct GeometryReaderExample_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderExample()
    }
}
