import Foundation
import UIKit

class LoginViewController: UIViewController {

    let logoImageView = UIImageView()
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let loginButton = UIButton(type: .system)
    let stackView = UIStackView()
    let udacityBlue = UIColor(red: 0/255, green: 191/255, blue: 255/255, alpha: 1)
    let signupTextView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        
        setupStackView()
        setupLogoImageView()
        setupTextfields()
        setupLoginButton()
        setupSignupTextView()
        
        setupConstraints()
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.spacing = 20.0
        stackView.alignment = .center
        view.addSubview(stackView)
        
        stackView.addArrangedSubview(logoImageView)
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(loginButton)
        stackView.addArrangedSubview(signupTextView)
    }
    
    private func setupLogoImageView() {
        logoImageView.image = UIImage(named: "logo-u")
        logoImageView.contentMode = .scaleAspectFit
    }
    
    private func setupTextfields() {
        // Set up the email text field
        emailTextField.placeholder = "Email"
        emailTextField.keyboardType = .emailAddress
        emailTextField.borderStyle = .roundedRect

        // Set up the password text field
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
    }
    
    private func setupLoginButton() {
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = udacityBlue
        loginButton.layer.cornerRadius = 5.0
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
    
    private func setupSignupTextView() {
        // Create attributed text for the sign up message
        let signUpMessage = "Don't have an account? Sign up"
        let attributedString = NSMutableAttributedString(string: signUpMessage)
        let range = (signUpMessage as NSString).range(of: "Sign up")
        attributedString.addAttribute(.link, value: "https://auth.udacity.com/sign-up", range: range)
        
        // Set up the sign-up label
        signupTextView.attributedText = attributedString
        signupTextView.textColor = .black
        signupTextView.isSelectable = true
        signupTextView.isScrollEnabled = false
    }
    
    private func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emailTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            passwordTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    @objc func loginButtonTapped() {
        // Handle the login button tap event here
        let tabBarController = LocationTabBarController()
        navigationController?.pushViewController(tabBarController, animated: true)
    }
    
    func presentTabBarController() {
        
    }
}
