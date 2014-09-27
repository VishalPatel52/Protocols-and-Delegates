//
//  ViewController.swift
//  Protocols Delegates
//
//  Created by Vishal Patel on 27/09/14.
//  Copyright (c) 2014 Vishal Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, TextEnteredDelegate {

    @IBOutlet weak var textLabel: UILabel! 
    
    //we need to call delegate from the defined protocol
    func userEnteredText(EnteredText: String) {
        textLabel.text = EnteredText
        
    }
    
    //prepare for segue in oder to pass the information with defined segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            let secondVC:DetailViewController = segue.destinationViewController as DetailViewController
            secondVC.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

