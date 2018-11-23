//
//  SizedCollectionViewController+CellRegistration.swift
//  SOTViewModelRepresenter
//
//  Created by Andrea Altea on 09/11/2018.
//

import Foundation

public extension SizedCollectionViewController {
    
    public func register(_ nibName: String, cellReuseIdentifier identifier: String? = nil) {
        
        let reuseIdentifier = identifier ?? nibName
        let nib = UINib(nibName: nibName, bundle: Bundle.main)
        self.register(nib, cellReuseIdentifier: reuseIdentifier)
    }
    
    public func register(_ nib: UINib, cellReuseIdentifier identifier: String) {
        self.collectionView?.register(nib, forCellWithReuseIdentifier: identifier)
    }
}
