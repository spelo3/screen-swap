//
//  HomePageVC.swift
//  ScreenSwap
//
//  Created by Scott Pelo on 4/12/17.
//  Copyright © 2017 Scott Pelo. All rights reserved.
//

import UIKit

class HomePageVC: UIViewController {
		
	override func viewDidLoad() {
        super.viewDidLoad()
		
	}
	
	@IBAction func BackBtnPressed(_ sender: Any) {
		dismiss(animated: true, completion: nil)
	
	}

	
	@IBAction func songsBtnPressed(_ sender: Any) {
		let songsPlaylist = "Thrift Shop"
		performSegue(withIdentifier: "SongListVC", sender: songsPlaylist)
		
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let sendSongList = segue.destination as? SongListVC {
			if let song = sender as? String {
				sendSongList.songList = song
				
			}
			
		}
		
	}
	
}

