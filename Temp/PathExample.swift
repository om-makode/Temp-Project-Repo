//
//  PathExample.swift
//  Temp
//
//  Created by next on 31/10/25.
//

import SwiftUI

struct PathExample: View {
    @State private var scale: CGFloat = 1.0

    var body: some View {
        VStack{
            Text("Animated Circle👇  Just tap on it")
            Circle()
                .scale(scale)
                .fill(Color.orange)
                .frame(width: 100, height: 100)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 1.5)) {
                        scale = scale == 1.0 ? 4.5 : 1.0
                    }
                }
            Text("----------------------------------------------")
            
            
            Path { path in
                        path.move(to: CGPoint(x: 50, y: 50))       // start point
                        path.addLine(to: CGPoint(x: 150, y: 50))   // horizontal line
                        path.addLine(to: CGPoint(x: 100, y: 150))  // down line
                        path.closeSubpath()                        // close shape
                    }
                    .stroke(Color.purple, lineWidth: 3)
            
            Text("----------------------------------------------")
            
            Path { path in
                        path.addEllipse(in: CGRect(x: 50, y: 50, width: 100, height: 100))
                        path.move(to: CGPoint(x: 100, y: 50))
                        path.addLine(to: CGPoint(x: 100, y: 150))
                    }
                    .stroke(Color.blue, lineWidth: 2)
            
            Text("----------------------------------------------")
            
            
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 100, height: 100)

                        Rectangle()
                            .stroke(Color.red, lineWidth: 4)
                            .frame(width: 150, height: 80)

                        Capsule()
                            .fill(Color.green)
                            .frame(width: 200, height: 80)
        }
        
    }
}


struct PathExample_Previews: PreviewProvider {
    static var previews: some View {
        PathExample()
    }
}
