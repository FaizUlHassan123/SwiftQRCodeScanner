//
//  ViewController.swift
//  swiftQRCodeScanner
//
//  Created by Faiz Ul Hassan on 3/15/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func scanQRCode(_ sender: Any) {
        let qrScannerController = QRCodeScannerController.instantiateViewController()
        qrScannerController.delegate = self
        self.navigationController?.pushViewController(qrScannerController, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: QRScannerCodeDelegate {

    func qrScanner(_ controller: UIViewController, scanDidComplete result: String) {
        print("result:\(result)")
    }

    func qrScannerDidFail(_ controller: UIViewController, error: String) {
        print("error:\(error)")
    }

    func qrScannerDidCancel(_ controller: UIViewController) {
        print("SwiftQRScanner did cancel")
    }
}
