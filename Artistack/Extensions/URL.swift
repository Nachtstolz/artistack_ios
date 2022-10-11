//
//  URL.swift
//  Practice_Artistack
//
//  Created by csh on 2022/07/28.
//

import Foundation

extension URL {
    /// Adds the scheme prefix to a copy of the receiver.
    func convertToRedirectURL(scheme: String) -> URL? {
        var components = URLComponents.init(url: self, resolvingAgainstBaseURL: false)
        let schemeCopy = components?.scheme ?? ""
        components?.scheme = schemeCopy + scheme
        return components?.url
    }
    
    /// Removes the scheme prefix from a copy of the receiver.
    func convertFromRedirectURL(prefix: String) -> URL? {
        guard var comps = URLComponents(url: self, resolvingAgainstBaseURL: false) else {return nil}
        guard let scheme = comps.scheme else {return nil}
        comps.scheme = scheme.replacingOccurrences(of: prefix, with: "")
        return comps.url
    }
}
