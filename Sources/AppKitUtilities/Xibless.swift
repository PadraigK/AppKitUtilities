//
//  Xibless.swift
//  TableView
//
//  Created by Padraig O Cinneide on 2021-08-13.
//

import AppKit

open class XiblessVC<View: XiblessView>: NSViewController {
    override open func loadView() {
        view = View()
    }

    public var contentView: View {
        view as! View
    }

    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

open class XiblessView: NSView {
    public required init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }

    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func setupView() {}
}

public extension NSView {
    static func autolayoutable() -> Self {
        let view = Self(frame: .zero)
        return view.autolayoutable()
    }

    func autolayoutable() -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        return self
    }
}
