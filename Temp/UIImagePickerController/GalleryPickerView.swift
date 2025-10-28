//
//  GalleryPickerView.swift
//  Temp
//
//  Created by next on 27/10/25.
//

import SwiftUI

struct GalleryPickerView: View {
    @State private var selectedImage: UIImage?
    @State private var showPicker = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            if let img = selectedImage {
                Image(uiImage: img)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                    .padding()
            } else {
                Text("No Image Selected")
                    .font(.headline)
            }
            
            Button("Open Gallery") {
                showPicker.toggle()
            }
            .padding()
            .background(Color.blue) // ✅ Updated
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .sheet(isPresented: $showPicker) {
            ImagePicker(image: $selectedImage) // ✅ Updated
        }
    }
}

struct GalleryPickerView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryPickerView()
    }
}
