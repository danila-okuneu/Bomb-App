//
//  GameEndViewController.swift
//  Bomb
//
//  Team №9 | Swift Marathon 8.0
//

import UIKit
import SnapKit

class GameEndViewController: UIViewController {

    private lazy var descriptionLabel: UILabel = _descriptionLabel
    private lazy var taskLabel: UILabel = _taskLabel
    
    private lazy var imageView: UIImageView = _imageView
    
    private lazy var anotherTaskButton: UIButton = _anotherTaskButton
    private lazy var startOverButton: UIButton = _startOverButton

    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        
        addSubviews()
        applyConstraints()
    }
    
    private func addSubviews() {
        view.addSubview(descriptionLabel)
        view.addSubview(imageView)
        view.addSubview(taskLabel)
        view.addSubview(anotherTaskButton)
        view.addSubview(startOverButton)
    }
    
    private func applyConstraints() {
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(110)
            make.leading.trailing.equalToSuperview().inset(10)
        }
        
        imageView.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(25)
            make.leading.equalToSuperview().inset(71)
            make.trailing.equalToSuperview().inset(55)
            make.height.equalTo(300)
        }
        
        taskLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(15)
            make.leading.trailing.equalToSuperview().inset(10)
        }
        
        anotherTaskButton.snp.makeConstraints { make in
            make.top.equalTo(taskLabel.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(50)
            make.height.equalTo(79)
        }
        
        startOverButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(50)
            make.leading.trailing.equalToSuperview().inset(50)
            make.height.equalTo(79)
        }
    }
}

private extension GameEndViewController {
    
    var _descriptionLabel: UILabel {
        let label = UILabel()
        label.text = "Проигравший выполняет\nзадание"
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont(name: "Dela Gothic One", size: 24)
        return label
    }
    
    var _imageView: UIImageView {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "boom")
        return imageView
    }
    
    var _taskLabel: UILabel {
        let label = UILabel()
        label.text = "В следующем раунде после каждого ответа хлопать в ладоши"
        label.numberOfLines = 0
        label.textColor = UIColor(named: "textColor")
        label.textAlignment = .center
        label.font = UIFont(name: "Dela Gothic One", size: 20)
        return label
    }
    
    var _anotherTaskButton: UIButton {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(named: "buttonColor")
        button.setTitle("Другое\nЗадание", for: .normal)
        button.tintColor = UIColor(named: "buttonTextColor")
        button.titleLabel?.font = UIFont(name: "Dela Gothic One", size: 24)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        button.layer.cornerRadius = 40
        button.clipsToBounds = true
        button.drawShadow()
        return button
    }
    
    var _startOverButton: UIButton {
        let button = UIButton(type: .system)
        button.setTitle("Начать\nЗаново", for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = UIColor(named: "buttonColor")
        button.titleLabel?.font = UIFont(name: "Dela Gothic One", size: 24)
        button.tintColor = UIColor(named: "buttonTextColor")
        button.layer.cornerRadius = 40
        button.clipsToBounds = true
        button.drawShadow()
        return button
    }
}
