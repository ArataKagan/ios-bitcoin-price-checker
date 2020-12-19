//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "944BF66B-9036-4FD6-8FA4-6B1240DF1037"
    
    func getCoinPrice(for currency:String){
        print(currency)
        let urlString = "https://rest.coinapi.io/v1/exchangerate/BTC/\(currency)?apiKey=944BF66B-9036-4FD6-8FA4-6B1240DF1037"
        performRequest(with: urlString)
        
    }
    
    func performRequest(with urlString: String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url){(data, response, error) in
                if error != nil {
                    return
                }
                if let safeData = data {
                    print("Inside of performRequest ", safeData)
                }
            }
            task.resume()
        }
    }
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    
}
