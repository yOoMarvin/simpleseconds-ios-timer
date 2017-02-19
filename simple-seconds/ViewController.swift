//
//  ViewController.swift
//  simple-seconds
//
//  Created by Marvin Messenzehl on 19.02.17.
//  Copyright © 2017 Marvin Messenzehl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // MARK: - Outlets from storyboard
    
    @IBOutlet weak var secondsLabel: UILabel!
    @IBOutlet weak var secondsSlider: UISlider!
    
    @IBAction func sliderChanged(_ sender: Any) {
    }
    
    @IBAction func activateTapped(_ sender: Any) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

