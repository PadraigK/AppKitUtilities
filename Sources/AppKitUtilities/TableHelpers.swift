//
//  TableHelpers.swift
//  
//
//  Created by Padraig O Cinneide on 2022-05-12.
//

import AppKit

public extension NSTableView {
    func makeOrReuse<T : NSTableCellView>(_ cellType: T.Type, identifier: NSUserInterfaceItemIdentifier) -> T {
        if let cell = makeView(withIdentifier: identifier, owner: nil) as? T {
            return cell
        } else {
            let cell = T.init(frame: .zero)
            cell.identifier = identifier
            
            return cell
        }
    }
}
