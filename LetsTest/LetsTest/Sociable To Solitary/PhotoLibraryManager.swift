//
//  PhotoLibraryManager.swift
//  LetsTest
//

import Photos

public class PhotoLibraryManager {

    public init() { }

    public func RequestAccess(completion: @escaping (Bool) -> Void) {
        let library:PHPhotoLibrary.Type = PHPhotoLibrary.self
        let photos = library.authorizationStatus()
        switch photos {
        case .notDetermined:
            library.requestAuthorization({status in
                if status == .authorized{
                    completion(true)
                } else {
                    completion(false)
                }
            })
        case .authorized:
            completion(true)
        case .denied:
            completion(false)
        default:
            completion(false)
        }
    }
}
