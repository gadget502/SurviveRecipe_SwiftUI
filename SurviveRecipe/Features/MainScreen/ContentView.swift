//
//  ContentView.swift
//  SurviveRecipe
//
//  Created by 김연준 on 2020/01/16.
//  Copyright © 2020 gadget502. All rights reserved.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
  var body: some View {
    BottomAppBarView()
  }
}

struct BottomAppBarView: View {
  var body: some View {
    VStack {
      UIBottomAppBarView()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
