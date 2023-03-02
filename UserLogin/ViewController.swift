//
//  ViewController.swift
//  UserLogin
//
//  Created by Amby on 02/03/2023.
//

import UIKit

class ViewController: UIViewController {

    private let loginContentView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    // username
    private let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = "Username"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    // password
    private let passwordTextField: UITextField = {
        let passwordField = UITextField()
        passwordField.placeholder = "Password"
        passwordField.isSecureTextEntry = true
        passwordField.borderStyle = .roundedRect
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        return passwordField

    }()

    //login button
    let loginButton: UIButton = {
        let login = UIButton(type: .system)
        login.backgroundColor = .blue
        login.setTitle("Login", for: .normal)
        login.tintColor = .white
        login.layer.cornerRadius = 5
        login.clipsToBounds = true
        login.translatesAutoresizingMaskIntoConstraints = false
        return login
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        loginContentView.addSubview(usernameTextField)
        loginContentView.addSubview(passwordTextField)
        loginContentView.addSubview(loginButton)
        view.addSubview(loginContentView)

        setUpAutoLayout()
    }


    func setUpAutoLayout() {

        loginContentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        loginContentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        usernameTextField.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 40).isActive = true
        usernameTextField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        usernameTextField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        usernameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true

        passwordTextField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20).isActive = true

        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        loginButton.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        loginButton.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

}

