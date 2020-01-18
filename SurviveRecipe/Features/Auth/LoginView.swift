//
//  LoginView.swift
//  SurviveRecipe
//
//  Created by 김연준 on 2020/01/18.
//  Copyright © 2020 gadget502. All rights reserved.
//

import Foundation
import SwiftUI

struct AuthView: View {
  var body: some View {
    GeometryReader { geometry in
      ZStack {
        Image("LoginScreenBackground")
          .resizable()
          .aspectRatio(geometry.size, contentMode: .fit)
          .edgesIgnoringSafeArea(.all)
        
        VStack {
          ForEach (1...10, id: \.self) { _ in
            Text("Hallo")
              .foregroundColor(Color.white)
          }
        }
      }
    }
  }
}


struct AuthView_Previews: PreviewProvider {
  static var previews: some View {
    AuthView()
  }
}
