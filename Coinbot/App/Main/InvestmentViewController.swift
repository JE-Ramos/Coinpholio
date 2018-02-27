//
//  PortfolioViewController.swift
//  Coinbot
//
//  Created by John Ernest Ramos on 20/02/2018.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import UIKit

class InvestmentViewController: UIViewController {
    
    var viewModel: InvestmentViewModel!
    
    
    /// Convinience property to cast the view as InvestmentView type
    private var customView: InvestmentView {
        return self.view as! InvestmentView
    }
    
    override func loadView() {
        self.view = InvestmentView()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = InvestmentViewModel(cellModels: [])
        
        
        customView.collectionView.register(InvestmentCell.self, forCellWithReuseIdentifier: InvestmentCell.identifier)
        customView.collectionView.delegate = self
        customView.collectionView.dataSource = self
    }
}

extension InvestmentViewController: UICollectionViewDelegate {
    
}

extension InvestmentViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel!.cellModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: InvestmentCell.identifier, for: indexPath) as! InvestmentCell
        
        let model = viewModel.cellModels[indexPath.item]
        
        cell.fiatLabel.text = String(model.fiat)
        cell.priceLabel.text = String(model.tradePrice)
        cell.cryptoLabel.text = String(model.crypto)
        return cell
    }
}

extension InvestmentViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
}
