import UIKit
import SnapKit

class TicketCell: UICollectionViewCell {

    let container: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()

    let photo: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    let info1: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()

    let info2: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()

    let info3: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()
    
    let info4: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()
    
    let info5: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()

    let qrCodeImageView: UIImageView = {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFill
            return imageView
        }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        contentView.addSubview(container)
        container.addSubview(photo)
        container.addSubview(info1)
        container.addSubview(info2)
        container.addSubview(info3)
        container.addSubview(info4)
        container.addSubview(info5)
        container.addSubview(qrCodeImageView)
    }

    private func setupConstraints() {
        container.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(80)
            make.height.equalToSuperview().multipliedBy(0.7)
            make.trailing.equalToSuperview().inset(20)
            make.leading.equalToSuperview().offset(20)
        }

        photo.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalTo(200)
        }

        info1.snp.makeConstraints { make in
            make.top.equalTo(photo.snp.bottom).offset(33)
            make.leading.equalToSuperview().offset(20)
        }

        info2.snp.makeConstraints { make in
            make.top.equalTo(info4)
            make.leading.equalTo(info1)
        }
        
        info3.snp.makeConstraints { make in
            make.top.equalTo(info5)
            make.leading.equalToSuperview().offset(20)
        }
        
        info4.snp.makeConstraints { make in
            make.top.equalTo(qrCodeImageView.snp.bottom).offset(30)
            make.trailing.equalTo(qrCodeImageView)
        }
        
        info5.snp.makeConstraints { make in
            make.top.equalTo(info4.snp.bottom).offset(20)
            make.trailing.equalTo(qrCodeImageView)
        }

        qrCodeImageView.snp.makeConstraints { make in
            make.top.equalTo(photo.snp.bottom).offset(20)
            make.trailing.equalToSuperview().inset(30)
            make.width.height.equalToSuperview().dividedBy(8)
        }
    }
}
