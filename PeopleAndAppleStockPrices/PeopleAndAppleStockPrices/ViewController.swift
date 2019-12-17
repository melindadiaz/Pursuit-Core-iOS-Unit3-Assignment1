//
//  ViewController.swift
//  PeopleAndAppleStockPrices
//
//  Created by Alex Paul on 12/7/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//
    
    var userInfoRef = [UserInfo]()
    
    
    
    
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
    userInfoRef = UserInfo.getUserInfo()
    print(userInfoRef.count)
  }

//    func stockDifference() -> Double {
//       let sDiff = close - open
//        return sDiff
//    }

}

