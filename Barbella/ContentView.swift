//
//  ContentView.swift
//  Barbella
//
//  Created by Jinyoung Oh on 3/9/23.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
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
                    Text("Log In")
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
                    Button("Login"){
                        //register(email: email, password: password)
                        login(email: email, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width:300, height:50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    NavigationLink(destination: Text("You are logged in @\(email)"),isActive: $showingLoginScreen){
                        EmptyView()
                        Spacer()
                    }
                    NavigationLink(destination: SignUp()){
                        Text("Sign Up")
                            .foregroundColor(.white)
                            .frame(width:300, height:50)
                            .background(Color.red)
                            .cornerRadius(10)
                    }
//                    }
                }.navigationTitle("Sign Up")
            }
            .navigationBarHidden(true)
        }
        
        
    }
    struct SignView: View {
        var body: some View{
            NavigationView{
                ZStack{
                    navigationTitle("Sign up screen")
                    Color.pink
                }
            }

        }
    }
    
    func login(email:String, password:String){
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error != nil {
                showingLoginScreen = true
                print(error!.localizedDescription)
            }
        }
    }
    
//    func register(email:String, password:String) {
//        Auth.auth().createUser(withEmail: email, password: password) {result, error in
//            if error != nil {
//                print(error!.localizedDescription)
//            }
//        }
//    }
    
//    func autheticateUser(username:String, password:String){
//        if username.lowercased() == "poopyhead"{
//            wrongUsername=0
//            if password.lowercased()=="abc123"{
//                wrongPassword=0
//                showingLoginScreen=true
//            }
//            else{
//                wrongPassword=2
//            }
//        }
//        else{
//            wrongUsername=2
//        }
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
