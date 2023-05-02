//
//  SecondView.swift
//  Task 7
//
//  Created by IPS-108 on 01/05/23.
//

import SwiftUI

struct SecondView: View {
    @State var isShowView1: Bool = false
    var body: some View {
        ZStack{
            Image("bgImg")
                .resizable()
                .ignoresSafeArea()
            Circle()
                .foregroundColor(.mint)
                   .frame(width: 350, height: 350)
                   .offset(x: UIScreen.main.bounds.width/2 - 50, y: -UIScreen.main.bounds.height/2 + 50)
            VStack{
                Image("doc2")
                    .padding(.vertical,30)
                Spacer()
                Text("Choose Best Doctors")
                    .font(.title)
                Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.")
                    .multilineTextAlignment(.center)
                    .padding()
                    .padding(.top, 1)
                Spacer()
                Button{
                    print("hello")
                }label: {
                    Text("Get Started")
                        .foregroundColor(.white)
                }
                .frame(width: 300,height: 50)
                .background(.mint)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
                Button{
                    isShowView1.toggle()
                }label: {
                    Text("Skip")
                        .foregroundColor(.black)
                        .font(.system(size: 22))
                }
                .fullScreenCover(isPresented: $isShowView1) {
                    ThirdView()
                }
                Spacer()
                Spacer()
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
