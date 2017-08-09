//
//  SongListVC.swift
//  ScreenSwap
//
//  Created by Scott Pelo on 4/12/17.
//  Copyright © 2017 Scott Pelo. All rights reserved.
//

import UIKit

class SongListVC: UIViewController {


	@IBOutlet weak var song1TitleLbl: UILabel!
	@IBOutlet weak var song2TitleLbl: UILabel!
	@IBOutlet weak var song3TitleLbl: UILabel!
	@IBOutlet weak var song4TitleLbl: UILabel!
	@IBOutlet weak var song5TitleLbl: UILabel!
	
	private var _songList: String!
	
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
	var songList :String {
		get {
			return _songList!
		} set {
			_songList = newValue
		}
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()
			song1TitleLbl.text = _songList
	}

}


