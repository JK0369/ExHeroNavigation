//
//  VC2.swift
//  ExHeroNavigation
//
//  Created by Jake.K on 2022/02/25.
//

import UIKit
import Hero

class VC2: UIViewController {
  private let label: UILabel = {
    let label = UILabel()
    label.textColor = .black
    label.text = "두 번째 뷰"
    return label
  }()
  private let dismissButton: UIButton = {
    let button = UIButton()
    button.setTitle("back", for: .normal)
    button.setTitleColor(.systemBlue, for: .normal)
    button.setTitleColor(.blue, for: .highlighted)
    return button
  }()
  private let orangeView: UIView = {
    let view = UIView()
    view.backgroundColor = .systemOrange
    return view
  }()
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.addSubview(self.label)
    self.label.translatesAutoresizingMaskIntoConstraints = false
    self.label.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 56).isActive = true
    self.label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    
    self.view.addSubview(self.dismissButton)
    self.dismissButton.translatesAutoresizingMaskIntoConstraints = false
    self.dismissButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
    self.dismissButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    
    self.view.backgroundColor = .white
    self.view.addSubview(self.orangeView)
    self.orangeView.translatesAutoresizingMaskIntoConstraints = false
    self.orangeView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150).isActive = true
    self.orangeView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    self.orangeView.widthAnchor.constraint(equalToConstant: 300).isActive = true
    self.orangeView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    
    self.dismissButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    
    self.isHeroEnabled = true
    self.hero.modalAnimationType = .selectBy(presenting: .pull(direction: .left), dismissing: .slide(direction: .down))
    self.orangeView.hero.id = "myAnimationTarget"
  }
  
  @objc private func didTapButton() {
    self.dismiss(animated: true)
  }
}
