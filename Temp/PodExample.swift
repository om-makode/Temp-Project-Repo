//
//  PodExample.swift
//  Temp
//
//  Created by next on 28/10/25.
//

import SwiftUI
import Kingfisher

struct PodExample: View {
    let urls = (200...320).map { "https://picsum.photos/\($0)" }
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(urls, id: \.self) { urlString in
                    if let url = URL(string: urlString) {
                        KFImage(url)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 150)
                            .cornerRadius(15)
                    }
                }
            }
            .padding()
        }
    }
}




struct PodExample_Previews: PreviewProvider {
    static var previews: some View {
        PodExample()
    }
}
