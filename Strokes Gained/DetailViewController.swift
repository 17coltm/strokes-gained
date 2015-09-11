//
//  DetailViewController.swift
//  Strokes Gained
//
//  Created by Colt McNealy on 9/10/15.
//  Copyright (c) 2015 coltmcnealy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var distanceFromHole1: UITextField!
    
    @IBOutlet weak var puttValue: UISegmentedControl!
    @IBAction func Putts(sender: UISegmentedControl) {
        calculate()
    }
    
    func calculate() {
    }

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

