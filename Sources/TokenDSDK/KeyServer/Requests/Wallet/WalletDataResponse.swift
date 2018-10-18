import Foundation
import DLCryptoKit

public struct WalletDataResponse: Decodable {
    
    public let attributes: Attributes
    public let id: String
    public let type: String
    
    public struct Attributes: Decodable {
        
        public let accountId: String
        public let email: String
        public let keychainData: String
        public let verified: Bool
        
        public enum CodingKeys: String, CodingKey {
            case accountId
            case email
            case keychainData
            case verified
        }
    }
}
