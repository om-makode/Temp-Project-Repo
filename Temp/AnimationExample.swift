//
//  AnimationExample.swift
//  Temp
//
//  Created by next on 31/10/25.
//

import SwiftUI

struct AnimationExample: View {
    
    @State var isAnimatedFirst = false
    @State var isAnimatedSecond = false
    @State var isAnimatedThird = false
    @State var isAnimatedFourth = false
    
    var body: some View {
        VStack{
            Button("Animate First"){
                withAnimation(.default){
                    isAnimatedFirst.toggle()
                }
            }
            Button("Animate Second"){
                withAnimation(Animation
                                .default
                                .repeatCount(10, autoreverses: true)){
                    isAnimatedSecond.toggle()
                }
            }
            Button("Animate Third"){
               
                    isAnimatedThird.toggle()
               
            }
            Button("Animate Fourth"){
               
                    isAnimatedFourth.toggle()
               
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimatedFirst ? 50 : 25)
                .fill(isAnimatedFirst ? Color.red : Color.orange)
                .frame(width: isAnimatedFirst ? 50 : 100,
                       height: isAnimatedFirst ? 50 : 100
                )
                .rotationEffect(Angle(degrees: isAnimatedFirst ? 300 : 0))
                .offset(y: isAnimatedFirst ? 30 : -150)
                
            
            RoundedRectangle(cornerRadius: isAnimatedSecond ? 50 : 25)
                .fill(isAnimatedSecond ? Color.red : Color.orange)
                .frame(width: isAnimatedSecond ? 50 : 100,
                       height: isAnimatedSecond ? 50 : 100
                )
                .rotationEffect(Angle(degrees: isAnimatedSecond ? 300 : 0))
                .offset(y: isAnimatedSecond ? 30 : -150)

            RoundedRectangle(cornerRadius: isAnimatedThird ? 50 : 25)
                .fill(isAnimatedThird ? Color.red : Color.orange)
                .frame(width: isAnimatedThird ? 50 : 100,
                       height: isAnimatedThird ? 50 : 100
                )
                .rotationEffect(Angle(degrees: isAnimatedThird ? 300 : 0))
                .offset(y: isAnimatedThird ? 30 : -150)
                .animation(Animation
                            .default
//                            .repeatForever(autoreverses: true)
                            )
            
            RoundedRectangle(cornerRadius: isAnimatedFourth ? 50 : 25)
                .fill(isAnimatedFourth ? Color.red : Color.orange)
                .frame(width: isAnimatedFourth ? 50 : 200,
                       height: isAnimatedFourth ? 50 : 200
                )
                .animation(.spring(response: 0.7,
                                   dampingFraction: 0.3,
                                   blendDuration: 1.0))
                
        }
    }
}

struct AnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        AnimationExample()
    }
}
