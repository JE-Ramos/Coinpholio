//
//  InvestmentView.swift
//  Coinbot
//
//  Created by John Ernest Ramos on 23/02/2018.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import UIKit

class InvestmentView: UIView {

    let headerView: UIView = {
        let uiComponent = UIView()
        uiComponent.backgroundColor = .blue
        return uiComponent
    }()
    
    let collectionView: UICollectionView = {
        let uiComponent = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        
        uiComponent.backgroundColor = .red
        
        return uiComponent
    }()
    
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    fileprivate func setupView() {
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(headerView)
        addSubview(collectionView)
        
        
        headerView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        headerView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        headerView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.25).isActive = true
        
        collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 16).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    
    
    }
}
