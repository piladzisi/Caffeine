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
    
//    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
//        <#code#>
//    }
    
   // using location change beverages available for the user, if not near coffee machine, show favorites (and option to choose different beverage)
    
//    Cameo, Accenture coffee drinks
//    Volume (ml)    Coffee (kg)
//    Espresso    40    0,0115
//    Cafe Latte    40    0,0115
//    Capuccino    50    0,0115
//    Black coffee    240    0,0140
//    Coffee with milk     200    0,0140
//    Iced Latte    40    0,0115

   // BMI = M/H*H (kg/m)
    
    
    
}

