//
//  SearchBarViewController.swift
//  Fowl Weather
//
//  Created by Alex Rhodes on 11/19/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit

class SearchBarViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchBarView: UIView!
    @IBOutlet weak var blurView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        searchBar.delegate = self
    }
    
    private func updateViews() {
        
        searchBar.placeholder = "Search by city or zip"
        searchBar.layer.cornerRadius = 10
        searchBarView.layer.cornerRadius = 10
       
        if !UIAccessibility.isReduceTransparencyEnabled {
            blurView.backgroundColor = .clear

            let blurEffect = UIBlurEffect(style: .systemChromeMaterial)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            //always fill the view
            blurEffectView.frame = self.view.frame
            
            blurView.addSubview(blurEffectView)
        } else {
            view.backgroundColor = .black
        }
      
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let searchTerm = searchBar.text
        NotificationCenter.default.post(name: .searchTermChosen, object: nil, userInfo: ["searchTerm": searchTerm!])
               self.dismiss(animated: true, completion: nil)
    }

    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        let searchTerm = searchBar.text
        
        NotificationCenter.default.post(name: .searchTermChosen, object: nil, userInfo: ["searchTerm": searchTerm!])
        self.dismiss(animated: true, completion: nil)
    }
}
