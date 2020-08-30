//
//  FriendsTableViewController.swift
//  HomeWork
//
//  Created by Никита Дмитриев on 23.08.2020.
//  Copyright © 2020 Никита Дмитриев. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    var myFriends: [Friend] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        
        tableView.delegate = self
        generateFriends()
    }
    
    private func generateFriends() {
        let myFirstFriend = Friend(name: "Nikita", age: 27, imageName: "s1200")
        let myFirstFriend1 = Friend(name: "Vlad", age: 27, imageName: "leopard-tigr-ataka-koshki")
        let myFirstFriend2 = Friend(name: "Kate", age: 27, imageName: "310873-Lastochka_1920x1200")
        myFriends.append(myFirstFriend)
        myFriends.append(myFirstFriend1)
        myFriends.append(myFirstFriend2)
        
        tableView.reloadData()
    }
    // MARK: - Table view data source
    
    //override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    //   return 0
    //}
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myFriends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellKey", for: indexPath) as! FriendsTableViewCell
        let friend = myFriends[indexPath.row]
        cell.configure(for: friend)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedFriend = myFriends[indexPath.row]
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "CollectionViewControllerKey") as! FriendsCollectionViewController
        vc.selectedModel = selectedFriend
        self.show(vc, sender: nil)
        print(indexPath.row)
    }
}





