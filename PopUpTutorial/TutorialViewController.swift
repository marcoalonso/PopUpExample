//
//  TutorialViewController.swift
//  PopUpTutorial
//
//  Created by marco rodriguez on 08/10/22.
//

import UIKit

class TutorialViewController: UIViewController {

    @IBOutlet weak var borderView: UIView!
    @IBOutlet weak var tutorialView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tutorialView.aplicarSombraImagen(containerView: borderView, cornerRadious: 12)
       
    }
    


}



