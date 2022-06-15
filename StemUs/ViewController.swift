//
//  ViewController.swift
//  StemUs
//
//  Created by Larissa Giacomin on 2022/06/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scienceTitle: UILabel!
    
    @IBOutlet weak var scienceText: UILabel!
    
    @IBOutlet weak var checkOutText: UILabel!
    
    @IBOutlet weak var coolScienceFacts: UILabel!
    
    @IBOutlet weak var viewRectangle1: UIView!
    
    @IBOutlet weak var viewRectangle2: UIView!
    
    @IBOutlet weak var imageFact1: UIImageView!
    
    @IBOutlet weak var imageFact2: UIImageView!
    
    @IBOutlet weak var textFact1: UILabel!
    
    @IBOutlet weak var textFact2: UILabel!
    
    @IBOutlet weak var viewStigma: UIView!
    
    @IBOutlet weak var textStigma: UILabel!
    
    @IBOutlet weak var viewStigmaWhiteBox: UIView!
    
    @IBOutlet weak var textFacts: UILabel!
    
    @IBOutlet weak var imageProminentWomen: UIImageView!
    
    @IBOutlet weak var imageCareers: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    var scienceFacts1 = ["A teaspoonful of neutron star would weigh 6 billion tons.", "Hawaii moves 7.5 closer to Alaska every year.","20% of Earth’s oxygen is produced by the Amazon rainforest.","In 2.3 billion years it will be too hot for life to exist on Earth."]
    
    var scienceFacts2 = ["The Eiffel Tower can be 15cm taller during the summer.", "Venus is the only planet to spin clockwise.", "The human stomach can dissolve razor blades.", "A cloud can weigh around a million pounds."]
    
    @IBAction func generateNewFactsButton(_ sender: UIButton) {
        textFact1.text = scienceFacts1.randomElement()
        textFact2.text = scienceFacts2.randomElement()
        

    }
    
    var stigmaFacts = ["Girls and women are systematically tracked away from science and math throughout their education, limiting their access, preparation and opportunities to go into these fields as adults.", "STEM fields are often viewed as masculine, and teachers and parents often underestimate girls' math abilities starting as early as preschool.", "Because fewer women study and work in STEM, these fields tend to perpetuate inflexible, exclusionary, male-dominated cultures that are not supportive of or attractive to women and minorities.", "Girls have fewer role models to inspire their interest in these fields, seeing limited examples of female scientists and engineers in books, media and popular culture. There are even fewer Black women role models in math and science.", " Teachers, who are predominantly women, often have math anxiety they pass onto girls, and they often grade girls harder for the same work, and assume girls need to work harder to achieve the same level as boys.", "Many girls lose confidence in math by third grade. boys, on the other hand, are more likely to say they are strong in math by 2nd grade, before any performance differences are evident.", "Girls score higher than boys in math in lower-income, predominantly Balck areas.", "Nearly 80% of the health care workforce are women, but only about 21% of health executives and board members are women, and only about a third of doctors. And, women are more highly represented in lower-paying fields, such as home health workers, nurses and the lower-paying specialties such as pediatricians.", "38% of women who major in computers work in computer fields, and only 24% of those who majored in engineering work in the engineering field.", "solution: Give girls and women the skills and confidence to succeed in math and science.", "solution: Improve STEM education and support for girls starting in early education and through K-12.", "solution: Work to attract, recruit and retain women into STEM majors and fields in colleges and universities.", "solution: Improve job hiring, retention and promotion pathways and intentionally inclusive cultures."]
    
    @IBAction func stigmaButton(_ sender: UIButton) {
        viewStigmaWhiteBox.text = stigmaFacts.randomElement()
    }
    
}

