//
//  FourthViewController.swift
//  StemUs
//
//  Created by Monica Sing on 15/6/22.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var careersView: UIImageView!
    @IBOutlet weak var imageProminentWomen: UIImageView!
    
    @IBOutlet weak var buttonWomen: UIButton!
    @IBOutlet weak var imgTap: UIImageView!
    
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
    
    var mathImages = [UIImage(named:"mathImage1"),UIImage(named:"mathImage2"),UIImage(named:"mathImage3"),UIImage(named:"mathImage4"),UIImage(named:"mathImage5"),UIImage(named:"mathImage6")]
    
    var womenImages = [UIImage(named:"wmath"),UIImage(named:"cmath_sg"),UIImage(named:"cmath_ha")]
    
    var mathFacts1 = ["The numbers on opposite sides of a dice always add up to seven.", "Accounting firms, banks, computer manufacturers, insurance agents, and many other agencies and companies hire math graduates.","A googolplex is 10 to the power of a googol, or 10 to the power of 10 to the power of 100. Our known universe doesn't have enough space to actually write that out on paper.","Theres'a greater chance than a well shuffled card deck has never been seen before in all of recorded history."]
    
    var mathFacts2 = ["Mathematicians expand mathematical knowledge by developing new principles.","Mathematics is ranked 29th most popular out of the 384 college majors ranked by College Factual.","In a room of 23 people there's a 50% chance that two people have the same birthday.","A 'jiffy' is an actual unit of time. It means 1/100th of a second."]
    
    var stigmaFacts = ["Girls and women are systematically tracked away from science and math throughout their education, limiting their access, preparation and opportunities to go into these fields as adults.", "STEM fields are often viewed as masculine, and teachers and parents often underestimate girls' math abilities starting as early as preschool.", "Because fewer women study and work in STEM, these fields tend to perpetuate inflexible, exclusionary, male-dominated cultures that are not supportive of or attractive to women and minorities.", "Girls have fewer role models to inspire their interest in these fields, seeing limited examples of female scientists and engineers in books, media and popular culture. There are even fewer Black women role models in math and science.", "Teachers, who are predominantly women, pass on their math anxiety onto girls, grade girls harder for the same work, and assume girls need to work harder to achieve the same level as boys.", "Many girls lose confidence in math by third grade. boys, on the other hand, are more likely to say they are strong in math by 2nd grade, before any performance differences are evident.", "Girls score higher than boys in math in lower-income, predominantly Balck areas.", "Nearly 80% of the health care workforce are women, but only about 21% of health executives and board members are women, and only about a third of doctors.", "Women are more highly represented in lower-paying fields, such as home health workers, nurses and the lower-paying specialties such as pediatricians.", "38% of women who major in computers work in computer fields, and only 24% of those who majored in engineering work in the engineering field.", "solution: Give girls and women the skills and confidence to succeed in math and science.", "solution: Improve STEM education and support for girls starting in early education and through K-12.", "solution: Work to attract, recruit and retain women into STEM majors and fields in colleges and universities.", "solution: Improve job hiring, retention and promotion pathways and intentionally inclusive cultures."]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var indexImage1 = 3
    var indexImage2 = 4
    var indexFact = 1
    @IBAction func factsButton(_ sender: UIButton) {
        fact1Img.image = mathImages[indexImage1]
        fact2Img.image = mathImages[indexImage2]
        
        indexImage1 = indexImage1+1
        if indexImage1 == 5 {
            indexImage1 = 0
        }
        
        indexImage2 = indexImage2+1
        if indexImage2 == 5 {
            indexImage2 = 0
        }
        
        fact1Text.text = mathFacts1[indexFact]
        fact2Text.text = mathFacts2[indexFact]
        
        indexFact = indexFact+1
        if indexFact == 4 {
            indexFact = 0
        }
    }
    
    /*
     @IBAction func factsButton(_ sender: UIButton) {
         fact1Img.image = mathImages[Int.random(in:0..<5)]
         fact2Img.image = mathImages[Int.random(in:0..<5)]
         fact1Text.text = mathFacts1.randomElement()
         fact2Text.text = mathFacts2.randomElement()
     }
     */
    
    var indexWomen = 1
    @IBAction func buttonWomen(_ sender: UIButton) {
        imgTap.isHidden = true
        imageProminentWomen.image = womenImages[indexWomen]
        indexWomen = indexWomen+1
        if indexWomen == 3 {
            indexWomen = 0
        }
    }
    
    @IBAction func stigmaButton(_ sender: UIButton) {
        stigmaChangingText.text = stigmaFacts.randomElement()
    }
    

}
