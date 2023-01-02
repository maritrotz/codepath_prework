//
//  ViewController.swift
//  KTrotz_Intro
//
//  Created by Tyana Trotz on 12/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var MorePetsSwitch: UISwitch!
    @IBOutlet weak var MorePetsStepper: UIStepper!
    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var SchoolName: UITextField!
    @IBOutlet weak var YearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var NumberofPets: UILabel!

    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
         
         NumberofPets.text = "\(Int(sender.value))"
     }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
          
          // Lets us choose the title we have selected from the segmented control
          // In our example that is whether it is first, second, third or forth
        let year = YearSegmentedControl.titleForSegment(at: YearSegmentedControl.selectedSegmentIndex)
          
          // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        
        let introduction = "My name is \(FirstName.text!) \(String(describing: LastName.text!)) and I attend \(SchoolName.text!). I am currently in my \(year!) and I own \(NumberofPets.text!) pets. It is \(MorePetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
               
               // A way to dismiss the box once it pops up
               let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
               
               // Passing this action to the alert controller so it can be dismissed
               alertController.addAction(action)
               
               present(alertController, animated: true, completion: nil)
        
        
        print(introduction)
      }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

