//
//  ViewController.swift
//  Popover-sample
//
//  Created by yasudamasato on 2021/10/17.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let popover = segue.destination.popoverPresentationController
        if sender is UIButton {
            popover?.sourceRect = (sender as! UIButton).bounds
        }
        popover?.delegate = self
    }

    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }

}
