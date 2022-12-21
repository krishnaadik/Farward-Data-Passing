//
//  SecondViewController.swift
//  Forwarddatapassing
//
//  Created by Mac on 02/11/22.
//

import UIKit

protocol BackDataPassingProtocol{
    func passDataToFirstViewController(textToPass:String)
}

class SecondViewController: UIViewController {
    @IBOutlet weak var dataLabelOnSVC: UILabel!
    @IBOutlet weak var nameTextFieldOnSecondViewController: UITextField!
    
    var dataFromFirstViewController :String?
    var delegateSVC : BackDataPassingProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataLabelOnSVC.text = dataFromFirstViewController
        navigationItem.hidesBackButton = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnClickToNavigateFirstViewController(_ sender: Any) {
        guard let delegateOnSecondViewController = delegateSVC else{
         print("Delegate not Found")
            return
        }
        let nameRetrivedFromTextField = self.nameTextFieldOnSecondViewController.text
        
        delegateOnSecondViewController.passDataToFirstViewController(textToPass: nameRetrivedFromTextField!)
        
        navigationController?.popViewController(animated: true)
        
        }

        
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
