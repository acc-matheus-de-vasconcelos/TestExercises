//
//  ImageViewController.swift
//  TestsDoublesSample
//
//  Created by Matheus de Vasconcelos on 09/10/19.
//  Copyright © 2019 Matheus de Vasconcelos. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    var theView: ImageView!

    init(image: UIImage) {
        super.init(nibName: nil, bundle: nil)
        theView = ImageView(frame: UIScreen.main.bounds, image: image)
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = theView
    }

}
