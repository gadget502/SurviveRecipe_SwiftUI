//
//  UIBottomAppBarView.swift
//  SurviveRecipe
//
//  Created by 김연준 on 2020/01/18.
//  Copyright © 2020 gadget502. All rights reserved.
//

import Foundation
import SwiftUI
import MaterialComponents
import Then

struct UIBottomAppBarView: UIViewRepresentable {
  func makeUIView(context: Context) -> MDCBottomAppBarView {
    let bar = MDCBottomAppBarView()
    let buttonImage = UIImage(systemName: "plus")?.withRenderingMode(.alwaysTemplate)
    
    bar.barTintColor = UIColor(named: "main")
    
    
    bar.floatingButton.setImage(buttonImage, for: .normal)
    bar.floatingButton.backgroundColor = UIColor(named: "secondary")
    bar.floatingButton.addTarget(
      context.coordinator,
      action: #selector(Coordinator.onFloatingButtonCkick),
      for: .touchUpInside
    )
    
    bar.leadingBarButtonItems = [UIBarButtonItem(
      image: UIImage(systemName: "line.horizontal.3")?.withRenderingMode(.alwaysTemplate),
      style: .done,
      target: context.coordinator,
      action: #selector(Coordinator.onNavigationClick)
      )]
    return bar
  }
  
  func updateUIView(_ uiView: MDCBottomAppBarView, context: Context) {
    // nothing
  }
  
  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }
  
  class Coordinator: NSObject {
    var parent: UIBottomAppBarView
    
    init(_ bottomAppBar: UIBottomAppBarView) {
      parent = bottomAppBar
    }
    
    @objc func onNavigationClick() {
      print("onNavigationClick")
    }
    
    @objc func onFloatingButtonCkick() {
      print("onFloatingButtonCkick")
    }
  }
}
