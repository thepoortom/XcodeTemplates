//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

final class ___FILEBASENAMEASIDENTIFIER___: UICollectionViewCell, ReusableView {
    // MARK: Views
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
    
    // MARK: Life cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - UI
private extension ___FILEBASENAMEASIDENTIFIER___ {
    func setupUI() {
        // Add subviews, change background color here, etc.
        
        contentView.addSubview(titleLabel)
    }
}

// MARK: - Layout
private extension ___FILEBASENAMEASIDENTIFIER___ {
    func setConstraints() {
        // Set static constraints here
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        let leadingConstraint = titleLabel.leadingAnchor.constraint(
            greaterThanOrEqualTo: contentView.leadingAnchor,
            constant: 16
        )
        leadingConstraint.priority = .required - 1
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            leadingConstraint,
        ])
    }
}

// MARK: - Setup
extension ___FILEBASENAMEASIDENTIFIER___ {
    func set(item: <#Item#>) {
        titleLabel.text = item.title
    }
}
