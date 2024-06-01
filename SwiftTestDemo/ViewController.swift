

import UIKit
import SwiftTest

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!

    @IBOutlet weak var callPackageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Initial setup
        setupUI(view: callPackageButton)
        setupUI(view: resultLabel)
    }

    @IBAction func invokeLibrary(_ sender: UIButton) {
        let customVC = SwiftTestViewController()
        customVC.onEmailSelected = { [weak self] email in
            self?.resultLabel.text = email
        }
        self.present(customVC, animated: true, completion: nil)
    }
}

extension ViewController{
    
    private func setupUI(view : UIView) {
        
        view.layer.borderWidth = 0.8
        view.layer.borderColor = UIColor.systemBlue.cgColor
        view.layer.cornerRadius = 3
        
    
    }
    
}
