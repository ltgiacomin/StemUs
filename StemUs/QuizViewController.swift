//
//  QuizViewController.swift
//  StemUs
//
//  Created by Larissa Giacomin on 2022/06/15.
//

import UIKit

class QuizViewController: UIViewController {
    
    /*
    @IBOutlet weak var singleStackView1: UIStackView!
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var singleStackView2: UIStackView!
        @IBOutlet weak var singleStackView3: UIStackView!
    */
    
    @IBOutlet weak var questionViewHeading: UILabel!
    @IBOutlet weak var singleStackView1: UIStackView!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    
    @IBOutlet weak var singleStackView2: UIStackView!
    
    @IBOutlet weak var singleStackView3: UIStackView!
    
    var questions: [Question] = [
        Question(text: "Do you like working with ideas or things?",
                 type: .single,
                 answers:[
                    Answer(text: "Ideas", type: .Mathematics),
                    Answer(text: "Things", type: .Technology),
                    Answer(text: "Both, but more with ideas than with things", type: .Science),
                    Answer(text: "Both, but more with things than with ideas", type: .Engineering),
                         ]),
        Question(text: "How much do you NOT like math (1 meaning you love it, 10 meaning you detest it)?",
                 type: .ranged,
                 answers:[
                    Answer(text:  "I love it", type: .Mathematics),
                    Answer(text: "I like it, but I'm not crazy about it", type: .Engineering),
                    Answer(text: "I like it less than I think someone going into STEM should", type: .Science),
                    Answer(text: "I don't like it, I only do it because I have to", type: .Technology)
                               ]),
        Question(text: "Would you rather discover or invent?",
                 type: .single,
                 answers:[
                    Answer(text: "Discover", type: .Mathematics),
                    Answer(text: "Invent", type: .Engineering),
                    Answer(text: "Both, but more to discover than to invent", type: .Science),
                    Answer(text: "Both, but more to invent than to discover", type: .Technology)
                         ]),
        Question(text: "Would you rather think or build?",
                 type: .single,
                 answers:[
                    Answer(text: "Think", type: .Mathematics),
                    Answer(text: "Build", type: .Engineering),
                    Answer(text: "Both, but  far more to think than to build", type: .Science),
                    Answer(text: "Both, but far more to build than to think", type: .Technology)
                         ]),
    ]
    
    var questionIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        singleStackView1.isHidden = true
        rangedStackView.isHidden = true
        singleStackView2.isHidden = true
        singleStackView3.isHidden = true
        navigationItem.title = "Question #\(questionIndex+1)"
        
        /*
        
        let currentQuestion = questions[questionIndex]
        singleStackView1.isHidden = false
        
        switch currentQuestion.type {
        case .single:
            singleStackView1.isHidden = false
        case .ranged:
            rangedStackView.isHidden = false
        case .single:
            singleStackView2.isHidden = false
        case .single:
            singleStackView3.isHidden = false
        } */
    }
    

}
