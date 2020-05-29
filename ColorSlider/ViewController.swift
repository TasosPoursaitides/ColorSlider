//
//  ViewController.swift
//  ColorSlider
//
//  Created by Anastasios Poursaitedes on 29/5/20.
//  Copyright © 2020 Anastasios Poursaitedes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func checkSlidersValue() -> (red: CGFloat, green: CGFloat, blue: CGFloat) {
        return (CGFloat(redSlider.value), CGFloat(greenSlider.value), CGFloat(blueSlider.value))
    }
    
    @IBAction func updateColorViewColor(_ sender: UISlider) {
        let slidersValues = checkSlidersValue()
        colorView.backgroundColor = UIColor(red: slidersValues.red, green: slidersValues.green, blue: slidersValues.blue, alpha: 1)
        
    }

    
}

