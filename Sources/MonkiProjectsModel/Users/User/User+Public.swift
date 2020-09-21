//
//  User+Public.swift
//  MonkiProjectsModel
//
//  Created by BARDON Rémi on 08/06/2020.
//  Copyright © 2020 Monki Projects. All rights reserved.
//

import Foundation

extension User {
	
	public enum Public {
		
		public struct Small: Codable, Hashable {
			
			public let id: UUID
			public let username: String
			public let displayName: String
			public let url: URL
			public let avatar: AvatarSource?
			public let country: String?
			public let type: UserType
			public let updatedAt: Date
			
			public init(
				id: UUID = UUID(),
				username: String,
				displayName: String,
				url: URL,
				avatar: AvatarSource? = nil,
				country: String? = nil,
				type: UserType = .user,
				updatedAt: Date = Date()
			) {
				self.id = id
				self.username = username
				self.displayName = displayName
				self.url = url
				self.avatar = avatar
				self.country = country
				self.type = type
				self.updatedAt = updatedAt
			}
			
			public static func == (lhs: Self, rhs: Self) -> Bool {
				return lhs.id == rhs.id
			}
			
		}
		
		public struct Full: Codable, Hashable {
			
			public let id: UUID
			public let username: String
			public let displayName: String
			public let bio: String?
			public let url: URL
			public let htmlUrl: URL
			public let avatar: AvatarSource?
			public let experience: UserExperiences
			public let country: String?
			public let location: String?
			public let socials: UserSocials
			public let type: UserType
			public let createdAt: Date
			public let updatedAt: Date
			
			public init(
				id: UUID = UUID(),
				username: String,
				displayName: String,
				bio: String? = nil,
				url: URL,
				htmlUrl: URL,
				avatar: AvatarSource? = nil,
				experience: UserExperiences = .init(),
				country: String? = nil,
				location: String? = nil,
				socials: UserSocials = .init(),
				type: UserType = .user,
				createdAt: Date = Date(),
				updatedAt: Date = Date()
			) {
				self.id = id
				self.username = username
				self.displayName = displayName
				self.bio = bio
				self.url = url
				self.htmlUrl = htmlUrl
				self.avatar = avatar
				self.experience = experience
				self.country = country
				self.location = location
				self.socials = socials
				self.type = type
				self.createdAt = createdAt
				self.updatedAt = updatedAt
			}
			
			public static func == (lhs: Self, rhs: Self) -> Bool {
				return lhs.id == rhs.id
			}
			
		}
		
	}
	
}
