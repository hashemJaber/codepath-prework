//
//  ViewController.swift
//  IntroductionStudent
//
//  Created by hashem jaber on 1/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstNameField: UITextField!
    
    @IBOutlet weak var LastNameField: UITextField!
    
    @IBOutlet weak var SchoolFieldName: UITextField!
    
    @IBOutlet weak var YearSegmentControl: UISegmentedControl!
    @IBOutlet weak var NumberOfPetsLabel: UILabel!
    @IBOutlet weak var NumberOfPetsStepper: UIStepper!
    @IBOutlet weak var MorePetsSwitch: UISwitch!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
          
        NumberOfPetsLabel.text = "\(Int(sender.value))"
      }
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
           
           // Let's us chose the title we have selected from the segmented control
           let year = YearSegmentControl.titleForSegment(at: YearSegmentControl.selectedSegmentIndex)
           
           // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
           // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
           let introduction = "My name is \(FirstNameField.text!) \(LastNameField.text!) and I attend \(SchoolFieldName.text!). I am currently in my \(year!) year and I own \(NumberOfPetsLabel.text!) pet/s. It is \(MorePetsSwitch.isOn) that I want more pets."
           
           
           // Creates the alert where we pass in our message, which our introduction.
           let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
           
           // A way to dismiss the box once it pops up
           let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
           
           // Passing this action to the alert controller so it can be dismissed
           alertController.addAction(action)
           
           present(alertController, animated: true, completion: nil)
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

