//
//  ViewController.swift
//  Superman
//
//  Created by anna.sibirtseva on 20/05/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit

class GoToSleepVC: UIViewController {

    //private var datePicker: UIDatePicker?
    @IBOutlet var goToSleepTimePicker: UIDatePicker?
    
    @IBOutlet weak var goToSleepButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goToSleepTimePicker?.datePickerMode = .time
        //goToSleepTimePicker?.isHidden = true
//        goToSleepTimePicker?.addTarget(self, action: #selector(GoToSleepVC.timeChanged(goToSleepTimePicker:)), for: .valueChanged)
//
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(GoToSleepVC.viewTapped(gestureRecognizer:)))
//        view.addGestureRecognizer(tapGesture)
    }

    
    @objc func timeChanged(goToSleepTimePicker: UIDatePicker) {
        let goToSleepTime = DateFormatter()
        goToSleepTime.dateFormat = "hh:mm"
        
        view.endEditing(true)
    }
//    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
//        view.endEditing(true)
//    }
//    @IBAction func wakeUpButton(_ sender: Any) {
//        goToSleepTimePicker?.isHidden = false
//    }
    
}

