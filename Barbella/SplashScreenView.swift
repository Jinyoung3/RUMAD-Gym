//
//  SplashScreenView.swift
//  Barbella
//
//  Created by Jinyoung Oh on 3/15/23.
//

import SwiftUI
struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if isActive{
            ContentView()
        }
        else{
            VStack{
                VStack{
                    Image("logo3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .font(.system(size:80))
                        .foregroundColor(.red)
                        Text("Barbella")
                            .font(Font.custom("Baskerville-Bold", size: 26))
                            .foregroundColor(.black.opacity(0.8))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now()+2.0){
                    withAnimation{
                        self.isActive=true
                    }
                    
                }
        }
            
            }
        }
    }


struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
        
    }
}
