//  VideoRecorder - NavigationBarStackView.swift
//  created by vetto on 2023/06/07

import UIKit

final class NavigationBarStackView: UIStackView {
    let imageButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "list.triangle"), for: .normal)
        button.tintColor = .black
        
        return button
    }()
    
    let barLabel: UILabel = {
        let label = UILabel()
        label.text = "Video List"
        label.tintColor = .systemBackground
        label.font = .boldSystemFont(ofSize: 20)
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        configureUI()
    }
    
    private func configureUI() {
        self.axis = .horizontal
        self.spacing = 8
        self.addArrangedSubview(imageButton)
        self.addArrangedSubview(barLabel)
    }
}
