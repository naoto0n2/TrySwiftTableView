//
//  DataType.swift
//  TrySwiftTableView
//
//  Created by 小梛 直人 on 3/2/16.
//  Copyright © 2016 Naoto Onagi. All rights reserved.
//

import Foundation

protocol DataType {
    var numberOfItems: Int { get }
    func addNewItemAtIndex(index: Int) -> Self
    func deleteItemAtIndex(index: Int) -> Self
    func moveItem(fromIndex: Int, toIndex: Int) -> Self
}