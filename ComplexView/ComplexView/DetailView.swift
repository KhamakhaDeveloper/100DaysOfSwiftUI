//
//  DetailView.swift
//  ComplexView
//
//  Created by Deepak Carpenter on 03/08/20.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ScrollView {
        VStack {
            ZStack {
                VStack {
                    GeometryReader { geo in
                        Image("fvf")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(30)
                            .frame(width: geo.size.width, height: 100)
                        HStack(spacing: 55) {
                            VStack {
                                Image(systemName: "star.fill")
                                Text("8.5/10")
                                Text("150,212")
                            }
                            VStack {
                                Image(systemName: "star.fill")
                                Text("8.5/10")
                                Text("150,212")
                            }
                            VStack {
                                Image(systemName: "star.fill")
                                Text("8.5/10")
                                Text("150,212")
                            }
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        .offset(x: 100, y: 210)
                    }
                }
            }
           
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("Ford v Ferrari")
                        .font(.largeTitle)
                        .padding(.leading, 20)
                    Spacer()
                }
                HStack {
                    Text("2019  PG-13 2hr 32min")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.leading, 20)
                    Spacer()
                }
                HStack(spacing: 20) {
                    Button(" Action ", action: {
                        
                    })
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .padding(7)
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.black, lineWidth: 1))
                    .padding(.leading, 20)
                    Button(" Biography ", action: {
                        
                    })
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .padding(7)
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.black, lineWidth: 1))
                    
                    Button(" Drama ", action: {
                        
                    })
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .padding(7)
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.black, lineWidth: 1))
                }
                .padding(.bottom, 20)
                HStack {
                    Text("Plot Summary")
                        .font(.headline)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                }
                HStack {
                    Text("American automotive designer Carroll Shelby and fearless British race car driver Ken Miles battle corporate interference, the laws of physics and their own personal demons to build a revolutionary vehicle for the Ford Motor Co.")
                        .font(.callout)
                        .foregroundColor(.gray)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                }
                .padding(.bottom, 20)
                HStack {
                    Text("Cast and Crew")
                        .font(.headline)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                }
                HStack {
                    Image("james")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80 , height: 80, alignment: .center)
                        .clipShape(Circle())
                        .padding(.leading, 20)
                    Image("mat")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80, alignment: .center)
                        .clipShape(Circle())
                    Image("cb")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80, alignment: .center)
                        .clipShape(Circle())
                    Image("cal")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80, alignment: .center)
                        .clipShape(Circle())
                }
                
            }
            .offset(y:300)
        }
    }
        .navigationBarBackButtonHidden(true)
                // Add your custom back button here
                .navigationBarItems(leading:
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        HStack {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                        }
                })
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
