//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import RxCocoa
import RxSwift
import UIKit

final class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    private let viewModel: ___VARIABLE_productName:identifier___ViewModelProtocol
    
    // MARK: Properties
    private let disposeBag = DisposeBag()
    
    // MARK: Life cycle
    init(viewModel: ___VARIABLE_productName:identifier___ViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setViewConstraints()
        setupBindings()
    }
}

// MARK: - Bindings
private extension ___FILEBASENAMEASIDENTIFIER___ {
    func setupBindings() {
        // Setup any bindings, e.g. with viewModel
        
        viewModel.title
            .drive(rx.title)
            .disposed(by: disposeBag)
    }
}

// MARK: - UI
private extension ___FILEBASENAMEASIDENTIFIER___ {
    func setupUI() {
        // Add subviews, change view controller's view color here, etc.
        view.backgroundColor = .white
    }
}

// MARK: - Layout
extension ___FILEBASENAMEASIDENTIFIER___ {
    private func setViewConstraints() {
        // Set static constraints here
    }
    
    override func updateViewConstraints() {
        // Update constraints before `super` call (for SnapKit: *.snp.remakeConstraints)
        super.updateViewConstraints()
    }
}
