//
//  MenuInfo.swift
//  BaeMinApp
//
//  Created by KEEN on 2021/09/29.
//

import Foundation
import UIKit

class MenuInfo {
  var name: String
  var image: UIImage
  
  init(name: String) {
    self.name = name
    self.image = UIImage(named: name) ?? UIImage(systemName: "square.slash")!
  }
}
