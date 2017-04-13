import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("____scrollView contentOffset___\(scrollView.contentOffset)")
        print("____scrollView frame___\(scrollView.frame)")
        print("____view frame___\(contentView.frame)")
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("____scrollView didScroll___\(scrollView.contentOffset)")
    }
}

