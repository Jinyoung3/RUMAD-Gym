//
//  SignUp.swift
//  Barbella
//
//  Created by Jinyoung Oh on 3/16/23.
//

import SwiftUI
import Firebase
struct SignUp: View {
    @State private var email = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingSignUpScreen = false
    @State private var isShowingDetailView = false
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                VStack{
                    Text("Sign Up")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width:CGFloat(wrongUsername))
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width:CGFloat(wrongPassword))
                    Button("Sign Up"){
                        register(email: email, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width:300, height:50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    NavigationLink(destination: HomeView(), isActive: $showingSignUpScreen){
                        EmptyView()
                        Spacer()
                    }
                    NavigationLink(destination: ContentView()){
                        Text("Log In")
                            .foregroundColor(.white)
                            .frame(width:300, height:50)
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                }.navigationTitle("Back")
            }
            .navigationBarHidden(true)
        }
        
        
    }
//    @State private var username = ""
//    @State private var password = ""
//    @State private var email = ""
//    @State private var fullname = ""
//    var body: some View{
//        TextField("Email", text: $email)
//            .padding()
//            .frame(width: 300, height: 50)
//            .background(Color.black.opacity(0.05))
//            .cornerRadius(10)
////        TextField("Full name", text: $fullname)
////            .padding()
////            .frame(width: 300, height: 50)
////            .background(Color.black.opacity(0.05))
////            .cornerRadius(10)
////        TextField("Username", text: $username)
////            .padding()
////            .frame(width: 300, height: 50)
////            .background(Color.black.opacity(0.05))
////            .cornerRadius(10)
//        TextField("Password", text: $password)
//            .padding()
//            .frame(width: 300, height: 50)
//            .background(Color.black.opacity(0.05))
//            .cornerRadius(10)
//        NavigationLink(destination: SignUp()){
//            Text("Sign Up")
//                .foregroundColor(.white)
//                .frame(width:300, height:50)
//                .background(Color.red)
//                .cornerRadius(10)
//            //register(email: email, password: password)
//        }
//    }
    
    func register(email:String, password:String) {
        Auth.auth().createUser(withEmail: email, password: password) {result, error in
            if error != nil {
                showingSignUpScreen = true
                print(error!.localizedDescription)
            }
//            else {
//                SignUp()
//            }
        }
    }

}


struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}


