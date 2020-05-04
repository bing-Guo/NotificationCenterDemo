import UIKit

class PageOneViewController: UIViewController {

    @IBOutlet weak var clickMeBtn: UIButton!
    @IBAction func clickMeBtnTapped(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name(rawValue: "ClickMeEvent"), object: nil, userInfo: ["msg": "Send a message."])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

