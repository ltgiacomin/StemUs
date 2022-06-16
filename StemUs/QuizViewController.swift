//
//  QuizViewController.swift
//  StemUs
//
//  Created by Larissa Giacomin on 2022/06/15.
//

import UIKit

class QuizViewController: UIViewController {

    var questions: [Question] = [
        Question(text: "Do you like working with ideas or things?",
                 type: .single,
                 answers:[
                    Answer(text: "Ideas", type: .Mathematics),
                    Answer(text: "Things", type: .Engineering,)
                 ])
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   

}
