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
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    @IBOutlet weak var questionViewHeading: UILabel!
    
    @IBOutlet weak var singleStackView1: UIStackView!
    @IBOutlet weak var single1Button1: UIButton!
    @IBOutlet weak var single1Button2: UIButton!
    @IBOutlet weak var single1Button3: UIButton!
    @IBOutlet weak var single1Button4: UIButton!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    
    @IBOutlet weak var singleStackView2: UIStackView!
    @IBOutlet weak var singleLabel1: UILabel!
    @IBOutlet weak var singleLabel2: UILabel!
    @IBOutlet weak var singleLabel3: UILabel!
    @IBOutlet weak var singleLabel4: UILabel!
    
    @IBOutlet weak var singleStackView3: UIStackView!
    @IBOutlet weak var single2Button1: UIButton!
    @IBOutlet weak var single2Button2: UIButton!
    @IBOutlet weak var single2Button3: UIButton!
    @IBOutlet weak var single2Button4: UIButton!
    
    var questions: [Question] = [
        Question(text: "Do you like working with ideas or things?",
                 type: .single1,
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
                 type: .single2,
                 answers:[
                    Answer(text: "Discover", type: .Mathematics),
                    Answer(text: "Invent", type: .Engineering),
                    Answer(text: "Both, but more to discover than to invent", type: .Science),
                    Answer(text: "Both, but more to invent than to discover", type: .Technology)
                         ]),
        Question(text: "Would you rather think or build?",
                 type: .single3,
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
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)

        questionViewHeading.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress,animated: true)
        
        
        switch currentQuestion.type {
                case .single1:
                 updateSingleStack1(using: currentAnswers)
                case .ranged:
                  updateRangedStack(using: currentAnswers)
                case .single2:
                  updateSingleStack2(using: currentAnswers)
                case .single3:
            updateSingleStack3(using: currentAnswers)
                }
    }
    
    func updateSingleStack1(using answers: [Answer]) {
        singleStackView1.isHidden = false
      single1Button1.setTitle(answers[0].text, for: .normal)
      single1Button2.setTitle(answers[1].text, for: .normal)
      single1Button3.setTitle(answers[2].text, for: .normal)
      single1Button4.setTitle(answers[3].text, for: .normal)
      
      }
      
     func updateRangedStack(using answers: [Answer]) {
         rangedStackView.isHidden = false
         rangedLabel1.text = answers.first?.text
         rangedLabel2.text = answers.first?.text
      }
      
      func updateSingleStack2(using answers: [Answer]) {
          singleStackView2.isHidden = false
          singleLabel1.text = answers[0].text
          singleLabel2.text = answers[1].text
          singleLabel3.text = answers[2].text
          singleLabel4.text = answers[3].text
      
    }
      func updateSingleStack3(using answers: [Answer]) {
          singleStackView3.isHidden = false
          single2Button1.setTitle(answers[0].text, for: .normal)
          single2Button2.setTitle(answers[1].text, for: .normal)
          single2Button3.setTitle(answers[2].text, for: .normal)
          single2Button4.setTitle(answers[3].text, for: .normal)
    }

    
}
