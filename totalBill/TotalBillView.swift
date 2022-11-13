//
//  TotalBillView.swift
//  totalBill
//
//  Created by Anatoliy on 13.11.2022.
//

import UIKit

class TotalBillView: UIView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Total bill"
        label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
        label.font = UIFont(name: "Avenir Next", size: 14)
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
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .red
        addSubview(titleLabel)
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            
        
        
        ])
        
    }
    
    
    
}
