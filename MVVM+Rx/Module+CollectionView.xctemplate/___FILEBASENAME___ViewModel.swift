//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import RxCocoa
import RxSwift

protocol ___FILEBASENAMEASIDENTIFIER___Protocol {
    // input
    var onSelectItem: PublishSubject<___VARIABLE_productName:identifier___Item> { get }
    // output
    var title: Driver<String> { get }
    var dataSnapshot: Driver<___VARIABLE_productName:identifier___DataSnapshot> { get }
}

final class ___FILEBASENAMEASIDENTIFIER___ {
    let onSelectItem: PublishSubject<___VARIABLE_productName:identifier___Item> = .init()
    
    // MARK: Properties
    private let disposeBag = DisposeBag()
    
    // MARK: Life cycle
    init() {
        setupBindings()
    }
}

// MARK: - Bindings
private extension ___FILEBASENAMEASIDENTIFIER___ {
    func setupBindings() {
        // Setup any bindings here
    }
}

// MARK: - ___FILEBASENAMEASIDENTIFIER___Protocol
extension ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___Protocol {
    // Add protocol specific things here
    
    var title: Driver<String> {
        .just(NSLocalizedString("Title", comment: "Screen title"))
    }
    
    var dataSnapshot: Driver<___VARIABLE_productName:identifier___DataSnapshot> {
        var snapshot = ___VARIABLE_productName:identifier___DataSnapshot()
        snapshot.appendSections(___VARIABLE_productName:identifier___Section.allCases)
        snapshot.appendItems([.init(id: UUID()), .init(id: UUID()), .init(id: UUID())])
        return .just(snapshot)
    }
}
