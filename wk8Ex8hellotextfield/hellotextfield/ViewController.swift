//
//  ViewController.swift
//  hellotextfield
//
//  Created by BESS HO on 7/24/18.
//  Copyright © 2018 BESS HO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set default background image
        image.backgroundColor = UIColor(patternImage: UIImage(named: "red.png")!)
        
        //# TODO: Retrieve Save Key: Title
        helloLabel.text = UserDefaults.standard.string(forKey: "Title")
        
        
        //# TODO: Retrieve Save Key: Subtitle
        mynameLabel.text = UserDefaults.standard.string(forKey: "Subtitle")
        
        
    }
    
    // Create array containing Color Label
    var colorLabel = ["red.png", "pink.png", "orange.png", "green.png", "blue.png", "purple.png", "navy.png"]
    
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var mynameLabel: UILabel!
    @IBOutlet weak var colorButton: UIButton!
    @IBOutlet weak var sizeButton: UIButton!
    
    
    @IBAction func changeColor(_ sender: Any) {
        //# TODO: Rotate Color Label in array colorLabel
        colorLabel.shuffle()
        image.backgroundColor = UIColor(patternImage: UIImage(named: colorLabel[0])!)
    }
    
    @IBAction func changeSize(_ sender: Any) {
        // Create varible to retrive the default font size
        var fontSize = label.font.pointSize
        
        // Each press will increase the font size by 10 point until 100 point
        if (fontSize < 101.0){
            fontSize = fontSize + 10.0
        } else {
            // Reset the font size to 20 point
            fontSize = 20.0
        }
        
        // Change the Bold System Font Size
        // To change regular font Use UIFont.systemFont(ofSize: CGFloat(fontSize))
        label.font = UIFont.boldSystemFont(ofSize: CGFloat(fontSize))
    }
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textfield: UITextField!
    
    @IBAction func changeText(_ sender: Any) {
        // Convert the entire text into Uppercase
        if let value = textfield.text {
            label.text = value.uppercased()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

