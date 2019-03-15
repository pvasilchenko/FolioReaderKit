//
//  FolioPresentationController.swift
//  VoVi
//
//  Created by Vitaly Chernysh on 3/14/19.
//  Copyright © 2019 Yalantis. All rights reserved.
//

import UIKit

final class FolioPresentationController: UIPresentationController {
  
  var touchForwardingView: TouchForwardingView!
  
  override var frameOfPresentedViewInContainerView: CGRect {
    guard let containerView = containerView else { return CGRect.zero }

    let bottomToolbarHeight: CGFloat = 52.0

    return CGRect(
      x: 0.0,
      y: 0.0,
      width: containerView.bounds.width,
      height: containerView.bounds.height - bottomToolbarHeight
    )
  }

  override func containerViewWillLayoutSubviews() {
    super.containerViewWillLayoutSubviews()

    presentedView?.frame = frameOfPresentedViewInContainerView
  }

  override func presentationTransitionWillBegin() {
    super.presentationTransitionWillBegin()

    guard let containerView = containerView else { return }

    touchForwardingView = TouchForwardingView(frame: containerView.bounds)
    touchForwardingView.passthroughViews = [presentingViewController.view]

    containerView.insertSubview(touchForwardingView, at: 0)
  }

}
