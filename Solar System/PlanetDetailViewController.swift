//
//  PlanetDetailViewController.swift
//  Solar System
//
//  Created by Cody on 8/21/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    var planet: Planet?
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetDiameterLabel: UILabel!
    @IBOutlet weak var planetDayLengthLabel: UILabel!
    @IBOutlet weak var planetKMLabel: UILabel!
    @IBOutlet weak var planetColor: UILabel!
    
    @IBOutlet weak var planetImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateView(){
        if let planet = planet{
            planetNameLabel.text = planet.name
            planetDiameterLabel.text = "Diameter: \(planet.diameter)"
            planetDayLengthLabel.text = "Day Length: \(planet.dayLength)"
            planetKMLabel.text = "\(planet.millionKMsFromSun) Millions of Kilometers from the sun"
            planetImage.image = UIImage(named: planet.imageName)
            planetColor.text = "Color: \(planet.color)"
        }
    

}
}
