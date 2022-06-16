//
//  FourthViewController.swift
//  StemUs
//
//  Created by Monica Sing on 15/6/22.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var careersView: UIImageView!
    @IBOutlet weak var importantWomenView: UIImageView!
    @IBOutlet weak var stigmaChangingText: UILabel!
    @IBOutlet weak var stigmaHeading: UILabel!
    @IBOutlet weak var stigmaBackground: UIView!
    @IBOutlet weak var fact2Img: UIImageView!
    @IBOutlet weak var fact2Text: UILabel!
    @IBOutlet weak var fact2Background: UIView!
    @IBOutlet weak var fact1Img: UIImageView!
    @IBOutlet weak var fact1Text: UILabel!
    @IBOutlet weak var fact1Background: UIView!
    @IBOutlet weak var factsSubheading2: UILabel!
    @IBOutlet weak var factsSubheading1: UILabel!
    @IBOutlet weak var mathsText: UILabel!
    @IBOutlet weak var mathsHeading: UILabel!
    @IBOutlet weak var mathsBackground: UIView!
    
    var mathFacts1 = ["The numbers on opposite sides of a dice always add up to seven.", "Accounting firms, banks, computer manufacturers, insurance agents, and many other agencies and companies hire math graduates .","Mathematics is ranked 29th most popular out of the 384 college majors ranked by College Factual.","In a room of 23 people there's a 50% chance that two people have the same birthday."]
    
    var mathFacts2 = ["Mathematicians expand mathematical knowledge by developing new principles.", ".",".","."]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func factsButton(_ sender: UIButton) {
    }
    
    @IBAction func stigmaButton(_ sender: UIButton) {
    }
    

}
