//
//  ViewController.swift
//  Superman
//
//  Created by anna.sibirtseva on 20/05/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //private var datePicker: UIDatePicker?
    @IBOutlet var wakeUpTimePicker: UIDatePicker?
    
    @IBOutlet weak var wakeUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wakeUpTimePicker?.datePickerMode = .time
        wakeUpTimePicker?.isHidden = true
        wakeUpTimePicker?.addTarget(self, action: #selector(ViewController.timeChanged(wakeUpTimePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.viewTapped(gestureRecognizer:)))
        view.addGestureRecognizer(tapGesture)
    }

    
    @objc func timeChanged(wakeUpTimePicker: UIDatePicker) {
        let wakeUpTime = DateFormatter()
        wakeUpTime.dateFormat = "hh:mm"
        
        view.endEditing(true)
    }
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    @IBAction func wakeUpButton(_ sender: Any) {
        wakeUpTimePicker?.isHidden = false
    }
    
}

