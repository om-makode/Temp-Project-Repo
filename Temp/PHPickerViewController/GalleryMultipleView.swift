//
//  GalleryMultipleView.swift
//  Temp
//
//  Created by next on 27/10/25.
//

import SwiftUI

struct GalleryMultipleView: View {
    
    @State private var showPicker = false
    @State private var images: [UIImage] = []
    
    var body: some View {
        VStack {
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(images, id: \.self) { img in
                        Image(uiImage: img)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
            
            Button("Select Images") {
                showPicker.toggle()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .sheet(isPresented: $showPicker) {
            MultipleImagePicker(images: $images)
        }
    }
}

struct GalleryMultipleView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryMultipleView()
    }
}
