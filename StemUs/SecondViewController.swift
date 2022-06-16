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
        fact1Text.text = techFacts1.randomElement()
        fact2Text.text = techFacts2.randomElement()
    }
    
    var stigmaFacts = ["Girls and women are systematically tracked away from science and math throughout their education, limiting their access, preparation and opportunities to go into these fields as adults.", "STEM fields are often viewed as masculine, and teachers and parents often underestimate girls' math abilities starting as early as preschool.", "Because fewer women study and work in STEM, these fields tend to perpetuate inflexible, exclusionary, male-dominated cultures that are not supportive of or attractive to women and minorities.", "Girls have fewer role models to inspire their interest in these fields, seeing limited examples of female scientists and engineers in books, media and popular culture. There are even fewer Black women role models in math and science.", "Teachers, who are predominantly women, pass on their math anxiety onto girls, grade girls harder for the same work, and assume girls need to work harder to achieve the same level as boys.", "Many girls lose confidence in math by third grade. boys, on the other hand, are more likely to say they are strong in math by 2nd grade, before any performance differences are evident.", "Girls score higher than boys in math in lower-income, predominantly Balck areas.", "Nearly 80% of the health care workforce are women, but only about 21% of health executives and board members are women, and only about a third of doctors.", "Women are more highly represented in lower-paying fields, such as home health workers, nurses and the lower-paying specialties such as pediatricians.", "38% of women who major in computers work in computer fields, and only 24% of those who majored in engineering work in the engineering field.", "solution: Give girls and women the skills and confidence to succeed in math and science.", "solution: Improve STEM education and support for girls starting in early education and through K-12.", "solution: Work to attract, recruit and retain women into STEM majors and fields in colleges and universities.", "solution: Improve job hiring, retention and promotion pathways and intentionally inclusive cultures."]
    
    @IBAction func breakingStigmaButton(_ sender: UIButton) {
        changingStigmaText.text = stigmaFacts.randomElement()
    }
}
