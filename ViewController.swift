import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var backIcon: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 20
        button.clipsToBounds = true
        button.setImage(UIImage(named: "back"), for: .normal)
        return button
    }()
    
    private lazy var text: UILabel = {
        let label = UILabel()
        label.text = "Мои товары"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    private lazy var box: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "box")
        return imageView
    }()
    
    private lazy var text1: UILabel = {
        let label = UILabel()
        label.text = "Ой, пусто!"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(text)
        view.addSubview(text1)
        view.addSubview(backIcon)
        view.addSubview(box)
        setupConstraints()
        
    }
    
    private func setupConstraints() {
        backIcon.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(30)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        
        text.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide).offset(30)
        }
        
        box.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        text1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(box.snp.bottom).offset(30)
        }
    }
}
