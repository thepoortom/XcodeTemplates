//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

typealias ___VARIABLE_productName:identifier___DiffableDataSource =
    UICollectionViewDiffableDataSource<___VARIABLE_productName:identifier___Section, ___VARIABLE_productName:identifier___Item>
typealias ___VARIABLE_productName:identifier___DataSnapshot =
    NSDiffableDataSourceSnapshot<___VARIABLE_productName:identifier___Section, ___VARIABLE_productName:identifier___Item>

final class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName:identifier___DiffableDataSource {
}

final class ___VARIABLE_productName:identifier___DataSourceConfigurator {
}

// MARK: - Setup
extension ___VARIABLE_productName:identifier___DataSourceConfigurator {
    func makeDataSource(collectionView: UICollectionView) -> ___VARIABLE_productName:identifier___DataSource {
        let dataSource = ___VARIABLE_productName:identifier___DataSource(
            collectionView: collectionView
        ) {
            (collectionView, indexPath, item) -> UICollectionViewCell? in
            
            // Configure cells for sections
            
            let section = ___VARIABLE_productName:identifier___Section.allCases[indexPath.section]
            switch section {
            case .regular:
                guard
                    let cell = collectionView.dequeueReusableCell(
                        withReuseIdentifier: TestItemCollectionViewCell.reuseIdentifier,
                        for: indexPath
                    ) as? TestItemCollectionViewCell
                else { fatalError("Could not create new cell") }
                cell.set(item: item)
                return cell
            }
        }
        return dataSource
    }
}
