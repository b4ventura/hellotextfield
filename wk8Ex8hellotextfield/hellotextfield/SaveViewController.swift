//
//  SaveViewController.swift
//  hellotextfield
//
//  Created by BESS HO on 8/13/18.
//  Copyright © 2018 BESS HO. All rights reserved.
//

import UIKit

class SaveViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var buttonResetTitle: UIButton!
    @IBAction func changeTitle(_ sender: Any) {
        //# TODO: Change the Hello Title
        
        // Save Title into UserDefaults
        if let titleString = titleField.text {
            UserDefaults.standard.set(titleString, forKey: "Title")
        }
    }
    
    @IBAction func resetTitle(_ sender: Any) {
        // Reset Title to Default "Hello"
        titleField.text = "HELLO"
        UserDefaults.standard.set(titleField.text, forKey: "Title")
        
        
    }
    
    @IBOutlet weak var subtitleField: UITextField!
    @IBOutlet weak var buttonResetSubtitle: UIButton!
    @IBAction func changeSubtitle(_ sender: Any) {
        //# TODO: Change the Hello Subtitle
        
        // Save Subtitle into UserDefaults
        if let subtitleString = subtitleField.text {
            UserDefaults.standard.set(subtitleString, forKey: "Subtitle")
        }
    }
    
    @IBAction func resetSubtitle(_ sender: Any) {
        // Reset Subtitle to Default "My Name Is"
        subtitleField.text = "My Name Is"
        UserDefaults.standard.set(subtitleField.text, forKey: "Subtitle")
        
    }
    
    @IBAction func saveSettings(_ sender: Any) {
        performSegue(withIdentifier: "back"
            , sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        _ = segue.destination as! ViewController
    }
	
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
