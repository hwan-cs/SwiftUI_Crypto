//
//  NetworkingManager.swift
//  Swiftful_Crypto
//
//  Created by Jung Hwan Park on 2023/02/27.
//

import Foundation
import Combine

class NetworkingManager
{
    enum NetworkingError: LocalizedError
    {
        case badURLResponse(url: URL)
        case unknown(url: URL)
        
        var errorDescription: String?
        {
            switch self
            {
                case .badURLResponse(url: let url): return "[👎]Bad response from URL: \(url)"
                case .unknown(url: let url): return "[⚠️]Unknown error occured: \(url)"
            }
        }
    }
    
    static func download(url: URL) -> AnyPublisher<Data, Error>
    {
        return URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap
            { (output) -> Data in
                try handleURLResponse(output: output, url: url)
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    static func handleURLResponse(output: URLSession.DataTaskPublisher.Output, url: URL) throws -> Data
    {
        guard let response = output.response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode < 300 else { throw NetworkingError.badURLResponse(url: url) }
        return output.data
    }
    
    static func handleCompletion(completion: Subscribers.Completion<Error>)
    {
        switch completion
        {
            case .finished:
                break
            case .failure(let error):
                print(error.localizedDescription)
        }
    }
}
