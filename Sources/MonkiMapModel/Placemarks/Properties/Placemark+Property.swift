//
//  Placemark+Property.swift
//  MonkiMapModel
//
//  Created by Rémi Bardon on 05/02/2021.
//  Copyright © 2021 Monki Projects. All rights reserved.
//

import Foundation
import MonkiProjectsModel

extension Placemark {
	
	// A property a placemark could have
	public struct Property: Hashable, Identifiable {
		
		public let kind: Kind
		public let id: String
		
		public init(kind: Kind, id: String) {
			self.kind = kind
			self.id = id
		}
		
	}
	
}

extension Placemark.Property: Codable {
	
	internal enum CodingKeys: String, CodingKey {
		case kind, id
	}
	
}
