//
//  SecondViewController.swift
//  StemUs
//
//  Created by Monica Sing on 15/6/22.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var careersImgView: UIImageView!
    @IBOutlet weak var changingImgView: UIImageView!
    @IBOutlet weak var changingStigmaText: UILabel!
    @IBOutlet weak var stigmaHeading: UILabel!
    @IBOutlet weak var beakingStigmaBackground: UIView!
    @IBOutlet weak var fact2Img: UIImageView!
    @IBOutlet weak var fact2Text: UILabel!
    @IBOutlet weak var fact2View: UIView!
    @IBOutlet weak var fact1Img: UIImageView!
    @IBOutlet weak var fact1Text: UILabel!
    @IBOutlet weak var fact1View: UIView!
    @IBOutlet weak var factsSubheading2: UILabel!
    @IBOutlet weak var factsSubheading1: UILabel!
    @IBOutlet weak var textInfo1: UILabel!
    @IBOutlet weak var technologyHeading: UILabel!
    
    @IBOutlet weak var technologyHeadingBackground: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var techFacts1 = ["The Firefox logo is not a fox (it's actually a red panda).", "The first television broadcast took place in 1925.","Apple were originally designing an apple shaped flip phone.","Over 6,000 computer viruses are released each month."]
    
    var techFacts2 = ["Over 90% of the world's currency is digital.", "When you work on a computer your hands travel 20 kilometers a day.", "Every iPhone advertisement has the time set to 9:41.", "There are over 700 programming languages."]

    @IBAction func factsButton(_ sender: Any) {
   
    }
    
    @IBAction func breakingStigmaButton(_ sender: UIButton) {
    }
}
