//
//  PortfolioTableViewCell.swift
//  Coinbot
//
//  Created by John Ernest Ramos on 21/02/2018.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import UIKit

protocol InvestmentPresentable {
    var indicator: String { get }
    var fiatQuantity: String { get }
    var cryptoQuantity: String { get }
    var price: String { get }
}

class InvestmentCell: UICollectionViewCell {
  
    let fiatLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    let cryptoLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    fileprivate func setupView() {
        
        addSubview(fiatLabel)
        addSubview(priceLabel)
        addSubview(cryptoLabel)
        
        self.backgroundColor = .green
        
        fiatLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        cryptoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        fiatLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        fiatLabel.trailingAnchor.constraint(equalTo: priceLabel.leadingAnchor).isActive = true
        fiatLabel.widthAnchor.constraint(equalTo: priceLabel.widthAnchor).isActive = true
        fiatLabel.centerYAnchor.constraint(equalTo: priceLabel.centerYAnchor).isActive = true
        
        
        priceLabel.trailingAnchor.constraint(equalTo: cryptoLabel.leadingAnchor).isActive = true
        priceLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        cryptoLabel.widthAnchor.constraint(equalTo: priceLabel.widthAnchor).isActive = true
        cryptoLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        cryptoLabel.centerYAnchor.constraint(equalTo: priceLabel.centerYAnchor).isActive = true
    }
}

extension InvestmentCell: Identifiable {
    static var identifier: String {
        return "InvestmentCell"
    }
}
