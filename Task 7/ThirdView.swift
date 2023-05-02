//
//  ThirdView.swift
//  Task 7
//
//  Created by IPS-108 on 01/05/23.
//

import SwiftUI

struct ThirdView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("bgImg")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.mint)
                            .frame(height: 180)
                            .ignoresSafeArea(edges: .top)
                        
                        VStack(spacing: 20){
                            HStack{
                                Spacer()
                                VStack{
                                    Text("Hi Handwerker!")
                                        .font(.title2)
                                        .padding(.top,50)
                                        .padding(.trailing,120)
                                    
                                    Text("Find Your Doctor")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .padding(.trailing,50)
                                }
                                Spacer()
                                Image("img2")
                                    .padding()
                                    .padding(.top,50)
                                Spacer()
                            }
                            
                            TextField("Search...", text: $searchText)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(.horizontal,40)
                            
                        }
                        .foregroundColor(.white)
                        
                    }
                    .ignoresSafeArea(edges: .top)
                    ScrollView{
                        VStack{
                            Text("Live Doctors")
                                .padding(.trailing,220)
                                .font(.system(size: 20, weight:.bold))
                            ScrollView(.horizontal){
                                HStack{
                                    ZStack{
                                        Image("doc4")
                                            .overlay(foregroundColor(.black))
                                        Image(systemName: "play.circle")
                                    }
                                    
                                    
                                }
                            }
                        }
                    }
                    Spacer()
                }
                
            }
        }
    }
}





struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
