//
//  ViewController.swift
//  homework5_NSLayoutConstraint
//
//  Created by Ilya Pogozhev on 22.06.2023.
//

import UIKit

class ViewController: UIViewController {
    let myMainView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemIndigo
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.cornerRadius = 25
        view.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        return view
    }()
    
    let circleView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemOrange
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 70
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
        makeConstraints()
    }
}
private extension ViewController {
    func setupScene() {
        view.backgroundColor = .white
        view.addSubview(myMainView)
        view.addSubview(circleView)
    }
    
    func makeConstraints() {
        NSLayoutConstraint.activate([
            myMainView.widthAnchor.constraint(equalToConstant: 393),
            myMainView.heightAnchor.constraint(equalToConstant: 310),
            myMainView.topAnchor.constraint(equalTo: view.topAnchor)
        ])
        NSLayoutConstraint.activate([
            circleView.widthAnchor.constraint(equalToConstant: 140),
            circleView.heightAnchor.constraint(equalToConstant: 140),
            circleView.centerXAnchor.constraint(equalTo: myMainView.centerXAnchor),
            circleView.centerYAnchor.constraint(equalTo: myMainView.centerYAnchor, constant: 50)
        ])
    }
}


