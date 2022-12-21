//
//  ViewController.swift
//  Forwarddatapassing
//
//  Created by Mac on 02/11/22.
//

import UIKit

class ViewController: UIViewController,BackDataPassingProtocol {

    @IBOutlet weak var dataTextFieldOnFirstViewController: UITextField!
    @IBOutlet weak var nameLabelOnFirstViewController: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.dataTextFieldOnFirstViewController.text = ""
    }
    
    @IBAction func btnClickToNavigateSVC(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier:"SecondViewController") as! SecondViewController
        let dataToBePassed = self.dataTextFieldOnFirstViewController.text
        secondViewController.dataFromFirstViewController = dataToBePassed
        secondViewController.delegateSVC = self
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    func passDataToFirstViewController(textToPass:String){
        self.nameLabelOnFirstViewController.text = textToPass
    }
    

}


