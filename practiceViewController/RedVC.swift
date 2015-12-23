//
//  RedVC.swift
//  practiceViewController
//
//  Created by Vu Dang on 12/21/15.
//  Copyright © 2015 Vu Dang. All rights reserved.
//

import UIKit

class RedVC: UIViewController
{
    @IBOutlet weak var firstNameLbl: UILabel!
    @IBOutlet weak var lastNameLbl: UILabel!
    
    var firstNameOnRed = ""
    var lastNameOnRed = ""

    override func viewDidLoad()
    {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        firstNameLbl.text = firstNameOnRed;
        lastNameLbl.text = lastNameOnRed;
    }

    @IBAction func loadBlueOnPressed(sender: AnyObject)
    {
        performSegueWithIdentifier("goToBlue", sender: firstNameOnRed)
    }

    @IBAction func loadYellowOnPressed(sender: AnyObject)
    {
        performSegueWithIdentifier("goToYellow", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "goToBlue"
            {
                if let blueViewC = segue.destinationViewController as? BlueVC
                    {
                        if let redName = sender as? String
                            {
                                blueViewC.nameOnBlueScreen = redName
                                blueViewC.lastNameOnBlue = lastNameOnRed;
                            }
                    }
            }
    }
    
}
