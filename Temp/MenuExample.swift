//
//  MenuExample.swift
//  Temp
//
//  Created by next on 24/10/25.
//

import SwiftUI

struct MenuExample: View {
    var body: some View {
        Menu("Options"){
            Button("Option 1"){
                print("Option 1")
            }
            Button("Option 2"){
                print("Option 2")
            }
        }
    }
}

struct MenuExample_Previews: PreviewProvider {
    static var previews: some View {
        MenuExample()
    }
}
