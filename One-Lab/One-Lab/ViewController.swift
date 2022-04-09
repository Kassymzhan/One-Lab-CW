
import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenButton()
        redButton()
        blueButton()
    }

    private func greenButton(){
        view.addSubview(greenView)
        
        greenView.snp.makeConstraints{
            $0.height.equalTo(100)
            $0.width.equalTo(100)
            $0.centerX.equalTo(view)
            $0.top.equalTo(self.view.snp.top).offset(100)
        }
    }
    
    private func redButton(){
        view.addSubview(redView)
        
        redView.snp.makeConstraints{
            $0.height.equalTo(100)
            $0.width.equalTo(100)
            $0.top.equalTo(greenView.snp.bottom)
            $0.leading.equalTo(greenView.snp.trailing).offset(20)
            
        }
    }
    
    private func blueButton(){
        view.addSubview(blueView)
        
        blueView.snp.makeConstraints{
            $0.height.equalTo(100)
            $0.width.equalTo(100)
            $0.top.equalTo(redView.snp.bottom)
            $0.leading.equalTo(redView.snp.trailing).inset(180)
        }
    }
    
    

}

