//
//  FolioTransitionDelegate.swift
//  VoVi
//
//  Created by Vitaly Chernysh on 3/14/19.
//  Copyright © 2019 Yalantis. All rights reserved.
//

import UIKit

final class FolioTransitioningDelegate: NSObject, UIViewControllerTransitioningDelegate {

  func presentationController(
    forPresented presented: UIViewController,
    presenting: UIViewController?,
    source: UIViewController) -> UIPresentationController? {
    return FolioPresentationController(presentedViewController: presented, presenting: presenting)
  }

}
