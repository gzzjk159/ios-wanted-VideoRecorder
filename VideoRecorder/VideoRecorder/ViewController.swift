//  VideoRecorder - ViewController.swift
//  created by vetto on 2023/06/06

import UIKit

final class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configure()
    }
    
    private func configure() {
        configureNavigationBar()
    }
    
    private func configureNavigationBar() {
        let rightButton: UIBarButtonItem = {
            let button = UIBarButtonItem(image: UIImage(systemName: "video.fill.badge.plus"),
                                         style: .done,
                                         target: self,
                                         action: nil)
            button.tintColor = .systemIndigo
            
            return button
        }()
        
        navigationItem.rightBarButtonItem = rightButton
    }
}

