import UIKit
import SnapKit

final class ClubsController: UIViewController {
    
    private let names = ["Art club", "Event Club", "Red Cresent", "Orlean", "Bakers Dozen", "Music club"]
    private let images = ["Image 1", "Image 1", "Image 1", "Image 1", "Image 1", "Image 1", "Image 1"]
    private let cellSpacingHeight: CGFloat = 5
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Clubs"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        return label
    }()
    
    private lazy var backgroundView: UIView = {
        let view = UIView()
        let viewColor = UIColor(red: 124/255.0, green: 96/255.0, blue: 220/255.0, alpha: 1.0)
        view.backgroundColor = viewColor
        return view
    }()
    
    private lazy var namesTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(NameTableViewCell.self, forCellReuseIdentifier: "NameTableViewCell")
        tableView.separatorStyle = .none
        return tableView
    }()
    
    private lazy var back: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.setImage(UIImage(named: "back"), for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        namesTableView.dataSource = self
        namesTableView.delegate = self
        
        setupUI()
    }
}

//MARK: - Table view data source methods
extension ClubsController: UITableViewDataSource {
    
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

//MARK: - Table view delegate methods
extension ClubsController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100 // Adjust the cell height as needed
    }

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let margins = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0) // Add top and bottom margins
        cell.contentView.layoutMargins = margins
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
    }
}

// MARK: - UI setup methods
private extension ClubsController {
    
    func setupUI() {
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        view.addSubview(namesTableView)
        view.addSubview(backgroundView)
        view.addSubview(label)
        view.addSubview(back)
    }
    
func setupConstraints() {
    namesTableView.snp.makeConstraints { make in
        make.top.equalTo(backgroundView.snp.bottom).offset(5)
        make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        make.leading.trailing.equalToSuperview().inset(20)
}
                
    backgroundView.snp.makeConstraints { make in
        make.top.equalToSuperview()
        make.left.right.equalToSuperview()
        make.height.equalToSuperview().multipliedBy(0.18)
}
                
    label.snp.makeConstraints { make in
        make.centerX.equalTo(backgroundView)
        make.bottom.equalTo(backgroundView.snp.bottom).inset(10)
}
                
    back.snp.makeConstraints { make in
        make.left.equalToSuperview().offset(20)
        make.bottom.equalTo(label)
        make.width.equalToSuperview().multipliedBy(0.1)
        make.height.equalToSuperview().multipliedBy(0.05)
        }
    }
}
