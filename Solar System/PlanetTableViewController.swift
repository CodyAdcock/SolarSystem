//
//  PlanetTableViewController.swift
//  Solar System
//
//  Created by Cody on 8/21/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

import UIKit

class PlanetTableViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlanetController.planets.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        let planet = PlanetController.planets[indexPath.row]
        cell.textLabel?.text = planet.name
        cell.imageView?.image = UIImage(named: planet.imageName)
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
        
        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPlanetDetail"{
            //
            let destinationVC = segue.destination as? PlanetDetailViewController
            //
            guard let indexPath = tableView.indexPathForSelectedRow else{return}
            //
            let planet = PlanetController.planets[indexPath.row]
            //
            destinationVC?.planet = planet
    }
    

}
}
