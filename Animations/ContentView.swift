//
//  ContentView.swift
//  Animations
//
//  Created by Waihon Yew on 02/06/2021.
//

import SwiftUI

struct ContentView: View {
  // 1. A state to store the amount of drag
  @State private var dragAmount = CGSize.zero

  var body: some View {
    LinearGradient(gradient: Gradient(colors: [.yellow, .red]),
                   startPoint: .topLeading,
                   endPoint: .bottomTrailing)
      .frame(width: 300, height: 200)
      .clipShape(RoundedRectangle(cornerRadius: 10))
      // 2. Adjust the X and Y coordiante of a view
      // without moving other views around it.
      .offset(dragAmount)
      // 3. Create a DragGesture and attach it to the card
      .gesture(
        DragGesture()
          // translation tells us how far it's moved from the start point
          .onChanged { self.dragAmount = $0.translation }
          // Contextual type for closure argument list expects 1 argument,
          // which cannot be implicitly ignored
          .onEnded { _ in self.dragAmount = .zero }
      )
      .animation(.spring())
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
