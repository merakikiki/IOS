import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let view1 = UIView()
        let view2 = UIView()
        let view3 = UIView()

        view1.backgroundColor = .red
        view2.backgroundColor = .green
        view3.backgroundColor = .blue

        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)

        let equalHeight = view.frame.height / 3

        view1.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(equalHeight)
        }

        view2.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(view1.snp.bottom)
            make.height.equalTo(equalHeight)
            
        }

        view3.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalTo(view2.snp.bottom)
            make.height.equalTo(equalHeight)
        }

        let subview1 = UIView()
        subview1.backgroundColor = .blue

        view1.addSubview(subview1)

        subview1.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            
            make.height.equalTo(50)
            make.width.equalTo(50)
            make.centerX.equalTo(10)
        }

        let subview2 = UIView()
        subview2.backgroundColor = .red

        view2.addSubview(subview2)

        subview2.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalTo(50)
            make.centerX.equalTo(10)
        }

        let subview3 = UIView()
        subview3.backgroundColor = .yellow

        view3.addSubview(subview3)

        subview3.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            
            make.height.equalTo(50)
            make.width.equalTo(50)
            make.centerX.equalTo(10)
        }
    }
}
