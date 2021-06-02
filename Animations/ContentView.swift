//
//  ContentView.swift
//  Animations
//
//  Created by Waihon Yew on 02/06/2021.
//

import SwiftUI

struct ContentView: View {
  @State private var animationAmount: CGFloat = 1

  var body: some View {
    Button("Tap Me") {
      self.animationAmount += 0.25
    }
    .padding(50)
    .background(Color.red)
    .foregroundColor(.white)
    .clipShape(Circle())
    .scaleEffect(animationAmount)
    .animation(.default)
    // Add a Gaussian blur with a special radius:
    // Blur raidus will start at 0 (no blur), then move to
    // 1.25 points, 2.5 points, 3.75 points, and beyond.
    .blur(radius: (animationAmount - 1) * 5)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
