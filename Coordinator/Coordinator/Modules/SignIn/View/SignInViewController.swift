//
//  SignInViewController.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import UIKit
import SnapKit

final class SignInViewController: UIViewController, SignInView {

    // MARK: - Instance Properties

    private var loginTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "login"
        return textField
    }()

    private var passwordTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "password"
        return textfield
    }()

    private var signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("sign in", for: .normal)
        return button
    }()

    // MARK: -

    typealias PresenterType = StartPresenterForView
    var presenter: PresenterType?

    // MARK: - Initializer

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupView()
        self.setupConstraints()
    }

    // MARK: - Instance Methods

    private func setupView() {
        self.view.addSubview(self.loginTextField)
        self.view.addSubview(self.passwordTextField)
        self.view.addSubview(self.signInButton)

        self.signInButton.addTarget(nil, action: #selector(self.onSignInButtonTapped), for: .touchUpInside)

    }

    private func setupConstraints() {

        self.loginTextField.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.width.equalTo(230)
        }

        self.passwordTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(self.loginTextField.snp.bottom).offset(40)
            make.width.equalTo(230)
        }
        
        self.signInButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(self.passwordTextField.snp.bottom).offset(40)
        }
    }

    @objc private func onSignInButtonTapped() {
        self.presenter?.goToSignIn()
    }
}
