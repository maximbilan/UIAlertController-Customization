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
		
		let rightBarButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Done, target: self, action: "doneAction")
		self.navigationItem.rightBarButtonItem = rightBarButton
	}

	func doneAction() {
		let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: UIAlertControllerStyle.ActionSheet)
		
		let alertAction1 = UIAlertAction(title: "One", style: UIAlertActionStyle.Default, handler: nil)
		let alertAction2 = UIAlertAction(title: "Two", style: UIAlertActionStyle.Default, handler: nil)
		let alertAction3 = UIAlertAction(title: "Three", style: UIAlertActionStyle.Default, handler: nil)
		let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
		
		alertController.addAction(alertAction1)
		alertController.addAction(alertAction2)
		alertController.addAction(alertAction3)
		alertController.addAction(cancelAction)
		
		let popPresenter = alertController.popoverPresentationController
		popPresenter?.sourceView = self.view
		popPresenter?.barButtonItem = self.navigationItem.rightBarButtonItem
		self.presentViewController(alertController, animated: true, completion: nil)
	}

}

