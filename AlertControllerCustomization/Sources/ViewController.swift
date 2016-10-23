//
//  ViewController.swift
//  AlertControllerCustomization
//
//  Created by Maxim on 2/18/16.
//  Copyright © 2016 Maxim Bilan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let rightBarButton = UIBarButtonItem(title: "Press", style: UIBarButtonItemStyle.done, target: self, action: #selector(ViewController.pressAction))
		self.navigationItem.rightBarButtonItem = rightBarButton
	}

	func pressAction() {
		let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: UIAlertControllerStyle.actionSheet)
		
		let alertAction1 = UIAlertAction(title: "One", style: UIAlertActionStyle.default, handler: nil)
		let alertAction2 = UIAlertAction(title: "Two", style: UIAlertActionStyle.default, handler: nil)
		let alertAction3 = UIAlertAction(title: "Three", style: UIAlertActionStyle.default, handler: nil)
		let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
		
		alertAction1.setValue(UIImage(named: "image1.png")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), forKey: "image")
		alertAction3.setValue(UIImage(named: "image3.png")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), forKey: "image")
	
		let switchAlert = SwitchAlertActionViewController()
		switchAlert.isSwitchOn = true
		alertAction2.setValue(switchAlert, forKey: "contentViewController")
		
		alertController.addAction(alertAction1)
		alertController.addAction(alertAction2)
		alertController.addAction(alertAction3)
		alertController.addAction(cancelAction)
		
		let popPresenter = alertController.popoverPresentationController
		popPresenter?.sourceView = self.view
		popPresenter?.barButtonItem = self.navigationItem.rightBarButtonItem
		self.present(alertController, animated: true, completion: nil)
	}

}
