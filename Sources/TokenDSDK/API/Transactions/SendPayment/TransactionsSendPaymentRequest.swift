import Foundation

public struct TransactionsSendPaymentRequest {
    public let url: String
    public let method: RequestMethod
    public let parameters: RequestParameters
    public let parametersEncoding: RequestParametersEncoding = .jsonEncoding
    public let signedHeaders: RequestHeaders
}
