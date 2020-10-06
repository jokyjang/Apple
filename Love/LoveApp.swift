//
//  LoveApp.swift
//  Love
//
//  Created by Zhaoxi Zhang on 10/5/20.
//

import SwiftUI

@main
struct LoveApp: App {
    var body: some Scene {
        WindowGroup {
            ZStack {
                MarriageImage()
                ContentView()
            }
        }
    }
}

struct LoveApp_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            MarriageImage()
            ContentView()
        }
    }
}
