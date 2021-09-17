//
//  ViewController.swift
//  Homework2.1.2
//
//  Created by Ilya on 17.09.2021.
//

import UIKit

class ViewController: UIViewController {

    private let lightIsOff: CGFloat = 0.4
    private let lightIsOn: CGFloat = 1
    
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeCircleView(view: redLight)
        makeCircleView(view: yellowLight)
        makeCircleView(view: greenLight)

        switchButton.layer.cornerRadius = 10
        switchButton.layer.masksToBounds = true
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
    }
    
    @IBAction func switchButtonPress() {
        if switchButton.title(for: .normal) == "START"{
            redLight.alpha = lightIsOn
            switchButton.setTitle("NEXT", for: .normal)
            return
        }
        
        if greenLight.alpha == lightIsOn{
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
        } else if yellowLight.alpha == lightIsOn{
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
        } else{
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
        }
                
    }
    
    private func makeCircleView(view: UIView){
        view.layer.cornerRadius = view.frame.width / 2
    }
    
    
}
    

