//
//  ContentView.swift
//  Temp
//
//  Created by next on 23/10/25.
//
import SwiftUI

struct ContentView: View {
    @State private var showSheet = false

    var body: some View {
        
        
        
        PodExample()
        
        
        
        
        
//            VStack {
//                Spacer()
//                Text("Mini Player")
//                    .padding()
//                    .background(Color.blue)
//                    .cornerRadius(12)
//                    .onTapGesture {
//                        showSheet.toggle()
//                    }
//            }
//            .sheet(isPresented: $showSheet) {
//                VStack {
//                    Text("Expanded Player")
//                        .font(.largeTitle)
////                    Spacer()
//                }
////                .presentationDetents([.medium, .large])
////                .presentationDragIndicator(.visible)
//            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
