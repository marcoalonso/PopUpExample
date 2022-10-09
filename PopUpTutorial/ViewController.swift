//
//  ViewController.swift
//  PopUpTutorial
//
//  Created by marco rodriguez on 08/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var popUpView: UIView!
    var isShowinTutorial: Bool = false
    
    @IBOutlet weak var centerPopUpWindowConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popUpView.layer.cornerRadius = 10
        popUpView.layer.masksToBounds = true
        centerPopUpWindowConstraint.constant = -800
        popUpView.alpha = 0
    }
    
    private func simpleAnimate(with duration: Double){
        UIView.animate(withDuration: duration) {
            self.view.layoutIfNeeded()
        }
    }
    
    

    @IBAction func showTutorialButton(_ sender: UIButton) {
        isShowinTutorial = !isShowinTutorial
        if isShowinTutorial {
            centerPopUpWindowConstraint.constant = 0
            popUpView.alpha = 0.9
            
            //Animation
//            simpleAnimate(with: 0.4)
            UIView.animate(withDuration: 0.9, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveEaseIn) {
                self.view.layoutIfNeeded()
            }
            
            
        } else {
            centerPopUpWindowConstraint.constant = -800
            
            //Animation
//            simpleAnimate(with: 0.2)
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0, initialSpringVelocity: 0, options: .curveEaseOut) {
                self.view.layoutIfNeeded()
            }
        }
        
    }
    
}

