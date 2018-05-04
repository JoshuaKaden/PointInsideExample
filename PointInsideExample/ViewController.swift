//
//  ViewController.swift
//  PointInsideExample
//
//  Created by Kaden, Joshua on 5/4/18.
//  Copyright © 2018 NYC DoITT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let orangeView = ColorOrangeView()
    private let redView = ColorRedView()
    private let yellowView = ColorYellowView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redTap = UITapGestureRecognizer(target: self, action: #selector(didTapColorView(_:)))
        redView.addGestureRecognizer(redTap)
        
        let orangeTap = UITapGestureRecognizer(target: self, action: #selector(didTapColorView(_:)))
        orangeView.addGestureRecognizer(orangeTap)

        let yellowTap = UITapGestureRecognizer(target: self, action: #selector(didTapColorView(_:)))
        yellowView.addGestureRecognizer(yellowTap)

        view.addSubview(redView)
        view.addSubview(orangeView)
        view.addSubview(yellowView)
    }

    @objc func didTapColorView(_ sender: UITapGestureRecognizer) {
        guard let tappedView = sender.view else { return }
        let tappedColorName: String
        switch tappedView {
        case orangeView:
            tappedColorName = "Orange"
        case redView:
            tappedColorName = "Red"
        case yellowView:
            tappedColorName = "Yellow"
        default:
            return
        }
        
        showAlert(title: tappedColorName)
    }
    
    private func showAlert(title: String) {
        let vc = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        vc.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(vc, animated: true, completion: nil)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        redView.frame = view.bounds
        
        let width = view.bounds.width
        let height = view.bounds.height
        
        orangeView.frame = redView.frame.insetBy(dx: width / 8, dy: height / 8)
        orangeView.center = redView.center
        
        yellowView.frame = redView.frame.insetBy(dx: width / 4, dy: height / 4)
        yellowView.center = redView.center
    }
}
