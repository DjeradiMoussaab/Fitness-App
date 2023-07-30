//
//  CreateViewModel.swift
//  Fitness App
//
//  Created by Moussaab Djeradi on 30/7/2023.
//

import Foundation

protocol DropdownOptionProtocol {
    var toDropdownOption: DropdownOption { get }
}

protocol DropdownItemProtocol {
    var options: [DropdownOption] { get }
    var headerTitle: String { get }
    var dropdownTitle: String { get }
    var isSelected: Bool { get set }
}

struct DropdownOption {
    enum DropdownOptionType {
        case text(String)
        case number(Int)
    }
    
    let type: DropdownOptionType
    let formatted: String
    let isSelected: Bool
}

final class CreateViewModel: ObservableObject {
    @Published var dropdowns : [DropdownItemViewModel] = [
        .init(type: .exercice),
        .init(type: .startAmount),
        .init(type: .increase),
        .init(type: .length)]
}


extension CreateViewModel {
    struct DropdownItemViewModel: DropdownItemProtocol {
        var options: [DropdownOption]
        var headerTitle: String {
            type.rawValue
        }
        var dropdownTitle: String {
            options.first(where: { $0.isSelected })?.formatted ?? ""
        }
        var isSelected: Bool = false
        private let type: ChallengeItemType
        
        init(type: ChallengeItemType) {
            switch type {
            case .exercice:
                self.options = ExerciceOptions.allCases.map {  $0.toDropdownOption }
            case .startAmount:
                self.options = StartAmountOptions.allCases.map { $0.toDropdownOption }
            case .increase:
                self.options = IncreaseOptions.allCases.map { $0.toDropdownOption }
            case .length:
                self.options = LengthOptions.allCases.map { $0.toDropdownOption }
            }
            self.type = type
        }
        
        enum ChallengeItemType: String {
            case exercice
            case startAmount
            case increase
            case length
        }
        
        enum ExerciceOptions: String, CaseIterable, DropdownOptionProtocol {
            case pullups
            case pushups
            case situps
            
            var toDropdownOption: DropdownOption {
                .init(type: .text(rawValue), formatted: rawValue.capitalized , isSelected: self == .pullups)
            }
        }
        
        enum StartAmountOptions: Int, CaseIterable, DropdownOptionProtocol {
            case one = 1, two, three, four, five
            
            var toDropdownOption: DropdownOption {
                .init(type: .number(rawValue), formatted: "\(rawValue)" , isSelected: self == .one)
            }
        }
        
        enum IncreaseOptions: Int, CaseIterable, DropdownOptionProtocol {
            case one = 1, two, three, four, five
            
            var toDropdownOption: DropdownOption {
                .init(type: .number(rawValue), formatted: "+\(rawValue)" , isSelected: self == .one)
            }
        }
        
        enum LengthOptions: Int, CaseIterable, DropdownOptionProtocol {
            case oneWeek = 7, twoWeeks = 14, threeWeeks = 21, fourWeeks = 28
            
            var toDropdownOption: DropdownOption {
                .init(type: .number(rawValue), formatted: "\(rawValue) days" , isSelected: self == .oneWeek)
            }
        }
    }
}
