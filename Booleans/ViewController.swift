//
//  ViewController.swift
//  Booleans
//
//  Created by Mark Rabins on 3/23/16.
//  Copyright © 2016 edu.self. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var batmanLabel: UILabel!
    @IBOutlet weak var supermanLabel: UILabel!
    
    @IBOutlet weak var batmanButtonOne: UIButton!
    @IBOutlet weak var batmanButtonTwo: UIButton!
    @IBOutlet weak var batmanButtonThree: UIButton!
    @IBOutlet weak var supermanButtonOne: UIButton!
    @IBOutlet weak var supermanbuttonTwo: UIButton!
    @IBOutlet weak var supermanButtonThree: UIButton!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    
    var strongerBatman = false
    var smarterBatman = false
    var craftierBatman = false
    var strongerSuperman = false
    var smarterSuperman = false
    var craftierSuperman = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor(red: 222/255, green: 215/255, blue: 197/255, alpha: 1)
        
        titleLabel.text = "Batman vs. Superman"
        titleLabel.textAlignment = .Center
        titleLabel.textColor = UIColor.whiteColor()
        titleLabel.font = UIFont(name: "Avenir Next Regular", size: 27)
        titleLabel.backgroundColor = UIColor(red: 106/255, green: 90/255, blue: 205/255, alpha: 1)
        titleLabel.layer.cornerRadius = 9.5
        batmanLabel.layer.cornerRadius = 9.5
        supermanLabel.layer.cornerRadius = 9.5
        
        batmanLabel.text = "Batman"
        batmanLabel.textAlignment = .Center
        supermanLabel.text = "Superman"
        supermanLabel.textAlignment = .Center
        
        batmanButtonOne.setTitle("Stronger", forState: UIControlState.Normal)
        batmanButtonTwo.setTitle("Smarter", forState: UIControlState.Normal)
        batmanButtonThree.setTitle("Craftier", forState: UIControlState.Normal)
        batmanButtonOne.setTitleColor(UIColor.yellowColor(), forState: UIControlState.Normal)
        batmanButtonTwo.setTitleColor(UIColor.yellowColor(), forState: UIControlState.Normal)
        batmanButtonThree.setTitleColor(UIColor.yellowColor(), forState: UIControlState.Normal)
        batmanButtonOne.backgroundColor = UIColor.grayColor()
        batmanButtonTwo.backgroundColor = UIColor.grayColor()
        batmanButtonThree.backgroundColor = UIColor.grayColor()
        batmanButtonOne.layer.cornerRadius = 7.0
        batmanButtonTwo.layer.cornerRadius = 7.0
        batmanButtonThree.layer.cornerRadius = 7.0
        
        supermanButtonOne.setTitle("Stronger", forState: UIControlState.Normal)
        supermanbuttonTwo.setTitle("Smarter", forState: UIControlState.Normal)
        supermanButtonThree.setTitle("Craftier", forState: UIControlState.Normal)
        supermanButtonOne.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        supermanbuttonTwo.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        supermanButtonThree.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        supermanButtonOne.backgroundColor = UIColor(red: 30/255, green: 144/255, blue: 255/255, alpha: 1)
        supermanbuttonTwo.backgroundColor = UIColor(red: 30/255, green: 144/255, blue: 255/255, alpha: 1)
        supermanButtonThree.backgroundColor = UIColor(red: 30/255, green: 144/255, blue: 255/255, alpha: 1)
        supermanButtonOne.layer.cornerRadius = 7.0
        supermanbuttonTwo.layer.cornerRadius = 7.0
        supermanButtonThree.layer.cornerRadius = 7.0
        
        calculateButton.setTitle("Calculate", forState: UIControlState.Normal)
        calculateButton.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Normal)
//        calculateButton.backgroundColor = UIColor.redColor()
//        calculateButton.layer.cornerRadius = 11.5

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func batmanStrongerButtonedTapped(sender: UIButton) {
        batmanButtonOne.enabled = false
        supermanButtonOne.enabled = false
        strongerBatman = true
        
    }
    
    @IBAction func batmanSmartedButtonTapped(sender: UIButton) {
        batmanButtonTwo.enabled = false
        supermanbuttonTwo.enabled = false
        smarterBatman = true

    
    }
    
    @IBAction func batmanCraftierButtonTapper(sender: UIButton) {
        batmanButtonThree.enabled = false
        supermanButtonThree.enabled = false
        craftierBatman = true
    }
    
    @IBAction func supermanStrongButtonTapped(sender: UIButton) {
        batmanButtonOne.enabled = false
        supermanButtonOne.enabled = false
        strongerSuperman = true
    }
    
    @IBAction func supermanSmarterButtonTapped(sender: UIButton) {
        batmanButtonTwo.enabled = false
        supermanbuttonTwo.enabled = false
        smarterSuperman = true

    }
    
    @IBAction func supermanCraftierButtonTapped(sender: UIButton) {
        batmanButtonThree.enabled = false
        supermanButtonThree.enabled = false
        craftierSuperman = true
    }
    
    @IBAction func calculateButtonTapped(sender: UIButton) {
        
        if strongerBatman == true && smarterBatman == true && craftierBatman == true {
            backgroundImage.image = UIImage(named: "batman")
        }
        else if strongerSuperman && smarterSuperman && craftierSuperman {
            backgroundImage.image = UIImage(named: "superman")

        }
        else {
            backgroundImage.image = UIImage(named: "batmanAndSuperman")
        }
        
    }
    
}

