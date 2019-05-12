//
//  ViewController.swift
//  Segment Button
//
//  Created by Pawan kumar on 08/05/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentView: UIView!
    @IBOutlet weak var firstSegmentButton: UIButton!
    @IBOutlet weak var secondSegmentButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //First Segment Button
        firstSegmentButton.layer.cornerRadius = firstSegmentButton.frame.size.height/2
        firstSegmentButton.backgroundColor = UIColor.blue
        firstSegmentButton.tag = 0
        
        //Second Segment Button
        secondSegmentButton.layer.cornerRadius = secondSegmentButton.frame.size.height/2
        secondSegmentButton.backgroundColor = UIColor.black
        secondSegmentButton.tag = 1
        
        //Selected First Segment Button
        segmentView.bringSubviewToFront(firstSegmentButton)
        
    }
    
    @IBAction func segmentButtonTap(sender: UIButton) {
        
        switch sender.tag {
        case 0:
            //Selected First Segment Button
            segmentView.bringSubviewToFront(firstSegmentButton)
            print("Segment Button \(sender.tag)")
        
        case 1:
            //Selected First Segment Button
            segmentView.bringSubviewToFront(secondSegmentButton)
            print("Segment Button \(sender.tag)")
            
        default:
            print("Segment Button \(sender.tag)")
            
        }
        
    }
}

