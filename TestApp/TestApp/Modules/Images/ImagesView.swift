//
//  ImagesView.swift
//  TestsDoublesSample
//
//  Created by Matheus de Vasconcelos on 03/10/19.
//  Copyright © 2019 Matheus de Vasconcelos. All rights reserved.
//

import UIKit

class ImagesView: UIView, ViewCodable {
    
    let tableView: UITableView

    override init(frame: CGRect) {
        tableView = UITableView(frame: .zero, style: .plain)
        super.init(frame: frame)
        registerCell()
        setupView()
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func registerCell() {
        tableView.register(ImagesViewTableViewCell.self, forCellReuseIdentifier: "ImagesViewTableViewCell")
    }

    func buildHierarchy() {
        addSubview(tableView)
    }

    func buildConstraints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
            ])
    }

    func render() {
        tableView.backgroundColor = .white
    }

}
