//
//  SwitchAlertActionViewController.swift
//  Bitsboard-Telling Time
//
//  Created by Maxim Bilan on 2/16/16.
//
//

import UIKit

class SwitchAlertActionViewController: UIViewController {

	@IBOutlet weak var valueSwitch: UISwitch!
	var isSwitchOn = false
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		valueSwitch.isOn = isSwitchOn
    }
	
}
