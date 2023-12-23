//
//  ViewController.swift
//  ClassWork14.10
//
//  Created by Raiymbek Azharbayev on 14.10.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let backgroundColor = UIColor(named: "BackgroundColor")
    private let accentColor = UIColor(named: "AccentColor")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = backgroundColor
        
        setupUI()
    }
    
    private lazy var iconView: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named: "IconView")
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Profile Polish"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()

    private lazy var captionLabel: UILabel = {
        var label = UILabel()
        label.text = "Let's add images of you doing exciting stuff to spice up your profile"
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 3
        return label
    }()
    
    private lazy var imagesView = UIStackView()
    
    private lazy var firstImage: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named: "MainImage")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var secondImage: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named: "SecondImage")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var thirdImage: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named: "ThirdImage")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var changeButton: UIButton = {
        var button = UIButton()
        button.setTitle("Change", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 20
        return button
    }()
    
    private lazy var changeSecondButton: UIButton = {
        var button = UIButton()
        button.setTitle("Change", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 14
        return button
    }()
    
    private lazy var addButton: UIButton = {
        var button = UIButton()
        button.setTitle("Add", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(named: "AddColor")
        button.layer.cornerRadius = 14
        return button
    }()
    
    private lazy var connectButton: UIButton = {
        var button = UIButton()
        button.setTitle("Or connect Instagram", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 16)
//        button.layer.shadowOffset = .init(width: 10, height: 20)
        button.layer.borderWidth = 3
        button.layer.cornerRadius = 30
        return button
    }()
    
    private lazy var altLabel: UILabel = {
        var label = UILabel()
        label.text = "To display your images on your profile"
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 15)
        return label
    }()
    
    private lazy var finishButton: UIButton = {
        var button = UIButton()
        button.setTitle("Finish", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.backgroundColor = accentColor
        button.layer.cornerRadius = 30
        return button
    }()
    
    private lazy var progressView: UIProgressView = {
        var progressView = UIProgressView()
        progressView.setProgress(0.7, animated: true)
        progressView.progressViewStyle = .default
        progressView.trackTintColor = .black
        return progressView
    }()
}

private extension ViewController {
    
    func setupUI() {
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        view.addSubview(iconView)
        view.addSubview(titleLabel)
        view.addSubview(captionLabel)
        
        imagesView.addSubview(firstImage)
        imagesView.addSubview(secondImage)
        imagesView.addSubview(thirdImage)
        
        view.addSubview(imagesView)
        
        view.addSubview(changeButton)
        view.addSubview(changeSecondButton)
        view.addSubview(addButton)
        view.addSubview(connectButton)
        view.addSubview(altLabel)
        view.addSubview(finishButton)
        view.addSubview(progressView)
    }
    
    func setupConstraints() {
        let width = view.frame.width
        let height = view.frame.height
        
        iconView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
        }
        
        titleLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(iconView.snp.bottom).offset(20)
        }
        
        captionLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(titleLabel.snp.bottom).offset(10)
            $0.width.equalTo(view.safeAreaLayoutGuide.snp.width).multipliedBy(0.9)
        }
        
        imagesView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(captionLabel.snp.bottom).offset(20)
            $0.width.equalTo(view.safeAreaLayoutGuide.snp.width).multipliedBy(0.9)
            $0.height.equalTo(view.safeAreaLayoutGuide.snp.width).multipliedBy(0.9)
        }
        
        firstImage.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.left.equalToSuperview().offset(20)
            $0.width.equalTo(width / 2)
            $0.height.equalTo(width / 2 * 1.5)
        }
        
        changeButton.snp.makeConstraints {
            $0.centerX.equalTo(firstImage)
            $0.bottom.equalTo(firstImage).inset(15)
            $0.width.equalTo(firstImage.snp.width).multipliedBy(0.8)
        }
        
        secondImage.snp.makeConstraints {
            $0.top.equalTo(firstImage.snp.top)
            $0.right.equalToSuperview().inset(20)
            $0.width.equalTo(width / 4 * 0.95)
            $0.height.equalTo(width / 4 * 1.5 * 0.95)
        }
        
        changeSecondButton.snp.makeConstraints {
            $0.centerX.equalTo(secondImage)
            $0.bottom.equalTo(secondImage).inset(15)
            $0.width.equalTo(secondImage.snp.width).multipliedBy(0.8)
        }
        
        thirdImage.snp.makeConstraints {
            $0.bottom.equalTo(firstImage.snp.bottom)
            $0.right.equalToSuperview().inset(20)
            $0.width.equalTo(width / 4 * 0.95)
            $0.height.equalTo(width / 4 * 1.5 * 0.95)
        }
        
        addButton.snp.makeConstraints {
            $0.centerX.equalTo(thirdImage)
            $0.bottom.equalTo(thirdImage).inset(15)
            $0.width.equalTo(thirdImage.snp.width).multipliedBy(0.8)
        }
        
        connectButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(imagesView.snp.bottom)
            $0.height.equalTo(width / 7)
            $0.width.equalTo(imagesView.snp.width).multipliedBy(0.7)
        }
        
        altLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(connectButton.snp.bottom).offset(10)
        }
        
        finishButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(progressView.snp.bottom).inset(20)
            $0.height.equalTo(width / 6)
            $0.width.equalTo(imagesView.snp.width).multipliedBy(0.8)
        }
        
        progressView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(20)
            $0.width.equalTo(connectButton.snp.width)
        }
        
        borderingImage(firstImage)
        borderingImage(secondImage)
        borderingImage(thirdImage)
    }
    
    func borderingImage(_ image: UIImageView) {
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 10
        image.layer.borderWidth = 5
        image.layer.borderColor = accentColor!.cgColor
    }
}

