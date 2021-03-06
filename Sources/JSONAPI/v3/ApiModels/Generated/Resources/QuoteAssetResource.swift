// Auto-generated code. Do not edit.

import Foundation
import DLJSONAPI

// MARK: - QuoteAssetResource

open class QuoteAssetResource: Resource {
    
    open override class var resourceType: String {
        return "quote-assets"
    }
    
    public enum CodingKeys: String, CodingKey {
        // attributes
        case price
        
        // relations
        case asset
    }
    
    // MARK: Attributes
    
    open var price: Decimal {
        return self.decimalOptionalValue(key: CodingKeys.price) ?? 0.0
    }
    
    // MARK: Relations
    
    open var asset: AssetResource? {
        return self.relationSingleOptionalValue(key: CodingKeys.asset)
    }
    
}
