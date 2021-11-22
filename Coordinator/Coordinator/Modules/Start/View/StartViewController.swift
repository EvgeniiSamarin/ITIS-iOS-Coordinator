//
//  StartViewController.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import Foundation
import UIKit
import SnapKit

final class StartViewController: UIViewController, StartView {

    // MARK: - Instance Properties

    private var signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("sign in", for: .normal)
        return button
    }()

    private var signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("sign up", for: .normal)
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
        self.view.addSubview(self.signInButton)
        self.view.addSubview(self.signUpButton)

        self.signInButton.addTarget(nil, action: #selector(self.onSignInButtonTapped), for: .touchUpInside)
        self.signUpButton.addTarget(nil, action: #selector(self.onSignUpButtonTapped), for: .touchUpInside)
    }

    private func setupConstraints() {
        self.signInButton.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }

        self.signUpButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(self.signInButton.snp.bottom).offset(40)
        }
    }

    @objc private func onSignInButtonTapped() {
        self.presenter?.goToSignIn()
    }

    @objc private func onSignUpButtonTapped() {
        self.presenter?.goToSignUp()
    }
}
