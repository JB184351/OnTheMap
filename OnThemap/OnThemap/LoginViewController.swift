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
    private var signupLabel = UILabel()
    private var loginStackView = UIStackView()
    private var udacityLoginStackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }

    // MARK: - UI Setup
    private func setupUI() {
        setupConstraints()
        setupStackViews()
        setupTextFieldsUI()
        setupUdacityLogo()
        setupLoginButtonUI()
        setupSignupLabel()
    }
    
    private func setupStackViews() {
        udacityLoginStackView.axis = .vertical
        udacityLoginStackView.distribution = .fill
        udacityLoginStackView.alignment = .fill
        udacityLoginStackView.spacing = 16
        udacityLoginStackView.accessibilityIdentifier = "udacityLoginStackView"
        
        loginStackView.axis = .vertical
        loginStackView.distribution = .fill
        loginStackView.alignment = .fill
        loginStackView.spacing = 8
        loginStackView.accessibilityIdentifier = "loginStackView"
        
        udacityLoginStackView.addArrangedSubview(udacityLogo)
        udacityLoginStackView.addArrangedSubview(loginStackView)
        udacityLoginStackView.addArrangedSubview(signupLabel)
        
        loginStackView.addArrangedSubview(emailTextField)
        loginStackView.addArrangedSubview(passwordTextField)
        loginStackView.addArrangedSubview(loginButton)
    }
    
    private func setupUdacityLogo() {
        udacityLogo.image = UIImage(named: "logo-u")
        udacityLogo.contentMode = .scaleAspectFit
    }
    
    private func setupSignupLabel() {
        signupLabel.text = NSLocalizedString("Don't have an account? Sign up", comment: "Contains link to sign up on Udacity's website")
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
        udacityLoginStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(udacityLoginStackView)
        
        udacityLoginStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: self.view.frame.width / 4).isActive = true

        let constraint = NSLayoutConstraint(item: udacityLoginStackView,
                                            attribute: .centerY,
                                            relatedBy: .equal,
                                            toItem: view,
                                            attribute: .bottom,
                                            multiplier: 1/3,
                                            constant: 0)
        constraint.isActive = true
    }

}

