//
//  ViewController.swift
//  practiceViewController
//
//  Created by Vu Dang on 12/21/15.
//  Copyright © 2015 Vu Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var nameBar: UITextField!
    @IBOutlet weak var nameLbl: UILabel!
    
    var firstName = "";
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func loadBlueScreen(sender: AnyObject)
    {
        performSegueWithIdentifier("goToBlue", sender: firstName)
    }
    
    @IBAction func loadRedScreen(sender: AnyObject)
    {
        performSegueWithIdentifier("goToRed", sender: firstName)
    }

    @IBAction func onSubmitPressed(sender: AnyObject)
    {
        if nameBar.text != "" || nameBar.text != nil
        {
            firstName = nameBar.text!;
            nameLbl.text = "Your name is \(firstName)"
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "goToBlue"
            {
                if let blueViewC = segue.destinationViewController as? BlueVC
                    {
                        if let yellowFirstName = sender as? String
                            {
                                blueViewC.nameOnBlueScreen = yellowFirstName;
                            }
                    }
            }
        
        if segue.identifier == "goToRed"
            {
                if let redViewC = segue.destinationViewController as? RedVC
                    {
                        if let yelFirstName = sender as? String
                            {
                                redViewC.firstNameOnRed = yelFirstName;
                            }
                    }
            
            }
    }


}

