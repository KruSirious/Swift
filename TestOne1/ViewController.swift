//
//  ViewController.swift
//  TestOne1
//
//  Created by DE FOUCAUD Antoine on 20/03/2017.
//  Copyright © 2017 Foucaud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mTitleLabel : UILabel?
    
    @IBOutlet var mSegmentedBar : UISegmentedControl?
    @IBOutlet var mSegmentedBarB : UISegmentedControl?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mTitleLabel?.text = "Antoine"
        
        ChangeColor(sSender: mSegmentedBar!)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func IamNotRich(){
        
        mTitleLabel?.text = "0 €"
    }
    
    @IBAction func ChangeColor(sSender : UISegmentedControl)
    {
        
        NSLog("Yahooo !!!!")
//        if (mSegmentedBar?.selectedSegmentIndex == 0)
//        {
//            mTitleLabel?.textColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
//        }
//        else if (mSegmentedBar?.selectedSegmentIndex == 1)
//        {
//            mTitleLabel?.textColor = UIColor.init(red: 1.0, green: 0, blue: 0, alpha: 1)
//        }
//        else
//        {
//            mTitleLabel?.textColor = UIColor.init(red: 0.0, green: 1.0, blue: 0, alpha: 1)
//        }
        switch sSender.selectedSegmentIndex {
        case 0:
            if(sSender == mSegmentedBar)
            {
              mTitleLabel?.textColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
            }
            else if (sSender == mSegmentedBarB)
            {
                mTitleLabel?.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            }
            break
        case 1:
            if(sSender == mSegmentedBar)
            {
                mTitleLabel?.textColor = UIColor.init(red: 1.0, green: 0, blue: 0, alpha: 1)
            }
            else if (sSender == mSegmentedBarB)
            {
                mTitleLabel?.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            }
            break
        case 2:
            if(sSender == mSegmentedBar)
            {
                mTitleLabel?.textColor = UIColor.init(red: 0.0, green: 1.0, blue: 0, alpha: 1)
            }
            else if (sSender == mSegmentedBarB)
            {
                mTitleLabel?.textColor = #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
            }
        default:
            mTitleLabel?.text = "Erreur de Couleur"
            break
        }
    }
}
