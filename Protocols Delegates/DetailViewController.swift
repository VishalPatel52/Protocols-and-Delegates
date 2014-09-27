//
//  DetailViewController.swift
//  Protocols Delegates
//
//  Created by Vishal Patel on 27/09/14.
//  Copyright (c) 2014 Vishal Patel. All rights reserved.
//

import UIKit
protocol TextEnteredDelegate {
    func userEnteredText(EnteredText:String)
}

class DetailViewController: UIViewController {

    @IBOutlet weak var textTextField: UITextField!
    
    //create instance of the delegate with optional
    var delegate:TextEnteredDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneButtonPressed(sender: UIButton) {

        //check if the delegate is available, then assign user enterd text to delegate
        if (delegate != nil) {
            let text = textTextField.text
            println("\(text)")
            delegate!.userEnteredText(text) //assign this to delegate to pass to the other VC
            self.navigationController?.popViewControllerAnimated(true)
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
