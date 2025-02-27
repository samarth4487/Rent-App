//
//  Car.swift
//  RentApp
//
//  Created by Samarth Paboowal on 27/02/25.
//


struct Car {
    let slug: String
    let name: String
    let distance: String
    let variant: Variant
    let hourlyRate: String
}


// MARK: - Mock Data for Car
extension Car {
    static let mock = Car(
        slug: "fortuner_gr",
        name: "Fortuner GR",
        distance: "> 870km",
        variant: .fuel("50L"),
        hourlyRate: "$45/h"
    )
    
    static let mockList = [
        Car(
            slug: "tesla-model-s",
            name: "Tesla Model S",
            distance: "> 4km",
            variant: .fuel("50L"),
            hourlyRate: "$30/h"
        ),
        Car(
            slug: "bmw-i8",
            name: "BMW i8",
            distance: "> 8km",
            variant: .electric("80%"),
            hourlyRate: "$45/h"
        ),
        Car(
            slug: "audi-e-tron",
            name: "Audi e-tron",
            distance: "> 12km",
            variant: .electric("80%"),
            hourlyRate: "$35/h"
        ),
        Car(
            slug: "ionic_5",
            name: "Ionic 5",
            distance: "> 16km",
            variant: .electric("80%"),
            hourlyRate: "$35/h"
        )
    ]
}
