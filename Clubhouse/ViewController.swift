//
//  ViewController.swift
//  Clubhouse
//
//  Created by Sergei Semko on 5/9/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }


    private func initialize() {
        view.backgroundColor = UIColor(
            red: 241 / 255,
            green: 238 / 255,
            blue: 228 / 255,
            alpha: 1
        )
        
        let label = UILabel()
        label.text = "🎉 Welcome!"
        label.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(label)
        label.snp.makeConstraints { maker in
            maker.left.equalToSuperview().inset(50)
            maker.top.equalToSuperview().offset(150)
        }
        
        let extraLabel1 = UILabel()
        extraLabel1.text = "We're working hard to get Clubhouse ready for everyone! While we wrap up the finishing touches, we're adding people gradually to make sure nothing breaks. :)"
        extraLabel1.numberOfLines = 0
        view.addSubview(extraLabel1)
        extraLabel1.snp.makeConstraints { maker in
            maker.left.right.equalToSuperview().inset(50)
            maker.top.equalTo(label.snp.bottom).offset(20)
        }
        
        
        let extraLabel2 = UILabel()
        extraLabel2.text = "Anyone can join with an invite from an existing user - or reserve your username and we'll text you if you have a friend on the app who can let you in. We are so grateful you're here and can't wait to have you join! 🙏🏽"
        extraLabel2.numberOfLines = 0
        view.addSubview(extraLabel2)
        extraLabel2.snp.makeConstraints { maker in
            maker.left.right.equalToSuperview().inset(50)
            maker.top.equalTo(extraLabel1.snp.bottom).offset(20)
        }
        
        let extraLabel3 = UILabel()
        extraLabel3.text = "🏠 Paul, Rohan & the Clubhouse team"
        extraLabel3.numberOfLines = 0
        view.addSubview(extraLabel3)
        extraLabel3.snp.makeConstraints { maker in
            maker.left.right.equalToSuperview().inset(50)
            maker.top.equalTo(extraLabel2.snp.bottom).offset(20)
        }
        
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(
            red: 84 / 255,
            green: 118 / 255,
            blue: 171 / 255,
            alpha: 1
        )
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.setTitle("Get your username ->", for: .normal)
        view.addSubview(button)
        button.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalTo(250)
            maker.top.equalTo(extraLabel3.snp.bottom).offset(50)
            maker.height.equalTo(40)
        }
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        let bottomText = UILabel()
        bottomText.text = "Have an invite text? Sign in ->"
        bottomText.textColor = .link
        view.addSubview(bottomText)
        bottomText.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.top.equalTo(button.snp.bottom).offset(10)
            maker.bottom.equalTo(view.layoutMarginsGuide).inset(10)
        }
        
        let labelTap = UITapGestureRecognizer(target: self, action: #selector(labelTapped))
        bottomText.isUserInteractionEnabled = true
        bottomText.addGestureRecognizer(labelTap)
    }
    
    @objc private func buttonTapped() {
        print("We want to get a username")
    }
    
    @objc private func labelTapped(_ sender: UITapGestureRecognizer) {
        print("labelTapped")
    }
    
}

