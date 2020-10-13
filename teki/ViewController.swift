//
//  ViewController.swift
//  teki
//
//  Created by Michael Carrasco on 13/10/2020.
//

import UIKit

class ViewController: UIViewController {
    var celebrities = ["le Steve Jobs", "le Zinedine Zidane", "la Madonna", "le Karl Lagerfeld", "la Scarlett Johansson"]
    var activities = ["du dancefloor", "du barbecue", "de la surprise ratée", "des blagues lourdes", "de la raclette party"]
    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBAction func changeQuote() {
        let randomIndex1 = Int(arc4random_uniform(UInt32(celebrities.count)))
        let randomCelebrity = celebrities[randomIndex1]
        
        let randomIndex2 = Int(arc4random_uniform(UInt32(activities.count)))
        let randomActivity = activities[randomIndex2]
        
        quoteLabel.text = "Tu es " + randomCelebrity + " " + randomActivity + "!"
    }
}
