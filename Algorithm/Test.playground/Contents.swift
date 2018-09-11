//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
    
    override func viewDidLoad() {
        var nums1 = [1,2,34,5]
        nums1.append(6)
        print(nums1)
        
        //默认升序
        nums1.sort()
        print(nums1)
        
        //降序排列
        nums1.sort { (a, b) -> Bool in
            return a > b
        }
        print(nums1)
        
        let anotherNums = Array(nums1[0 ..<  nums1.count - 1])
         print(anotherNums)
        
        
    }
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()


