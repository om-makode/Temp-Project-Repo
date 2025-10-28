//
//  MultipleImagePicker.swift
//  Temp
//
//  Created by next on 27/10/25.
//

import SwiftUI
import PhotosUI

struct MultipleImagePicker: UIViewControllerRepresentable {
    
    @Binding var images: [UIImage]
    
    func makeUIViewController(context: Context) -> PHPickerViewController {
        var config = PHPickerConfiguration()
        config.selectionLimit = 0 // ✅ 0 means unlimited selection
        config.filter = .images   // ✅ Only images
        
        let picker = PHPickerViewController(configuration: config)
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, PHPickerViewControllerDelegate {
        
        let parent: MultipleImagePicker
        
        init(_ parent: MultipleImagePicker) {
            self.parent = parent
        }
        
        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            
            parent.images.removeAll()
            
            for result in results {
                if result.itemProvider.canLoadObject(ofClass: UIImage.self) {
                    result.itemProvider.loadObject(ofClass: UIImage.self) { image, _ in
                        if let img = image as? UIImage {
                            DispatchQueue.main.async {
                                self.parent.images.append(img)
                            }
                        }
                    }
                }
            }
            
            picker.dismiss(animated: true)
        }
    }
}

