//
//  ViewController.swift
//  Replace

// Hello Bohdan! I added here a comment

//
//  Created by Bohdan Buhai on 05.10.2022.
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var someWordTF: UITextField!
    @IBOutlet weak var wordChengTo: UITextField!
    
    @IBOutlet weak var chengedWordOrTexs: UILabel!
    
    @IBOutlet weak var textViewText: UITextView! //{

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUi()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func replaceButton(_ sender: UIButton) {
        if validity() {
            if textViewText.text.contains(someWordTF.text ?? "") {
                chengedWordOrTexs.text = textViewText.text.replacingOccurrences(of: someWordTF.text ?? "", with: wordChengTo.text ?? "")
            }
            
        }
       
    }
    
    private func showAlert(massage: String) {
        let alert = UIAlertController(title: "Alert", message: massage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Click", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    private func validity() -> Bool {
        if someWordTF.text?.isEmpty == true {
            showAlert(massage: "Find text can not be empty")
            return false
        }
        if wordChengTo.text?.isEmpty == true {
            showAlert(massage: "Replace text can not be empty")
            return false
        }
        if textViewText.text?.isEmpty == true {
            showAlert(massage: "Text can not be empty")
            return false
        }
        return true
    }
    
    func setupUi() {
        textViewText.layer.borderWidth = 2
        textViewText.layer.borderColor = UIColor.gray.cgColor
        textViewText.layer.cornerRadius = 8
    }
    
}

