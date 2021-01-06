//
//  ImageView.swift
//  TestsDoublesSample
//
//  Created by Matheus de Vasconcelos on 09/10/19.
//  Copyright © 2019 Matheus de Vasconcelos. All rights reserved.
//

import UIKit

class ImageView: UIView, ViewCodable {

    let imageView: UIImageView

    init(frame: CGRect, image: UIImage) {
        imageView = UIImageView(image: image)
        super.init(frame: frame)
        setupView()
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func buildHierarchy() {
        addSubview(imageView)
    }

    func buildConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            imageView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
            imageView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor),
            imageView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
            ])
    }

}
