//
//  NewsItem.swift
//  StretchMyHeader
//
//  Created by Olga on 11/7/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

import Foundation
import UIKit

struct NewsItem {
    
    enum NewsCategory {
        case World
        case Americas
        case Europe
        case MiddleEast
        case Africa
        case AsiaPacicic
        
        func toString() -> String {
            switch self {
            case .World:
                return "World"
            case .Americas:
                return "Americas"
            case .Europe:
                return "Europe"
            case .MiddleEast:
                return "Middle East"
            case .Africa:
                return "Africa"
            case .AsiaPacicic:
                return "Asia Pacific"
            }
        }
    }
}

func getCategoryColor() -> UIColor {
    switch self {
    case .World:
        return UIColor.red
    case .Americas:
        return UIColor.blue
    case .Europe:
        return UIColor.green
    case .MiddleEast:
        return UIColor.yellow
    case .Africa:
        return UIColor.orange
    case .AsiaPacicic:
        return UIColor.purple
    }
   
    let category: NewsCategory
    let headline: String
    
}
