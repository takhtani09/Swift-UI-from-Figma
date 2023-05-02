//
//  ContentView.swift
//  Task 7
//
//  Created by IPS-108 on 01/05/23.
//

import SwiftUI

struct ContentView: View {
    @State var isShowView2: Bool = false
    var body: some View {
        ZStack{
            Image("bgImg")
                .resizable()
                .ignoresSafeArea()
            Circle()
                .foregroundColor(.mint)
                   .frame(width: 350, height: 350)
                   .offset(x: -UIScreen.main.bounds.width/2 + 50, y: -UIScreen.main.bounds.height/2 + 50)
            VStack{
                Image("doc1")
                    .padding(.vertical,30)
                Spacer()
                Text("Find Trusted Doctors")
                    .font(.title)
                Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.")
                    .multilineTextAlignment(.center)
                    .padding()
                    .padding(.top, 1)
                Spacer()
                Button{
                    isShowView2.toggle()
                }label: {
                    Text("Get Started")
                        .foregroundColor(.white)
                }
                .fullScreenCover(isPresented: $isShowView2) {
                    SecondView()
                }
                .frame(width: 300,height: 50)
                .background(.mint)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
                Button{
                    print("hello")
                }label: {
                    Text("Skip")
                        .foregroundColor(.black)
                        .font(.system(size: 22))
                }
                Spacer()
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
