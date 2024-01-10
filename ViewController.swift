import UIKit
import SnapKit

final class ViewController: UIViewController {

    private let names = ["Welcome party 2023", "Starry Night"]
    private let images = ["Image 1", "Image 1"]
    private let cellSpacingHeight: CGFloat = 5
    
    private lazy var namesTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(NameTableViewCell.self, forCellReuseIdentifier: "NameTableViewCell")
        tableView.separatorStyle = .none
        let viewColor = UIColor(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1.0)
        view.backgroundColor = viewColor
        return tableView
    }()
    
    private lazy var myLabel: UILabel = {
        let label = UILabel()
        label.text = "Unispot"
        label.font = .boldSystemFont(ofSize: 40)
        label.textColor = .white
        return label
    }()

    private lazy var icon1: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.image = UIImage(systemName: "bell.badge")
        return imageView
    }()
    
    private lazy var icon2: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.image = UIImage(systemName: "magnifyingglass")
        return imageView
    }()
    
    private lazy var text1: UILabel = {
        let label = UILabel()
        label.text = "Featured"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()
    
    private lazy var backgroundView: UIView = {
        let view = UIView()
        let viewColor = UIColor(red: 124/255.0, green: 96/255.0, blue: 220/255.0, alpha: 1.0)
        view.backgroundColor = viewColor
        return view
    }()
    
    private lazy var wholeView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 15
        view.clipsToBounds = true
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var image: UIImageView = {
       let image = UIImageView()
       image.image = UIImage(named: "Image")
       return image
    }()
    
    private lazy var labelcard: UILabel = {
        let label = UILabel()
        label.text = "Welcome Party 2023"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    private lazy var labelcard2: UILabel = {
        let label = UILabel()
        label.text = "Mini Red Hall, SDU Uiversity"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .lightGray
        return label
    }()
    
    private lazy var indian: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.image = UIImage(named: "icon")
        return imageView
    }()
    
    private lazy var popular: UILabel = {
        let label = UILabel()
        label.text = "Popular events"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()
    
    private lazy var viewMore: UILabel = {
        let label = UILabel()
        label.text = "View More"
        let viewColor = UIColor(red: 124/255.0, green: 96/255.0, blue: 220/255.0, alpha: 1.0)
        label.textColor = viewColor
        label.font = .boldSystemFont(ofSize: 15)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewColor = UIColor(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1.0)
        view.backgroundColor = viewColor
        
        namesTableView.dataSource = self
        namesTableView.delegate = self
        
        setupViews()
        setupConstraints()
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameTableViewCell", for: indexPath) as! NameTableViewCell
        
        cell.configure(name: names[indexPath.section], imageName: images[indexPath.section])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .clear
        return headerView
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let margins = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        cell.contentView.layoutMargins = margins
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
    }
}


extension ViewController {
    private func setupViews() {
        view.addSubview(backgroundView)
        view.addSubview(myLabel)
        view.addSubview(icon1)
        view.addSubview(icon2)
        view.addSubview(text1)
        view.addSubview(wholeView)
        wholeView.addSubview(image)
        wholeView.addSubview(labelcard)
        wholeView.addSubview(labelcard2)
        wholeView.addSubview(indian)
        view.addSubview(popular)
        view.addSubview(viewMore)
        view.addSubview(namesTableView)
    }

    private func setupConstraints() {
        backgroundView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.18)
        }
        myLabel.snp.makeConstraints { make in
                    make.bottom.equalTo(backgroundView.snp.bottom).inset(15)
                    make.left.equalToSuperview().offset(15)
                }
                
                icon1.snp.makeConstraints{ make in
                    make.bottom.equalTo(myLabel.snp.bottom)
                    make.right.equalToSuperview().inset(20)
                    make.width.equalTo(30)
                    make.height.equalTo(30)
                }
                
                icon2.snp.makeConstraints{ make in
                    make.bottom.equalTo(myLabel.snp.bottom)
                    make.right.equalToSuperview().inset(70)
                    make.width.equalTo(30)
                    make.height.equalTo(30)
                }
                
                text1.snp.makeConstraints{ make in
                    make.left.equalToSuperview().inset(20)
                    make.top.equalTo(backgroundView.snp.bottom).offset(20)
                }
                
                wholeView.snp.makeConstraints { make in
                    make.top.equalTo(text1.snp.bottom).offset(18)
                    make.left.equalToSuperview().inset(20)
                    make.height.equalTo(200)
                    make.width.equalTo(350)
                }
                
                image.snp.makeConstraints{ make in
                    make.top.equalTo(wholeView)
                    make.left.right.equalToSuperview()
                    make.height.equalToSuperview().multipliedBy(0.6)
                }
                
                popular.snp.makeConstraints{ make in
                    make.top.equalTo(wholeView.snp.bottom).offset(15)
                    make.left.equalTo(image.snp.left)
                }
                
                viewMore.snp.makeConstraints{ make in
                    make.top.equalTo(wholeView.snp.bottom).offset(20)
                    make.right.equalToSuperview().inset(20)
                }
                
                labelcard.snp.makeConstraints{ make in
                    make.top.equalTo(image.snp.bottom).offset(10)
                    make.leading.equalToSuperview().offset(20)
                }
                
                labelcard2.snp.makeConstraints{ make in
                    make.top.equalTo(labelcard.snp.bottom).offset(10)
                    make.leading.equalTo(labelcard)
                }
                
                indian.snp.makeConstraints{ make in
                    make.bottom.equalToSuperview().inset(30)
                    make.trailing.equalToSuperview().inset(10)
                    make.width.equalToSuperview().multipliedBy(0.2)
                    make.height.equalToSuperview().multipliedBy(0.13)
                }
                namesTableView.snp.makeConstraints { make in
                    make.top.equalTo(popular.snp.bottom).offset(5)
                    make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
                    make.leading.trailing.equalToSuperview().inset(20)
                }
        
            }
        }
