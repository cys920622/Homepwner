//
//  ImageStore.swift
//  Homepwner
//
//  Created by Daniel Choi on 2016-12-26.
//  Copyright © 2016 Daniel Choi. All rights reserved.
//

import UIKit

class ImageStore {
    let cache = NSCache<NSString, UIImage>()

    func setImage(_ image: UIImage, forKey key: String) {
        cache.setObject(image, forKey: key as NSString)
    }

    func imageForKey(_ key: String) -> UIImage? {
        return cache.object(forKey: key as NSString)
    }

    func deleteImageForKey(_ key: String) {
        cache.removeObject(forKey: key as NSString)
    }
}
