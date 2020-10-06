//
//  ContentView.swift
//  Love
//
//  Created by Zhaoxi Zhang on 10/5/20.
//

import SwiftUI

struct ContentView: View {
    private let meetingDate: Date = DateComponents(
        calendar: Calendar(identifier: Calendar.Identifier.iso8601),
        year: 2019,
        month: 4,
        day: 20,
        hour: 20,
        minute: 20,
        second: 20
    ).date!
    
    @State var date = Date()
    
    private var timer: Timer {
        Timer.scheduledTimer(
            withTimeInterval: 1,
            repeats: true,
            block: { timer in
                self.date = Date()
            }
        )
    }
    
    private func timeInterval() -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.day, .hour, .minute, .second]
        formatter.unitsStyle = .brief
        return formatter.string(from: meetingDate, to: self.date)!
    }
    
    var body: some View {
        Text("I'm together with Scarlett for \(timeInterval()) -- Jesse")
            .font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color.red)
            .multilineTextAlignment(.center)
            .offset(y: 300.0)
            .onAppear(perform: {let _ = self.timer})
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
