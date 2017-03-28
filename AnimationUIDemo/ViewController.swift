import UIKit
import Lottie


class ViewController: UIViewController {
    var submitButton: LOTAnimationView!
    var likeButton: LOTAnimationView!

    override func viewDidLoad() {
        super.viewDidLoad()

      
        likeButton = createLottieButton("TwitterHeart")
        likeButton.frame = CGRect(x: 50, y: 200, width: 300, height: 300)
        let likeTap = UITapGestureRecognizer(target: self, action:#selector(self.Liked(_:)))
        likeTap.numberOfTapsRequired = 1
        likeButton.addGestureRecognizer(likeTap)
        
        submitButton = createLottieButton("submit_button")
        submitButton.frame = CGRect(x: 50, y: 100, width: 250, height: 250)
        let tap = UITapGestureRecognizer(target: self, action:#selector(self.submitted(_:)))
        tap.numberOfTapsRequired = 1
        submitButton.addGestureRecognizer(tap)

     
    
        
    }


    func submitted(_ sender: UITapGestureRecognizer) {
        submitButton.play()
    }
            
    func Liked(_ sender: UITapGestureRecognizer) {
            likeButton.play()
        
    }
    


    func createLottieButton(_ AnimationName: String) -> LOTAnimationView {
        let v = LOTAnimationView(name: AnimationName)!
        v.contentMode = .scaleToFill
        v.isUserInteractionEnabled = true
        view.addSubview(v)
        return v
    }
}


