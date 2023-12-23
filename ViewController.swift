//
//  ViewController.swift
//  bonus
//
//  Created by Belgibayeva Karakat on 18.10.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let backgroundColor = UIColor(named: "BackgroundColor")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupUI()
        
    }
    
    private lazy var back: UIButton = {
        let button = UIButton()
        button.setTitle("< Back", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        return button
    }()
    
    private lazy var nav: UILabel = {
        let label = UILabel()
        label.text = "Settings"
        label.textColor = .white
        label.backgroundColor = .red
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textAlignment = .center
        let burgundy = UIColor(red: 171/255, green: 14/255, blue: 14/255, alpha: 1.0)
        label.backgroundColor = burgundy
        return label
    }()
    
    private lazy var account: UILabel = {
        let label = UILabel()
        label.text = "ACCOUNT"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    private lazy var name: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 80, bottom: 0, trailing: 0)
        configuration.baseBackgroundColor = .white
        button.setTitle("Name", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.configuration = configuration
        button.contentHorizontalAlignment = .left
        return button
    }()
    
    private lazy var username: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 80, bottom: 0, trailing: 0)
        configuration.baseBackgroundColor = .white
        button.setTitle("Username", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.configuration = configuration
        button.contentHorizontalAlignment = .left
        return button
    }()
    
    private lazy var email: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 80, bottom: 0, trailing: 0)
        configuration.baseBackgroundColor = .white
        button.setTitle("Email address", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.configuration = configuration
        button.contentHorizontalAlignment = .left
        return button
    }()
    
    private lazy var changepass: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 80, bottom: 0, trailing: 0)
        configuration.baseBackgroundColor = .white
        button.setTitle("Change password", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.configuration = configuration
        button.contentHorizontalAlignment = .left
        return button
    }()
    
    private lazy var payment: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 80, bottom: 0, trailing: 0)
        configuration.baseBackgroundColor = .white
        button.setTitle("Manage payment", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.configuration = configuration
        button.contentHorizontalAlignment = .left
        return button
    }()
    
    private lazy var other: UILabel = {
        let label = UILabel()
        label.text = "OTHER"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    private lazy var report: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 80, bottom: 0, trailing: 0)
        configuration.baseBackgroundColor = .white
        button.setTitle("Report a problem", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.configuration = configuration
        button.contentHorizontalAlignment = .left
        return button
    }()
    
    private lazy var priv: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 80, bottom: 0, trailing: 0)
        configuration.baseBackgroundColor = .white
        button.setTitle("Privacy policy", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.configuration = configuration
        button.contentHorizontalAlignment = .left
        return button
    }()
    
    private lazy var terms: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 80, bottom: 0, trailing: 0)
        configuration.baseBackgroundColor = .white
        button.setTitle("Terms of service", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.configuration = configuration
        button.contentHorizontalAlignment = .left
        return button
    }()
    
    private lazy var logout: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 80, bottom: 0, trailing: 0)
        configuration.baseBackgroundColor = .white
        button.setTitle("Logout", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.configuration = configuration
        button.contentHorizontalAlignment = .left
        return button
    }()
    
    private var icon1: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "pen"))
        icon.contentMode = .scaleAspectFit
        let redColor = UIColor(red: 252/255, green: 204/255, blue: 204/255, alpha: 1.0)
        icon.backgroundColor = redColor
        icon.layer.cornerRadius = 5
        return icon
    }()
    
    private var icon2: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "person"))
        icon.contentMode = .scaleAspectFit
        let redColor = UIColor(red: 252/255, green: 204/255, blue: 204/255, alpha: 1.0)
        icon.backgroundColor = redColor
        icon.layer.cornerRadius = 5
        return icon
    }()
    
    private var icon3: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "envelope"))
        icon.contentMode = .scaleAspectFit
        let redColor = UIColor(red: 252/255, green: 204/255, blue: 204/255, alpha: 1.0)
        icon.backgroundColor = redColor
        icon.layer.cornerRadius = 5
        return icon
    }()
    
    private var icon4: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "lock"))
        icon.contentMode = .scaleAspectFit
        let redColor = UIColor(red: 252/255, green: 204/255, blue: 204/255, alpha: 1.0)
        icon.backgroundColor = redColor
        icon.layer.cornerRadius = 5
        return icon
    }()
    
    private var icon5: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "creditcard"))
        icon.contentMode = .scaleAspectFit
        let redColor = UIColor(red: 252/255, green: 204/255, blue: 204/255, alpha: 1.0)
        icon.backgroundColor = redColor
        icon.layer.cornerRadius = 5
        return icon
    }()
    
    private var icon6: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "exclamation"))
        icon.contentMode = .scaleAspectFit
        let redColor = UIColor(red: 252/255, green: 204/255, blue: 204/255, alpha: 1.0)
        icon.backgroundColor = redColor
        icon.layer.cornerRadius = 5
        return icon
    }()
    
    private var icon7: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "checkmark"))
        icon.contentMode = .scaleAspectFit
        let redColor = UIColor(red: 252/255, green: 204/255, blue: 204/255, alpha: 1.0)
        icon.backgroundColor = redColor
        icon.layer.cornerRadius = 5
        return icon
    }()
    
    private var icon8: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "list"))
        icon.contentMode = .scaleAspectFit
        let redColor = UIColor(red: 252/255, green: 204/255, blue: 204/255, alpha: 1.0)
        icon.backgroundColor = redColor
        icon.layer.cornerRadius = 5
        return icon
    }()
    
    private var icon9: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "logout"))
        icon.contentMode = .scaleAspectFit
        let redColor = UIColor(red: 252/255, green: 204/255, blue: 204/255, alpha: 1.0)
        icon.backgroundColor = redColor
        icon.layer.cornerRadius = 5
        return icon
    }()
    
    private func setupUI() {
            view.addSubview(nav)
            view.addSubview(back)
            view.addSubview(account)
            view.addSubview(name)
            view.addSubview(username)
            view.addSubview(email)
            view.addSubview(changepass)
            view .addSubview(payment)
            view.addSubview(other)
            view.addSubview(report)
            view.addSubview(priv)
            view.addSubview(terms)
            view.addSubview(logout)
            view.addSubview(icon1)
            view.addSubview(icon2)
            view.addSubview(icon3)
            view.addSubview(icon4)
            view.addSubview(icon5)
            view.addSubview(icon6)
            view.addSubview(icon7)
            view.addSubview(icon8)
            view.addSubview(icon9)
            setupConstraints()
        }
        
        
        private func setupConstraints(){
            
            
            back.snp.makeConstraints {
                $0.top.equalToSuperview().offset(30)
                $0.left.equalToSuperview().offset(10)
            }


            nav.snp.makeConstraints{
                $0.top.equalToSuperview()
                $0.width.equalToSuperview()
                $0.height.equalToSuperview().multipliedBy(0.15)
            }

            account.snp.makeConstraints(){
                $0.top.equalTo(nav.snp.bottom)
                $0.width.equalToSuperview()
                $0.height.equalToSuperview().multipliedBy(0.09)
                $0.left.equalTo(20)
            }

            name.snp.makeConstraints(){
                $0.top.equalTo(account.snp.bottom)
                $0.height.equalToSuperview().multipliedBy(0.07)
                $0.width.equalToSuperview()
                
            }
            
            username.snp.makeConstraints(){
                $0.top.equalTo(name.snp.bottom)
                $0.height.equalToSuperview().multipliedBy(0.07)
                $0.width.equalToSuperview()
            }
            email.snp.makeConstraints(){
                $0.top.equalTo(username.snp.bottom)
                $0.height.equalToSuperview().multipliedBy(0.07)
                $0.width.equalToSuperview()
            }
            changepass.snp.makeConstraints(){
                $0.top.equalTo(email.snp.bottom)
                $0.height.equalToSuperview().multipliedBy(0.07)
                $0.width.equalToSuperview()
            }
            payment.snp.makeConstraints(){
                $0.top.equalTo(changepass.snp.bottom)
                $0.height.equalToSuperview().multipliedBy(0.07)
                $0.width.equalToSuperview()
            }
            
            other.snp.makeConstraints(){
                $0.top.equalTo(payment.snp.bottom)
                $0.width.equalToSuperview()
                $0.height.equalToSuperview().multipliedBy(0.06)
                $0.left.equalTo(20)
            }

            report.snp.makeConstraints(){
                $0.top.equalTo(other.snp.bottom)
                $0.height.equalToSuperview().multipliedBy(0.07)
                $0.width.equalToSuperview()
            }
            
            priv.snp.makeConstraints(){
                $0.top.equalTo(report.snp.bottom)
                $0.height.equalToSuperview().multipliedBy(0.07)
                $0.width.equalToSuperview()
            }
            
            terms.snp.makeConstraints(){
                $0.top.equalTo(priv.snp.bottom)
                $0.height.equalToSuperview().multipliedBy(0.07)
                $0.width.equalToSuperview()
            }
            
            logout.snp.makeConstraints(){
                $0.top.equalTo(terms.snp.bottom)
                $0.height.equalToSuperview().multipliedBy(0.07)
                $0.width.equalToSuperview()
            }
            
            icon1.snp.makeConstraints {
                $0.width.height.equalTo(35)
                $0.centerY.equalTo(name)
                $0.left.equalTo(30)
            }

            icon2.snp.makeConstraints {
                $0.width.height.equalTo(35)
                $0.centerY.equalTo(username)
                $0.left.equalTo(30)
            }
            
            icon3.snp.makeConstraints {
                $0.width.height.equalTo(35)
                $0.centerY.equalTo(email)
                $0.left.equalTo(30)
            }
            
            icon4.snp.makeConstraints {
                $0.width.height.equalTo(35)
                $0.centerY.equalTo(changepass)
                $0.left.equalTo(30)
            }
            
            icon5.snp.makeConstraints {
                $0.width.height.equalTo(35)
                $0.centerY.equalTo(payment)
                $0.left.equalTo(30)
            }
            
            icon6.snp.makeConstraints {
                $0.width.height.equalTo(35)
                $0.centerY.equalTo(report)
                $0.left.equalTo(30)
            }
            
            icon7.snp.makeConstraints {
                $0.width.height.equalTo(35)
                $0.centerY.equalTo(priv)
                $0.left.equalTo(30)
            }
            
            icon8.snp.makeConstraints {
                $0.width.height.equalTo(35)
                $0.centerY.equalTo(terms)
                $0.left.equalTo(30)
            }
            
            icon9.snp.makeConstraints {
                $0.width.height.equalTo(35)
                $0.centerY.equalTo(logout)
                $0.left.equalTo(30)
            }
            
        }

    }
