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

        segue.destination.popoverPresentationController?.permittedArrowDirections = .up
        segue.destination.preferredContentSize = CGSize(width: 400, height: 151)

        popover?.delegate = self
    }

    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }

}
