//
//  ViewController.swift
//  Popover-sample
//
//  Created by yasudamasato on 2021/10/17.
//

import UIKit

class ContentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        view.backgroundColor = UIColor.red
    }
}

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {


    @IBAction func didTapButton(_ sender: Any) {
        let contentVC = ContentViewController()
        // スタイルの指定
        contentVC.modalPresentationStyle = .popover
        // サイズの指定
        contentVC.preferredContentSize = CGSize(width: 200, height: 200)
        // 表示するViewの指定
        contentVC.popoverPresentationController?.sourceView = view
        // ピヨッと表示する位置の指定
        contentVC.popoverPresentationController?.sourceRect = (sender as AnyObject).frame
        // 矢印が出る方向の指定
        contentVC.popoverPresentationController?.permittedArrowDirections = .any
        // デリゲートの設定
        contentVC.popoverPresentationController?.delegate = self
        //表示
        present(contentVC, animated: true, completion: nil)
    }

    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return .none
    }
}

