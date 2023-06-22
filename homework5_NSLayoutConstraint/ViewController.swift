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
    
    let myImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "book")
        image.tintColor = .gray
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let myMainLabel: UILabel = {
        let label = UILabel()
        label.text = "Литература — это самый приятный способ игнорировать жизнь."
        label.numberOfLines = 0
        label.textAlignment = .justified
        label.font = UIFont.systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let myTextLabel: UILabel = {
        let label = UILabel()
        label.text = "''Литература — это волшебное убежище, где мы можем отстраниться от суеты и проблем повседневной жизни. Она приглашает нас в параллельные миры, где можно погрузиться в приключения и романтику, забыв о реальности. Книги позволяют нам скользить по страницам, словно по магическому ковру, и наслаждаться прекрасными историями, созданными умами талантливых авторов. В этом пространстве мы можем познать героев, их страсти и стремления, воспроизвести их радости и печали, не покидая уютное кресло. Литература — это близкий друг!''"
        label.numberOfLines = 0
        label.textAlignment = .justified
        label.font = UIFont.systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let myButton: UIButton = {
        let button = UIButton()
        button.setTitle("Читать", for: .normal)
        button.configuration = .filled()
        button.addTarget(self, action: #selector(myButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
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
        view.addSubview(myImage)
        view.addSubview(myMainLabel)
        view.addSubview(myTextLabel)
        view.addSubview(myButton)
    }
    
    func makeConstraints() {
        NSLayoutConstraint.activate([
            myMainView.widthAnchor.constraint(equalToConstant: 393),
            myMainView.heightAnchor.constraint(equalToConstant: 250),
            myMainView.topAnchor.constraint(equalTo: view.topAnchor)
        ])
        NSLayoutConstraint.activate([
            circleView.widthAnchor.constraint(equalToConstant: 140),
            circleView.heightAnchor.constraint(equalToConstant: 140),
            circleView.centerXAnchor.constraint(equalTo: myMainView.centerXAnchor),
            circleView.centerYAnchor.constraint(equalTo: myMainView.centerYAnchor, constant: 50)
        ])
        NSLayoutConstraint.activate([
           
            myImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            myImage.topAnchor.constraint(equalTo: myMainView.bottomAnchor, constant: 25),
            myImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -298),
            myImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -373),
            
            myImage.widthAnchor.constraint(equalToConstant: 60),
            myImage.heightAnchor.constraint(equalToConstant: 60)
        ])
        NSLayoutConstraint.activate([
            myMainLabel.topAnchor.constraint(equalTo: myMainView.bottomAnchor, constant: 2),
            myMainLabel.leadingAnchor.constraint(equalTo: myImage.trailingAnchor, constant: 10),
            myMainLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            myMainLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -350)
        ])
        NSLayoutConstraint.activate([
            myTextLabel.topAnchor.constraint(equalTo: myImage.bottomAnchor, constant: 20),
            myTextLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            myTextLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
        ])
        NSLayoutConstraint.activate([
            myButton.topAnchor.constraint(equalTo: myTextLabel.bottomAnchor, constant: 20),
            myButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            myButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
        ])
    }
}
@objc private extension ViewController {
    func myButtonTapped() {
        print("Button Tap!")
    }
}


