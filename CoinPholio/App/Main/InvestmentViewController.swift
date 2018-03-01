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
        
        customView.delegate = viewModel
    }
}

extension InvestmentViewController: UICollectionViewDelegate {
    
}

extension InvestmentViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItems(in: section)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: InvestmentCell.identifier, for: indexPath) as! InvestmentCell
        
        let model = viewModel.cellModelFor(item: indexPath.item)
        
        cell.presentable = model
        
        return cell
    }
}

extension InvestmentViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
}
