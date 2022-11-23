//
//  SignUpViewController.swift
//  SideQuest
//
//  Created by Ken Chiem on 11/23/22.
//

import UIKit
import SnapKit

class SignUpViewController: UIViewController {
    
    let gradient: CAGradientLayer = CAGradientLayer()
    let whiteBackgroundView: UIView = UIView()
    let emailLabel: UILabel = UILabel()
    let passwordLabel: UILabel = UILabel()
    let firstNameLabel: UILabel = UILabel()
    let lastNameLabel: UILabel = UILabel()
    let phoneNumberLabel: UILabel = UILabel()
    let emailTextField: TextField = TextField()
    let passwordTextField: TextField = TextField()
    let firstNameTextField: TextField = TextField()
    let lastNameTextField: TextField = TextField()
    let phoneNumberTextField: TextField = TextField()
    let createButton: UIButton = UIButton()
    let createLabel: UILabel = UILabel()
    

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
        
        self.hideKeyboardWhenTappedAround()
        
        whiteBackgroundView.backgroundColor = .white
        whiteBackgroundView.layer.cornerRadius = 16
        whiteBackgroundView.layer.zPosition = 0 // set the uiview to back of z-index
        view.addSubview(whiteBackgroundView)
        
        createLabel.text = "Create an account"
        createLabel.textColor = UIColor(rgb: 0x408585)
        createLabel.backgroundColor = .clear
        createLabel.font = .systemFont(ofSize: 32)
        view.addSubview(createLabel)
        
        emailLabel.text = "email"
        emailLabel.textColor = UIColor(rgb: 0x6EBABA)
        emailLabel.font = .systemFont(ofSize: 16)
        view.addSubview(emailLabel)
        
        emailTextField.backgroundColor = UIColor(rgb: 0xE1F8F8)
        emailTextField.layer.cornerRadius = 8
        emailTextField.textColor = .black
        view.addSubview(emailTextField)
        
        passwordLabel.text = "password"
        passwordLabel.textColor = UIColor(rgb: 0x6EBABA)
        passwordLabel.font = .systemFont(ofSize: 16)
        view.addSubview(passwordLabel)
        
        passwordTextField.backgroundColor = UIColor(rgb: 0xE1F8F8)
        passwordTextField.layer.cornerRadius = 8
        passwordTextField.textColor = .black
        view.addSubview(passwordTextField)
        
        firstNameLabel.text = "first name"
        firstNameLabel.textColor = UIColor(rgb: 0x6EBABA)
        firstNameLabel.font = .systemFont(ofSize: 16)
        view.addSubview(firstNameLabel)
        
        firstNameTextField.backgroundColor = UIColor(rgb: 0xE1F8F8)
        firstNameTextField.layer.cornerRadius = 8
        firstNameTextField.textColor = .black
        view.addSubview(firstNameTextField)
        
        lastNameLabel.text = "last name"
        lastNameLabel.textColor = UIColor(rgb: 0x6EBABA)
        lastNameLabel.font = .systemFont(ofSize: 16)
        view.addSubview(lastNameLabel)
        
        lastNameTextField.backgroundColor = UIColor(rgb: 0xE1F8F8)
        lastNameTextField.layer.cornerRadius = 8
        lastNameTextField.textColor = .black
        view.addSubview(lastNameTextField)
        
        phoneNumberLabel.text = "phone number"
        phoneNumberLabel.textColor = UIColor(rgb: 0x6EBABA)
        phoneNumberLabel.font = .systemFont(ofSize: 16)
        view.addSubview(phoneNumberLabel)
        
        phoneNumberTextField.backgroundColor = UIColor(rgb: 0xE1F8F8)
        phoneNumberTextField.layer.cornerRadius = 8
        phoneNumberTextField.textColor = .black
        view.addSubview(phoneNumberTextField)
        
        createButton.setTitle("create account", for: .normal)
        createButton.titleLabel?.textColor = UIColor(rgb: 0xE1F8F8)
        createButton.backgroundColor = UIColor(rgb: 0x6EBABA)
        createButton.layer.cornerRadius = 8
        view.addSubview(createButton)
        
        setupConstraints()
        
    }
    
    func setupConstraints() {
        whiteBackgroundView.snp.makeConstraints { make in
            make.centerX.equalTo(self.view.safeAreaLayoutGuide.snp.centerX)
            make.centerY.equalTo(self.view.safeAreaLayoutGuide.snp.centerY)
            make.height.equalTo(533)
            make.width.equalTo(326)
        }
        
        createLabel.snp.makeConstraints { make in
            make.top.equalTo(whiteBackgroundView.snp.top).offset(10)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide.snp.centerX)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(createLabel.snp.bottom).offset(15)
            make.left.equalTo(emailTextField.snp.left)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(2)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide.snp.centerX)
            make.width.equalTo(262)
            make.height.equalTo(46)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(10)
            make.left.equalTo(passwordTextField.snp.left)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(2)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide.snp.centerX)
            make.width.equalTo(262)
            make.height.equalTo(46)
        }
        
        firstNameLabel.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(10)
            make.left.equalTo(passwordTextField.snp.left)
        }
        
        firstNameTextField.snp.makeConstraints { make in
            make.top.equalTo(firstNameLabel.snp.bottom).offset(2)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide.snp.centerX)
            make.width.equalTo(262)
            make.height.equalTo(46)
        }
        
        lastNameLabel.snp.makeConstraints { make in
            make.top.equalTo(firstNameTextField.snp.bottom).offset(10)
            make.left.equalTo(passwordTextField.snp.left)
        }
        
        lastNameTextField.snp.makeConstraints { make in
            make.top.equalTo(lastNameLabel.snp.bottom).offset(2)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide.snp.centerX)
            make.width.equalTo(262)
            make.height.equalTo(46)
        }
        
        phoneNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(lastNameTextField.snp.bottom).offset(10)
            make.left.equalTo(passwordTextField.snp.left)
        }
        
        phoneNumberTextField.snp.makeConstraints { make in
            make.top.equalTo(phoneNumberLabel.snp.bottom).offset(2)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide.snp.centerX)
            make.width.equalTo(262)
            make.height.equalTo(46)
        }

        createButton.snp.makeConstraints { make in
            make.top.equalTo(phoneNumberTextField.snp.bottom).offset(18)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide.snp.centerX)
            make.height.equalTo(46)
            make.width.equalTo(262)
        }
        
    }

}
