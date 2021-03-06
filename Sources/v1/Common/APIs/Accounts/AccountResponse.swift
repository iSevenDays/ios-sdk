import Foundation

public struct AccountResponse: Decodable {
    
    public let accountId: String
    public let balances: [Balance]
    public let externalSystemAccounts: [ExternalSystemAccount]
    public let referrals: [Referral]?
    public let roleId: UInt32
}

extension AccountResponse {
    
    public struct Balance {
        
        public let locked: Decimal
        public let asset: String
        public let balance: Decimal
        public let balanceId: String
    }
}

extension AccountResponse {
    
    public struct ExternalSystemAccount {
        
        public typealias ValueRawValue = UInt32
        
        public let type: ExternalSystemAccountType
        public let assetCode: String?
        public let data: String
        public let expiresAt: Date?
    }
}

extension AccountResponse.ExternalSystemAccount {
    
    public struct ExternalSystemAccountType: Decodable {
        
        public let name: String?
        public let value: ValueRawValue
    }
}

extension AccountResponse {
    
    public typealias AccountTypeRawValue = Int
    public struct Referral: Decodable {
        
        public let accountId: String
        private let accountTypeI: AccountTypeRawValue
        
        public var accountType: AccountType? {
            return AccountType(rawValue: self.accountTypeI)
        }
    }
}

extension AccountResponse {
    
    public enum AccountType: AccountTypeRawValue {
        case operational        = 1
        case general            = 2
        case commission         = 3
        case master             = 4
        case notVerified        = 5
        case syndicate          = 6
        case exchange           = 7
    }
}

// MARK: - Decodables

extension AccountResponse.Balance: Decodable {
    enum CodingKeys: String, CodingKey {
        case locked
        case asset
        case balance
        case balanceId
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.locked = try container.decodeDecimalString(key: .locked)
        self.balance = try container.decodeDecimalString(key: .balance)
        self.asset = try container.decode(String.self, forKey: .asset)
        self.balanceId = try container.decode(String.self, forKey: .balanceId)
    }
}

extension AccountResponse.ExternalSystemAccount: Decodable {
    enum CodingKeys: String, CodingKey {
        case type
        case assetCode
        case data
        case expiresAt
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.type = try container.decode(ExternalSystemAccountType.self, forKey: .type)
        self.data = try container.decode(String.self, forKey: .data)
        self.assetCode = try container.decodeIfPresent(String.self, forKey: .assetCode)
        self.expiresAt = container.decodeOptionalDateString(key: .expiresAt)
    }
}
