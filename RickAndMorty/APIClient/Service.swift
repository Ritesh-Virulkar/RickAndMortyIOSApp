//
//  Service.swift
//  RickAndMorty
//
//  Created by Ritesh Virulkar on 10/04/24.
//

import Foundation

/// service  class instantiation
final class Service {
    /// shared singletion instance
    static let shared = Service()
    
    /// privatized initializer
    private init() {}
    
    enum ServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
    }
    
    /// to request the data from rick and morty api
    /// - Parameters:
    ///   - request: request instance
    ///   - type: type of request
    ///   - completion: callback success or error
    public func execute<T: Codable>(
        _ request: Request,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void) {
            guard let urlRequest = self.request(from: request) else {
                completion(.failure(ServiceError.failedToCreateRequest))
                return
            }
            
            let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
                guard let data = data, error == nil else {
                    completion(.failure(error ?? ServiceError.failedToGetData))
                    return
                }
                // decode response data
                do {
                    let result = try JSONDecoder().decode(type.self, from: data)
                    completion(.success(result))
                }catch {
                    completion(.failure(error))
                }
            }
            task.resume()
        }
    
    private func request(from rmRequest: Request) -> URLRequest? {
        guard let url = rmRequest.url else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
    
}
