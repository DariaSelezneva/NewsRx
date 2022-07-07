//
//  NewsTableViewCell.swift
//  NewsRx
//
//  Created by dunice on 07.07.2022.
//

import UIKit
import SnapKit

class NewsTableViewCell: UITableViewCell {
    
    var isEditable: Bool = false {
        didSet {
            editButton.isHidden = !isEditable
        }
    }

    static let reuseIdentifier = "NewsCell"
    
    let postImageView = UIImageView()
    let titleLabel = UILabel()
    let descriprionLabel = UILabel()
    let userButton = UIButton()
    let tagsView = TagsView()
    let editButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initialSetup() {
        setupLayout()
        setupSubviews()
    }
    
    private func setupLayout() {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        contentView.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.edges.equalTo(contentView.layoutMarginsGuide)
        }
        stackView.addArrangedSubview(postImageView)
        postImageView.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(stackView)
        }
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(descriprionLabel)
        let horizontalStackView = UIStackView()
        stackView.addArrangedSubview(horizontalStackView)
        horizontalStackView.axis = .horizontal
        horizontalStackView.alignment = .center
        horizontalStackView.distribution = .equalSpacing
        horizontalStackView.addArrangedSubview(userButton)
        horizontalStackView.addArrangedSubview(tagsView)
        horizontalStackView.addArrangedSubview(editButton)
    }
    
    private func setupSubviews() {
        
    }
    
    func update(with post: Post) {
        postImageView.loadImageFromURL(post.image)
        titleLabel.text = post.title
        descriprionLabel.text = post.text
        userButton.setTitle("@" + post.username, for: .normal)
    }
}
