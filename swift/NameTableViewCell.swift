import UIKit

final class NameTableViewCell: UITableViewCell {
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.layer.borderColor = UIColor.gray.cgColor // Set the container border color
        view.layer.borderWidth = 1 // Set the container border width
        view.layer.cornerRadius = 15 // Set the container corner radius
        return view
    }()
    
    private lazy var imageIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome party 2023"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    private lazy var label2: UILabel = {
        let label = UILabel()
        let viewColor = UIColor(red: 124/255.0, green: 96/255.0, blue: 220/255.0, alpha: 1.0)
        label.textColor = viewColor
        label.text = "29 Dec - 19:00 | Free"
        return label
    }()
    
    private lazy var label3: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.text = "Event Club SDU"
        return label
    }()


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(name: String, imageName: String) {
        imageIcon.image = UIImage(named: imageName)
        nameLabel.text = name
    }
}

//MARK: - Setup UI

private extension NameTableViewCell {
    
    func setupUI() {
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        addSubview(containerView)
        containerView.addSubview(imageIcon)
        containerView.addSubview(nameLabel)
        containerView.addSubview(label2)
        containerView.addSubview(label3)
    }
    
    
    func setupConstraints() {
        containerView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)) 
            make.height.equalToSuperview().multipliedBy(0.95)
        }
        imageIcon.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(10)
            make.size.equalTo(CGSize(width: 60, height: 60))
            make.centerY.equalToSuperview()
        }
        nameLabel.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(imageIcon.snp.trailing).offset(15)
        }
        label2.snp.makeConstraints{ make in
            make.top.equalTo(containerView.snp.top).offset(5)
            make.left.equalTo(nameLabel)
        }
        label3.snp.makeConstraints{ make in
            make.bottom.equalTo(containerView).inset(5)
            make.left.equalTo(nameLabel)
        }
    }
}
