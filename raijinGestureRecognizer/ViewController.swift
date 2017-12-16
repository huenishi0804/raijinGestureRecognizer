//
//  ViewController.swift
//  raijinGestureRecognizer
//
//  Created by hidekazu uenishi on 2017/12/16.
//  Copyright © 2017年 hidekazu uenishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var count: UILabel!
    
    var countnumber = 0
    
    
    @IBAction func tapRaijin(_ sender: UITapGestureRecognizer) {
    //タップされた雷神
        let raijin = sender.view!
        let newX = arc4random_uniform(UInt32(view.frame.width))
        let newY = arc4random_uniform(UInt32(view.frame.height))
        raijin.center = CGPoint(x: Double(newX), y: Double(newY))
    
        countnumber = countnumber + 1
        count.text = String(countnumber)
        
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

