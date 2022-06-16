//
//  ThirdViewController.swift
//  StemUs
//
//  Created by Monica Sing on 15/6/22.
//

import UIKit

class ThirdViewController: UIViewController {

    
    @IBOutlet weak var careersView: UIImageView!
    @IBOutlet weak var importantWomenView: UIImageView!
    @IBOutlet weak var stigmaChangingText: UILabel!
    @IBOutlet weak var stigmaHeading: UILabel!
    @IBOutlet weak var stigmaBackground: UIView!
    @IBOutlet weak var fact2Background: UIView!
    @IBOutlet weak var fact2Img: UIImageView!
    @IBOutlet weak var fact2Text: UILabel!
    @IBOutlet weak var fact1Text: UILabel!
    @IBOutlet weak var fact1Img: UIImageView!
    @IBOutlet weak var fact1Background: UIView!
    @IBOutlet weak var factsSubheading2: UILabel!
    @IBOutlet weak var factsSubheading1: UILabel!
    @IBOutlet weak var textInfo1: UILabel!
    @IBOutlet weak var engineeringHeading: UILabel!
    @IBOutlet weak var engineeringBackground: UIView!
    
    var engFacts1 = ["The word 'engineer' is derived from the Latin word 'ingenium'.", "The Ferris wheel is regarded as one of the largest engineering wonders of the world.","Running shoes are designed by engineers.","The snowboard was invented by an engineer."]
    
    var engFacts2 = ["Engineers design cool buildings, roller coasters, space shuttles, special effects for movies. They invent new foods and create new toys.", "A civil engineer created the slippery part of the water slide.",".","."]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func factsButton(_ sender: UIButton) {
    }
    
    @IBAction func stigmaButton(_ sender: UIButton) {
    }
    
}
