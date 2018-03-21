//
//  StackView.swift
//  StackScrollView
//
//  Created by ireliad on 2018/3/21.
//  Copyright © 2018年 正辰科技. All rights reserved.
//

import UIKit
import SnapKit
import SDWebImage


class StackView: UIButton {
    lazy var memoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = UIColorFromRGB(0xffffff)
        label.layer.shadowOpacity = 1.0
        label.layer.shadowColor = UIColorFromRGB(0x4a4a4a).cgColor
        label.layer.shadowOffset = CGSize(width: 1, height: 1)
        return label
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight(200))
        label.textColor = UIColorFromRGB(0xffffff)
        label.layer.shadowOpacity = 1.0
        label.layer.shadowColor = UIColorFromRGB(0x4a4a4a).cgColor
        label.layer.shadowOffset = CGSize(width: 1, height: 1)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.centerY.equalTo(self.snp.bottom).offset(-50-100)
        }
        
        self.addSubview(memoLabel)
        memoLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.bottom.equalTo(self).offset(-50)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var model: StackModel! {
        willSet(newValue) {
            self.memoLabel.text = newValue.desc
            self.memoLabel.alpha = 0.0
            self.sd_setImage(with: URL(string: newValue.imageUrl!), for: .normal, placeholderImage: #imageLiteral(resourceName: "default"), options: .retryFailed, completed: nil)
            self.nameLabel.text = newValue.title
        }
    }
}

// MARK: - public method
extension StackView {
}

// MARK: - life cycle
extension StackView {
    
}

// MARK: - delegate

// MARK: - event response
extension StackView {
    
}

// MARK: - private method
extension StackView {
    
}
