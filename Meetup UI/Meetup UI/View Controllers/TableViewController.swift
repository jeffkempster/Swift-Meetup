//
//  TableViewController.swift
//  Meetup UI
//
//  Created by Jeffrey P. Kempster on 1/16/18.
//  Copyright © 2018 Jeffrey P. Kempster. All rights reserved.
//

import UIKit

struct Weather {
    let day: String
    let description: String
    let temperature: String
}

class TableViewController: UITableViewController {

    var weatherData: [Weather] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        weatherData = [
            Weather(day: "Monday", description: "Tonight snow showers until 1:00am, followed by a rapid decrease in temperatures. Road will be very slick in the next 24-48 hours.", temperature: "11°"),
            Weather(day: "Tuesday", description: "Cold Tuesday.", temperature: "17°"),
            Weather(day: "Wednesday", description: "Tonight snow showers until 1:00am, followed by a rapid decrease in temperatures. Road will be very slick in the next 24-48 hours.", temperature: "34°"),
        ]
        
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return weatherData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        let weather = weatherData[indexPath.row]
        
        cell.dayLabel.text = weather.day
        cell.temperatureLabel.text = weather.temperature
        cell.descriptionLabel.text = weather.description

        return cell
    }
 


}
