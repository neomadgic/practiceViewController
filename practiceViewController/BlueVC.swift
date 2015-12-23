//
//  BlueVC.swift
//  practiceViewController
//
//  Created by Vu Dang on 12/21/15.
//  Copyright © 2015 Vu Dang. All rights reserved.
//

import UIKit

class BlueVC: UIViewController
{
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var nameBar: UITextField!
    @IBOutlet weak var lastNameLbl: UILabel!
    
    var nameOnBlueScreen = ""
    var lastNameOnBlue = ""

    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        nameLbl.text = nameOnBlueScreen;
        lastNameLbl.text = lastNameOnBlue
    }

    @IBAction func loadYellowOnPressed(sender: AnyObject)
    {
        performSegueWithIdentifier("goToYellow", sender: nil)
    }

    @IBAction func loadRedOnPressed(sender: AnyObject)
    {
        performSegueWithIdentifier("goToRed", sender: nameOnBlueScreen)
        //performSegueWithIdentifier("goToRed", sender: lastNameOnBlue)
    }
    
    @IBAction func onSubmitPressed(sender: AnyObject)
    {
        if nameBar.text != "" || nameBar.text != nil
            {
                lastNameOnBlue = nameBar.text!;
                lastNameLbl.text = lastNameOnBlue;
            }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "goToRed"
            {
                if let redViewC = segue.destinationViewController as? RedVC
                    {
                        if let blueFirstName = sender as? String
                            {
                                redViewC.firstNameOnRed = blueFirstName;
                                redViewC.lastNameOnRed = lastNameOnBlue;
                            }
                    }
            }
    }
    
}
