import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let backgroundColor = UIColor(named: "BackgroundColor")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupUI()
    }
    
    private lazy var iconView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "icon")
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Joined"
        label.textColor = .lightGray
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()
    
    
    private lazy var titleLabell: UILabel = {
        let label = UILabel()
        label.text = "2 years ago"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()
    
    private lazy var titleLabel2: UILabel = {
        let label = UILabel()
        label.text = "Belgibayeva"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 40)
        return label
    }()
    
    private lazy var titleLabel5: UILabel = {
        let label = UILabel()
        label.text = "Qaraqat"
        label.textColor = .lightGray
        label.font = .boldSystemFont(ofSize: 40)
        return label
    }()
    
    private lazy var titleLabel3: UILabel = {
        let label = UILabel()
        label.text = "Profile"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()
    
    private lazy var manageUserButton: UIButton = {
        let button = UIButton()
        button.setTitle("Manage user", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 20
        return button
    }()
    
    
    private lazy var titleLabel6: UILabel = {
        let label = UILabel()
        label.text = "Settings"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()
    
    private lazy var manageUserButton2: UIButton = {
        let button = UIButton()
        button.setTitle("Notification", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 20
        return button
    }()
    
    private lazy var manageUserButton3: UIButton = {
        let button = UIButton()
        button.setTitle("Dark Mode", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 20
        return button
    }()
    
    
    private func setupUI() {
        view.addSubview(iconView)
        view.addSubview(titleLabel)
        view.addSubview(titleLabell)
        view.addSubview(titleLabel2)
        view.addSubview(titleLabel3)
        view.addSubview(titleLabel5)
        view.addSubview(titleLabel6)
        view.addSubview(manageUserButton)
        view.addSubview(manageUserButton2)
        view.addSubview(manageUserButton3)
        
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        iconView.snp.makeConstraints {
            $0.left.equalToSuperview().offset(30)
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            $0.width.equalTo(120)
            $0.height.equalTo(120)
        }
        
        iconView.layer.cornerRadius = 60
        iconView.layer.masksToBounds = true
        
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(iconView)
            $0.left.equalTo(iconView.snp.right).offset(30)
            // Adjust the offset as needed
        }
        
        titleLabell.snp.makeConstraints {
            
            $0.left.equalTo(iconView.snp.right).offset(30)
            $0.top.equalTo(titleLabel.snp.bottom).offset(5)
        }
        //2 years ago
        
        titleLabel2.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(iconView.snp.top).offset(200)
            $0.left.equalTo(iconView)
        }
        
        titleLabel5.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(titleLabel2.snp.bottom).offset(-10)
            $0.left.equalTo(iconView)
        }
        
        titleLabel3.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(manageUserButton.snp.top).offset(-10)
            $0.left.equalTo(30) // profile
            
        }
        
        manageUserButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
            $0.left.equalTo(30) //manage user
        }
        
        titleLabel6.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(manageUserButton.snp.bottom).offset(20)
            $0.left.equalTo(30) //settings
            
        }
        
        
        manageUserButton2.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(titleLabel6.snp.bottom).offset(20) //notifications
            $0.left.equalTo(titleLabel6)
        }
        
        manageUserButton3.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(manageUserButton2.snp.bottom).offset(20)
            $0.left.equalTo(titleLabel6) //dark mode
            
            
        }
    }
    
}
