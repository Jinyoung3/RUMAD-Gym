//
//  HomeView.swift
//  Home Page
//
//  Created by Mannav Pilania on 3/16/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            Image("Border2").ignoresSafeArea()
                .overlay(Text("Your\nWorkouts"), alignment: .topLeading)
                .foregroundColor(.white)
                .font(.system(size: 40, weight: .heavy))

            let mybutton = Button{
                print("hh")
            }label: {
                Image("BaseButton")
            }
            Button{
               print("kjjj")
            }label: {
                Image("Button")
            }
            /*Button{
                print("rn")
            }label: {
                Image("BaseButton")
            }*/
        
            Spacer()
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
