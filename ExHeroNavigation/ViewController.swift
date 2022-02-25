//
//  ViewController.swift
//  ExHeroNavigation
//
//  Created by Jake.K on 2022/02/25.
//

import UIKit
import Hero

class ViewController: UIViewController {

  @IBOutlet weak var blueView: UIView!
  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "첫 번째 VC"
    self.blueView.isHeroEnabled = true // <-
    self.blueView.hero.id = "myAnimationTarget" // <-
  }

  @IBAction func push(_ sender: Any) {
    let vc2 = VC2()
    vc2.modalPresentationStyle = .fullScreen
    self.present(vc2, animated: true)
  }
}
