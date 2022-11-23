//
//  ViewController.swift
//  SideQuest
//
//  Created by Ken Chiem on 11/20/22.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    // Initializing variables for the login screen
    let logoImageView: UIImageView = UIImageView()
    let loginButton: UIButton = UIButton()
    let userLabel: UILabel = UILabel()
    let passwordLabel: UILabel = UILabel()
    let userTextField: TextField = TextField()
    let passwordTextField: TextField = TextField()
    let forgetPasswordLabel: UILabel = UILabel()
    let signupLabel: UILabel = UILabel()
    let gradient: CAGradientLayer = CAGradientLayer()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add gradient background
        gradient.frame = self.view.bounds
        gradient.colors = [
            UIColor(rgb: 0xD8DFF2).cgColor, UIColor(rgb: 0xE1F8F8).cgColor
        ]
        gradient.startPoint = CGPoint.zero
        gradient.endPoint = CGPoint(x: 1, y: 1)
        self.view.layer.insertSublayer(gradient, at: 0)
        
        // De-select textfield
        self.hideKeyboardWhenTappedAround()
        logoImageView.image = UIImage(named: "placeholder")
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.clipsToBounds = true
        view.addSubview(logoImageView)
        
        userLabel.text = "email"
        userLabel.textColor = UIColor(rgb: 0x7D91C5)
        userLabel.font = .systemFont(ofSize: 16)
        userLabel.backgroundColor = .clear
        view.addSubview(userLabel)
        
        userTextField.layer.cornerRadius = 8
        userTextField.backgroundColor = .white
        userTextField.textColor = .black
        view.addSubview(userTextField)
        
        passwordLabel.text = "password"
        passwordLabel.textColor = UIColor(rgb: 0x7D91C5)
        passwordLabel.font = .systemFont(ofSize: 16)
        passwordLabel.backgroundColor = .clear
        view.addSubview(passwordLabel)
        
        passwordTextField.layer.cornerRadius = 8
        passwordTextField.backgroundColor = .white
        passwordTextField.textColor = .black
        view.addSubview(passwordTextField)
        
        forgetPasswordLabel.text = "forgot your password?"
        forgetPasswordLabel.font = .systemFont(ofSize: 12)
        forgetPasswordLabel.textColor = UIColor(rgb: 0x6EBABA)
        forgetPasswordLabel.backgroundColor = .clear
        view.addSubview(forgetPasswordLabel)
        
        loginButton.setTitle("login", for: .normal)
        loginButton.titleLabel?.font = .systemFont(ofSize: 16)
        loginButton.titleLabel?.textColor = UIColor(rgb: 0xD8DFF2)
        loginButton.backgroundColor = UIColor(rgb: 0x7D91C5)
        loginButton.layer.cornerRadius = 8
        view.addSubview(loginButton)
        
        signupLabel.text = "don't have an account? sign up here!"
        signupLabel.font = .systemFont(ofSize: 12)
        signupLabel.textColor = UIColor(rgb: 0x6EBABA)
        signupLabel.backgroundColor = .clear
        view.addSubview(signupLabel)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        
        logoImageView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(self.view.bounds.height / 10)
            make.height.equalTo(152)
            make.width.equalTo(155)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide.snp.centerX)
        }
        
        userLabel.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).offset(12)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(75)
        }
        
        userTextField.snp.makeConstraints { make in
            make.top.equalTo(userLabel.snp.bottom).offset(5)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide.snp.centerX)
            make.width.equalTo(246)
            make.height.equalTo(46)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(userTextField.snp.bottom).offset(10)
            make.left.equalTo(userLabel)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(5)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide.snp.centerX)
            make.width.equalTo(246)
            make.height.equalTo(46)
        }
        
        forgetPasswordLabel.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(1)
            make.left.equalTo(passwordLabel.snp.left)
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(forgetPasswordLabel.snp.bottom).offset(self.view.bounds.width / 12) // maybe change this offset to some constant
            make.centerX.equalTo(self.view.safeAreaLayoutGuide.snp.centerX)
            make.height.equalTo(46)
            make.width.equalTo(246)
        }
        
        signupLabel.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(1)
            make.left.equalTo(userLabel.snp.left)
        }
        
    }
    
    


}

