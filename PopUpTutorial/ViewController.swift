//
//  ViewController.swift
//  PopUpTutorial
//
//  Created by marco rodriguez on 08/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var popUpView: UIView!
    var isShowinTutorial: Bool = false
    
    @IBOutlet weak var centerPopUpWindowConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popUpView.aplicarSombraImagen(containerView: backgroundImage, cornerRadious: 12)
        centerPopUpWindowConstraint.constant = -800
        
        
        //Style shadow
        popUpView.layer.shadowColor = UIColor.black.cgColor
        popUpView.layer.shadowOpacity = 1
        popUpView.layer.shadowOffset = .zero
        popUpView.layer.shadowRadius = 20
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
            
            //Animation
//            simpleAnimate(with: 0.4)
            UIView.animate(withDuration: 0.9, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveEaseIn) {
                self.view.layoutIfNeeded()
                
                self.backgroundImage.layer.opacity = 0.65
            }
            
            
        } else {
            centerPopUpWindowConstraint.constant = -800
            backgroundImage.layer.opacity = 1
            //Animation
//            simpleAnimate(with: 0.2)
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0, initialSpringVelocity: 0, options: .curveEaseOut) {
                self.view.layoutIfNeeded()
            }
        }
        
    }
    
}

extension UIView {
    func aplicarSombraImagen(containerView : UIView, cornerRadious : CGFloat){
        containerView.clipsToBounds = false
        containerView.layer.shadowColor = UIColor.black.cgColor
        containerView.layer.shadowOpacity = 1
        containerView.layer.shadowOffset = CGSize.zero
        containerView.layer.shadowRadius = 10
        containerView.layer.cornerRadius = cornerRadious
        containerView.layer.shadowPath = UIBezierPath(roundedRect: containerView.bounds, cornerRadius: cornerRadious).cgPath
        self.clipsToBounds = true
        self.layer.cornerRadius = cornerRadious
    }
}
