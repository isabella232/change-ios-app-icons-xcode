//
//  ViewController.swift
//  FruitsApp
//
//  Created by Tihomir RAdeff on 30.03.22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var fruitItems = [FruitItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let apple = FruitItem()
        apple.image = "apple"
        apple.name = "Apple"
        fruitItems.append(apple)
        
        let avocado = FruitItem()
        avocado.image = "avocado"
        avocado.name = "Avocado"
        fruitItems.append(avocado)
        
        let banana = FruitItem()
        banana.image = "banana"
        banana.name = "Banana"
        fruitItems.append(banana)
        
        let blueberry = FruitItem()
        blueberry.image = "blueberry"
        blueberry.name = "Blueberry"
        fruitItems.append(blueberry)
        
        let cherry = FruitItem()
        cherry.image = "cherry"
        cherry.name = "Cherry"
        fruitItems.append(cherry)
        
        let grapes = FruitItem()
        grapes.image = "grapes"
        grapes.name = "Grapes"
        fruitItems.append(grapes)
        
        let lemon = FruitItem()
        lemon.image = "lemon"
        lemon.name = "Lemon"
        fruitItems.append(lemon)
        
        let orange = FruitItem()
        orange.image = "orange"
        orange.name = "Orange"
        fruitItems.append(orange)
        
        let pear = FruitItem()
        pear.image = "pear"
        pear.name = "Pear"
        fruitItems.append(pear)
        
        let strawberry = FruitItem()
        strawberry.image = "strawberry"
        strawberry.name = "Strawberry"
        fruitItems.append(strawberry)
        
        let watermelon = FruitItem()
        watermelon.image = "watermelon"
        watermelon.name = "Watermelon"
        fruitItems.append(watermelon)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FruitCell") as! FruitCell
        cell.selectionStyle = .none
        
        cell.fruitImage.image = UIImage(named: fruitItems[indexPath.row].image!)
        cell.fruitLabel.text = fruitItems[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        setIcon(fruitItems[indexPath.row].image ?? "apple")
    }
}

