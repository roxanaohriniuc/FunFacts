//
//  ViewController.swift
//  FunFacts
//
//  Created by roxana ohriniuc on 3/7/16.
//  Copyright © 2016 roxana ohriniuc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FunFactButton: UIButton!
    let factBook = FactBook()
    @IBOutlet weak var funFactLabel: UILabel!
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factBook.randomFact("")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFacts() {
        if let currentFact = funFactLabel.text{
        funFactLabel.text = factBook.randomFact(currentFact)
        }
        let color = colorWheel.randomColor()
        view.backgroundColor = color
        FunFactButton.tintColor = color
    }

}

