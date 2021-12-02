//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

struct ___FILEBASENAMEASIDENTIFIER___ {
    let id: UUID
}

// MARK: - Hashable
extension ___FILEBASENAMEASIDENTIFIER___: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: ___VARIABLE_productName:identifier___Item, rhs: ___VARIABLE_productName:identifier___Item) -> Bool {
        lhs.id == rhs.id
    }
}
