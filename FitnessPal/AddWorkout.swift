//
//  AddWorkout.swift
//  FitnessPal
//
//  Created by Bishal Bhansali on 17/10/20.
//  Copyright © 2020 Tutorial. All rights reserved.


import UIKit
import ActionSheetPicker_3_0
class AddWorkout: UIViewController {
    var operation:String = "add"
    
    @IBOutlet weak var textfield2: UITextField!
    @IBOutlet weak var textfield1: UITextField!
    @IBOutlet weak var lblOperation: UILabel!
    
    @IBOutlet weak var lblResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Add Workout"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func actshowpicker(_ sender: Any) {
        let data = ["add", "sub", "mul", "div"]
        let actionSheet = ActionSheetStringPicker(title: "Calculate", rows: data, initialSelection: 1, doneBlock: {
            picker, index, value in
            print(index)
            self.operation = "\(value!)"
            self.perFormOperation()
            

            
            
            self.lblOperation.text = "\(value!)"
        }, cancel: { actionStringCancelBlock in return }, origin: sender )
        actionSheet?.show()
    }
    func perFormOperation() {
           if let value1 = textfield1.text, let intvalue1 = Int(value1),let value2 = textfield2.text, let intvalue2 = Int(value2) {
        if "\(operation)" == "add" { 
            self.lblResult.text = "\(intvalue1+intvalue2)"
        }else  if "\(operation)" == "sub" {
            self.lblResult.text = "\(intvalue1-intvalue2)"
        }else if "\(operation)" == "div"{
            self.lblResult.text = "\(intvalue1*intvalue2)"
        }else if "\(operation)" == "mul"{
             self.lblResult.text = "\(intvalue1/intvalue2)"
            }
           
        }
        
    }
    
    
    
    

        
    




}
