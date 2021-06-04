//
//  ContentView.swift
//  Animations
//
//  Created by Waihon Yew on 02/06/2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Button("Tap Me") {
      // do nothing
    }
    .frame(width: 200, height: 200)
    .background(Color.blue)
    .foregroundColor(.white)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
