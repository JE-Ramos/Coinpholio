//
//  InvestmentView.swift
//  Coinbot
//
//  Created by John Ernest Ramos on 23/02/2018.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import UIKit


/// Custom view for the investment screen
class InvestmentView: UIView {
    
    let headerView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.701487124, green: 0.783030808, blue: 0.8979793191, alpha: 0.1528520976)
        return view
    }()
    
    let fiatLabel: UILabel = {
        let label = UILabel()
        label.text = "Total Fiat Value"
        label.font = UIFont.preferredFont(forTextStyle: .caption2)
        return label
    }()
    
    let fiatHoldingLabel: UILabel = {
        let label = UILabel()
        label.text = "P100,000"
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        return label
    }()
    
    let netLabel: UILabel = {
        let label = UILabel()
        label.text = "Net Cost"
        label.font = UIFont.preferredFont(forTextStyle: .caption2)
        label.textAlignment = .left
        return label
    }()
    
    let netCostLabel: UILabel = {
        let label = UILabel()
        label.text = "P120,000"
        label.textAlignment = .left
        return label
    }()
    
    let cryptoLabel: UILabel = {
        let label = UILabel()
        label.text = "Holdings"
        label.font = UIFont.preferredFont(forTextStyle: .caption2)
        
        label.textAlignment = .right
        return label
    }()
    let cryptoHoldingLabel: UILabel = {
        let label = UILabel()
        
        label.textAlignment = .right
        label.text = "0.12345678"
        return label
        
    }()
    let cryptoSegmentedControl: UISegmentedControl = {
        let segControl = UISegmentedControl()
        segControl.insertSegment(withTitle: "BTC", at: 0, animated: false)
        segControl.insertSegment(withTitle: "ETH", at: 1, animated: false)
        segControl.selectedSegmentIndex = 0
        return segControl
    }()
    
    
    let collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.backgroundColor = #colorLiteral(red: 0.701487124, green: 0.783030808, blue: 0.8979793191, alpha: 0.1528520976)
        return collectionView
    }()
    
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    fileprivate func setupView() {
        self.backgroundColor = .white
        addSubview(headerView)
        addSubview(collectionView)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        headerView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        headerView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor).isActive = true
        headerView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2).isActive = true
        
        collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        setupHeaderView()
        
    }
    
    fileprivate func setupHeaderView() {
        headerView.addSubview(cryptoSegmentedControl)
        headerView.addSubview(fiatLabel)
        headerView.addSubview(fiatHoldingLabel)
        headerView.addSubview(netLabel)
        headerView.addSubview(netCostLabel)
        headerView.addSubview(cryptoLabel)
        headerView.addSubview(cryptoHoldingLabel)
        
        fiatLabel.translatesAutoresizingMaskIntoConstraints = false
        fiatHoldingLabel.translatesAutoresizingMaskIntoConstraints = false
        cryptoLabel.translatesAutoresizingMaskIntoConstraints = false
        cryptoHoldingLabel.translatesAutoresizingMaskIntoConstraints = false
        netLabel.translatesAutoresizingMaskIntoConstraints = false
        netCostLabel.translatesAutoresizingMaskIntoConstraints = false
        cryptoSegmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        
        cryptoSegmentedControl.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 16).isActive = true
        cryptoSegmentedControl.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -16).isActive = true
        cryptoSegmentedControl.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 16).isActive = true
        
        fiatLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 16).isActive = true
        fiatLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -16).isActive = true
        fiatLabel.topAnchor.constraint(equalTo: cryptoSegmentedControl.bottomAnchor, constant: 16).isActive = true
        
        fiatHoldingLabel.leadingAnchor.constraint(equalTo: fiatLabel.leadingAnchor).isActive = true
        fiatHoldingLabel.trailingAnchor.constraint(equalTo: fiatLabel.trailingAnchor).isActive = true
        fiatHoldingLabel.topAnchor.constraint(equalTo: fiatLabel.bottomAnchor).isActive = true
        
        
        netLabel.leadingAnchor.constraint(equalTo: fiatLabel.leadingAnchor).isActive = true
        netLabel.trailingAnchor.constraint(equalTo: cryptoLabel.leadingAnchor).isActive = true
        netLabel.topAnchor.constraint(equalTo: fiatHoldingLabel.bottomAnchor, constant: 16).isActive = true
        

        cryptoLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -16).isActive = true
        cryptoLabel.topAnchor.constraint(equalTo: netLabel.topAnchor).isActive = true
        cryptoLabel.widthAnchor.constraint(equalTo: netLabel.widthAnchor).isActive = true
        
        
        netCostLabel.leadingAnchor.constraint(equalTo: fiatLabel.leadingAnchor).isActive = true
        netCostLabel.trailingAnchor.constraint(equalTo: cryptoHoldingLabel.leadingAnchor).isActive = true
        netCostLabel.topAnchor.constraint(equalTo: netLabel.bottomAnchor).isActive = true
        
        
        cryptoHoldingLabel.trailingAnchor.constraint(equalTo: cryptoLabel.trailingAnchor).isActive = true
        cryptoHoldingLabel.topAnchor.constraint(equalTo: netCostLabel.topAnchor).isActive = true
        cryptoHoldingLabel.widthAnchor.constraint(equalTo: netCostLabel.widthAnchor).isActive = true
        
        
        
    }
}
