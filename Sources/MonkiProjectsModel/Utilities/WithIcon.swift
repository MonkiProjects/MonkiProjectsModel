//
//  WithIcon.swift
//  MonkiProjectsModel
//
//  Created by Rémi Bardon on 01/10/2020.
//  Copyright © 2020 Monki Projects. All rights reserved.
//

// MARK: - Protocol

public protocol WithIcon {
	
	var iconName: String? { get }
	
}

// MARK: - UIKit

#if canImport(UIKit)
import UIKit

extension WithIcon {
	
	/// Icons from [Icons8](https://icons8.com)
	@available(iOS 13.0, *)
	public var uiIcon: UIImage? {
		if let imageName = self.iconName {
			return UIImage(named: imageName, in: .fixedModule, compatibleWith: nil)
		} else {
			return nil
		}
	}
	
}
#endif

// MARK: - SwiftUI

#if canImport(SwiftUI)
import SwiftUI

extension WithIcon {
	
	/// Icons from [Icons8](https://icons8.com)
	@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
	public var icon: Image? {
		if let imageName = self.iconName {
			return Image(imageName, bundle: .fixedModule)
		} else {
			return nil
		}
	}
	
}
#endif
