//
//  ViewController.swift
//  BaeMinApp
//
//  Created by KEEN on 2021/09/29.
//

import UIKit

class ViewController: UIViewController {
  
  let menuList: [MenuInfo] = [
    MenuInfo(name: "모노라이더스"),
    MenuInfo(name: "2인분"),
    MenuInfo(name: "모노오더"),
    MenuInfo(name: "한식"),
    MenuInfo(name: "분식"),
    MenuInfo(name: "카페·디저트"),
    MenuInfo(name: "돈까스·회·일식"),
    MenuInfo(name: "치킨"),
    MenuInfo(name: "피자"),
    MenuInfo(name: "아시안·양식"),
    MenuInfo(name: "중국집"),
    MenuInfo(name: "족발·보쌈"),
    MenuInfo(name: "야식"),
    MenuInfo(name: "찜·탕"),
    MenuInfo(name: "도시락"),
    MenuInfo(name: "햄버거")
  ]
  
  @IBOutlet weak var bannerImageView: UIImageView!
  @IBOutlet weak var collectionView: UICollectionView!
  
  override func viewDidLoad() {
      super.viewDidLoad()
      collectionView.delegate = self
      collectionView.dataSource = self
    }
  }

// MARK: UICollectionView Delegate & DataSource
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return menuList.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as! MenuCell
    cell.menuImageView.image = menuList[indexPath.row].image
    cell.menuNameLabel.text = menuList[indexPath.row].name
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let cellPerRow: CGFloat = 4
    guard let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout else { return CGSize() }
    
    let width = collectionView.frame.size.width - (flowLayout.minimumInteritemSpacing * (cellPerRow - 1))
    return CGSize(width: width / cellPerRow, height: width / cellPerRow)
  }
}

