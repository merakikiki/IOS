import UIKit
import SnapKit

class TicketController: UIViewController {
    
let eventNames = ["Welcome Party", "Open Air", "Starry Night", "Donor Day", "Hackathon"]
let eventDates = [
        "11 Sep 2023",
        "20 Sep 2023",
        "30 Oct 2023",
        "11 Nov 2023",
        "18 Nov 2023"
    ]
let images = ["qr_event", "qr_music", "qr_art", "qr_red", "qr_it"]
    
let location = ["SDU University", "New Corpus", "Campus", "Lecture hall A1", "Technopark"]
let time = ["18:00", "18:00", "18:00", "10:00-16:00", "12:00"]
let seat = ["Free", "Free", "Free", "No", "Free"]
    
    let backIcon: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.setImage(UIImage(named: "back"), for: .normal)
        return button
    }()
    
    let myLabel: UILabel = {
        let label = UILabel()
        label.text = "My ticket"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 40)
        return label
    }()
    
    let backView: UIView = {
        let view = UIView()
        let viewColor = UIColor(red: 124/255.0, green: 96/255.0, blue: 220/255.0, alpha: 1.0)
        view.backgroundColor = viewColor
        return view
    }()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 20
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    
    let ticketWidth: CGFloat = 350
    let ticketHeight: CGFloat = 600
    let numberOfTickets = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewColor = UIColor(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1.0)
        view.backgroundColor = viewColor
        setupViews()
        setupCollectionView()
        setupBackButton()
    }
    
    private func setupBackButton() {
        view.addSubview(backIcon)
        
        backIcon.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        backIcon.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
    }
    
    private func setupViews() {
        view.addSubview(backView)
        backView.addSubview(myLabel)
        backView.addSubview(backIcon)
        
        backView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.18)
        }
        
        myLabel.snp.makeConstraints { make in
            make.bottom.equalTo(backView.snp.bottom).inset(15)
            make.centerX.equalToSuperview()
        }
        
        backIcon.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(30)
            make.top.equalTo(myLabel)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
    }
    
    private func setupCollectionView() {
        view.addSubview(collectionView)
        
        collectionView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(10)
            make.centerY.equalToSuperview()
            make.height.equalTo(ticketHeight)
        }
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 20
        
        collectionView.setCollectionViewLayout(layout, animated: false)
        collectionView.register(TicketCell.self, forCellWithReuseIdentifier: "TicketCellIdentifier")
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    @objc private func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}


extension TicketController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfTickets
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TicketCellIdentifier", for: indexPath) as! TicketCell
        
        cell.photo.image = UIImage(named: "Image")
        cell.info1.text = eventNames[indexPath.item % eventNames.count]
        
        cell.info2.text = eventDates[indexPath.item % eventDates.count]
        cell.info3.text = location[indexPath.item % location.count]
        cell.info4.text = time[indexPath.item % time.count]
        cell.info5.text = seat[indexPath.item % seat.count]
        
        let imageName = images[indexPath.item % images.count]
        cell.qrCodeImageView.image = UIImage(named: imageName)
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: ticketWidth, height: ticketHeight)
        }
    }


