//
//  PreviousDayViewController.swift
//  FinalProject
//
//  Created by Rebekah Hale on 11/30/20.
//

import UIKit
import CoreData
import HealthKit


@available(iOS 13.0, *)
class PreviousDayViewController: UIViewController {
    static var water: Double? = nil
    static var caffiene: Double? = nil
    
    @IBOutlet var waterCupImage: UIImageView!
    @IBOutlet var hydrationLevelLabel: UILabel!
    @IBOutlet var previousDayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let documentsDirectoryURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        print(documentsDirectoryURL)
        hydrationLevelLabel.text = "To see the amount of water you drank yesterday go to the Health App -> Browser -> Nutrition -> Water. Under Options at the bottom go to DataSources & Acess & selecet Stay Hydrated."
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let waterLevel = PreviousDayViewController.water {
            print("Water Level is \(waterLevel)")
            if (waterLevel < 0) {
                waterCupImage.image = UIImage(named: "waterCup0")
                hydrationLevelLabel.text = "You are severly dehydrated from not drinking enough water yesterdy."
            }
            else if (waterLevel > 0 && waterLevel < 20) {
                waterCupImage.image = UIImage(named: "waterCup1")
                hydrationLevelLabel.text = "You are severly dehydrated from yesterday. Drink more water."
            }
            else if (waterLevel > 20 && waterLevel < 40) {
                waterCupImage.image = UIImage(named: "waterCup2")
                hydrationLevelLabel.text = "Keep Drinking Water you need to make up from yesterday."
            }
            else if (waterLevel > 40 && waterLevel < 60) {
                waterCupImage.image = UIImage(named: "waterCup3")
                hydrationLevelLabel.text = "You drank about half of your goal."
            }
            else if (waterLevel > 60 && waterLevel < 80) {
                waterCupImage.image = UIImage(named: "waterCup4")
                hydrationLevelLabel.text = "You are a decent amount hydrated today."
            }
            else if (waterLevel > 80 && waterLevel < 100) {
                waterCupImage.image = UIImage(named: "waterCup5")
                hydrationLevelLabel.text = "You are severly dehydrated from not drinking enough water yesterdy."
            }
            else if (waterLevel > 100 && waterLevel < 120) {
                waterCupImage.image = UIImage(named: "waterCup6")
                hydrationLevelLabel.text = "Reached water goal!."
            }
            else if (waterLevel > 120) {
                waterCupImage.image = UIImage(named: "waterCup7")
                hydrationLevelLabel.text = "Way to go you drank way over your goal yesterday."
            }
            
        }
    }
    
    
}


