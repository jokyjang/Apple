//
//  MarriageImage.swift
//  Love
//
//  Created by Zhaoxi Zhang on 10/5/20.
//

import SwiftUI

struct MarriageImage: View {
    var body: some View {
        Image("marriage")
            .overlay(Rectangle().stroke(Color.gray, lineWidth: 40))
            .shadow(radius: 50)
    }
}

struct MarriageImage_Previews: PreviewProvider {
    static var previews: some View {
        MarriageImage()
    }
}
