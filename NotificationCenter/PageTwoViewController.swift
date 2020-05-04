import UIKit

class PageTwoViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(plusOne), name: Notification.Name(rawValue: "ClickMeEvent"), object: nil)
    }
    
    @objc func plusOne(notification: NSNotification) {
        count += 1
        countLabel.text = String(count)
        
        print(notification.userInfo!["msg"] as Any)
    }
}
