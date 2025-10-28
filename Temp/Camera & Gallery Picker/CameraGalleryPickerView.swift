//
//  CameraGalleryPickerView.swift
//  Temp
//
//  Created by next on 27/10/25.
//

import SwiftUI

struct CameraGalleryPickerView: View {
    
    @State private var image: UIImage?
    @State private var showPicker = false
    @State private var pickerSource: UIImagePickerController.SourceType = .photoLibrary
    
    var body: some View {
        VStack(spacing: 20) {
            
            if let img = image {
                Image(uiImage: img)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
            } else {
                Text("No Image Selected")
                    .font(.headline)
            }
            
            HStack {
                Button("Open Camera") {
                    if UIImagePickerController.isSourceTypeAvailable(.camera) {
                        pickerSource = .camera
                        showPicker.toggle()
                    }
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                Button("Open Gallery") {
                    pickerSource = .photoLibrary
                    showPicker.toggle()
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
        .sheet(isPresented: $showPicker) {
            ImagePicker2(image: $image, sourceType: pickerSource)
        }
        .padding()
    }
}

struct CameraGalleryPickerView_Previews: PreviewProvider {
    static var previews: some View {
        CameraGalleryPickerView()
    }
}
