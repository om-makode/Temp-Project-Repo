//
//  AlertViewExample.swift
//  Temp
//
//  Created by next on 24/10/25.
//

import SwiftUI

struct AlertViewExample: View {
    @State var showAlert = false
    var body: some View {
        
        Button("Show Alert"){
            showAlert = true
        }
         
            
        
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Alert Title"),
                message: Text("Alert Message"),
                dismissButton: .default(Text("Dismiss"))
            )
            
        }
        
    }
    
}

struct AlertViewExample_Previews: PreviewProvider {
    static var previews: some View {
        AlertViewExample()
    }
}
