//
//  ProfileViewController.swift
//  Favorite Table View Controller
//
//  Created by Alua Nurakhanova on 19.02.2024.
//

import UIKit
import Localize_Swift

class ProfileViewController: UIViewController, LanguageProtocol {
   
    

    @IBOutlet weak var myProfileLabel: UILabel!
    
    @IBOutlet weak var languageButton: UIButton!
    @IBOutlet weak var languageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
//        myProfileLabel.text = "MY_PROFILE".localized()
//        languageButton.setTitle("LANGUAGE".localized(), for: .normal)
//        if Localize.currentLanguage() == "ru"{
//            languageLabel.text = "Русский"
//        }
//        else if Localize.currentLanguage() == "en"{
//            languageLabel.text = "English"
//        }
//        else if Localize.currentLanguage() == "kk" {
//            languageLabel.text = "Қазақша"
//        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        configureViews()
    }
    
    func configureViews(){
        myProfileLabel.text = "MY_PROFILE".localized()
        languageButton.setTitle("LANGUAGE".localized(), for: .normal)
        if Localize.currentLanguage() == "ru"{
            languageLabel.text = "Русский"
        }
        else if Localize.currentLanguage() == "en"{
            languageLabel.text = "English"
        }
        else if Localize.currentLanguage() == "kk" {
            languageLabel.text = "Қазақша"
        }
    }
    
    @IBAction func languageShow(_ sender: Any) {
        let languageVC = storyboard?.instantiateViewController(withIdentifier: "LanguageViewController") as! LanguageViewController
        
        languageVC.modalPresentationStyle = .overFullScreen
        
        languageVC.delegate = self
        
        present(languageVC, animated: true, completion: nil)
    }
    func languageDidChange() {
    configureViews()
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
