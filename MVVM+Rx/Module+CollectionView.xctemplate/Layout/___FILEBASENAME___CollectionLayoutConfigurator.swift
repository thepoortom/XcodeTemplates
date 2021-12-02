//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

// MARK: - Layout configurator
final class ___FILEBASENAMEASIDENTIFIER___ {
    // Return layout for collection view, e.g. UICollectionViewCompositionalLayout
    
    func makeLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout {
            (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment)
            -> NSCollectionLayoutSection? in
            let sectionLayoutKind = ___VARIABLE_productName:identifier___Section.allCases[sectionIndex]
            switch sectionLayoutKind {
            case .regular: return self.makeMainLayout()
            }
        }
        return layout
    }
}

// MARK: - Section layout
private extension ___FILEBASENAMEASIDENTIFIER___ {
    // Make layout for different sections
    
    func makeMainLayout() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1.0),
                heightDimension: .fractionalHeight(1.0)
            )
        )
        item.contentInsets = NSDirectionalEdgeInsets(
            top: 12, leading: 16, bottom: 12, trailing: 16
        )
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .estimated(44)
        )
        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: groupSize,
            subitem: item,
            count: 1
        )
        
        return NSCollectionLayoutSection(group: group)
    }
}
