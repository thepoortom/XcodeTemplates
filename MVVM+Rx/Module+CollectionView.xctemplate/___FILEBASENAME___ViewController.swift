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

final class ___FILEBASENAMEASIDENTIFIER___: UIViewController, ViewControllerRootView {
    typealias RootView = ___VARIABLE_productName:identifier___RootView
    
    private let viewModel: ___VARIABLE_productName:identifier___ViewModelProtocol
    
    // MARK: Properties
    private let disposeBag = DisposeBag()
    
    // MARK: Data source
    private let dataSourceConfigurator: ___VARIABLE_productName:identifier___DataSourceConfigurator = .init()
    private lazy var contentDataSource: ___VARIABLE_productName:identifier___DataSource = {
        dataSourceConfigurator.makeDataSource(
            collectionView: rootView.collectionView
        )
    }()
    private lazy var contentDelegate = ___VARIABLE_productName:identifier___Delegate(dataSource: contentDataSource)
    
    // MARK: Life cycle
    init(viewModel: ___VARIABLE_productName:identifier___ViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = ___VARIABLE_productName:identifier___RootView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        
        viewModel.dataSnapshot
            .drive(onNext: { [weak self] snapshot in
                guard let self = self else { return }
                self.contentDataSource.apply(snapshot, animatingDifferences: true)
            })
            .disposed(by: disposeBag)
        
        contentDelegate.onSelectItem
            .bind(to: viewModel.onSelectItem)
            .disposed(by: disposeBag)
        
        rootView.collectionView.delegate = contentDelegate
    }
}
