//
//  SchedulerViewController.swift
//  SDDP-iFit-Team3
//
//  Created by 183129H  on 6/22/20.
//  Copyright © 2020 SDDP_Team3. All rights reserved.
//

import UIKit

class SchedulerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var testData: [Schedule] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "Scheduler"
        self.testData = [
            Schedule(name: "Push Up", duration: [0, 5], day: 0, time: [10, 0]),
            Schedule(name: "Jumping Jacks", duration: [0, 10], day: 0, time: [10, 30]),
            Schedule(name: "Skipping Rope", duration: [1, 10], day: 0, time: [12, 50])
        ]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.testData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScheduleCell", for: indexPath)
        let schedule = self.testData[indexPath.row]
        
        // Style the duration string
        let duration = (schedule.duration[0] > 0 ? "\(schedule.duration[0]) hrs " : "") + "\(schedule.duration[1]) mins"
        cell.textLabel?.text = "\(schedule.name) - \(duration)"
        
        // Convert from 24 hour to 12 hour time and style the time string
        let timeHour = schedule.time[0]
        let timeMin = schedule.time[1]
        let hourHand = timeHour > 12 ? timeHour - 1 : (timeHour > 0 ? timeHour : 12)
        let minuteHand = timeMin > 10 ? "\(timeMin)" : "0\(timeMin)"
        let timeType = (schedule.time[0] > 11 ? "PM" : "AM")
        
        cell.detailTextLabel?.text =  "\(hourHand):\(minuteHand) \(timeType)"
        
        return cell;
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}