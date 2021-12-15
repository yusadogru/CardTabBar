//
//  LabelViewController.swift
//  DemoApp
//
//  Created by Yusa Dogru on 25.11.2021.
//

import UIKit

final class LabelViewController: UIViewController {

    // MARK: - Views
    lazy private var button: UIButton = {
        let button = UIButton()
        button.setTitle("Home Button", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.setTitleColor(UIColor.defaultTint, for: .normal)
        button.backgroundColor = UIColor.Navigation.background
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 14, bottom: 6, right: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    // MARK: - Init
    init(title: String?){
        super.init(nibName: nil, bundle: nil)
        self.title = title
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraint()
        navigationItem.title = title
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.layer.cornerRadius = button.frame.height / 2
    }

    // MARK: - UI
    private func setupUI() {
        view.backgroundColor = UIColor.background
    }
    
    private func setupConstraint() {
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    // MARK: - Actions
    @objc func buttonTapped() {
        tabBarController?.selectedIndex = 0
    }
}
