//
//  ViewController.swift
//  WeatherApplication
//
//  Created by Marat Meryasov on 14.01.2020.
//  Copyright © 2020 Marat Meryasov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LocationLabel: UILabel!
    @IBOutlet weak var DayLabel: UILabel!
    
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var conditionLabel: UILabel!
    
    
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var backgroundView: UIView!
  
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.layer.addSublayer(gradientLayer)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setBlueGradientBackground()
    }

    func setBlueGradientBackground() {
        let topColor = UIColor(red: 95.0/255.0, green: 165.0/255.0, blue: 1.0, alpha: 10).cgColor
        let bottomColor = UIColor(red: 72.0/255.0, green: 114.0/255.0, blue: 184.0/255.0, alpha: 1.0).cgColor
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [topColor, bottomColor]
        
    }

    func setGreyGradientBackground() {
        
    }
    
}

