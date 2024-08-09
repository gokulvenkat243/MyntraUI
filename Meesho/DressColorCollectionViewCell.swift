//
//  DressColorCollectionViewCell.swift
//  Meesho
//
//  Created by gokul v on 04/05/24.
//

import UIKit

class DressColorCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "DressColorCollectionViewCell"
    
    public let dressColorImageView: UIImageView = {
       let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.addSubview(dressColorImageView)
        
        NSLayoutConstraint.activate([
            dressColorImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            dressColorImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            dressColorImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            dressColorImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }
    
}
