//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

final class ___FILEBASENAMEASIDENTIFIER___: UIView {
    // MARK: Layout
    private let layoutConfigurator: ___VARIABLE_productName:identifier___CollectionLayoutConfigurator = .init()
    
    // MARK: Views
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame: .zero,
            collectionViewLayout: layoutConfigurator.makeLayout()
        )
        collectionView.bounces = true
        collectionView.alwaysBounceVertical = true
        collectionView.backgroundColor = .clear
        collectionView.allowsMultipleSelection = false
        let cells: [AnyClass] = [
            ___VARIABLE_productName:identifier___ItemCollectionViewCell.self,
        ]
        cells.forEach { collectionView.register($0, forCellWithReuseIdentifier: String(describing: $0)) }
        return collectionView
    }()
    
    // MARK: Life cycle
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setConstraints()
    }
}

// MARK: - UI
private extension ___FILEBASENAMEASIDENTIFIER___ {
    func setupUI() {
        // Add subviews, change background color here, etc.
        
        backgroundColor = .white
        addSubview(collectionView)
    }
}

// MARK: - Layout
extension ___FILEBASENAMEASIDENTIFIER___ {
    private func setConstraints() {
        // Set static constraints here
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    override func updateConstraints() {
        // Update constraints before `super` call (for SnapKit: *.snp.remakeConstraints)
        super.updateConstraints()
    }
}
