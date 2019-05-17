import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myObject: UIButton!
    @IBOutlet weak var myObj: UIView!
    
    var flag = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        myObject.layer.cornerRadius = myObject.frame.width/2
    
    
    }
    
    
    @IBAction func btnObject(_ sender: Any) {
        UIView.animate(withDuration: 1) {
            if(self.flag==0){
                self.myObject.center = CGPoint(x: 150, y: 175)
                self.flag+=1
            }
            else if(self.flag==1){
                self.myObject.center = self.view.center
                self.flag-=1
        
            }
            
            
        }
        
        
    }
    

}

