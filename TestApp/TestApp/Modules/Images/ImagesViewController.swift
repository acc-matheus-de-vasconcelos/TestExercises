//
//  ImagesViewController.swift
//  TestsDoublesSample
//
//  Created by Matheus de Vasconcelos on 03/10/19.
//  Copyright © 2019 Matheus de Vasconcelos. All rights reserved.
//

import UIKit

class ImagesViewController: UIViewController {

    let service: ImagesService
    let client: APIClient
    var theView: ImagesView!
    var images: [Photo] {
        didSet {
            DispatchQueue.main.async { [weak self] in
                self?.theView.tableView.reloadData()
            }
        }
    }

    init(client: APIClient) {
        self.client = client
        self.service = ImagesService(client: client)
        images = []
        super.init(nibName: nil, bundle: nil)
        tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 0)
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        theView = ImagesView(frame: UIScreen.main.bounds)
        view = theView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        theView.tableView.dataSource = self
        theView.tableView.delegate = self
        loadImages()
    }

    private func loadImages() {
        service.fetchImages { [weak self] (result) in
            guard let self = self else { return }
            switch result {
            case .success(let photos):
                self.images = photos
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

}

extension ImagesViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return ImagesViewTableViewCell(photo: images[indexPath.row], client: client)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) as? ImagesViewTableViewCell,
            let image = cell.photoImageView.image {
            navigationController?.pushViewController(ImageViewController(image: image), animated: true)
        }
    }

}
