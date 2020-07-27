//
//  ContentView.swift
//  TextFieldNButton
//
//

import SwiftUI
import UIKit
struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State private var showEmailAlert = false
    @State private var showPasswordAlert = false
    @State private var validInputs = false
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 70.0, height: 70.0)
                    Text("Swifstor")
                        .font(.custom("Avenir-Black", size: 30.0))
                        .foregroundColor(.black)
                    Text("Learn By Doing")
                        .font(.custom("Avenir-Book", size: 15.0))
                        .foregroundColor(.black)
                }
                .padding(.top, 80)
                .padding(.bottom, 60)
                
                VStack(alignment: .leading) {
                    Text("Email")
                        .font(.caption2)
                        .bold()
                    TextField("Enter your email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.bottom, 20)
                        .alert(isPresented: $showEmailAlert) {
                            Alert(title: Text("Invalid Email"), message: Text("Please try with different email"), dismissButton: .cancel())
                        }
                    Text("Password")
                        .font(.caption2)
                        .bold()
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.bottom, 20)
                        .alert(isPresented: $showPasswordAlert) {
                            Alert(title: Text("Invalid Password"), message: Text("Please try with different password"), dismissButton: .cancel())
                        }
                    HStack{
                        Spacer()
                        Button("Forgot Password ?") {
                            //
                        }
                        .foregroundColor(.black)
                        .font(.caption)
                    }
                }
                .padding(.bottom, 20)
                .padding(.leading, 40)
                .padding(.trailing, 40)
                
                VStack {
                    NavigationLink(destination: SuccessView(), isActive: $validInputs) {
                        EmptyView()
                    }.hidden()
                    
                    Button("Login") {
                        self.loginButtonAction()
                    }
                    .foregroundColor(.white)
                    .frame(height:40, alignment: .center)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                }
                .cornerRadius(10)
                .shadow(radius: 10)
                
                .padding(.leading, 40)
                .padding(.trailing, 40)
            }
        }
    }
    
    func loginButtonAction() {
        guard email.isValidEmail() else {
            self.showEmailAlert = true
            return
        }
        guard password.isValidPassword() else {
            self.showPasswordAlert = true
            return
        }
        validInputs = true
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
