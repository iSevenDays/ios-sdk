// Auto-generated code. Do not edit.

import Foundation

public enum RequestDetailsType {
    
    case aSwapBidRequestDetails(_ resource: ASwapBidRequestDetailsResource)
    case amlAlertRequestDetails(_ resource: AmlAlertRequestDetailsResource)
    case assetCreateRequestDetails(_ resource: AssetCreateRequestDetailsResource)
    case assetUpdateREquestDetails(_ resource: AssetUpdateREquestDetailsResource)
    case atomicSwapRequestDetails(_ resource: AtomicSwapRequestDetailsResource)
    case changeRoleRequestDetails(_ resource: ChangeRoleRequestDetailsResource)
    case issuanceRequestDetails(_ resource: IssuanceRequestDetailsResource)
    case limitsUpdateRequestDetails(_ resource: LimitsUpdateRequestDetailsResource)
    case preIssuanceRequestDetails(_ resource: PreIssuanceRequestDetailsResource)
    case saleRequestDetails(_ resource: SaleRequestDetailsResource)
    case updateSaleDetailsRequestDetails(_ resource: UpdateSaleDetailsRequestDetailsResource)
    case withdrawalRequestDetails(_ resource: WithdrawalRequestDetailsResource)
    case `self`(_ resource: RequestDetailsResource)
}

extension RequestDetailsResource {
    
    public var requestDetailsType: RequestDetailsType {
        if let resource = self as? ASwapBidRequestDetailsResource {
            return .aSwapBidRequestDetails(resource)
        } else if let resource = self as? AmlAlertRequestDetailsResource {
            return .amlAlertRequestDetails(resource)
        } else if let resource = self as? AssetCreateRequestDetailsResource {
            return .assetCreateRequestDetails(resource)
        } else if let resource = self as? AssetUpdateREquestDetailsResource {
            return .assetUpdateREquestDetails(resource)
        } else if let resource = self as? AtomicSwapRequestDetailsResource {
            return .atomicSwapRequestDetails(resource)
        } else if let resource = self as? ChangeRoleRequestDetailsResource {
            return .changeRoleRequestDetails(resource)
        } else if let resource = self as? IssuanceRequestDetailsResource {
            return .issuanceRequestDetails(resource)
        } else if let resource = self as? LimitsUpdateRequestDetailsResource {
            return .limitsUpdateRequestDetails(resource)
        } else if let resource = self as? PreIssuanceRequestDetailsResource {
            return .preIssuanceRequestDetails(resource)
        } else if let resource = self as? SaleRequestDetailsResource {
            return .saleRequestDetails(resource)
        } else if let resource = self as? UpdateSaleDetailsRequestDetailsResource {
            return .updateSaleDetailsRequestDetails(resource)
        } else if let resource = self as? WithdrawalRequestDetailsResource {
            return .withdrawalRequestDetails(resource)
        } else {
            return .`self`(self)
        }
    }
}

/*
    switch type {
        
    case .aSwapBidRequestDetails(let resource):
        
        
    case .amlAlertRequestDetails(let resource):
        
        
    case .assetCreateRequestDetails(let resource):
        
        
    case .assetUpdateREquestDetails(let resource):
        
        
    case .atomicSwapRequestDetails(let resource):
        
        
    case .changeRoleRequestDetails(let resource):
        
        
    case .issuanceRequestDetails(let resource):
        
        
    case .limitsUpdateRequestDetails(let resource):
        
        
    case .preIssuanceRequestDetails(let resource):
        
        
    case .saleRequestDetails(let resource):
        
        
    case .updateSaleDetailsRequestDetails(let resource):
        
        
    case .withdrawalRequestDetails(let resource):
        
        
    case .`self`(let resource):
        
    }
*/
