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
    @IBOutlet weak var rangedSlider: UISlider!
    
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var multipleLabel1: UILabel!
    @IBOutlet weak var multipleLabel2: UILabel!
    @IBOutlet weak var multipleLabel3: UILabel!
    @IBOutlet weak var multipleLabel4: UILabel!
    
    @IBOutlet weak var multiSwitch1: UISwitch!
    @IBOutlet weak var multiSwitch2: UISwitch!
    @IBOutlet weak var multiSwitch3: UISwitch!
    @IBOutlet weak var multiSwitch4: UISwitch!
    
    
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
                    Answer(text: "1", type: .Mathematics),
                    Answer(text: "3", type: .Engineering),
                    Answer(text: "6", type: .Science),
                    Answer(text: "10", type: .Technology)
                               ]),
        Question(text: "Which of the following options sounds more appealing to you? You may chose more than one!",
                 type: .multiple,
                 answers:[
                    Answer(text: "Think", type: .Mathematics),
                    Answer(text: "Build", type: .Engineering),
                    Answer(text: "Discover", type: .Science),
                    Answer(text: "Invent", type: .Technology)
                         ]),
    ]
    
    var questionIndex = 0
    
    var answersChosen: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        singleStackView1.isHidden = true
        rangedStackView.isHidden = true
        multipleStackView.isHidden = true
        
        navigationItem.title = "Question #\(questionIndex+1)"
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)

        questionViewHeading.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress,animated: true)
        
        
        switch currentQuestion.type {
                case .single:
            singleStackView1.isHidden = false
                 updateSingleStack1(using: currentAnswers)
                case .ranged:
            rangedStackView.isHidden = false
                  updateRangedStack(using: currentAnswers)
                case .multiple:
            multipleStackView.isHidden = false
                  updateMultipleStack(using: currentAnswers)
                }
    }
    
    func updateSingleStack1(using answers: [Answer]) {
        singleStackView1.isHidden =  false
      single1Button1.setTitle(answers[0].text, for: .normal)
      single1Button2.setTitle(answers[1].text, for: .normal)
      single1Button3.setTitle(answers[2].text, for: .normal)
      single1Button4.setTitle(answers[3].text, for: .normal)
      
      }
      
     func updateRangedStack(using answers: [Answer]) {
         rangedStackView.isHidden =  false
         rangedSlider.setValue(0.5, animated: false)
         rangedLabel1.text = answers.first?.text
         rangedLabel2.text = answers.first?.text
      }
      
    func updateMultipleStack(using answers: [Answer]) {
        multipleStackView.isHidden = false
        multiSwitch1.isOn = false
        multiSwitch2.isOn = false
        multiSwitch3.isOn = false
        multiSwitch4.isOn = false
        
        multipleLabel1.text = answers[0].text
        multipleLabel2.text = answers[1].text
        multipleLabel3.text = answers[2].text
        multipleLabel4.text = answers[3].text
          
        }

    
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case single1Button1:
            answersChosen.append(currentAnswers[0])
        case single1Button2:
            answersChosen.append(currentAnswers[1])
        case single1Button3:
            answersChosen.append(currentAnswers[2])
        case single1Button4:
            answersChosen.append(currentAnswers[3])
        default:
            break
        }
        
        nextQuestion()
    }
    
    
    @IBAction func multipleAnswerButtonPressed() {
        let currentAnswers = questions[questionIndex].answers
        
        if multiSwitch1.isOn {
            answersChosen.append(currentAnswers[0])
        }
        if multiSwitch2.isOn {
            answersChosen.append(currentAnswers[1])
        }
        if multiSwitch3.isOn {
            answersChosen.append(currentAnswers[2])
        }
        if multiSwitch4.isOn {
            answersChosen.append(currentAnswers[3])
    }
        
        nextQuestion()
        
    }
    
    @IBAction func rangedAnswerButtonPressed() {
         let currentAnswers = questions[questionIndex].answers
         let index = Int(round(rangedSlider.value * Float(currentAnswers.count - 1)))
         
         answersChosen.append(currentAnswers[index])
         
         nextQuestion()
     }

    
    
    func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
        }
        else {
            performSegue(withIdentifier: "ResultsSegue", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultsSegue" {
            let resultsViewController = segue.destination as! ResultsViewController
            resultsViewController.responses = answersChosen
        }
    }
    
}

