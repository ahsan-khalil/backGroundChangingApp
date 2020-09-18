//
//  ViewController.swift
//  iosLearning1
//
//  Created by AhsanKhalil on 18/09/2020.
//  Copyright © 2020 AhsanKhalil. All rights reserved.
//

import UIKit

extension UIButton{
    func roundedButton(){
        let maskPath1 = UIBezierPath(roundedRect: bounds,
                                     byRoundingCorners: [.topLeft , .topRight, .bottomLeft, .bottomRight],
            cornerRadii: CGSize(width: 8, height: 8))
        let maskLayer1 = CAShapeLayer()
        maskLayer1.frame = bounds
        maskLayer1.path = maskPath1.cgPath
        layer.mask = maskLayer1
    }
}
class ViewController: UIViewController {
    
    var counter = 0

    @IBOutlet weak var btnChangeBackground: UIButton!
    
    @IBOutlet weak var BackgroundImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnChangeBackground.roundedButton()
//        btnChangeBackground.titleEdgeInsets = UIEdgeInsets(top:10,left:10,bottom:10,right:10)
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_ChangeBGPressed(_ sender: Any) {
       // BackgroundImage.imag
        var backgroundImageName = "bg"
        switch counter {
        case 1:
            backgroundImageName = "bg1"
        case 2:
            backgroundImageName = "bg2"
        case 3:
            backgroundImageName = "bg3"
        default:
            backgroundImageName = "bg"
        }
        counter += 1
        counter %= 4
        BackgroundImage.image = UIImage(named: backgroundImageName)
    }
    
}

