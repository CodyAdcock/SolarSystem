//
//  PlanetController.swift
//  SolarSystem
//
//  Created by Caleb Hicks on 9/28/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation

class PlanetController {
    
    static var planets: [Planet] {
        let mercury = Planet(name: "Mercury", diameter: 4879, dayLength: 4222.6, millionKMsFromSun: 57.9, color: "Gray or Slightly Brownish")
        
        let venus = Planet(name: "Venus", diameter: 12104, dayLength: 2802, millionKMsFromSun: 108.2, color: "Pale Yellow")
        
        let earth = Planet(name: "Earth", diameter: 12756, dayLength: 24, millionKMsFromSun: 149.6, color: "Mostly Blue with White Clouds")
        
        let mars = Planet(name: "Mars", diameter: 6792, dayLength: 24.7, millionKMsFromSun: 227.9, color: "Reddish Brown with White Ice Caps")
        
        let jupiter = Planet(name: "Jupiter", diameter: 142984, dayLength: 9.9, millionKMsFromSun: 778.6, color: "Orange and White Bands")
        
        let saturn = Planet(name: "Saturn", diameter: 120536, dayLength: 10.7, millionKMsFromSun: 1433.5, color: "Pale Gold")
        
        let uranus = Planet(name: "Uranus", diameter: 51118, dayLength: 17.2, millionKMsFromSun: 2872.5, color: "Pale Blue")
        
        let neptune = Planet(name: "Neptune", diameter: 49528, dayLength: 16.1, millionKMsFromSun: 4495.1, color: "Pale Blue")
        
        let pluto = Planet(name: "Pluto", diameter: 2370, dayLength: 153.3, millionKMsFromSun: 5906.4, color: "Brown")
        
        return [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]
    }
    
}
