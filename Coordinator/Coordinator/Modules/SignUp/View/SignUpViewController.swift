//
//  SignUpViewController.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import UIKit
import SnapKit

final class SignUpViewController: UIViewController, SignUpView {

    // MARK: - Instance Properties

    private var loginTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "login"
        return textField
    }()

    private var signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("next", for: .normal)
        return button
    }()

    // MARK: -

    typealias PresenterType = SignUpPresenterForView
    var presenter: PresenterType?
    var isFinalStep: Bool = false

    // MARK: - Initializer

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupView()
        self.setupConstraints()
    }

    // MARK: - Instance Methods

    private func setupView() {
        self.view.addSubview(self.loginTextField)
        self.view.addSubview(self.signInButton)
        if self.isFinalStep {
            self.loginTextField.placeholder = "password"
        } else {
            self.loginTextField.placeholder = "login"
            self.signInButton.addTarget(nil, action: #selector(self.onSignInButtonTapped), for: .touchUpInside)
        }
    }

    private func setupConstraints() {

        self.loginTextField.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.width.equalTo(230)
        }

        self.signInButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(self.signInButton.snp.bottom).offset(40)
        }
    }

    @objc private func onSignInButtonTapped() {
        self.presenter?.goToJokeScreen()
    }

    @objc private func onNextButtonTapped() {
        self.presenter?.goToInputPassword()
    }
}

