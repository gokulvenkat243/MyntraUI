//
//  DressViewCollectionViewCell.swift
//  Meesho
//
//  Created by gokul v on 02/05/24.
//

import UIKit

class DressViewCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "DressViewCollectionViewCell"
    
    private let dressImageView: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "dress2")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let viewLabel: UILabel = {
       let label = UILabel()
        label.backgroundColor = .systemBackground
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 12
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let ratingLabel2: UILabel = {
       let label = UILabel()
        label.text = "4.1"
        label.textColor = .label
        label.font = .systemFont(ofSize: 15, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let starBtn2: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName: "star.fill"), for: .normal)
        button.tintColor = .systemGreen
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let totalRatingLbl: UILabel = {
       let label = UILabel()
        label.text = "4.6k"
        label.textColor = .label
        label.font = .systemFont(ofSize: 15, weight: .thin)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let similarButton: UIButton = {
        let button = UIButton()
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 12
        button.backgroundColor = .systemBackground
        button.setImage(UIImage(systemName: "square.stack.3d.down.right"), for: .normal)
        button.tintColor = .label
        button.setTitle("  View Similar", for: .normal)
        button.setTitleColor(UIColor.label, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(dressImageView)
        
        NSLayoutConstraint.activate([
            dressImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            dressImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            dressImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            dressImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
        
        dressImageView.addSubview(viewLabel)
        NSLayoutConstraint.activate([
            viewLabel.trailingAnchor.constraint(equalTo: dressImageView.trailingAnchor, constant: -15),
            viewLabel.bottomAnchor.constraint(equalTo: dressImageView.bottomAnchor, constant: -15),
            viewLabel.heightAnchor.constraint(equalToConstant: 35),
            viewLabel.widthAnchor.constraint(equalToConstant: 95),
        ])
        
        viewLabel.addSubview(ratingLabel2)
        NSLayoutConstraint.activate([
            ratingLabel2.centerXAnchor.constraint(equalTo: viewLabel.leftAnchor, constant: 18),
            ratingLabel2.centerYAnchor.constraint(equalTo: viewLabel.centerYAnchor),
        ])
        
        viewLabel.addSubview(starBtn2)
        NSLayoutConstraint.activate([
            starBtn2.centerXAnchor.constraint(equalTo: ratingLabel2.leftAnchor, constant: 35),
            starBtn2.centerYAnchor.constraint(equalTo: viewLabel.centerYAnchor),
            starBtn2.heightAnchor.constraint(equalToConstant: 16),
            starBtn2.widthAnchor.constraint(equalToConstant: 18),
        ])
        
        viewLabel.addSubview(totalRatingLbl)
        NSLayoutConstraint.activate([
            totalRatingLbl.centerXAnchor.constraint(equalTo: viewLabel.rightAnchor, constant: -23),
            totalRatingLbl.centerYAnchor.constraint(equalTo: viewLabel.centerYAnchor),
        ])
        
        dressImageView.addSubview(similarButton)
        NSLayoutConstraint.activate([
            similarButton.leadingAnchor.constraint(equalTo: dressImageView.leadingAnchor, constant: 15),
            similarButton.bottomAnchor.constraint(equalTo: dressImageView.bottomAnchor, constant: -15),
            similarButton.heightAnchor.constraint(equalToConstant: 35),
            similarButton.widthAnchor.constraint(equalToConstant: 140),
        ])
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
}
