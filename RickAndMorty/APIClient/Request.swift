//
//  Request.swift
//  RickAndMorty
//
//  Created by Ritesh Virulkar on 10/04/24.
//

import Foundation

final class Request {
    
    /// base url
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: Endpoint
    private let pathComponents: [String] // /product/iphone/1
    private let queryParameters: [URLQueryItem] // /iphone?name=iphone14&model=plus
    
    /// constructng url string according to the need
    private var urlString: String{
        var string = Constants.baseURL
        string += "/" + endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach {
                string += "/\($0)"
            }
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    /// request instantiation
    /// - Parameters:
    ///   - endpoint: endpoints
    ///   - pathComponents: path components if any
    ///   - queryParameters: query parameters if any
    init(endpoint: Endpoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}

extension Request {
    static let getAllCharactersRequest = Request(endpoint: .character)
}
