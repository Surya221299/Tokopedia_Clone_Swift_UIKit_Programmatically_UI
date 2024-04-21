//
//  ViewController.swift
//  TokopediaClone
//
//  Created by Bamantara S on 04/02/24.
//

import UIKit

class Home: UIViewController {
    
    // MARK: Properties
    let statusBarView = UIView(frame: UIApplication.shared.statusBarFrame)
    let statusBarColor = UIColor.white
    
    
    // MARK: Top Search Bar
    let topStackView = UIStackView()
    let secondTopStackView = UIStackView()
    let textField = UITextField()
    
    let mailButton = UIButton()
    let bellButton = UIButton()
    let cartButton = UIButton()
    let menuButton = UIButton()
    
    // MARK: Main ScrollView
    let mainScrollView = UIScrollView()
    let mainStackView = UIStackView()
    let label1 = UIView()
    let label2 = UIView()
    let label3 = UIView()
    
    // MARK: First StackView
    let firstStackView = UIStackView()
    let dikirimKe = UILabel()
    let namaKota = UILabel()
    let locationButton = UIButton()
    let dropdownButton = UIButton()
    
    // MARK: Second StackView
    let secondStackView = UIStackView()
    let tokopediaIconCircle = UIButton()
    let haiTopper = UILabel()
    let aksesLabel = UILabel()
    let masukButton = UIButton()
    
    // MARK: Horizontal Carousel
    private var carouselView: CarouselView?
    private var carouselData = [CarouselView.CarouselData]()
    
    // MARK: Third StackView
    let thirdStackView = UIStackView()
    let horizontalScrollView = UIScrollView()
    let gambar1 = UIButton()
    let gambar2 = UIButton()
    let gambar3 = UIButton()
    let gambar4 = UIButton()
    let gambar5 = UIButton()
    let gambar6 = UIButton()
    let gambar7 = UIButton()
    let gambar8 = UIButton()
    let gambar9 = UIButton()
    let gambar10 = UIButton()
    let gambar11 = UIButton()
    let gambar12 = UIButton()
    let gambar13 = UIButton()
    let gambar14 = UIButton()
    let gambar15 = UIButton()
    let gambar16 = UIButton()
    let gambar17 = UIButton()
    let gambar18 = UIButton()
    let gambar19 = UIButton()
    let gambar20 = UIButton()
    
    // MARK: Fourth Stack View
    let fourthStackView = UIStackView()
    let firstLabel = UILabel()
    let secondLabel = UILabel()
    let labelDetailButton = UIButton()
    
    //MARK: Fifth Stack View
    let fifthStackView = UIStackView()
    //MARK: Second Scroll View
    let secondScrollView = UIScrollView()
    let gambarBackground = UIImageView(image: UIImage(named: "background_scroll_khusus")!)
    
    let produkSatu = UIButton()
    let diskonProdukSatu = UIImageView(image: UIImage(named: "diskon")!)
    let labelDiskonProdukSatu = UILabel()
    
    let produkDua = UIButton()
    let diskonProdukDua = UIImageView(image: UIImage(named: "diskon")!)
    let labelDiskonProdukDua = UILabel()
    
    let produkTiga = UIButton()
    let diskonProdukTiga = UIImageView(image: UIImage(named: "diskon")!)
    let labelDiskonProdukTiga = UILabel()
    
    let produkEmpat = UIButton()
    let diskonProdukEmpat = UIImageView(image: UIImage(named: "diskon")!)
    let labelDiskonProdukEmpat = UILabel()
    
    let produkLima = UIButton()
    let diskonProdukLima = UIImageView(image: UIImage(named: "diskon")!)
    let labelDiskonProdukLima = UILabel()
    
    

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        self.navigationController?.navigationBar.isHidden = true
        
        style()
        layout()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        carouselView?.configureView(with: carouselData)
    }
    
}

extension Home {
    
    func style() {
        
        view.addSubview(statusBarView)
        statusBarView.backgroundColor = statusBarColor
        statusBarView.layer.zPosition = 1
        
        //MARK: Search TextField
        view.addSubview(topStackView)
        
        topStackView.axis = .horizontal
        topStackView.backgroundColor = .white
        topStackView.layoutMargins = UIEdgeInsets(top: 0, left: 20, bottom: 4, right: 12)
        topStackView.isLayoutMarginsRelativeArrangement = true
        topStackView.layer.zPosition = 1
        topStackView.addArrangedSubview(textField)
        topStackView.addArrangedSubview(secondTopStackView)
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        topStackView.spacing = 12
        
        secondTopStackView.translatesAutoresizingMaskIntoConstraints = false
        secondTopStackView.layoutMargins = UIEdgeInsets(top: 6, left: 0, bottom: 6, right: 0)
        secondTopStackView.spacing = 12
        secondTopStackView.isLayoutMarginsRelativeArrangement = true
        secondTopStackView.addArrangedSubview(mailButton)
        secondTopStackView.addArrangedSubview(bellButton)
        secondTopStackView.addArrangedSubview(cartButton)
        secondTopStackView.addArrangedSubview(menuButton)
        secondTopStackView.axis = .horizontal
        
        textField.layer.borderWidth = 1
        textField.attributedPlaceholder = NSAttributedString(string: " Cari di Tokopedia", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        textField.layer.cornerRadius = 10
        textField.layer.borderColor = UIColor(named: "bg_border_color")?.cgColor
        textField.leftViewMode = UITextField.ViewMode.always
        textField.leftViewMode = .always
        textField.setLeftIcon(UIImage(named: "ic_search")!)
        self.hideKeyboardWhenTappedAround()
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        // Mail Button
        mailButton.translatesAutoresizingMaskIntoConstraints = false
        mailButton.setBackgroundImage(UIImage(named: "ic_mail"), for: .normal)
        mailButton.addTarget(self, action: #selector(tapMail), for: .touchUpInside)
        mailButton.tintColor = .label
        
        // Notification Button
        bellButton.translatesAutoresizingMaskIntoConstraints = false
        bellButton.setBackgroundImage(UIImage(named: "ic_bell"), for: .normal)
        bellButton.addTarget(self, action: #selector(tapBell), for: .touchUpInside)
        bellButton.tintColor = .label
        
        // Cart Button
        cartButton.translatesAutoresizingMaskIntoConstraints = false
        cartButton.setBackgroundImage(UIImage(named: "ic_cart"), for: .normal)
        cartButton.addTarget(self, action: #selector(tapCart), for: .touchUpInside)
        cartButton.backgroundColor = .white
        cartButton.layer.zPosition = 1
        cartButton.tintColor = .label
        
        // Menu Button
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        menuButton.setBackgroundImage(UIImage(named: "ic_menu"), for: .normal)
        menuButton.addTarget(self, action: #selector(tapMenu), for: .touchUpInside)
        menuButton.tintColor = .label
        
        view.addSubview(mainScrollView)
        mainScrollView.addSubview(mainStackView)
        mainScrollView.showsVerticalScrollIndicator = false
        mainScrollView.backgroundColor = .clear
        mainScrollView.translatesAutoresizingMaskIntoConstraints = false
       
        mainStackView.axis = .vertical
        mainStackView.spacing = 10
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        label2.backgroundColor = .clear
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        //MARK: First StackView
        firstStackView.axis = .horizontal
        firstStackView.distribution = .fillEqually
        firstStackView.translatesAutoresizingMaskIntoConstraints = false
        firstStackView.alignment = .leading
        
        view.addSubview(locationButton)
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        locationButton.setBackgroundImage(UIImage(named: "ic_location")?.withRenderingMode(.alwaysTemplate), for: .normal)
        locationButton.tintColor = UIColor(named: "bg_primary")

        view.addSubview(dikirimKe)
        dikirimKe.translatesAutoresizingMaskIntoConstraints = false
        dikirimKe.textColor = UIColor(named: "bg_gray")
        dikirimKe.font = dikirimKe.font.withSize(14)
        dikirimKe.text = "Dikirim ke"

        view.addSubview(namaKota)
        namaKota.textColor = UIColor(named: "bg_gray")
        namaKota.translatesAutoresizingMaskIntoConstraints = false
        namaKota.font = .boldSystemFont(ofSize: 14)
        namaKota.text = "Jakarta Pusat"

        view.addSubview(dropdownButton)
        dropdownButton.translatesAutoresizingMaskIntoConstraints = false
        dropdownButton.setBackgroundImage(UIImage(named: "ic_dropdown")?.withRenderingMode(.alwaysTemplate), for: .normal)
        dropdownButton.tintColor = UIColor(named: "bg_gray")
        
        // MARK: Second StackView
        secondStackView.axis = .horizontal
        secondStackView.distribution = .fillEqually
        secondStackView.translatesAutoresizingMaskIntoConstraints = false
        secondStackView.alignment = .leading
        secondStackView.addArrangedSubview(tokopediaIconCircle)
        secondStackView.addArrangedSubview(haiTopper)
        secondStackView.addArrangedSubview(aksesLabel)
        secondStackView.addArrangedSubview(masukButton)
        
        view.addSubview(tokopediaIconCircle)
        tokopediaIconCircle.translatesAutoresizingMaskIntoConstraints = false
        tokopediaIconCircle.setBackgroundImage(UIImage(named: "ic_tokopedia_circle"), for: .normal)
        
        view.addSubview(haiTopper)
        haiTopper.textColor = .black
        haiTopper.font = .boldSystemFont(ofSize: 14)
        haiTopper.text = "Hai, Topper!"
        
        view.addSubview(aksesLabel)
        aksesLabel.textColor = UIColor(named: "bg_gray")
        aksesLabel.font = dikirimKe.font.withSize(14)
        aksesLabel.text = "Akses semua fitur, yuk~"
        
        view.addSubview(masukButton)
        masukButton.setTitle("Masuk", for: .normal)
        masukButton.translatesAutoresizingMaskIntoConstraints = false
        masukButton.addTarget(self, action: #selector(tapLogin), for: .touchUpInside)
        masukButton.layer.cornerRadius = 8
        masukButton.layer.masksToBounds = true  // optional
        masukButton.backgroundColor = UIColor(named: "bg_primary")
        
        // MARK: Fourth Stack View Carousel
        carouselView = CarouselView(pages: 4, delegate: self)
        carouselData.append(.init(image: UIImage(named: "Satu")))
        carouselData.append(.init(image: UIImage(named: "Dua")))
        carouselData.append(.init(image: UIImage(named: "Tiga")))
        carouselData.append(.init(image: UIImage(named: "Empat")))
        
        //MARK: Third Stack View
        thirdStackView.addSubview(horizontalScrollView)
        thirdStackView.translatesAutoresizingMaskIntoConstraints = false
        
        horizontalScrollView.addSubview(gambar1)
        horizontalScrollView.addSubview(gambar2)
        horizontalScrollView.addSubview(gambar3)
        horizontalScrollView.addSubview(gambar4)
        horizontalScrollView.addSubview(gambar5)
        horizontalScrollView.addSubview(gambar6)
        horizontalScrollView.addSubview(gambar7)
        horizontalScrollView.addSubview(gambar8)
        horizontalScrollView.addSubview(gambar9)
        horizontalScrollView.addSubview(gambar10)
        horizontalScrollView.addSubview(gambar11)
        horizontalScrollView.addSubview(gambar12)
        horizontalScrollView.addSubview(gambar13)
        horizontalScrollView.addSubview(gambar14)
        horizontalScrollView.addSubview(gambar15)
        horizontalScrollView.addSubview(gambar16)
        horizontalScrollView.addSubview(gambar17)
        horizontalScrollView.addSubview(gambar18)
        horizontalScrollView.addSubview(gambar19)
        horizontalScrollView.addSubview(gambar20)
        horizontalScrollView.alwaysBounceHorizontal = false
        horizontalScrollView.showsHorizontalScrollIndicator = false
        horizontalScrollView.translatesAutoresizingMaskIntoConstraints = false
        
        //MARK: Gambar 1
        gambar1.translatesAutoresizingMaskIntoConstraints = false
        gambar1.setImage(UIImage.init(named: "1")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar1.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar1.titleLabel?.numberOfLines = 0
        gambar1.setTitle("Promo \n Lebaran", for: .normal)
        gambar1.setTitleColor(.black, for: .normal)
        gambar1.titleLabel?.lineBreakMode = .byWordWrapping
        gambar1.titleLabel?.textAlignment = .center
        gambar1.layer.masksToBounds = false
        gambar1.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar1.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar1.layer.cornerRadius = 8
        gambar1.backgroundColor = .clear
        
        //MARK: Gambar 2
        gambar2.translatesAutoresizingMaskIntoConstraints = false
        gambar2.setImage(UIImage.init(named: "2")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar2.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar2.titleLabel?.numberOfLines = 0
        gambar2.setTitle("Promo Hari \n Ini", for: .normal)
        gambar2.setTitleColor(.black, for: .normal)
        gambar2.titleLabel?.lineBreakMode = .byWordWrapping
        gambar2.titleLabel?.textAlignment = .center
        gambar2.layer.masksToBounds = false
        gambar2.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar2.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar2.layer.cornerRadius = 8
        gambar2.backgroundColor = .clear
        
        //MARK: Gambar 3
        gambar3.translatesAutoresizingMaskIntoConstraints = false
        gambar3.setImage(UIImage.init(named: "3")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar3.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar3.titleLabel?.numberOfLines = 0
        gambar3.setTitle("Top-Up & \n Tagihan", for: .normal)
        gambar3.setTitleColor(.black, for: .normal)
        gambar3.titleLabel?.lineBreakMode = .byWordWrapping
        gambar3.titleLabel?.textAlignment = .center
        gambar3.layer.masksToBounds = false
        gambar3.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar3.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar3.layer.cornerRadius = 8
        gambar3.backgroundColor = .clear
        
        //MARK: Gambar 4
        gambar4.translatesAutoresizingMaskIntoConstraints = false
        gambar4.setImage(UIImage.init(named: "4")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar4.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar4.titleLabel?.numberOfLines = 0
        gambar4.setTitle("Beli Lokal", for: .normal)
        gambar4.setTitleColor(.black, for: .normal)
        gambar4.titleLabel?.lineBreakMode = .byWordWrapping
        gambar4.titleLabel?.textAlignment = .center
        gambar4.layer.masksToBounds = false
        gambar4.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar4.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar4.layer.cornerRadius = 8
        gambar4.backgroundColor = .clear
        
        //MARK: Gambar 5
        gambar5.translatesAutoresizingMaskIntoConstraints = false
        gambar5.setImage(UIImage.init(named: "5")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar5.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar5.titleLabel?.numberOfLines = 0
        gambar5.setTitle("GoPay \n Later", for: .normal)
        gambar5.setTitleColor(.black, for: .normal)
        gambar5.titleLabel?.lineBreakMode = .byWordWrapping
        gambar5.titleLabel?.textAlignment = .center
        gambar5.layer.masksToBounds = false
        gambar5.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar5.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar5.layer.cornerRadius = 8
        gambar5.backgroundColor = .clear
        
        //MARK: Gambar 6
        gambar6.translatesAutoresizingMaskIntoConstraints = false
        gambar6.setImage(UIImage.init(named: "6")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar6.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar6.titleLabel?.numberOfLines = 0
        gambar6.setTitle("Kirim THR", for: .normal)
        gambar6.setTitleColor(.black, for: .normal)
        gambar6.titleLabel?.lineBreakMode = .byWordWrapping
        gambar6.titleLabel?.textAlignment = .center
        gambar6.layer.masksToBounds = false
        gambar6.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar6.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar6.layer.cornerRadius = 8
        gambar6.backgroundColor = .clear
        
        //MARK: Gambar 7
        gambar7.translatesAutoresizingMaskIntoConstraints = false
        gambar7.setImage(UIImage.init(named: "7")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar7.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar7.titleLabel?.numberOfLines = 0
        gambar7.setTitle("Keuangan", for: .normal)
        gambar7.setTitleColor(.black, for: .normal)
        gambar7.titleLabel?.lineBreakMode = .byWordWrapping
        gambar7.titleLabel?.textAlignment = .center
        gambar7.layer.masksToBounds = false
        gambar7.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar7.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar7.layer.cornerRadius = 8
        gambar7.backgroundColor = .clear
        
        //MARK: Gambar 8
        gambar8.translatesAutoresizingMaskIntoConstraints = false
        gambar8.setImage(UIImage.init(named: "8")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar8.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar8.titleLabel?.numberOfLines = 0
        gambar8.setTitle("Tokopedia \n Seru", for: .normal)
        gambar8.setTitleColor(.black, for: .normal)
        gambar8.titleLabel?.lineBreakMode = .byWordWrapping
        gambar8.titleLabel?.textAlignment = .center
        gambar8.layer.masksToBounds = false
        gambar8.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar8.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar8.layer.cornerRadius = 8
        gambar8.backgroundColor = .clear
        
        //MARK: Gambar 9
        gambar9.translatesAutoresizingMaskIntoConstraints = false
        gambar9.setImage(UIImage.init(named: "9")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar9.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar9.titleLabel?.numberOfLines = 0
        gambar9.setTitle("Live \n Shopping", for: .normal)
        gambar9.setTitleColor(.black, for: .normal)
        gambar9.titleLabel?.lineBreakMode = .byWordWrapping
        gambar9.titleLabel?.textAlignment = .center
        gambar9.layer.masksToBounds = false
        gambar9.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar9.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar9.layer.cornerRadius = 8
        gambar9.backgroundColor = .clear
        
        //MARK: Gambar 10
        gambar10.translatesAutoresizingMaskIntoConstraints = false
        gambar10.setImage(UIImage.init(named: "10")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar10.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar10.titleLabel?.numberOfLines = 0
        gambar10.setTitle("Fashion \n Pria", for: .normal)
        gambar10.setTitleColor(.black, for: .normal)
        gambar10.titleLabel?.lineBreakMode = .byWordWrapping
        gambar10.titleLabel?.textAlignment = .center
        gambar10.layer.masksToBounds = false
        gambar10.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar10.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar10.layer.cornerRadius = 8
        gambar10.backgroundColor = .clear
        
        //MARK: Gambar 11
        gambar11.translatesAutoresizingMaskIntoConstraints = false
        gambar11.setImage(UIImage.init(named: "11")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar11.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar11.titleLabel?.numberOfLines = 0
        gambar11.setTitle("Tiket & \n Hiburan", for: .normal)
        gambar11.setTitleColor(.black, for: .normal)
        gambar11.titleLabel?.lineBreakMode = .byWordWrapping
        gambar11.titleLabel?.textAlignment = .center
        gambar11.layer.masksToBounds = false
        gambar11.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar11.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar11.layer.cornerRadius = 8
        gambar11.backgroundColor = .clear

        //MARK: Gambar 12
        gambar12.translatesAutoresizingMaskIntoConstraints = false
        gambar12.setImage(UIImage.init(named: "12")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar12.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar12.titleLabel?.numberOfLines = 0
        gambar12.setTitle("Tokopedia \n NOW!", for: .normal)
        gambar12.setTitleColor(.black, for: .normal)
        gambar12.titleLabel?.lineBreakMode = .byWordWrapping
        gambar12.titleLabel?.textAlignment = .center
        gambar12.layer.masksToBounds = false
        gambar12.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar12.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar12.layer.cornerRadius = 8
        gambar12.backgroundColor = .clear
        
        //MARK: Gambar 13
        gambar13.translatesAutoresizingMaskIntoConstraints = false
        gambar13.setImage(UIImage.init(named: "13")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar13.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar13.titleLabel?.numberOfLines = 0
        gambar13.setTitle("Fashion", for: .normal)
        gambar13.setTitleColor(.black, for: .normal)
        gambar13.titleLabel?.lineBreakMode = .byWordWrapping
        gambar13.titleLabel?.textAlignment = .center
        gambar13.layer.masksToBounds = false
        gambar13.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar13.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar13.layer.cornerRadius = 8
        gambar13.backgroundColor = .clear
        
        //MARK: Gambar 14
        gambar14.translatesAutoresizingMaskIntoConstraints = false
        gambar14.setImage(UIImage.init(named: "14")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar14.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar14.titleLabel?.numberOfLines = 0
        gambar14.setTitle("Olahraga", for: .normal)
        gambar14.setTitleColor(.black, for: .normal)
        gambar14.titleLabel?.lineBreakMode = .byWordWrapping
        gambar14.titleLabel?.textAlignment = .center
        gambar14.layer.masksToBounds = false
        gambar14.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar14.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar14.layer.cornerRadius = 8
        gambar14.backgroundColor = .clear
        
        //MARK: Gambar 15
        gambar15.translatesAutoresizingMaskIntoConstraints = false
        gambar15.setImage(UIImage.init(named: "15")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar15.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar15.titleLabel?.numberOfLines = 0
        gambar15.setTitle("Bayar di \n Tempat", for: .normal)
        gambar15.setTitleColor(.black, for: .normal)
        gambar15.titleLabel?.lineBreakMode = .byWordWrapping
        gambar15.titleLabel?.textAlignment = .center
        gambar15.layer.masksToBounds = false
        gambar15.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar15.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar15.layer.cornerRadius = 8
        gambar15.backgroundColor = .clear
        
        //MARK: Gambar 16
        gambar16.translatesAutoresizingMaskIntoConstraints = false
        gambar16.setImage(UIImage.init(named: "16")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar16.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar16.titleLabel?.numberOfLines = 0
        gambar16.setTitle("Tokopedia \n Farma", for: .normal)
        gambar16.setTitleColor(.black, for: .normal)
        gambar16.titleLabel?.lineBreakMode = .byWordWrapping
        gambar16.titleLabel?.textAlignment = .center
        gambar16.layer.masksToBounds = false
        gambar16.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar16.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar16.layer.cornerRadius = 8
        gambar16.backgroundColor = .clear
        
        //MARK: Gambar 17
        gambar17.translatesAutoresizingMaskIntoConstraints = false
        gambar17.setImage(UIImage.init(named: "17")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar17.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar17.titleLabel?.numberOfLines = 0
        gambar17.setTitle("HP & Tablet", for: .normal)
        gambar17.setTitleColor(.black, for: .normal)
        gambar17.titleLabel?.lineBreakMode = .byWordWrapping
        gambar17.titleLabel?.textAlignment = .center
        gambar17.layer.masksToBounds = false
        gambar17.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar17.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar17.layer.cornerRadius = 8
        gambar17.backgroundColor = .clear
        
        //MARK: Gambar 18
        gambar18.translatesAutoresizingMaskIntoConstraints = false
        gambar18.setImage(UIImage.init(named: "18")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar18.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar18.titleLabel?.numberOfLines = 0
        gambar18.setTitle("Makanan \n Minuman", for: .normal)
        gambar18.setTitleColor(.black, for: .normal)
        gambar18.titleLabel?.lineBreakMode = .byWordWrapping
        gambar18.titleLabel?.textAlignment = .center
        gambar18.layer.masksToBounds = false
        gambar18.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar18.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar18.layer.cornerRadius = 8
        gambar18.backgroundColor = .clear
        
        //MARK: Gambar 19
        gambar19.translatesAutoresizingMaskIntoConstraints = false
        gambar19.setImage(UIImage.init(named: "19")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar19.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar19.titleLabel?.numberOfLines = 0
        gambar19.setTitle("Mumpung \n Murah", for: .normal)
        gambar19.setTitleColor(.black, for: .normal)
        gambar19.titleLabel?.lineBreakMode = .byWordWrapping
        gambar19.titleLabel?.textAlignment = .center
        gambar19.layer.masksToBounds = false
        gambar19.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar19.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar19.layer.cornerRadius = 8
        gambar19.backgroundColor = .clear
        
        //MARK: Gambar 20
        gambar20.translatesAutoresizingMaskIntoConstraints = false
        gambar20.setImage(UIImage.init(named: "20")?.withRenderingMode(.alwaysOriginal), for: .normal)
        gambar20.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        gambar20.titleLabel?.numberOfLines = 0
        gambar20.setTitle("Elektronik", for: .normal)
        gambar20.setTitleColor(.black, for: .normal)
        gambar20.titleLabel?.lineBreakMode = .byWordWrapping
        gambar20.titleLabel?.textAlignment = .center
        gambar20.layer.masksToBounds = false
        gambar20.titleEdgeInsets = UIEdgeInsets(top: 70, left: -52, bottom: 0, right: 0)
        gambar20.titleLabel?.font = .systemFont(ofSize: 10, weight: .regular)
        gambar20.layer.cornerRadius = 8
        gambar20.backgroundColor = .clear
        
        //MARK: Fourth Stack View
        fourthStackView.translatesAutoresizingMaskIntoConstraints = false
        fourthStackView.addArrangedSubview(firstLabel)
        fourthStackView.layoutMargins = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 0)
        fourthStackView.isLayoutMarginsRelativeArrangement = true
        fourthStackView.alignment = .top
        
        
        //view.addSubview(firstLabel)
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        firstLabel.text = "Khusus Buat Kamu~"
        firstLabel.font = UIFont.boldSystemFont(ofSize: 18.0)
        firstLabel.textColor = .black
        
        view.addSubview(secondLabel)
        secondLabel.text = "Terbatas! Buruan Serbu"
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        secondLabel.font = UIFont.systemFont(ofSize: 12.0)
        
        view.addSubview(labelDetailButton)
        labelDetailButton.translatesAutoresizingMaskIntoConstraints = false
        labelDetailButton.setImage(UIImage.init(named: "next_icon")?.withRenderingMode(.alwaysOriginal), for: .normal)
        labelDetailButton.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        labelDetailButton.backgroundColor = .clear
        labelDetailButton.layer.cornerRadius = 16
        labelDetailButton.layer.borderWidth = 1.5
        labelDetailButton.clipsToBounds = true
        labelDetailButton.layer.borderColor = UIColor.gray.cgColor
        
        //MARK: Fifth StackView
        fifthStackView.translatesAutoresizingMaskIntoConstraints = false
        fifthStackView.backgroundColor = UIColor(patternImage: UIImage(named: "background_scroll_khusus")!)
        fifthStackView.addArrangedSubview(secondScrollView)
        fifthStackView.addArrangedSubview(gambarBackground)
        
        //view.addSubview(gambarBackground)
        gambarBackground.translatesAutoresizingMaskIntoConstraints = false
        
        //view.addSubview(secondScrollView)
        secondScrollView.addSubview(produkSatu)
        secondScrollView.addSubview(produkDua)
        secondScrollView.addSubview(produkTiga)
        secondScrollView.addSubview(produkEmpat)
        secondScrollView.addSubview(produkLima)
        secondScrollView.alwaysBounceHorizontal = false
        secondScrollView.showsHorizontalScrollIndicator = false
        secondScrollView.translatesAutoresizingMaskIntoConstraints = false
        
        
        //MARK: Gambar 1
        produkSatu.translatesAutoresizingMaskIntoConstraints = false
        produkSatu.setImage(UIImage.init(named: "khusus_1")?.withRenderingMode(.alwaysOriginal), for: .normal)
        produkSatu.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        produkSatu.layer.masksToBounds = false
        produkSatu.layer.cornerRadius = 8
        produkSatu.backgroundColor = .clear
        
        view.addSubview(diskonProdukSatu)
        diskonProdukSatu.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(labelDiskonProdukSatu)
        labelDiskonProdukSatu.translatesAutoresizingMaskIntoConstraints = false
        labelDiskonProdukSatu.text = "82%"
        labelDiskonProdukSatu.textColor = UIColor.white
        labelDiskonProdukSatu.font = UIFont.systemFont(ofSize: 10, weight: .heavy)
        
        //MARK: Gambar 2
        produkDua.translatesAutoresizingMaskIntoConstraints = false
        produkDua.setImage(UIImage.init(named: "khusus_2")?.withRenderingMode(.alwaysOriginal), for: .normal)
        produkDua.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        produkDua.layer.masksToBounds = false
        produkDua.layer.cornerRadius = 8
        produkDua.backgroundColor = .clear
        
        view.addSubview(diskonProdukDua)
        diskonProdukDua.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(labelDiskonProdukDua)
        labelDiskonProdukDua.translatesAutoresizingMaskIntoConstraints = false
        labelDiskonProdukDua.text = "37%"
        labelDiskonProdukDua.textColor = UIColor.white
        labelDiskonProdukDua.font = UIFont.systemFont(ofSize: 10, weight: .heavy)
        
        //MARK: Gambar 3
        produkTiga.translatesAutoresizingMaskIntoConstraints = false
        produkTiga.setImage(UIImage.init(named: "khusus_3")?.withRenderingMode(.alwaysOriginal), for: .normal)
        produkTiga.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        produkTiga.layer.masksToBounds = false
        produkTiga.layer.cornerRadius = 8
        produkTiga.backgroundColor = .clear
        
        view.addSubview(diskonProdukTiga)
        diskonProdukTiga.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(labelDiskonProdukTiga)
        labelDiskonProdukTiga.translatesAutoresizingMaskIntoConstraints = false
        labelDiskonProdukTiga.text = "20%"
        labelDiskonProdukTiga.textColor = UIColor.white
        labelDiskonProdukTiga.font = UIFont.systemFont(ofSize: 10, weight: .heavy)
        
        //MARK: Gambar 4
        produkEmpat.translatesAutoresizingMaskIntoConstraints = false
        produkEmpat.setImage(UIImage.init(named: "khusus_4")?.withRenderingMode(.alwaysOriginal), for: .normal)
        produkEmpat.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        produkEmpat.layer.masksToBounds = false
        produkEmpat.layer.cornerRadius = 8
        produkEmpat.backgroundColor = .clear
        
        view.addSubview(diskonProdukEmpat)
        diskonProdukEmpat.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(labelDiskonProdukEmpat)
        labelDiskonProdukEmpat.translatesAutoresizingMaskIntoConstraints = false
        labelDiskonProdukEmpat.text = "58%"
        labelDiskonProdukEmpat.textColor = UIColor.white
        labelDiskonProdukEmpat.font = UIFont.systemFont(ofSize: 10, weight: .heavy)
        
        //MARK: Gambar 5
        produkLima.translatesAutoresizingMaskIntoConstraints = false
        produkLima.setImage(UIImage.init(named: "khusus_5")?.withRenderingMode(.alwaysOriginal), for: .normal)
        produkLima.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        produkLima.layer.masksToBounds = false
        produkLima.layer.cornerRadius = 8
        produkLima.backgroundColor = .clear
        
        view.addSubview(diskonProdukLima)
        diskonProdukLima.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(labelDiskonProdukLima)
        labelDiskonProdukLima.translatesAutoresizingMaskIntoConstraints = false
        labelDiskonProdukLima.text = "51%"
        labelDiskonProdukLima.textColor = UIColor.white
        labelDiskonProdukLima.font = UIFont.systemFont(ofSize: 10, weight: .heavy)
    }
    
    func layout() {
        
        guard let carouselView = carouselView else { return }
        mainStackView.addArrangedSubview(firstStackView)
        mainStackView.addArrangedSubview(secondStackView)
        mainStackView.addArrangedSubview(carouselView)
        mainStackView.addArrangedSubview(thirdStackView)
        mainStackView.addArrangedSubview(fourthStackView)
        mainStackView.addArrangedSubview(fifthStackView)
        mainStackView.addArrangedSubview(label2)
        carouselView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
           
            topStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            topStackView.heightAnchor.constraint(equalToConstant: 40),
            topStackView.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            // MARK: Main Scroll View
            
            mainScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainScrollView.topAnchor.constraint(equalTo: topStackView.bottomAnchor, constant: 8),
            mainScrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),

            mainStackView.leadingAnchor.constraint(equalTo: mainScrollView.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: mainScrollView.trailingAnchor),
            mainStackView.topAnchor.constraint(equalTo: mainScrollView.topAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: mainScrollView.bottomAnchor),
            
            // this is important for scrolling
            mainStackView.widthAnchor.constraint(equalTo: mainScrollView.widthAnchor),
            
            //MARK: First StackView
            firstStackView.heightAnchor.constraint(equalToConstant: 24),
            
            locationButton.widthAnchor.constraint(equalToConstant: 16),
            locationButton.heightAnchor.constraint(equalToConstant: 16),
            locationButton.centerYAnchor.constraint(equalTo: firstStackView.centerYAnchor),
            locationButton.leadingAnchor.constraint(equalTo: firstStackView.leadingAnchor, constant: 14),

            dikirimKe.centerYAnchor.constraint(equalTo: firstStackView.centerYAnchor),
            dikirimKe.leadingAnchor.constraint(equalTo: locationButton.trailingAnchor, constant: 5),

            namaKota.centerYAnchor.constraint(equalTo: dikirimKe.centerYAnchor),
            namaKota.leadingAnchor.constraint(equalTo: dikirimKe.trailingAnchor, constant: 3),

            dropdownButton.widthAnchor.constraint(equalToConstant: 16),
            dropdownButton.heightAnchor.constraint(equalToConstant: 16),
            dropdownButton.centerYAnchor.constraint(equalTo: firstStackView.centerYAnchor),
            dropdownButton.leadingAnchor.constraint(equalTo: namaKota.trailingAnchor, constant: 4),
            
            //MARK: Second StackView
            secondStackView.heightAnchor.constraint(equalToConstant: 32),
            
            tokopediaIconCircle.widthAnchor.constraint(equalToConstant: 32),
            tokopediaIconCircle.heightAnchor.constraint(equalToConstant: 32),
            tokopediaIconCircle.leadingAnchor.constraint(equalTo: secondStackView.leadingAnchor, constant: 16),
            tokopediaIconCircle.centerYAnchor.constraint(equalTo: secondStackView.centerYAnchor),
            
            masukButton.trailingAnchor.constraint(equalTo: secondStackView.trailingAnchor, constant: -16),
            masukButton.widthAnchor.constraint(equalToConstant: 100),
            masukButton.heightAnchor.constraint(equalToConstant: 32),
            masukButton.centerYAnchor.constraint(equalTo: secondStackView.centerYAnchor),
            
            tokopediaIconCircle.centerYAnchor.constraint(equalTo: secondStackView.centerYAnchor),
            
            haiTopper.topAnchor.constraint(equalTo: secondStackView.topAnchor, constant: 0),
            haiTopper.leadingAnchor.constraint(equalTo: tokopediaIconCircle.trailingAnchor, constant: 12),

            aksesLabel.bottomAnchor.constraint(equalTo: secondStackView.bottomAnchor),
            aksesLabel.leadingAnchor.constraint(equalTo: tokopediaIconCircle.trailingAnchor, constant: 12),
            
            // MARK: Third Stack View
            thirdStackView.heightAnchor.constraint(equalToConstant: 155),
            
            thirdStackView.widthAnchor.constraint(equalTo: mainScrollView.widthAnchor),
            
            // MARK: Scroll View
            horizontalScrollView.heightAnchor.constraint(equalToConstant: 155),
            horizontalScrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            horizontalScrollView.topAnchor.constraint(equalTo: carouselView.bottomAnchor, constant: 12),
            horizontalScrollView.leadingAnchor.constraint(equalTo:view.leadingAnchor),
            horizontalScrollView.trailingAnchor.constraint(equalTo:view.trailingAnchor),
            
            //MARK: Gambar 1
            gambar1.heightAnchor.constraint(equalToConstant: 52),
            gambar1.leadingAnchor.constraint(equalTo: horizontalScrollView.leadingAnchor, constant: 24),
            gambar1.topAnchor.constraint(equalTo: horizontalScrollView.topAnchor, constant: 4),
            gambar1.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 2
            gambar2.heightAnchor.constraint(equalToConstant: 52),
            gambar2.leadingAnchor.constraint(equalTo: gambar1.trailingAnchor, constant: 10),
            gambar2.topAnchor.constraint(equalTo: horizontalScrollView.topAnchor, constant: 4),
            gambar2.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 3
            gambar3.heightAnchor.constraint(equalToConstant: 52),
            gambar3.leadingAnchor.constraint(equalTo: gambar2.trailingAnchor, constant: 10),
            gambar3.topAnchor.constraint(equalTo: horizontalScrollView.topAnchor, constant: 4),
            gambar3.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 4
            gambar4.heightAnchor.constraint(equalToConstant: 52),
            gambar4.leadingAnchor.constraint(equalTo: gambar3.trailingAnchor, constant: 10),
            gambar4.topAnchor.constraint(equalTo: horizontalScrollView.topAnchor, constant: 4),
            gambar4.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 5
            gambar5.heightAnchor.constraint(equalToConstant: 52),
            gambar5.leadingAnchor.constraint(equalTo: gambar4.trailingAnchor, constant: 10),
            gambar5.topAnchor.constraint(equalTo: horizontalScrollView.topAnchor, constant: 4),
            gambar5.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 6
            gambar6.heightAnchor.constraint(equalToConstant: 52),
            gambar6.leadingAnchor.constraint(equalTo: gambar5.trailingAnchor, constant: 10),
            //gambar6.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            gambar6.topAnchor.constraint(equalTo: horizontalScrollView.topAnchor, constant: 4),
            gambar6.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 7
            gambar7.heightAnchor.constraint(equalToConstant: 52),
            gambar7.leadingAnchor.constraint(equalTo: gambar6.trailingAnchor, constant: 10),
            gambar7.topAnchor.constraint(equalTo: horizontalScrollView.topAnchor, constant: 4),
            gambar7.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 8
            gambar8.heightAnchor.constraint(equalToConstant: 52),
            gambar8.leadingAnchor.constraint(equalTo: gambar7.trailingAnchor, constant: 10),
            gambar8.topAnchor.constraint(equalTo: horizontalScrollView.topAnchor, constant: 4),
            gambar8.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 9
            gambar9.heightAnchor.constraint(equalToConstant: 52),
            gambar9.leadingAnchor.constraint(equalTo: gambar8.trailingAnchor, constant: 10),
            gambar9.topAnchor.constraint(equalTo: horizontalScrollView.topAnchor, constant: 4),
            gambar9.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 10
            gambar10.heightAnchor.constraint(equalToConstant: 52),
            gambar10.leadingAnchor.constraint(equalTo: gambar9.trailingAnchor, constant: 10),
            gambar10.trailingAnchor.constraint(equalTo: horizontalScrollView.trailingAnchor),
            gambar10.topAnchor.constraint(equalTo: horizontalScrollView.topAnchor, constant: 4),
            gambar10.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 11
            gambar11.leadingAnchor.constraint(equalTo: horizontalScrollView.leadingAnchor, constant: 24),
            gambar11.topAnchor.constraint(equalTo: gambar1.bottomAnchor, constant: 24),
            gambar11.heightAnchor.constraint(equalToConstant: 52),
            gambar11.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 12
            gambar12.leadingAnchor.constraint(equalTo: gambar11.trailingAnchor, constant: 10),
            gambar12.topAnchor.constraint(equalTo: gambar2.bottomAnchor, constant: 24),
            gambar12.heightAnchor.constraint(equalToConstant: 52),
            gambar12.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 13
            gambar13.leadingAnchor.constraint(equalTo: gambar12.trailingAnchor, constant: 10),
            gambar13.topAnchor.constraint(equalTo: gambar3.bottomAnchor, constant: 24),
            gambar13.heightAnchor.constraint(equalToConstant: 52),
            gambar13.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 14
            gambar14.leadingAnchor.constraint(equalTo: gambar13.trailingAnchor, constant: 10),
            gambar14.topAnchor.constraint(equalTo: gambar4.bottomAnchor, constant: 24),
            gambar14.heightAnchor.constraint(equalToConstant: 52),
            gambar14.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 15
            gambar15.leadingAnchor.constraint(equalTo: gambar14.trailingAnchor, constant: 10),
            gambar15.topAnchor.constraint(equalTo: gambar5.bottomAnchor, constant: 24),
            gambar15.heightAnchor.constraint(equalToConstant: 52),
            gambar15.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 16
            gambar16.leadingAnchor.constraint(equalTo: gambar15.trailingAnchor, constant: 10),
            gambar16.topAnchor.constraint(equalTo: gambar6.bottomAnchor, constant: 24),
            gambar16.heightAnchor.constraint(equalToConstant: 52),
            gambar16.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 17
            gambar17.leadingAnchor.constraint(equalTo: gambar16.trailingAnchor, constant: 10),
            gambar17.topAnchor.constraint(equalTo: gambar7.bottomAnchor, constant: 24),
            gambar17.heightAnchor.constraint(equalToConstant: 52),
            gambar17.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 18
            gambar18.leadingAnchor.constraint(equalTo: gambar17.trailingAnchor, constant: 10),
            gambar18.topAnchor.constraint(equalTo: gambar8.bottomAnchor, constant: 24),
            gambar18.heightAnchor.constraint(equalToConstant: 52),
            gambar18.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 19
            gambar19.leadingAnchor.constraint(equalTo: gambar18.trailingAnchor, constant: 10),
            gambar19.topAnchor.constraint(equalTo: gambar9.bottomAnchor, constant: 24),
            gambar19.heightAnchor.constraint(equalToConstant: 52),
            gambar19.widthAnchor.constraint(equalToConstant: 52),
            
            //MARK: Gambar 20
            gambar20.leadingAnchor.constraint(equalTo: gambar19.trailingAnchor, constant: 10),
            gambar20.topAnchor.constraint(equalTo: gambar10.bottomAnchor, constant: 24),
            gambar20.trailingAnchor.constraint(equalTo: horizontalScrollView.trailingAnchor),
            gambar20.heightAnchor.constraint(equalToConstant: 52),
            gambar20.widthAnchor.constraint(equalToConstant: 52),
            
            // MARK: Fourth Stack View
            fourthStackView.heightAnchor.constraint(equalToConstant: 36),
            
            secondLabel.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: -1),
            secondLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            
            labelDetailButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            labelDetailButton.heightAnchor.constraint(equalToConstant: 32),
            labelDetailButton.widthAnchor.constraint(equalToConstant: 32),
            labelDetailButton.centerYAnchor.constraint(equalTo: firstLabel.centerYAnchor, constant: 10),
            
            // MARK: Fifth Stack View
            fifthStackView.heightAnchor.constraint(equalToConstant: 230),
            
            secondScrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            gambarBackground.heightAnchor.constraint(equalToConstant: 230),

            //MARK: Gambar 1
            produkSatu.heightAnchor.constraint(equalToConstant: 198),
            produkSatu.leadingAnchor.constraint(equalTo: secondScrollView.leadingAnchor, constant: 156),
            produkSatu.topAnchor.constraint(equalTo: secondScrollView.topAnchor, constant: 16),
            produkSatu.widthAnchor.constraint(equalToConstant: 132),
            
            diskonProdukSatu.topAnchor.constraint(equalTo: produkSatu.topAnchor, constant: 4),
            diskonProdukSatu.leadingAnchor.constraint(equalTo: produkSatu.leadingAnchor, constant: -5),
            
            labelDiskonProdukSatu.centerXAnchor.constraint(equalTo: diskonProdukSatu.centerXAnchor),
            labelDiskonProdukSatu.centerYAnchor.constraint(equalTo: diskonProdukSatu.centerYAnchor, constant: -3),
            
            
            //MARK: Gambar 2
            produkDua.heightAnchor.constraint(equalToConstant: 198),
            produkDua.leadingAnchor.constraint(equalTo: produkSatu.trailingAnchor, constant: 10),
            produkDua.topAnchor.constraint(equalTo: secondScrollView.topAnchor, constant: 16),
            produkDua.widthAnchor.constraint(equalToConstant: 132),
            
            diskonProdukDua.topAnchor.constraint(equalTo: produkDua.topAnchor, constant: 4),
            diskonProdukDua.leadingAnchor.constraint(equalTo: produkDua.leadingAnchor, constant: -5),
            
            labelDiskonProdukDua.centerXAnchor.constraint(equalTo: diskonProdukDua.centerXAnchor),
            labelDiskonProdukDua.centerYAnchor.constraint(equalTo: diskonProdukDua.centerYAnchor, constant: -3),
            
            //MARK: Gambar 3
            produkTiga.heightAnchor.constraint(equalToConstant: 198),
            produkTiga.leadingAnchor.constraint(equalTo: produkDua.trailingAnchor, constant: 10),
            produkTiga.topAnchor.constraint(equalTo: secondScrollView.topAnchor, constant: 16),
            produkTiga.widthAnchor.constraint(equalToConstant: 132),
            
            diskonProdukTiga.topAnchor.constraint(equalTo: produkTiga.topAnchor, constant: 4),
            diskonProdukTiga.leadingAnchor.constraint(equalTo: produkTiga.leadingAnchor, constant: -5),
            
            labelDiskonProdukTiga.centerXAnchor.constraint(equalTo: diskonProdukTiga.centerXAnchor),
            labelDiskonProdukTiga.centerYAnchor.constraint(equalTo: diskonProdukTiga.centerYAnchor, constant: -3),
            
            //MARK: Gambar 4
            produkEmpat.heightAnchor.constraint(equalToConstant: 198),
            produkEmpat.leadingAnchor.constraint(equalTo: produkTiga.trailingAnchor, constant: 10),
            produkEmpat.topAnchor.constraint(equalTo: secondScrollView.topAnchor, constant: 16),
            produkEmpat.widthAnchor.constraint(equalToConstant: 132),
            
            diskonProdukEmpat.topAnchor.constraint(equalTo: produkEmpat.topAnchor, constant: 4),
            diskonProdukEmpat.leadingAnchor.constraint(equalTo: produkEmpat.leadingAnchor, constant: -5),
            
            labelDiskonProdukEmpat.centerXAnchor.constraint(equalTo: diskonProdukEmpat.centerXAnchor),
            labelDiskonProdukEmpat.centerYAnchor.constraint(equalTo: diskonProdukEmpat.centerYAnchor, constant: -3),
            
            //MARK: Gambar 5
            produkLima.heightAnchor.constraint(equalToConstant: 198),
            produkLima.leadingAnchor.constraint(equalTo: produkEmpat.trailingAnchor, constant: 10),
            produkLima.trailingAnchor.constraint(equalTo: secondScrollView.trailingAnchor),
            produkLima.topAnchor.constraint(equalTo: secondScrollView.topAnchor, constant: 16),
            produkLima.widthAnchor.constraint(equalToConstant: 132),
            
            diskonProdukLima.topAnchor.constraint(equalTo: produkLima.topAnchor, constant: 4),
            diskonProdukLima.leadingAnchor.constraint(equalTo: produkLima.leadingAnchor, constant: -5),
            
            labelDiskonProdukLima.centerXAnchor.constraint(equalTo: diskonProdukLima.centerXAnchor),
            labelDiskonProdukLima.centerYAnchor.constraint(equalTo: diskonProdukLima.centerYAnchor, constant: -3),
            
            carouselView.heightAnchor.constraint(equalToConstant: 138),
            label2.heightAnchor.constraint(equalToConstant: 50),


        ])
    }
}

// MARK: - CarouselViewDelegate

extension Home: CarouselViewDelegate {
    func currentPageDidChange(to page: Int) {
        UIView.animate(withDuration: 0.7) {
            //self.view.backgroundColor = self.backgroundColors[page]
        }
    }
}


extension Home {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}


// MARK: Method to each top bar button (Mail, Bell, Cart, Menu)
extension Home {
    @objc func tapMail() {
        navigationController?.pushViewController(Inbox(), animated: true)
    }
    
    @objc func tapBell() {
        navigationController?.pushViewController(Notifikasi(), animated: true)
    }
    
    @objc func tapCart() {
        navigationController?.pushViewController(Keranjang(), animated: true)
    }
    
    @objc func tapMenu() {
        let transition = CATransition()
            transition.duration = 0.4
            transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
            transition.type = CATransitionType.moveIn
            transition.subtype = CATransitionSubtype.fromTop
            self.navigationController?.view.layer.add(transition, forKey: nil)
        navigationController?.pushViewController(Menu(), animated: false)
    }
    
    @objc func tapButton() {
        navigationController?.pushViewController(HomeSubView(), animated: true)
    }
    
    @objc func tapLogin() {
        navigationController?.pushViewController(Login(), animated: true)
    }
}



// MARK: method for hide keyboard on tap anywhere
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension UITextField {

    /// set icon of 20x20 with left padding of 8px
    func setLeftIcon(_ icon: UIImage) {

        let padding = 8
        let size = 16

        let outerView = UIView(frame: CGRect(x: 0, y: 0, width: size+padding, height: size) )
        let iconView  = UIImageView(frame: CGRect(x: padding, y: 0, width: size, height: size))
        iconView.image = icon
        outerView.addSubview(iconView)

        leftView = outerView
        leftViewMode = .always
    }
}
