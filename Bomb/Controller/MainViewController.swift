////
////  MainViewController.swift
////  Bomb
////
////  Team №9 | Swift Marathon 8.0
////
import UIKit


class MainViewController: UIViewController {
    
    private lazy var labelGameText: UILabel = _labelGameText
    private lazy var labelBombText: UILabel = _labelBombText
    private lazy var bombImageView: UIView = _bombImageView
    private lazy var startGameButton: UIButton = _startGameButton
    private lazy var continueGameButton: UIButton = _continueButton
    private lazy var selectCategoryButton: UIButton = _selectCategoryButton
    private lazy var rulesButton: UIButton = _rulesButton
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBackground()
        addSubviews()
        setConstraints()
        
      //  debugPrint(UIFont.familyNames)
    }
    
    
    func addSubviews() {
        view.addSubview(labelGameText)
        view.addSubview(labelBombText)
        view.addSubview(bombImageView)
        view.addSubview(startGameButton)
        view.addSubview(continueGameButton)
        view.addSubview(selectCategoryButton)
        view.addSubview(rulesButton)
//        
    }
    
    // функция старта игры
       @objc func startButtonTapped() {
           navigationController?.pushViewController(GameViewController(), animated: true)
       }
    
    // функция продолжения игры
    @objc func continueButtonTapped() {
        navigationController?.pushViewController(CategoriesViewController(), animated: true)
    }
    
    // функция выбора категории
    @objc func categoryButtonTapped() {
        navigationController?.pushViewController(CategoriesViewController(), animated: true)
    }
    
    
    // функция перехода в настройки
       @objc func rulesButtonTapped() {
           navigationController?.pushViewController(RulesViewController(), animated: true)
       }
    
    
    
    
    private func setConstraints() {
        
        
        labelGameText.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelGameText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -40),
            labelGameText.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            labelGameText.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
        ])
        
        labelBombText.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelBombText.topAnchor.constraint(equalTo: labelGameText.bottomAnchor, constant: -10),
            labelBombText.trailingAnchor.constraint(equalTo: labelGameText.trailingAnchor),
            labelBombText.leadingAnchor.constraint(equalTo: labelGameText.leadingAnchor),
            
 
        ])

        bombImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bombImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bombImageView.topAnchor.constraint(lessThanOrEqualTo: labelBombText.bottomAnchor, constant: 0),
            bombImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
           bombImageView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.45),
           

        ])

        startGameButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
           startGameButton.topAnchor.constraint(equalTo: bombImageView.bottomAnchor, constant: 10),
           startGameButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.75),
           startGameButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.09),
           startGameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)

        ])
        
        
        continueGameButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            continueGameButton.topAnchor.constraint(equalTo: startGameButton.bottomAnchor, constant: 10),
            continueGameButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.75),
            continueGameButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.09),
            continueGameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)

        ])
        
        selectCategoryButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        selectCategoryButton.topAnchor.constraint(equalTo: continueGameButton.bottomAnchor, constant: 10),
        selectCategoryButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.75),
        selectCategoryButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.09),
        selectCategoryButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
       
        ])
        
        rulesButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        rulesButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5),
        rulesButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
        rulesButton.widthAnchor.constraint(equalToConstant: 56),
        rulesButton.heightAnchor.constraint(equalToConstant: 56)
        ])

    }
}


extension MainViewController {
    
    var _labelGameText: UILabel {
        
        let label = UILabel()
        label.text = "Игра для компании"
        label.textColor = UIColor().getTextColor()
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        label.font = UIFont(name: "Dela Gothic One", size: 35)
        
        return label
    }
    
    var _labelBombText: UILabel {
        let label = UILabel()
        label.text = "БОМБА"
        label.textAlignment = .center
        label.textColor = UIColor().getButtonTextColor()
        label.font = UIFont(name: "Dela Gothic One", size: 60)
        

        return label
    }
    
    var _bombImageView: UIImageView {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "bombIcon")
        imageView.contentMode = .scaleAspectFit
  
        return imageView
    }
    
    
    
    var _startGameButton: UIButton {
        let button = UIButton(type: .system)
        button.setTitle("Старт игры", for: .normal)
        button.tintColor = UIColor().getButtonTextColor()
        button.backgroundColor = UIColor().getButtonColor()
        button.titleLabel?.font = UIFont(name: "Dela Gothic One", size: 24)
        button.layer.cornerRadius = 25
        button.contentMode = .center
        button.drawShadow()
   
        
        //  действие кнопки по нажатию
        button.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
        
        return button
    }
    
    
    var _continueButton: UIButton {
        let button = UIButton(type: .system)
        button.setTitle("Продолжить", for: .normal)
        button.tintColor = UIColor().getButtonTextColor()
        button.backgroundColor = UIColor().getButtonColor()
        button.titleLabel?.font = UIFont(name: "Dela Gothic One", size: 24)
        button.layer.cornerRadius = 25
        button.contentMode = .center
        button.drawShadow()
        
        //  действие кнопки по нажатию
        button.addTarget(self, action: #selector(continueButtonTapped), for: .touchUpInside)
        
        return button
    }
    
    var _selectCategoryButton: UIButton {
        let button = UIButton(type: .system)
        button.setTitle("Категории", for: .normal)
        button.tintColor = UIColor().getButtonTextColor()
        button.backgroundColor = UIColor().getButtonColor()
        button.titleLabel?.font = UIFont(name: "Dela Gothic One", size: 24)
        button.layer.cornerRadius = 28
        button.contentMode = .center
        button.drawShadow()
        
        //  действие кнопки по нажатию
        button.addTarget(self, action: #selector(categoryButtonTapped), for: .touchUpInside)
        
        return button
    }
    
    var _rulesButton: UIButton {
        let button = UIButton(type: .system)
        button.setTitle("?", for: .normal)
        button.titleLabel?.font = UIFont(name: "Dela Gothic One", size: 28)
        button.contentMode = .center
        button.tintColor = UIColor().getButtonTextColor()
        button.backgroundColor = UIColor().getButtonColor()
        button.layer.cornerRadius = 30
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor().getButtonTextColor().cgColor
        button.drawShadow()
        
        
        //  действие кнопки по нажатию
        button.addTarget(self, action: #selector(rulesButtonTapped), for: .touchUpInside)
        
        return button
    }
}
