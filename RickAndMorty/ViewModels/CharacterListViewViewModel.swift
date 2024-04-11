//
//  CharacterListViewViewModel.swift
//  RickAndMorty
//
//  Created by Ritesh Virulkar on 10/04/24.
//

import UIKit

final class CharacterListViewViewModel: NSObject {
    func fetchCharacters() {
        Service.shared.execute(.getAllCharactersRequest, expecting: GetAllCharactersResponse.self) {result in
            switch result {
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}

extension CharacterListViewViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    //MARK: collectionView DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .systemCyan  
        return cell
    }
    
    //MARK: collectionView Delegate
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = UIScreen.main.bounds
        let width = (bounds.width-30)/2
        
        return CGSize(width: width, height: width * 1.5)
    }
}
