//
//  SignUp.swift
//  Barbella
//
//  Created by Jinyoung Oh on 3/16/23.
//

import SwiftUI
import Firebase
struct SignUp: View {
    @State private var username = ""
    @State private var password = ""
    @State private var email = ""
    @State private var fullname = ""
    var body: some View{
        TextField("Email", text: $email)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
//        TextField("Full name", text: $fullname)
//            .padding()
//            .frame(width: 300, height: 50)
//            .background(Color.black.opacity(0.05))
//            .cornerRadius(10)
//        TextField("Username", text: $username)
//            .padding()
//            .frame(width: 300, height: 50)
//            .background(Color.black.opacity(0.05))
//            .cornerRadius(10)
        TextField("Password", text: $password)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
        NavigationLink(destination: SignUp()){
            Text("Sign Up")
                .foregroundColor(.white)
                .frame(width:300, height:50)
                .background(Color.red)
                .cornerRadius(10)
            //register(email: email, password: password)
        }
    }
    
    func register(email:String, password:String) {
        Auth.auth().createUser(withEmail: email, password: password) {result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }

}


struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
