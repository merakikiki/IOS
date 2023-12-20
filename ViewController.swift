import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private let names = ["IOS Task", "Data Analysis Assignment", "UI Homework", "Mat.Stat Practice", "Mat.Stat Assignment", "Midterm Data Analysis", "Yoga", "Stretching", "Cleaning day", "UI Presentation", "Big Theme Discussion"]
    private let images = ["Any 2", "Any 4", "Any 3", "Any 5", "Any 6", "Any 7", "Any 8", "Any 9", "Any 10", "Any 11", "Any 12"]
    
    private let sections = ["To Do", "Done(10)", "In Progress(8)"]

    
    private lazy var namesTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(NameTableViewCell.self, forCellReuseIdentifier: "NameTableViewCell")
        return tableView
    }()
    
    private lazy var doneTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(NameTableViewCell.self, forCellReuseIdentifier: "NameTableViewCell")
        return tableView
    }()
    
    private lazy var inProgressTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(NameTableViewCell.self, forCellReuseIdentifier: "NameTableViewCell")
        return tableView
    }()
    
    private lazy var ToDo: UILabel = {
        let label = UILabel()
        label.text = "To Do List"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 30)
        label.textAlignment = .center
        return label
    }()

    private lazy var tasks: UILabel = {
        let label = UILabel()
        label.text = "8 tasks, 3 completed"
        label.textColor = .lightGray
        return label
    }()
    
    private lazy var calendar: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Any")
        return imageView
    }()
    
    private var search: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Any 1")
        return imageView
    }()
    
    private lazy var yest: UILabel = {
        let label = UILabel()
        label.text = "YESTERDAY"
        label.textColor = .black
        
        return label
    }()
    
    private lazy var today: UILabel = {
        let label = UILabel()
        label.text = "TODAY"
        label.textColor = .white
        label.backgroundColor = .black
        label.layer.cornerRadius = 15
        label.layer.masksToBounds = true
        label.textAlignment = .center
        return label
    }()


    
    private lazy var tomorrow: UILabel = {
        let label = UILabel()
        label.text = "TOMORROW"
        label.textColor = .black
        return label
    }()
    
    private lazy var kiki: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        namesTableView.dataSource = self
        namesTableView.delegate = self
        
        setupUI()
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 10
        case 1:
            return 5
        case 2:
            return 5
        default:
            return 0
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameTableViewCell", for: indexPath) as! NameTableViewCell

        switch indexPath.section {
        case 0:
            cell.configure(name: names[indexPath.row], imageName: images[indexPath.row])
        case 1:
            cell.configure(name: names[indexPath.row], imageName: images[indexPath.row])
        default:
            cell.configure(name: names[indexPath.row], imageName: images[indexPath.row])
        }
        return cell
    }
}


//MARK: - Table view delegate methods
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        (view.window?.windowScene?.screen.bounds.height ?? 0) * 0.1
    }
}

// MARK: - UI setup methods
private extension ViewController {
    
    func setupUI() {
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        view.addSubview(namesTableView)
        view.addSubview(ToDo)
        view.addSubview(tasks)
        view.addSubview(calendar)
        view.addSubview(search)
        view.addSubview(kiki)
        kiki.addSubview(yest)
        kiki.addSubview(today)
        kiki.addSubview(tomorrow)
        
    }
    


    
    func setupConstraints() {
        namesTableView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(10)
            make.top.equalTo(yest.snp.bottom).offset(20)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        
        ToDo.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.equalTo(calendar.snp.trailing).offset(50)
        }
        
        tasks.snp.makeConstraints { make in
            make.top.equalTo(calendar.snp.bottom).inset(20)
            make.leading.equalTo(115)
        }
        
        calendar.snp.makeConstraints{ make in
            make.leading.equalTo(20)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
        }
        
        search.snp.makeConstraints{ make in
            make.leading.equalTo(ToDo.snp.trailing).offset(70)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(5)
        }
        
        yest.snp.makeConstraints{ make in
            make.leading.equalTo(20)
            make.centerY.equalTo(kiki.snp.centerY)
           
        }
        
        today.snp.makeConstraints { make in
            make.leading.equalTo(yest.snp.trailing).offset(50)
            make.centerY.equalTo(kiki.snp.centerY)
            make.trailing.equalTo(tomorrow.snp.leading).offset(-50)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }

        
        tomorrow.snp.makeConstraints{ make in
            make.trailing.equalTo(-20)
            make.centerY.equalTo(kiki.snp.centerY)
            
        }
        
        
        kiki.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(1)
            make.height.equalToSuperview().multipliedBy(0.05)
            make.top.equalTo(tasks.snp.bottom).offset(20)                      }
        
    }
    
}
