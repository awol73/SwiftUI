//
//  ContentView.swift
//  CustomRows
//
//  Created by Angel Del Negro on 08/03/2023.
//

import SwiftUI

struct ContentView: View {
    //
    var body: some View {
        List {
            ForEach(weatherData) { data in
                WeatherRow(weather: data)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
