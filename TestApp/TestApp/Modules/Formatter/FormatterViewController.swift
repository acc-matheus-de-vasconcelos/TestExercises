//
//  FormatterViewController.swift
//  TestsDoublesSample
//
//  Created by Matheus de Vasconcelos on 20/09/19.
//  Copyright © 2019 Matheus de Vasconcelos. All rights reserved.
//

import UIKit

public class FormatterViewController: UIViewController {

    var theView: FormatterView!
    let formatter: Formatter

    init(formatter: Formatter) {
        self.formatter = formatter
        super.init(nibName: nil, bundle: nil)
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override public func loadView() {
        theView = FormatterView(frame: UIScreen.main.bounds)
        theView.delegate = self
        view = theView
    }

    override public func viewDidLoad() {
        callAnalytics()
    }

    func callAnalytics() {
        print("ANALYTICS - FORMATTER VIEW CONTROLLER - APPEAR")
    }

}

extension FormatterViewController: FormatterViewDelegate {

    func didFormat(text: String) -> String {
        if formatter.canFormat(text: text) {
            theView.updateTextFieldState(state: true)
            return formatter.format(text: text)
        }
        theView.updateTextFieldState(state: false)
        return formatter.removeFormat(text: text)
    }

}
