//
//  SceneDelegate.swift
//  TestApp
//
//  Created by Matheus de Vasconcelos on 06/01/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)

        let imageViewController = ImagesViewController(client: APIClientDefault())
        let navigationController = UINavigationController(rootViewController: imageViewController)
        let formatterController = FormatterViewController(formatter: PhoneNumberFormatter())
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [navigationController, formatterController]
        window.rootViewController = tabBarController
        window.backgroundColor = .white
        self.window = window
        window.makeKeyAndVisible()
    }

}

