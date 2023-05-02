//
//  FourthView.swift
//  Task 7
//
//  Created by IPS-108 on 01/05/23.
//

import SwiftUI

struct FourthView: View {
    var body: some View {
        VStack{
            Text("Hi Handwerker!")
                .font(.title)

            Text("Find Your Doctor")
                .font(.title2)
        }
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
