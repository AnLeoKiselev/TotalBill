//
//  PersonsView.swift
//  totalBill
//
//  Created by Anatoliy on 13.11.2022.
//

import UIKit

class PersonsView: UIView {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Persons"
        label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var backGroundGrayView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9561659694, green: 0.9591339231, blue: 0.9530903697, alpha: 1)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var minusButton: UIButton = {
        let button = UIButton(type: .system) //чтоб красиво щелкала
        button.setTitle("—", for: .normal)
        button.tintColor = #colorLiteral(red: 0.4510066509, green: 0.4966486692, blue: 0.5633206367, alpha: 1)
        //button.backgroundColor = .red
        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 40)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var plusButton: UIButton = {
        let button = UIButton(type: .system) //чтоб красиво щелкала
        button.setTitle("+", for: .normal)
        button.tintColor = #colorLiteral(red: 0.4510066509, green: 0.4966486692, blue: 0.5633206367, alpha: 1)
        //button.backgroundColor = .red
        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 40)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var counterLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next", size: 48)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        addSubview(backGroundGrayView)
        backGroundGrayView.addSubview(minusButton)
        backGroundGrayView.addSubview(plusButton)
        backGroundGrayView.addSubview(counterLabel)
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            backGroundGrayView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2),
            backGroundGrayView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backGroundGrayView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backGroundGrayView.heightAnchor.constraint(equalToConstant: 100),
            
            minusButton.topAnchor.constraint(equalTo: backGroundGrayView.topAnchor, constant: 0),
            minusButton.leadingAnchor.constraint(equalTo: backGroundGrayView.leadingAnchor, constant: 0),
            minusButton.heightAnchor.constraint(equalTo: backGroundGrayView.heightAnchor),
            minusButton.widthAnchor.constraint(equalToConstant: 80),
            
            plusButton.topAnchor.constraint(equalTo: backGroundGrayView.topAnchor, constant: 0),
            plusButton.trailingAnchor.constraint(equalTo: backGroundGrayView.trailingAnchor, constant: 0),
            plusButton.heightAnchor.constraint(equalTo: backGroundGrayView.heightAnchor),
            plusButton.widthAnchor.constraint(equalToConstant: 80),
            
            counterLabel.leadingAnchor.constraint(equalTo: minusButton.trailingAnchor, constant: 0),
            counterLabel.trailingAnchor.constraint(equalTo: plusButton.leadingAnchor, constant: 0),
            counterLabel.heightAnchor.constraint(equalTo: backGroundGrayView.heightAnchor)
            
        ])
        
    }
    
    
    
}
