//
//  ViewController.swift
//  Superman
//
//  Created by anna.sibirtseva on 20/05/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit

class WakeUpVC: UIViewController {
    
    @IBOutlet weak var wakeUpTimePicker: UIDatePicker!
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wakeUpTimePicker?.datePickerMode = .time
       // wakeUpTimePicker?.isHidden = true
        wakeUpTimePicker?.addTarget(self, action: #selector(WakeUpVC.timeChanged(wakeUpTimePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(WakeUpVC.viewTapped(gestureRecognizer:)))
        view.addGestureRecognizer(tapGesture)
    }
    
    
    @objc func timeChanged(wakeUpTimePicker: UIDatePicker) {
        let goToSleepTime = DateFormatter()
        goToSleepTime.dateFormat = "hh:mm"
        
        view.endEditing(true)
    }
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
  
    
    
}

