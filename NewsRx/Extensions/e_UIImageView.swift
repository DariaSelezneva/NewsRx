//
//  e_UIImageView.swift
//  NewsRx
//
//  Created by dunice on 07.07.2022.
//

import UIKit

extension UIImageView {

        func loadImageFromURL(_ urlString: String) {

        self.image = UIImage(named: "placeholder")
        //If imageurl's imagename has space then this line going to work for this
//        let imageServerUrl = URLString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        if let url = URL(string: urlString) {
            URLSession.shared.dataTask(with: url, completionHandler: { [weak self] (data, response, error) in
                DispatchQueue.main.async {
                    if let data = data {
                        if let downloadedImage = UIImage(data: data) {
                            self?.image = downloadedImage
                        }
                    }
                }
            }).resume()
        }
    }
}
