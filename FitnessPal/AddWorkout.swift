//
//  AddWorkout.swift
//  FitnessPal
//
//  Created by Bishal Bhansali on 17/10/20.
//  Copyright © 2020 Tutorial. All rights reserved.
//

import UIKit
import ActionSheetPicker_3_0
class AddWorkout: UIViewController {
    override func viewDidLoad() {
          super.viewDidLoad()
            title = "Add Workout"
          // Do any additional setup after loading the view.
      }
    
    
    @IBAction func actshowpicker(_ sender: Any) {
        
        
        
       ActionSheetMultipleStringPicker.show(withTitle: "Multiple String Picker", rows: [
           ["One", "Two", "A lot"],
           ["Many", "Many more", "Infinite"]
           ], initialSelection: [2, 2], doneBlock: {
               picker, indexes, values in

               print("values = \(values)")
               print("indexes = \(indexes)")
               print("picker = \(picker)")
               return
       }, cancel: { ActionMultipleStringCancelBlock in return }, origin: sender)
        
    }
    
    
    
    
}
