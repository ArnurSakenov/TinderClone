//
//  ViewController.swift
//  TinderClone
//
//  Created by Arnur Sakenov on 01.03.2023.
//

import UIKit
import SnapKit
class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        let layer0 = CAGradientLayer()
        layer0.colors = [
          UIColor(red: 0.996, green: 0.314, blue: 0.282, alpha: 1).cgColor,
          UIColor(red: 0.992, green: 0.173, blue: 0.447, alpha: 1).cgColor
        ]
        layer0.locations = [0, 0.65]
        layer0.startPoint = CGPoint(x: 0.25, y: 0.5)
        layer0.endPoint = CGPoint(x: 0.75, y: 0.5)
        layer0.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 0, b: 1, c: -1, d: 0, tx: 1, ty: 0))
        layer0.bounds = view.bounds.insetBy(dx: -0.5*view.bounds.size.width, dy: -0.5*view.bounds.size.height)
        layer0.position = view.center
        view.layer.addSublayer(layer0)

        view.layer.cornerRadius = 32
        setConstraints()
        self.title = "hello"
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.foregroundColor : UIColor.white ]
    }
    func setConstraints(){
        tinderStackView.addArrangedSubview(tinderIcon)
        tinderStackView.addArrangedSubview(tinderLabel)
        view.addSubview(tinderStackView)
        tinderLabel.snp.makeConstraints { make in
            
            make.top.equalTo(view).offset(378)
            make.bottom.equalTo(view).offset(-428)
            make.left.equalTo(view).offset(101)
            make.right.equalTo(view).offset(-50)
           
        }
    }
    private var tinderStackView: UIStackView = {
       let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.spacing = 10
        stack.axis = .horizontal
        return stack
    }()
    private var tinderLabel: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "tinderLabel")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    private var tinderIcon: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "tinderIcon")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
}

