//
//  ViewController.swift
//  totalBill
//
//  Created by Anatoliy on 10.11.2022.
// https://www.youtube.com/watch?v=hAdSdnNeLKs , https://www.youtube.com/watch?v=Hom46fPMiNQ

import UIKit

class MainViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Total Bill"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Bold", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    } ()

    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter the invoice amount and click \"Calculate\""
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Bold", size: 15)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.7
        label.numberOfLines = 2
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var calculateButton: UIButton = {
        let button = UIButton(type:.system)
        button.setTitle("Calculate", for: .normal)
        button.tintColor = .white
        button.backgroundColor = #colorLiteral(red: 0.5647058824, green: 0.1529411765, blue: 0.5568627451, alpha: 1)
        button.titleLabel?.font = UIFont(name: "Avenir Next Bold", size: 20)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(calculateButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        print ("viewDidLoad")
        setupViews()
        setConstraints()
        
        
        
    }

    func setupViews() {
        view.backgroundColor = #colorLiteral(red: 0.9764705882, green: 0.9764705882, blue: 0.9764705882, alpha: 1)
        
        view.addSubview(titleLabel)
        view.addSubview(logoImageView)
        view.addSubview(descriptionLabel)
        view.addSubview(calculateButton)
        
        
    }
    
    @objc func calculateButtonTapped() {
        print ("calc")
    }
    
    
        //extension MainViewController {
        
        func setConstraints() {
            NSLayoutConstraint.activate([
                titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),//10 points
                titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                logoImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
                logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                logoImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
                //logoImageView.heightAnchor.constraint(equalTo: logoImageView.widthAnchor, multiplier: 1),
                logoImageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
                descriptionLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 15),//10 points
                //descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
                descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
                descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
                
                calculateButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
                calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                calculateButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                calculateButton.heightAnchor.constraint(equalToConstant: 60)
            ])
            
            
            
        }
        
   // }
    
    
    

}

