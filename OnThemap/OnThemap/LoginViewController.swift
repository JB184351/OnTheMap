//
//  ViewController.swift
//  OnThemap
//
//  Created by Justin on 2/21/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Private Variables
    
    private var emailTextField = UITextField()
    private var passwordTextField = UITextField()
    private var loginButton = UIButton()
    private var udacityLogo = UIImageView()
    private var signupTextField = UILabel()
    private var loginStackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }

    // MARK: - UI Setup
    private func setupUI() {
        setupConstraints()
        setupTextFieldsUI()
        setupStackView()
        setupUdacityLogo()
        setupLoginButtonUI()
    }
    
    private func setupStackView() {
        loginStackView.axis = .vertical
        loginStackView.distribution = .fill
        loginStackView.alignment = .fill
        loginStackView.spacing = 8
        loginStackView.accessibilityIdentifier = "loginStackView"
        
        loginStackView.addArrangedSubview(emailTextField)
        loginStackView.addArrangedSubview(passwordTextField)
        loginStackView.addArrangedSubview(loginButton)
    }
    
    private func setupUdacityLogo() {
        udacityLogo.image = UIImage(named: "logo-u")
    }
    
    private func setupTextFieldsUI() {
        emailTextField.placeholder = NSLocalizedString("Email", comment: "Email used to log into Udacity's website")
        emailTextField.accessibilityIdentifier = "emailTextFieldIdentifier"
        emailTextField.accessibilityLabel = "emailTextField"
        
        passwordTextField.placeholder = NSLocalizedString("Password", comment: "Password used to log into Udacity's website")
        passwordTextField.accessibilityIdentifier = "passwordTextFieldIdentifier"
        passwordTextField.accessibilityLabel = "passwordTextField"
        passwordTextField.isSecureTextEntry = true
    }
    
    private func setupLoginButtonUI() {
        loginButton.setTitle(NSLocalizedString("Log In", comment: "Button used to log into Udacity's website"), for: .normal)
        loginButton.titleLabel?.textColor = .white
        loginButton.backgroundColor = .systemBlue
    }
    
    private func setupConstraints() {
        view.translatesAutoresizingMaskIntoConstraints = false
        loginStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(loginStackView)
        
        loginStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: self.view.frame.width / 4).isActive = true

        let constraint = NSLayoutConstraint(item: loginStackView,
                                            attribute: .centerY,
                                            relatedBy: .equal,
                                            toItem: view,
                                            attribute: .bottom,
                                            multiplier: 1/3,
                                            constant: 0)
        constraint.isActive = true
    }

}

