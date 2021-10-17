//
//  PopoverViewController.swift
//  Popover-sample
//
//  Created by yasudamasato on 2021/10/17.
//

import UIKit

class PopoverViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func privacyPolicyButton(_ sender: Any) {
        let url = URL(string: "https://github.com/yasudaM84")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }

    @IBAction func aboutAppButton(_ sender: Any) {
        let url = URL(string: "https://github.com/yasudaM84")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }


}
