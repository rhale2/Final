//
//  AddDrinkViewController.swift
//  FinalProject
//
//  Created by Rebekah Hale on 11/30/20.
//

import UIKit

class AddDrinkViewController: UIViewController {
    var today = Date()
    static var alcDrinks = [AlcoholicDrinks]()
    static var hydrateDrinks = [HydratingDrinks]()
    static var dehydrateDrinks = [DehydratingDrinks]()
    
    
    
    
    @IBAction func waterButton(_ sender: UIButton) {
        let hydratePercent = 1.0
        let type = "Water"
        
        let alert = UIAlertController(title: "Enter how much water you drank in fluid onces.", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Enter water amount."
        }
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = alert.textFields, let first = alertText.first, let text = first.text, let amount = Double(text)  {
                if (text == "") {
                    
                }
                let water = HydratingDrinks(hydratePercent: hydratePercent, type: type, amount: amount, date: self.today, time: self.today)
                self.setHydrateDrinks(drink: water)
            }
        }))
        self.present(alert, animated: true)
        
    }
    
    @IBAction func milkButton(_ sender: UIButton) {
        let hydratePercent = 0.87
        let type = "Milk"
        
        let alert = UIAlertController(title: "Enter how much milk you drank in fluid onces.", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Enter milk amount."
        }
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = alert.textFields, let first = alertText.first, let text = first.text, let amount = Double(text) {
                if (text == "") {
                    
                }
                let milk = HydratingDrinks(hydratePercent: hydratePercent, type: type, amount: amount, date: self.today, time: self.today)
                self.setHydrateDrinks(drink: milk)
            }
        }))
        self.present(alert, animated: true)
    }
    
    @IBAction func juiceButton(_ sender: UIButton) {
        let hydratePercent = 0.8
        let type = "Juice"
        
        let alert = UIAlertController(title: "Enter how much juice you drank in fluid onces.", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Enter juice amount."
        }
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = alert.textFields, let first = alertText.first, let text = first.text, let amount = Double(text) {
                if (text == "") {
                    
                }
                let juice = HydratingDrinks(hydratePercent: hydratePercent, type: type, amount: amount, date: self.today, time: self.today)
                self.setHydrateDrinks(drink: juice)
            }
        }))
        self.present(alert, animated: true)
    }
    
    @IBAction func sodaButton(_ sender: UIButton) {
        let caffinePercentage = 0.14
        let type = "Soda"
        
        let alert = UIAlertController(title: "Enter how much soda you drank in fluid onces.", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Enter soda amount."
        }
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = alert.textFields, let first = alertText.first, let text = first.text, let amount = Double(text) {
                if (text == "") {
                    
                }
                let soda = DehydratingDrinks(caffeinePercentage: caffinePercentage, type: type, amount: amount, date: self.today, time: self.today)
                self.setDehydrateDrinks(drink: soda)
            }
        }))
        self.present(alert, animated: true)
    }
    
    @IBAction func coffeeButton(_ sender: UIButton) {
        let caffinePercentage = 0.37
        let type = "Coffee"
        
        let alert = UIAlertController(title: "Enter how much coffee you drank in fluid onces.", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Enter coffee amount."
        }
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = alert.textFields, let first = alertText.first, let text = first.text, let amount = Double(text) {
                if (text == "") {
                    
                }
                let coffee = DehydratingDrinks(caffeinePercentage: caffinePercentage, type: type, amount: amount, date: self.today, time: self.today)
                self.setDehydrateDrinks(drink: coffee)
            }
        }))
        self.present(alert, animated: true)
    }
    
    @IBAction func teaButton(_ sender: UIButton) {
        let caffinePercentage = 0.03
        let type = "Tea"
        
        let alert = UIAlertController(title: "Enter how much tea you drank in fluid onces.", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Enter tea amount."
        }
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = alert.textFields, let first = alertText.first, let text = first.text, let amount = Double(text) {
                if (text == "") {
                    
                }
                let tea = DehydratingDrinks(caffeinePercentage: caffinePercentage, type: type, amount: amount, date: self.today, time: self.today)
                self.setDehydrateDrinks(drink: tea)
            }
        }))
        self.present(alert, animated: true)
    }
    
    @IBAction func energyDrinkButton(_ sender: UIButton) {
        let caffinePercentage = 0.0003
        let type = "Energy Drink"
        
        let alert = UIAlertController(title: "Enter how much drank of an energy drink in fluid onces.", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Enter energy drink amount."
        }
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = alert.textFields, let first = alertText.first, let text = first.text, let amount = Double(text) {
                if (text == "") {
                    
                }
                let energyDrink = DehydratingDrinks(caffeinePercentage: caffinePercentage, type: type, amount: amount, date: self.today, time: self.today)
                self.setDehydrateDrinks(drink: energyDrink)
            }
        }))
        self.present(alert, animated: true)

    }
    
    @IBAction func sportsDrinkButton(_ sender: UIButton) {
        let hydratePercent = 0.3
        let type = "Sports Drink"
        
        let alert = UIAlertController(title: "Enter how much drank of a sports drink in fluid onces.", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Enter sports drink amount."
        }
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = alert.textFields, let first = alertText.first, let text = first.text, let amount = Double(text) {
                if (text == "") {
                    
                }
                let sportsDrink = HydratingDrinks(hydratePercent: hydratePercent, type: type, amount: amount, date: self.today, time: self.today)
                self.setHydrateDrinks(drink: sportsDrink)
            }
        }))
        self.present(alert, animated: true)
    }
    
    @IBAction func cocktailButton(_ sender: UIButton) {
        let type = "Alcohol"
        let subtype = "Cocktail"
        let alcPercent = 0.4
        
        let alert = UIAlertController(title: "Enter how much cocktail you drank in fluid onces.", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Enter cocktail amount."
        }
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = alert.textFields, let first = alertText.first, let text = first.text, let amount = Double(text) {
                if (text == "") {
                    
                }
                let cocktail = AlcoholicDrinks(subtype: subtype, alcPercent: alcPercent, type: type, amount: amount, date: self.today, time: self.today)
                self.setAlcDrinks(drink: cocktail)
            }
        }))
        self.present(alert, animated: true)
    }
    
    @IBAction func wineButton(_ sender: UIButton) {
        let type = "Alcohol"
        let subtype = "Wine"
        let alcPercent = 0.4
        
        let alert = UIAlertController(title: "Enter how much wine you drank in fluid onces.", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Enter wine amount."
        }
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = alert.textFields, let first = alertText.first, let text = first.text, let amount = Double(text) {
                if (text == "") {
                    
                }
                let wine = AlcoholicDrinks(subtype: subtype, alcPercent: alcPercent, type: type, amount: amount, date: self.today, time: self.today)
                self.setAlcDrinks(drink: wine)
            }
        }))
        self.present(alert, animated: true)
        
        
    }
    
    @IBAction func beerButton(_ sender: UIButton) {
        let type = "Alcohol"
        let subtype = "Beer"
        let alcPercent = 0.5
        
        let alert = UIAlertController(title: "Enter how much beer you drank in fluid onces.", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Enter beer amount."
        }
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = alert.textFields, let first = alertText.first, let text = first.text, let amount = Double(text) {
                if (text == "") {
                    
                }
                let beer = AlcoholicDrinks(subtype: subtype, alcPercent: alcPercent, type: type, amount: amount, date: self.today, time: self.today)
                self.setAlcDrinks(drink: beer)
            }
        }))
        self.present(alert, animated: true)
    }
    
    @IBAction func otherDrinkButton(_ sender: UIButton) {
        let type = "Alcohol"
        let subtype = "Other"
        let alcPercent = 0.5
        
        let alert = UIAlertController(title: "Enter how much you drank in fluid onces.", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Enter drink amount."
        }
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = alert.textFields, let first = alertText.first, let text = first.text, let amount = Double(text) {
                if (text == "") {
                    
                }
                let other = AlcoholicDrinks(subtype: subtype, alcPercent: alcPercent, type: type, amount: amount, date: self.today, time: self.today)
                self.setAlcDrinks(drink: other)
            }
        }))
        self.present(alert, animated: true)
    }
    
    override func viewDidLoad () {
        super.viewDidLoad()
        AddDrinkViewController.alcDrinks.removeAll()
        AddDrinkViewController.hydrateDrinks.removeAll()
        AddDrinkViewController.dehydrateDrinks.removeAll()
        // Do any additional setup after loading the view.
    }
    
    static func getDrinks () -> ([AlcoholicDrinks], [DehydratingDrinks], [HydratingDrinks]) {
        return (alcDrinks, dehydrateDrinks, hydrateDrinks)
    }
    
    func setHydrateDrinks (drink: HydratingDrinks) {
        AddDrinkViewController.hydrateDrinks.append(drink)
    }
    
    func setAlcDrinks (drink: AlcoholicDrinks) {
        AddDrinkViewController.alcDrinks.append(drink)
    }
    
    func setDehydrateDrinks (drink: DehydratingDrinks) {
        AddDrinkViewController.dehydrateDrinks.append(drink)
    }
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
