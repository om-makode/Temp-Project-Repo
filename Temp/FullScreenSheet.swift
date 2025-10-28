//
//  FullScreenSheet.swift
//  Temp
//
//  Created by next on 24/10/25.
//

import SwiftUI

struct FullScreenSheet: View {
    @State var isShown = false
    var body: some View {
        Button("Show Full Screen Sheet123"){
            isShown.toggle()
        }
        .fullScreenCover(isPresented: $isShown) {
            ShowFullScreenSheet(isShown: $isShown)
        }
    }
}


struct ShowFullScreenSheet: View{
    @Binding var isShown: Bool
    var body: some View{
        Button("Dismiss"){
            isShown = false
        }
    }
}

struct FullScreenSheet_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenSheet()
    }
}
