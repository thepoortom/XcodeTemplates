//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import RxSwift
import UIKit

final class ___FILEBASENAMEASIDENTIFIER___: NSObject {
    private weak var dataSource: ___VARIABLE_productName:identifier___DataSource?
    
    // MARK: Properties
    let onSelectItem: PublishSubject<___VARIABLE_productName:identifier___Item> = .init()
    
    // MARK: Life cycle
    init(dataSource: ___VARIABLE_productName:identifier___DataSource) {
        self.dataSource = dataSource
    }
}

// MARK: - UICollectionViewDelegate
extension ___FILEBASENAMEASIDENTIFIER___: UICollectionViewDelegate {
    func collectionView(
        _ collectionView: UICollectionView,
        didSelectItemAt indexPath: IndexPath
    ) {
        guard let item = dataSource?.itemIdentifier(for: indexPath) else { return }
        onSelectItem.onNext(item)
    }
}
