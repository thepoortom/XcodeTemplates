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
    var title: Driver<String> { get }
}

final class ___FILEBASENAMEASIDENTIFIER___ {
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
}
