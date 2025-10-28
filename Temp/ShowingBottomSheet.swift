//
//  ShowingBottomSheet.swift
//  Temp
//
//  Created by next on 24/10/25.
//

import SwiftUI

struct ShowingBottomSheet: View {
    @State var showSheet = false
    var body: some View {
        VStack{
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button("Show Bottom Sheet123123"){
            showSheet.toggle()
        }
            Text("Just for Testing")
        
        }
        .sheet(isPresented: $showSheet) {
            ShowBottomSheet(showSheet: $showSheet)
        }
    }
}

struct ShowBottomSheet: View{
    @Binding var showSheet: Bool
    
    var body: some View{
        Button("Dismiss"){
            showSheet = false
        }
    }
}

struct ShowingBottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        ShowingBottomSheet()
    }
}
