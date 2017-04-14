import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var contentViewConstHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print("____scrollView contentOffset___\(scrollView.contentOffset)")
        print("____scrollView frame___\(scrollView.frame)")
        print("____view frame___\(contentView.frame)")
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("____scrollView didScroll___\(scrollView.contentOffset)")
        if scrollView.contentOffset.y > 500 {
            contentViewConstHeight.constant += 300;
            let newImage1:UIImage = UIImage(named:"neko1.jpg")!
            var newImageView: UIImageView = UIImageView(image:newImage1)
//            let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            contentView.addSubview(newImageView)
        }
    }
}

