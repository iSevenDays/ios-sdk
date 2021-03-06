// Auto-generated code. Do not edit.

import Foundation
import DLJSONAPI

// MARK: - ASwapBidRequestDetailsResource

open class ASwapBidRequestDetailsResource: RequestDetailsResource {
    
    open override class var resourceType: String {
        return "request-details-aswap-bid"
    }
    
    public enum CodingKeys: String, CodingKey {
        // attributes
        case baseAmount
        case creatorDetails
        
        // relations
        case baseBalance
        case quoteAssets
    }
    
    // MARK: Attributes
    
    open var baseAmount: Decimal {
        return self.decimalOptionalValue(key: CodingKeys.baseAmount) ?? 0.0
    }
    
    open var creatorDetails: [String: Any] {
        return self.dictionaryOptionalValue(key: CodingKeys.creatorDetails) ?? [:]
    }
    
    // MARK: Relations
    
    open var baseBalance: BalanceResource? {
        return self.relationSingleOptionalValue(key: CodingKeys.baseBalance)
    }
    
    open var quoteAssets: [QuoteAssetResource]? {
        return self.relationCollectionOptionalValue(key: CodingKeys.quoteAssets)
    }
    
}
