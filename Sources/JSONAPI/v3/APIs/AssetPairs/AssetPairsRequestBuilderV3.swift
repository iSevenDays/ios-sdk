import Foundation

/// Class provides functionality that allows to build requests
/// which are used to fetch asset pairs
public class AssetPairsRequestBuilderV3: JSONAPI.BaseApiRequestBuilder {
    
    // MARK: - Public properties
    
    public let assetPairs = "asset_pairs"
    
    // MARK: - Public
    
    /// Builds request to fetch asset pairs from api
    /// - Parameters:
    /// - Returns: `RequestModel`.
    public func buildAssetPairsRequest(
        sendDate: Date = Date()
        ) -> JSONAPI.RequestModel {
        
        let path = /self.v3/self.assetPairs
        
        // TODO: Check signing required
        return self.buildRequest(
            JSONAPI.BaseRequestBuildModel.simple(
                path: path,
                method: .get
            )
        )
    }
    
    /// Builds request to fetch asset pairs from api
    /// - Parameters:
    ///   - baseAsset: Base asset in pair
    ///   - quoteAsset: Quote asset in pair
    /// - Returns: `RequestModel`.
    public func buildAssetPairRequest(
        baseAsset: String,
        quoteAsset: String,
        sendDate: Date = Date()
        ) -> JSONAPI.RequestModel {
        
        let path = /self.v3/self.assetPairs/"\(baseAsset)-\(quoteAsset)"
        
        // TODO: Check signing required
        return self.buildRequest(
            JSONAPI.BaseRequestBuildModel.simple(
                path: path,
                method: .get
            )
        )
    }
}
