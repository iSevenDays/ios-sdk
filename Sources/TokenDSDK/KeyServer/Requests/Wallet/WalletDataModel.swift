import Foundation

public struct WalletDataModel {
    
    public let email: String
    public let accountId: String
    public let walletId: String
    public let type: String
    public let keychainData: String
    public let walletKDF: WalletKDFParams
    public let verified: Bool
    
    // MARK: -
    
    public init(
        email: String,
        accountId: String,
        walletId: String,
        type: String,
        keychainData: String,
        walletKDF: WalletKDFParams,
        verified: Bool
        ) {
        
        self.email = email
        self.accountId = accountId
        self.walletId = walletId
        self.type = type
        self.keychainData = keychainData
        self.walletKDF = walletKDF
        self.verified = verified
    }
    
    public static func fromResponse(_ response: WalletDataResponse, walletKDF: WalletKDFParams) -> WalletDataModel {
        return WalletDataModel(
            email: response.attributes.email,
            accountId: response.attributes.accountId,
            walletId: response.id,
            type: response.type,
            keychainData: response.attributes.keychainData,
            walletKDF: walletKDF,
            verified: response.attributes.verified
        )
    }
}
