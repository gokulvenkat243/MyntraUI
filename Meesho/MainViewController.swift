//
//  ViewController.swift
//  Meesho
//
//  Created by gokul v on 30/04/24.
//

import UIKit

struct images {
    let image: UIImage
}

class MainViewController: UIViewController {
    
    let datas: [images] = [
        images(image: UIImage(named: "1")!),
        images(image: UIImage(named: "2")!),
        images(image: UIImage(named: "3")!),
        images(image: UIImage(named: "4")!),
        images(image: UIImage(named: "5")!),
        images(image: UIImage(named: "6")!),
        images(image: UIImage(named: "7")!)
    ]
    
    private let dressCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width / 1 - 5, height: 500)
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.register(DressViewCollectionViewCell.self, forCellWithReuseIdentifier: DressViewCollectionViewCell.identifier)
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
    
    private let dressColorCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 60, height: 80)
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.register(DressColorCollectionViewCell.self, forCellWithReuseIdentifier: DressColorCollectionViewCell.identifier)
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar()
        dressCollectionView.dataSource = self
        dressCollectionView.delegate = self
        dressColorCollectionView.dataSource = self
        dressColorCollectionView.delegate = self
        
        
    }
    
    private let scrollView: UIScrollView = {
       let sc = UIScrollView()
        sc.translatesAutoresizingMaskIntoConstraints = false
        sc.backgroundColor = .systemBackground
        return sc
    }()
    
    private let contentView: UIView = {
       let cView = UIView()
        cView.translatesAutoresizingMaskIntoConstraints = false
        cView.backgroundColor = .systemBackground
        return cView
    }()
    
    private let topView: UIView = {
        let tView = UIView()
        tView.translatesAutoresizingMaskIntoConstraints = false
        tView.backgroundColor = .systemBackground
        return tView
    }()
    
    private let navLabel: UILabel = {
       let label = UILabel()
        label.text = "KALINI"
        label.font = .systemFont(ofSize: 17, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let logoImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private let topImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "topImage")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private let nameLabel: UILabel = {
       let label = UILabel()
        label.text = "KALINI"
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let qualityLabel: UILabel = {
       let label = UILabel()
        label.text = "Floral Embroidered Regular Pure Cotton Kurta..."
        label.font = .systemFont(ofSize: 12, weight: .thin)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let ratingLabel: UILabel = {
       let label = UILabel()
        label.text = "4"
        label.backgroundColor = .systemGray5
        label.font = .systemFont(ofSize: 11, weight: .heavy)
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let starBtn: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName: "star.fill"), for: .normal)
        button.tintColor = .systemGreen
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let orginalPriceLab: UILabel = {
       let label = UILabel()
        label.text = "₹4,540"
        label.font = .systemFont(ofSize: 11, weight: .thin)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let discountPriceLab: UILabel = {
       let label = UILabel()
        label.text = "₹998"
        label.font = .systemFont(ofSize: 11, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let offerLabel: UILabel = {
       let label = UILabel()
        label.text = "78% Off"
        label.textColor = .orange
        label.font = .systemFont(ofSize: 11, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let addLabel: UILabel = {
       let label = UILabel()
        label.text = "AD"
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .systemGray4
        label.font = .systemFont(ofSize: 13, weight: .heavy)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let dressNameLabel: UILabel = {
       let label = UILabel()
        label.text = "KALINI Ethnic Motifs Yoke Design Gotta Patti Kurta With Trousers & Dupatta"
        label.textColor = .label
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let mrpLabel: UILabel = {
       let label = UILabel()
        label.text = "MRP ₹4,345"
        label.textColor = .label
        label.font = .systemFont(ofSize: 15, weight: .thin)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let orgPriceLabel: UILabel = {
       let label = UILabel()
        label.text = "₹869"
        label.textColor = .label
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let offLabel: UILabel = {
       let label = UILabel()
        label.text = "(80% OFF)"
        label.textColor = .orange
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let midleView: UIView = {
       let view = UIView()
        view.backgroundColor = UIColor(red: 0.10, green: 0.900, blue: 0.60, alpha: 0.11)
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let couponLabel: UILabel = {
       let label = UILabel()
        label.text = "Best price          with coupon"
        label.textColor = UIColor(red: 0.100, green: 0.400, blue: 0.100, alpha: 1.0)
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let couponBigLabel: UILabel = {
       let label = UILabel()
        label.text = "₹669                            MYNTRA200"
        label.textColor = UIColor(red: 0.100, green: 0.400, blue: 0.100, alpha: 1.0)
        label.font = .systemFont(ofSize: 13, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let saveCostLabel: UILabel = {
       let label = UILabel()
        label.text = "Add to bag and save ₹200"
        label.textColor = .label
        label.font = .systemFont(ofSize: 15, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let midleBagImg: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(systemName: "bag")
        image.tintColor = .label
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let midleCostLabel: UILabel = {
       let label = UILabel()
        label.text = "₹0 / ₹749"
        label.font = .systemFont(ofSize: 15, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let bottomView: UIView = {
       let view = UIView()
        view.backgroundColor = .systemBackground
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let wishButton: UIButton = {
        let button = UIButton()
        button.layer.masksToBounds = true
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.tintColor = .black
        button.setTitle("  Wishlist", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 17, weight: .bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let addToBagButton: UIButton = {
        let button = UIButton()
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 12
        button.backgroundColor = .systemPink
        button.setImage(UIImage(systemName: "bag"), for: .normal)
        button.tintColor = .white
        button.setTitle("  Add to Bag", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 17, weight: .bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let colorLabel: UILabel = {
        let label = UILabel()
        label.text = "Colour"
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let colorNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Pink"
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let hashLabel: UILabel = {
        let label = UILabel()
        label.text = "  #WovenChic🌟"
        label.backgroundColor = UIColor(red: 0.400, green: 0.235, blue: 0.600, alpha: 0.3)
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.textColor = .systemPurple
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 8
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let hashClosureBtn: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.tintColor = .systemPink
        button.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let hashLabel2: UILabel = {
        let label = UILabel()
        label.text = "  #RevampedindiePatterns"
        label.backgroundColor = UIColor(red: 0.400, green: 0.235, blue: 0.600, alpha: 0.3)
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.textColor = .systemPurple
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 8
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let hashClosureBtn2: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.tintColor = .systemPink
        button.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let bankOfferView: UIView = {
       let view = UIView()
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 0.2
        view.layer.borderColor = UIColor.label.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let bankTopLabel: UILabel = {
        let label = UILabel()
        label.text = "Offers"
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let discountImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "offer 1")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let bankofferLabel: UILabel = {
        let label = UILabel()
        label.text = "Bank Offer"
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let bankdescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "7.5% Discount on Myntra Kotak Credit Card - Max Discount Up to ₹750 on every spends."
        label.font = .systemFont(ofSize: 14, weight: .thin)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let checkDeliveryLabel: UILabel = {
        let label = UILabel()
        label.text = "Check Delivery"
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let pinCodeTextLabel: UITextField = {
        let text = UITextField()
        let placeHolder = NSAttributedString(string: "Enter Pin Code", attributes: [NSAttributedString.Key.foregroundColor: UIColor.systemPink])
        text.attributedPlaceholder = placeHolder
        text.backgroundColor = .white
        text.layer.masksToBounds = true
        text.layer.cornerRadius = 12
        text.layer.borderWidth = 0.2
        text.textColor = .systemPink
        text.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 45))
        text.leftViewMode = .always
        text.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    private let xDeliveryImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(systemName: "shippingbox")
        image.tintColor = .label
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let payDeliveryImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(systemName: "banknote")
        image.tintColor = .label
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let freeDeliveryImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(systemName: "arrow.left.arrow.right.circle")
        image.tintColor = .label
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let xDeliveryLabel: UILabel = {
        let label = UILabel()
        let attributedString = NSMutableAttributedString(string: "Express delivery migth be available")
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .bold), range: NSRange(location: 0, length: 16))
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .light), range: NSRange(location: 17, length: 18))
        label.attributedText = attributedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let payDeliveryLabel: UILabel = {
        let label = UILabel()
        let attributedString = NSMutableAttributedString(string: "pay on delivery migth be available")
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .bold), range: NSRange(location: 0, length: 15))
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .light), range: NSRange(location: 16, length: 18))
        label.attributedText = attributedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let freeDeliveryLabel: UILabel = {
        let label = UILabel()
        let attributedString = NSMutableAttributedString(string: "Hassle free 7,15 and 30 days Return & Exchange migth be available")
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .bold), range: NSRange(location: 0, length: 28))
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .light), range: NSRange(location: 29, length: 36))
        label.attributedText = attributedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let bottomDetailsView: UIView = {
       let view = UIView()
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 20
        view.layer.borderWidth = 0.2
        view.layer.borderColor = UIColor.label.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let neckLabel: UILabel = {
        let label = UILabel()
        label.text = "Neck"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let neckTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "Round Neck"
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let designLabel: UILabel = {
        let label = UILabel()
        label.text = "Top Design Styling"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let designTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "Regular"
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let topLabel: UILabel = {
        let label = UILabel()
        label.text = "Top Fabric"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let topTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "Cotton Blend"
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let patternLabel: UILabel = {
        let label = UILabel()
        label.text = "Print or Pattern type"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let patternTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "Ethnic Motifs ?"
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let oranamentationLabel: UILabel = {
        let label = UILabel()
        label.text = "Oranmentation"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let oranamentationTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "Gotta Patti"
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let weaveLabel: UILabel = {
        let label = UILabel()
        label.text = "Weave Type"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let weaveTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "Machine Weave"
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let wavePatternLabel: UILabel = {
        let label = UILabel()
        label.text = "Weave Pattern"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let wavePatternTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "Regural"
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let stitchLabel: UILabel = {
        let label = UILabel()
        label.text = "Stitch"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let stitchTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "Ready to Wear"
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let seeMoreButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sea more", for: .normal)
        button.setTitleColor(UIColor.systemPink, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let productDetailTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Product Details"
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let productDetailsLabel: UILabel = {
        let label = UILabel()
        label.text = "Pink,blue & gold toned yoke design Kurta with Trousers with dupatta"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let kurtaDesignTitleLabel: UILabel = {
        let label = UILabel()
        let attributedString = NSMutableAttributedString(string: "Kurta design:-Ethnic motifs yoke design")
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .bold), range: NSRange(location: 0, length: 14))
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .light), range: NSRange(location: 14, length: 25))
        label.attributedText = attributedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let kurtaDesignTitleLabel2: UILabel = {
        let label = UILabel()
        let attributedString = NSMutableAttributedString(string: "-Straigth shape")
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .bold), range: NSRange(location: 0, length: 1))
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .light), range: NSRange(location: 1, length: 14))
        label.attributedText = attributedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let kurtaDesignTitleLabel3: UILabel = {
        let label = UILabel()
        let attributedString = NSMutableAttributedString(string: "-Regular style")
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .bold), range: NSRange(location: 0, length: 1))
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .light), range: NSRange(location: 1, length: 13))
        label.attributedText = attributedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let kurtaDesignTitleLabel4: UILabel = {
        let label = UILabel()
        let attributedString = NSMutableAttributedString(string: "-Round neck, three-quater regular sleeves")
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .bold), range: NSRange(location: 0, length: 1))
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .light), range: NSRange(location: 1, length: 40))
        label.attributedText = attributedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let kurtaDesignTitleLabel5: UILabel = {
        let label = UILabel()
        let attributedString = NSMutableAttributedString(string: "-Gotta patti details")
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .bold), range: NSRange(location: 0, length: 1))
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .light), range: NSRange(location: 1, length: 17))
        label.attributedText = attributedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let kurtaDesignTitleLabel6: UILabel = {
        let label = UILabel()
        let attributedString = NSMutableAttributedString(string: "-Calf length with straigth hem")
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .bold), range: NSRange(location: 0, length: 1))
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .light), range: NSRange(location: 1, length: 29))
        label.attributedText = attributedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let kurtaDesignTitleLabel7: UILabel = {
        let label = UILabel()
        let attributedString = NSMutableAttributedString(string: "-Cotton blend machine weave fabric")
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .bold), range: NSRange(location: 0, length: 1))
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .light), range: NSRange(location: 1, length: 32))
        label.attributedText = attributedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let trouserDesignTitleLabel: UILabel = {
        let label = UILabel()
        let attributedString = NSMutableAttributedString(string: "Trousers design:-Solid Trousers")
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .bold), range: NSRange(location: 0, length: 17))
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .light), range: NSRange(location: 17, length: 14))
        label.attributedText = attributedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let trouserDesignLabel: UILabel = {
        let label = UILabel()
        let attributedString = NSMutableAttributedString(string: "-Elasticated waistband")
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .bold), range: NSRange(location: 0, length: 1))
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 16, weight: .light), range: NSRange(location: 1, length: 21))
        label.attributedText = attributedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let sizeLabel: UILabel = {
        let label = UILabel()
        label.text = "Size & Fit"
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let sizeDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "The model(heigth 5'8) is wearing a size 5"
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let materialCareTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Material & Care"
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let materialCareLabel1: UILabel = {
        let label = UILabel()
        label.text = "Top Fabric:Cotton Blend"
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let materialCareLabel2: UILabel = {
        let label = UILabel()
        label.text = "Bottom Fabric:Cotton Blend"
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let materialCareLabel3: UILabel = {
        let label = UILabel()
        label.text = "Dupatta Fabric:Poly Chiffon"
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let materialCareLabel4: UILabel = {
        let label = UILabel()
        label.text = "Dry clean"
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let originalImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "original")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let qualityImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "quality")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
                          
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("first")
        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
        scrollView.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            //vertical scrolling
            contentView.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 2370)
        ])
        
        scrollView.addSubview(navLabel)
        NSLayoutConstraint.activate([
            navLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 65),
            navLabel.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 100)
        ])
        
        scrollView.addSubview(logoImage)
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 25),
            logoImage.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 25),
            logoImage.heightAnchor.constraint(equalToConstant: 100),
            logoImage.widthAnchor.constraint(equalToConstant: 90)
        ])
        
        contentView.addSubview(topView)
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            topView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 65)
        ])
        
        topView.addSubview(topImage)
        NSLayoutConstraint.activate([
            topImage.topAnchor.constraint(equalTo: topView.topAnchor),
            topImage.bottomAnchor.constraint(equalTo: topView.bottomAnchor),
            topImage.centerXAnchor.constraint(equalTo: topView.leftAnchor, constant: 24),
        ])
        
        topView.addSubview(nameLabel)
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 5),
            nameLabel.leftAnchor.constraint(equalTo: topImage.leftAnchor, constant: 130),
        ])
        
        topView.addSubview(qualityLabel)
        NSLayoutConstraint.activate([
            qualityLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 25),
            qualityLabel.leftAnchor.constraint(equalTo: topImage.leftAnchor, constant: 130),
        ])
        
        topView.addSubview(ratingLabel)
        NSLayoutConstraint.activate([
            ratingLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 45),
            ratingLabel.leftAnchor.constraint(equalTo: topImage.leftAnchor, constant: 130),
            ratingLabel.heightAnchor.constraint(equalToConstant: 18),
            ratingLabel.widthAnchor.constraint(equalToConstant: 25),
        ])
        
        ratingLabel.addSubview(starBtn)
        NSLayoutConstraint.activate([
            starBtn.centerXAnchor.constraint(equalTo: ratingLabel.centerXAnchor, constant: 3),
            starBtn.centerYAnchor.constraint(equalTo: ratingLabel.centerYAnchor),
            starBtn.heightAnchor.constraint(equalToConstant: 10),
            starBtn.widthAnchor.constraint(equalToConstant: 10),
        ])
        
        topView.addSubview(orginalPriceLab)
        NSLayoutConstraint.activate([
            orginalPriceLab.topAnchor.constraint(equalTo: topView.topAnchor, constant: 47),
            orginalPriceLab.leftAnchor.constraint(equalTo: ratingLabel.leftAnchor, constant: 28),
        ])
        
        topView.addSubview(discountPriceLab)
        NSLayoutConstraint.activate([
            discountPriceLab.topAnchor.constraint(equalTo: topView.topAnchor, constant: 47),
            discountPriceLab.leftAnchor.constraint(equalTo: orginalPriceLab.leftAnchor, constant: 40),
        ])
        
        topView.addSubview(offerLabel)
        NSLayoutConstraint.activate([
            offerLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 47),
            offerLabel.leftAnchor.constraint(equalTo: discountPriceLab.leftAnchor, constant: 35),
        ])
        
        topView.addSubview(addLabel)
        NSLayoutConstraint.activate([
            addLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 5),
            addLabel.rightAnchor.constraint(equalTo: topView.rightAnchor, constant: -7),
            addLabel.heightAnchor.constraint(equalToConstant: 18),
            addLabel.widthAnchor.constraint(equalToConstant: 25),
        ])
        
        contentView.addSubview(dressCollectionView)
               NSLayoutConstraint.activate([
                dressCollectionView.topAnchor.constraint(equalTo: topView.topAnchor, constant: 65),
                dressCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                dressCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                dressCollectionView.heightAnchor.constraint(equalToConstant: 500)
        ])
        
        contentView.addSubview(dressNameLabel)
               NSLayoutConstraint.activate([
            dressNameLabel.topAnchor.constraint(equalTo: dressCollectionView.bottomAnchor, constant: 15),
            dressNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            dressNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
            dressNameLabel.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        contentView.addSubview(mrpLabel)
               NSLayoutConstraint.activate([
            mrpLabel.topAnchor.constraint(equalTo: dressNameLabel.bottomAnchor, constant: 2),
            mrpLabel.centerXAnchor.constraint(equalTo: contentView.leftAnchor, constant: 57),
        ])
        
        contentView.addSubview(orgPriceLabel)
               NSLayoutConstraint.activate([
            orgPriceLabel.topAnchor.constraint(equalTo: dressNameLabel.topAnchor, constant: 59),
            orgPriceLabel.centerXAnchor.constraint(equalTo: mrpLabel.rightAnchor, constant: 30),
        ])
        
        contentView.addSubview(offLabel)
               NSLayoutConstraint.activate([
            offLabel.topAnchor.constraint(equalTo: dressNameLabel.bottomAnchor, constant: 1),
            offLabel.centerXAnchor.constraint(equalTo: orgPriceLabel.rightAnchor, constant: 46),
        ])
        
        contentView.addSubview(midleView)
        NSLayoutConstraint.activate([
            midleView.topAnchor.constraint(equalTo: dressNameLabel.topAnchor, constant: 95),
            midleView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            midleView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            midleView.heightAnchor.constraint(equalToConstant: 65)
        ])
        
        midleView.addSubview(couponLabel)
        NSLayoutConstraint.activate([
            couponLabel.topAnchor.constraint(equalTo: midleView.topAnchor, constant: 11),
            couponLabel.leftAnchor.constraint(equalTo: midleView.leftAnchor, constant: 10),
        ])
        
        midleView.addSubview(couponBigLabel)
        NSLayoutConstraint.activate([
            couponBigLabel.topAnchor.constraint(equalTo: midleView.topAnchor, constant: 12),
            couponBigLabel.leftAnchor.constraint(equalTo: couponLabel.leftAnchor, constant: 70),
        ])
        
        midleView.addSubview(saveCostLabel)
        NSLayoutConstraint.activate([
            saveCostLabel.topAnchor.constraint(equalTo: midleView.bottomAnchor, constant: -30),
            saveCostLabel.leftAnchor.constraint(equalTo: midleView.leftAnchor, constant: 10),
        ])
        
        midleView.addSubview(midleCostLabel)
        NSLayoutConstraint.activate([
            midleCostLabel.topAnchor.constraint(equalTo: midleView.bottomAnchor, constant: -30),
            midleCostLabel.rightAnchor.constraint(equalTo: midleView.rightAnchor, constant: -10),
        ])
        
        midleView.addSubview(midleBagImg)
        NSLayoutConstraint.activate([
            midleBagImg.topAnchor.constraint(equalTo: midleView.bottomAnchor, constant: -30),
            midleBagImg.rightAnchor.constraint(equalTo: midleCostLabel.rightAnchor, constant: -72),
            midleBagImg.heightAnchor.constraint(equalToConstant: 18),
            midleBagImg.widthAnchor.constraint(equalToConstant: 18)
        ])
        
        scrollView.addSubview(bottomView)
        NSLayoutConstraint.activate([
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 70)
        ])
        
        bottomView.addSubview(wishButton)
        NSLayoutConstraint.activate([
            wishButton.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 8),
            wishButton.widthAnchor.constraint(equalToConstant: 165),
            wishButton.heightAnchor.constraint(equalToConstant: 43),
            wishButton.leftAnchor.constraint(equalTo: bottomView.leftAnchor, constant: 20)
        ])
        
        bottomView.addSubview(addToBagButton)
        NSLayoutConstraint.activate([
            addToBagButton.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 8),
            addToBagButton.widthAnchor.constraint(equalToConstant: 165),
            addToBagButton.heightAnchor.constraint(equalToConstant: 43),
            addToBagButton.rightAnchor.constraint(equalTo: bottomView.rightAnchor, constant: -20)
        ])
        
        contentView.addSubview(dressColorCollectionView)
               NSLayoutConstraint.activate([
                dressColorCollectionView.topAnchor.constraint(equalTo: midleView.topAnchor, constant: 115),
                dressColorCollectionView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15),
                dressColorCollectionView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
                dressColorCollectionView.heightAnchor.constraint(equalToConstant: 80)
        ])
        
        contentView.addSubview(colorLabel)
               NSLayoutConstraint.activate([
                colorLabel.topAnchor.constraint(equalTo: midleView.topAnchor, constant: 85),
                colorLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15)
        ])
        
        contentView.addSubview(colorNameLabel)
               NSLayoutConstraint.activate([
                colorNameLabel.topAnchor.constraint(equalTo: midleView.topAnchor, constant: 85),
                colorNameLabel.leftAnchor.constraint(equalTo: colorLabel.leftAnchor, constant: 55)
        ])
        
        contentView.addSubview(hashLabel)
               NSLayoutConstraint.activate([
                hashLabel.topAnchor.constraint(equalTo: dressColorCollectionView.topAnchor, constant: 100),
                hashLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
                hashLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -225),
                hashLabel.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        contentView.addSubview(hashClosureBtn)
               NSLayoutConstraint.activate([
                hashClosureBtn.topAnchor.constraint(equalTo: hashLabel.topAnchor, constant: 12),
                hashClosureBtn.rightAnchor.constraint(equalTo: hashLabel.rightAnchor, constant: -8),
                hashClosureBtn.heightAnchor.constraint(equalToConstant: 12),
                hashClosureBtn.widthAnchor.constraint(equalToConstant: 10)
        ])
        
        contentView.addSubview(hashLabel2)
               NSLayoutConstraint.activate([
                hashLabel2.topAnchor.constraint(equalTo: dressColorCollectionView.topAnchor, constant: 145),
                hashLabel2.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
                hashLabel2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -145),
                hashLabel2.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        contentView.addSubview(hashClosureBtn2)
               NSLayoutConstraint.activate([
                hashClosureBtn2.topAnchor.constraint(equalTo: hashLabel2.topAnchor, constant: 12),
                hashClosureBtn2.rightAnchor.constraint(equalTo: hashLabel2.rightAnchor, constant: -8),
                hashClosureBtn2.heightAnchor.constraint(equalToConstant: 12),
                hashClosureBtn2.widthAnchor.constraint(equalToConstant: 10)
        ])
        
        contentView.addSubview(bankOfferView)
               NSLayoutConstraint.activate([
                bankOfferView.topAnchor.constraint(equalTo: hashLabel2.topAnchor, constant: 62),
                bankOfferView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
                bankOfferView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
                bankOfferView.heightAnchor.constraint(equalToConstant: 140)
        ])
        
        bankOfferView.addSubview(bankTopLabel)
               NSLayoutConstraint.activate([
                bankTopLabel.topAnchor.constraint(equalTo: bankOfferView.topAnchor, constant: 20),
                bankTopLabel.leftAnchor.constraint(equalTo: bankOfferView.leftAnchor, constant: 20)
        ])
        
        bankOfferView.addSubview(discountImage)
        NSLayoutConstraint.activate([
            discountImage.topAnchor.constraint(equalTo: bankTopLabel.topAnchor, constant: 37),
            discountImage.leftAnchor.constraint(equalTo: bankOfferView.leftAnchor, constant: 20),
            discountImage.heightAnchor.constraint(equalToConstant: 25),
            discountImage.widthAnchor.constraint(equalToConstant: 25)
        ])
        
        bankOfferView.addSubview(bankofferLabel)
               NSLayoutConstraint.activate([
                bankofferLabel.topAnchor.constraint(equalTo: bankOfferView.topAnchor, constant: 58),
                bankofferLabel.leftAnchor.constraint(equalTo: discountImage.leftAnchor, constant: 32)
        ])
        
        bankOfferView.addSubview(bankdescriptionLabel)
               NSLayoutConstraint.activate([
                bankdescriptionLabel.topAnchor.constraint(equalTo: bankOfferView.topAnchor, constant: 78),
                bankdescriptionLabel.leadingAnchor.constraint(equalTo: discountImage.leadingAnchor, constant: 32),
                bankdescriptionLabel.trailingAnchor.constraint(equalTo: bankOfferView.trailingAnchor, constant: -28),
                bankdescriptionLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        contentView.addSubview(checkDeliveryLabel)
               NSLayoutConstraint.activate([
                checkDeliveryLabel.topAnchor.constraint(equalTo: bankOfferView.bottomAnchor, constant: 20),
                checkDeliveryLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15)
        ])
        
        contentView.addSubview(pinCodeTextLabel)
               NSLayoutConstraint.activate([
                pinCodeTextLabel.topAnchor.constraint(equalTo: checkDeliveryLabel.bottomAnchor, constant: 15),
                pinCodeTextLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
                pinCodeTextLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
                pinCodeTextLabel.heightAnchor.constraint(equalToConstant: 45)
        ])
        
        contentView.addSubview(xDeliveryImage)
        NSLayoutConstraint.activate([
            xDeliveryImage.topAnchor.constraint(equalTo: pinCodeTextLabel.bottomAnchor, constant: 25),
            xDeliveryImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            xDeliveryImage.heightAnchor.constraint(equalToConstant: 27),
            xDeliveryImage.widthAnchor.constraint(equalToConstant: 27)
        ])
        
        contentView.addSubview(payDeliveryImage)
        NSLayoutConstraint.activate([
            payDeliveryImage.topAnchor.constraint(equalTo: xDeliveryImage.bottomAnchor, constant: 15),
            payDeliveryImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            payDeliveryImage.heightAnchor.constraint(equalToConstant: 27),
            payDeliveryImage.widthAnchor.constraint(equalToConstant: 27)
        ])
        
        contentView.addSubview(freeDeliveryImage)
        NSLayoutConstraint.activate([
            freeDeliveryImage.topAnchor.constraint(equalTo: payDeliveryImage.bottomAnchor, constant: 15),
            freeDeliveryImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            freeDeliveryImage.heightAnchor.constraint(equalToConstant: 27),
            freeDeliveryImage.widthAnchor.constraint(equalToConstant: 27)
        ])
        
        contentView.addSubview(xDeliveryLabel)
        NSLayoutConstraint.activate([
            xDeliveryLabel.topAnchor.constraint(equalTo: pinCodeTextLabel.bottomAnchor, constant: 23),
            xDeliveryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 55),
            xDeliveryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -75),
            xDeliveryLabel.heightAnchor.constraint(equalToConstant: 27),
        ])
        
        contentView.addSubview(payDeliveryLabel)
        NSLayoutConstraint.activate([
            payDeliveryLabel.topAnchor.constraint(equalTo: xDeliveryLabel.bottomAnchor, constant: 15),
            payDeliveryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 55),
            payDeliveryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -80),
            payDeliveryLabel.heightAnchor.constraint(equalToConstant: 27),
        ])
        
        contentView.addSubview(freeDeliveryLabel)
        NSLayoutConstraint.activate([
            freeDeliveryLabel.topAnchor.constraint(equalTo: payDeliveryLabel.bottomAnchor, constant: 8),
            freeDeliveryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 55),
            freeDeliveryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -50),
            freeDeliveryLabel.heightAnchor.constraint(equalToConstant: 45),
        ])
        
        contentView.addSubview(bottomDetailsView)
        NSLayoutConstraint.activate([
            bottomDetailsView.topAnchor.constraint(equalTo: freeDeliveryLabel.bottomAnchor, constant: 30),
            bottomDetailsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            bottomDetailsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            bottomDetailsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -120)
        ])
        
        bottomDetailsView.addSubview(neckLabel)
               NSLayoutConstraint.activate([
                neckLabel.topAnchor.constraint(equalTo: bottomDetailsView.topAnchor, constant: 20),
                neckLabel.leadingAnchor.constraint(equalTo: bottomDetailsView.leadingAnchor, constant: 15),
                neckLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -200),
                neckLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        bottomDetailsView.addSubview(neckTypeLabel)
               NSLayoutConstraint.activate([
                neckTypeLabel.topAnchor.constraint(equalTo: neckLabel.topAnchor, constant: 25),
                neckTypeLabel.leadingAnchor.constraint(equalTo: bottomDetailsView.leadingAnchor, constant: 15),
                neckTypeLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -200),
                neckTypeLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        bottomDetailsView.addSubview(designLabel)
               NSLayoutConstraint.activate([
                designLabel.topAnchor.constraint(equalTo: neckTypeLabel.topAnchor, constant: 40),
                designLabel.leadingAnchor.constraint(equalTo: bottomDetailsView.leadingAnchor, constant: 15),
                designLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -200),
                designLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        bottomDetailsView.addSubview(designTypeLabel)
               NSLayoutConstraint.activate([
                designTypeLabel.topAnchor.constraint(equalTo: designLabel.topAnchor, constant: 25),
                designTypeLabel.leadingAnchor.constraint(equalTo: bottomDetailsView.leadingAnchor, constant: 15),
                designTypeLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -200),
                designTypeLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        bottomDetailsView.addSubview(topLabel)
               NSLayoutConstraint.activate([
                topLabel.topAnchor.constraint(equalTo: designTypeLabel.topAnchor, constant: 40),
                topLabel.leadingAnchor.constraint(equalTo: bottomDetailsView.leadingAnchor, constant: 15),
                topLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -200),
                topLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        bottomDetailsView.addSubview(topTypeLabel)
               NSLayoutConstraint.activate([
                topTypeLabel.topAnchor.constraint(equalTo: topLabel.topAnchor, constant: 25),
                topTypeLabel.leadingAnchor.constraint(equalTo: bottomDetailsView.leadingAnchor, constant: 15),
                topTypeLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -200),
                topTypeLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        bottomDetailsView.addSubview(patternLabel)
               NSLayoutConstraint.activate([
                patternLabel.topAnchor.constraint(equalTo: topTypeLabel.topAnchor, constant: 40),
                patternLabel.leadingAnchor.constraint(equalTo: bottomDetailsView.leadingAnchor, constant: 15),
                patternLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -200),
                patternLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        bottomDetailsView.addSubview(patternTypeLabel)
               NSLayoutConstraint.activate([
                patternTypeLabel.topAnchor.constraint(equalTo: patternLabel.topAnchor, constant: 25),
                patternTypeLabel.leadingAnchor.constraint(equalTo: bottomDetailsView.leadingAnchor, constant: 15),
                patternTypeLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -200),
                patternTypeLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        bottomDetailsView.addSubview(oranamentationLabel)
               NSLayoutConstraint.activate([
                oranamentationLabel.topAnchor.constraint(equalTo: bottomDetailsView.topAnchor, constant: 20),
                oranamentationLabel.leadingAnchor.constraint(equalTo: neckLabel.trailingAnchor, constant: 30),
                oranamentationLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -20),
                oranamentationLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        bottomDetailsView.addSubview(oranamentationTypeLabel)
               NSLayoutConstraint.activate([
                oranamentationTypeLabel.topAnchor.constraint(equalTo: oranamentationLabel.topAnchor, constant: 25),
                oranamentationTypeLabel.leadingAnchor.constraint(equalTo: neckLabel.trailingAnchor, constant: 30),
                oranamentationTypeLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -20),
                oranamentationTypeLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        bottomDetailsView.addSubview(weaveLabel)
               NSLayoutConstraint.activate([
                weaveLabel.topAnchor.constraint(equalTo: oranamentationTypeLabel.topAnchor, constant: 40),
                weaveLabel.leadingAnchor.constraint(equalTo: neckLabel.trailingAnchor, constant: 30),
                weaveLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -20),
                weaveLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        bottomDetailsView.addSubview(weaveTypeLabel)
               NSLayoutConstraint.activate([
                weaveTypeLabel.topAnchor.constraint(equalTo: weaveLabel.topAnchor, constant: 25),
                weaveTypeLabel.leadingAnchor.constraint(equalTo: neckLabel.trailingAnchor, constant: 30),
                weaveTypeLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -20),
                weaveTypeLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        bottomDetailsView.addSubview(wavePatternLabel)
               NSLayoutConstraint.activate([
                wavePatternLabel.topAnchor.constraint(equalTo: weaveTypeLabel.topAnchor, constant: 40),
                wavePatternLabel.leadingAnchor.constraint(equalTo: neckLabel.trailingAnchor, constant: 30),
                wavePatternLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -20),
                wavePatternLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        bottomDetailsView.addSubview(wavePatternTypeLabel)
               NSLayoutConstraint.activate([
                wavePatternTypeLabel.topAnchor.constraint(equalTo: wavePatternLabel.topAnchor, constant: 25),
                wavePatternTypeLabel.leadingAnchor.constraint(equalTo: neckLabel.trailingAnchor, constant: 30),
                wavePatternTypeLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -20),
                wavePatternTypeLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        bottomDetailsView.addSubview(stitchLabel)
               NSLayoutConstraint.activate([
                stitchLabel.topAnchor.constraint(equalTo: wavePatternTypeLabel.topAnchor, constant: 40),
                stitchLabel.leadingAnchor.constraint(equalTo: neckLabel.trailingAnchor, constant: 30),
                stitchLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -20),
                stitchLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        bottomDetailsView.addSubview(stitchTypeLabel)
               NSLayoutConstraint.activate([
                stitchTypeLabel.topAnchor.constraint(equalTo: stitchLabel.topAnchor, constant: 25),
                stitchTypeLabel.leadingAnchor.constraint(equalTo: neckLabel.trailingAnchor, constant: 30),
                stitchTypeLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -20),
                stitchTypeLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        bottomDetailsView.addSubview(seeMoreButton)
               NSLayoutConstraint.activate([
                seeMoreButton.topAnchor.constraint(equalTo: patternTypeLabel.topAnchor, constant: 35),
                seeMoreButton.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(productDetailTitleLabel)
               NSLayoutConstraint.activate([
                productDetailTitleLabel.topAnchor.constraint(equalTo: seeMoreButton.topAnchor, constant: 55),
                productDetailTitleLabel.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(productDetailsLabel)
               NSLayoutConstraint.activate([
                productDetailsLabel.topAnchor.constraint(equalTo: productDetailTitleLabel.topAnchor, constant: 25),
                productDetailsLabel.leadingAnchor.constraint(equalTo: bottomDetailsView.leadingAnchor, constant: 15),
                productDetailsLabel.trailingAnchor.constraint(equalTo: bottomDetailsView.trailingAnchor, constant: -20),
                productDetailsLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        bottomDetailsView.addSubview(kurtaDesignTitleLabel)
               NSLayoutConstraint.activate([
                kurtaDesignTitleLabel.topAnchor.constraint(equalTo: productDetailsLabel.topAnchor, constant: 60),
                kurtaDesignTitleLabel.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(kurtaDesignTitleLabel2)
               NSLayoutConstraint.activate([
                kurtaDesignTitleLabel2.topAnchor.constraint(equalTo: kurtaDesignTitleLabel.topAnchor, constant: 20),
                kurtaDesignTitleLabel2.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(kurtaDesignTitleLabel3)
               NSLayoutConstraint.activate([
                kurtaDesignTitleLabel3.topAnchor.constraint(equalTo: kurtaDesignTitleLabel2.topAnchor, constant: 20),
                kurtaDesignTitleLabel3.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(kurtaDesignTitleLabel4)
               NSLayoutConstraint.activate([
                kurtaDesignTitleLabel4.topAnchor.constraint(equalTo: kurtaDesignTitleLabel3.topAnchor, constant: 20),
                kurtaDesignTitleLabel4.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(kurtaDesignTitleLabel5)
               NSLayoutConstraint.activate([
                kurtaDesignTitleLabel5.topAnchor.constraint(equalTo: kurtaDesignTitleLabel4.topAnchor, constant: 20),
                kurtaDesignTitleLabel5.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(kurtaDesignTitleLabel6)
               NSLayoutConstraint.activate([
                kurtaDesignTitleLabel6.topAnchor.constraint(equalTo: kurtaDesignTitleLabel5.topAnchor, constant: 20),
                kurtaDesignTitleLabel6.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(kurtaDesignTitleLabel7)
               NSLayoutConstraint.activate([
                kurtaDesignTitleLabel7.topAnchor.constraint(equalTo: kurtaDesignTitleLabel6.topAnchor, constant: 20),
                kurtaDesignTitleLabel7.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(trouserDesignTitleLabel)
               NSLayoutConstraint.activate([
                trouserDesignTitleLabel.topAnchor.constraint(equalTo: kurtaDesignTitleLabel7.topAnchor, constant: 40),
                trouserDesignTitleLabel.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(trouserDesignLabel)
               NSLayoutConstraint.activate([
                trouserDesignLabel.topAnchor.constraint(equalTo: trouserDesignTitleLabel.topAnchor, constant: 20),
                trouserDesignLabel.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(sizeLabel)
               NSLayoutConstraint.activate([
                sizeLabel.topAnchor.constraint(equalTo: trouserDesignLabel.topAnchor, constant: 40),
                sizeLabel.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(sizeDescriptionLabel)
               NSLayoutConstraint.activate([
                sizeDescriptionLabel.topAnchor.constraint(equalTo: sizeLabel.topAnchor, constant: 25),
                sizeDescriptionLabel.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(materialCareTitleLabel)
               NSLayoutConstraint.activate([
                materialCareTitleLabel.topAnchor.constraint(equalTo: sizeDescriptionLabel.topAnchor, constant: 40),
                materialCareTitleLabel.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(materialCareLabel1)
               NSLayoutConstraint.activate([
                materialCareLabel1.topAnchor.constraint(equalTo: materialCareTitleLabel.topAnchor, constant: 25),
                materialCareLabel1.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(materialCareLabel2)
               NSLayoutConstraint.activate([
                materialCareLabel2.topAnchor.constraint(equalTo: materialCareLabel1.topAnchor, constant: 20),
                materialCareLabel2.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(materialCareLabel3)
               NSLayoutConstraint.activate([
                materialCareLabel3.topAnchor.constraint(equalTo: materialCareLabel2.topAnchor, constant: 20),
                materialCareLabel3.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        bottomDetailsView.addSubview(materialCareLabel4)
               NSLayoutConstraint.activate([
                materialCareLabel4.topAnchor.constraint(equalTo: materialCareLabel3.topAnchor, constant: 20),
                materialCareLabel4.leftAnchor.constraint(equalTo: bottomDetailsView.leftAnchor, constant: 15)
        ])
        
        contentView.addSubview(originalImage)
               NSLayoutConstraint.activate([
                originalImage.topAnchor.constraint(equalTo: bottomDetailsView.bottomAnchor, constant: 30),
                originalImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 80),
                originalImage.heightAnchor.constraint(equalToConstant: 50),
                originalImage.widthAnchor.constraint(equalToConstant: 50)
        ])
        
        contentView.addSubview(qualityImage)
               NSLayoutConstraint.activate([
                qualityImage.topAnchor.constraint(equalTo: bottomDetailsView.bottomAnchor, constant: 30),
                qualityImage.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -80),
                qualityImage.heightAnchor.constraint(equalToConstant: 50),
                qualityImage.widthAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    private func navigationBar() {
        
        
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(image: UIImage(systemName: "bag"), style: .done, target: self, action: nil),
            UIBarButtonItem(image: UIImage(systemName: "heart"), style: .done, target: self, action: nil),
            UIBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"), style: .done, target: self, action: nil)
        ]
        
        navigationItem.leftBarButtonItems = [
            UIBarButtonItem(image: UIImage(systemName: "arrow.left"), style: .done, target: self, action: nil),
//            UIBarButtonItem(image: UIImage(named: "logo"), style: .done, target: self, action: nil),
//            UIBarButtonItem(title: "KALINI", style: .done, target: self, action: nil),

        ]
        navigationController?.navigationBar.tintColor = .label
        
    }
    
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == dressColorCollectionView) {
            return datas.count
        }
        
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dressCollectionView.dequeueReusableCell(withReuseIdentifier: DressViewCollectionViewCell.identifier, for: indexPath) as? DressViewCollectionViewCell
        cell?.backgroundColor = .brown
        
        if (collectionView == dressColorCollectionView) {
            let cell2 = dressColorCollectionView.dequeueReusableCell(withReuseIdentifier: DressColorCollectionViewCell.identifier, for: indexPath) as? DressColorCollectionViewCell
            cell2?.layer.masksToBounds = true
            cell2?.layer.cornerRadius = 10
            let a = datas[indexPath.row]
            cell2?.dressColorImageView.image = a.image
            return cell2!
        }
        
        return cell!
        
    }
}
 
