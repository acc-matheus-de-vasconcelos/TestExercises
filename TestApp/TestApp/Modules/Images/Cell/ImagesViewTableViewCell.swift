//
//  ImagesViewTableViewCell.swift
//  TestsDoublesSample
//
//  Created by Matheus de Vasconcelos on 07/10/19.
//  Copyright © 2019 Matheus de Vasconcelos. All rights reserved.
//

import UIKit

class ImagesViewTableViewCell: UITableViewCell, ViewCodable {

    let photo: Photo
    let client: APIClient
    var photoImageView: UIImageView

    init(photo: Photo, client: APIClient) {
        self.photo = photo
        self.client = client
        photoImageView = UIImageView()
        super.init(style: .default, reuseIdentifier: "ImagesViewTableViewCell")
        setupView()
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    internal func buildHierarchy() {
        addSubview(photoImageView)
    }

    internal func buildConstraints() {
        photoImageView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            photoImageView.topAnchor.constraint(equalTo: topAnchor),
            photoImageView.rightAnchor.constraint(equalTo: rightAnchor),
            photoImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            photoImageView.leftAnchor.constraint(equalTo: leftAnchor)
            ])
    }

    internal func render() {
        guard let url = URL(string: photo.urls.small) else {
            return
        }
        client.request(url) { [weak self] (result) in
            guard let self = self else { return }
            switch result {
            case .success(let imageData):
                DispatchQueue.main.async { [weak self] in
                    self?.photoImageView.image = UIImage(data: imageData)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

}
