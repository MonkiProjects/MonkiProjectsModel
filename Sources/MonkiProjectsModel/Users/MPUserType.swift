//
//  MPUserType.swift
//  MonkiProjectsModel
//
//  Created by BARDON Rémi on 23/06/2020.
//  Copyright © 2020 Monki Projects. All rights reserved.
//

import Foundation

public enum MPUserType: String, Codable, Hashable, DefaultCaseDecodable {
	
	public static let defaultCase: Self = .user
	
	case user, bot
	
	public var title: String {
		switch self {
		case .user:
			return NSLocalizedString("USER_TYPE_USER", bundle: .fixedModule, comment: "")
		case .bot:
			return NSLocalizedString("USER_TYPE_BOT", bundle: .fixedModule, comment: "")
		}
	}
	
}

/// Extend for testing purposes
extension MPUserType: CaseIterable {}