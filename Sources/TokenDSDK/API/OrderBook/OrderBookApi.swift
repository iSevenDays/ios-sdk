import Foundation

/// Class provides functionality that allows to fetch order books
public class OrderBookApi: BaseApi {
    let requestBuilder: OrderBookRequestBuilder
    
    public override init(apiStack: BaseApiStack) {
        self.requestBuilder = OrderBookRequestBuilder(
            builderStack: BaseApiRequestBuilderStack.fromApiStack(apiStack)
        )
        
        super.init(apiStack: apiStack)
    }
    
    /// Model that will be fetched in completion block of `OrderBookApi.requestOrderBook(...)`
    public enum RequestOrderBookResult {
        
        /// Case of successful response with list of `OrderBookResponse`
        case success(orderBook: [OrderBookResponse])
        
        /// Case of failed response with `ApiErrors` model
        case failure(ApiErrors)
    }
    
    /// Method sends request to order book.
    /// The result of request will be fetched in `completion` block as `OrderBookApi.RequestOrderBookResult`
    /// - Parameters:
    ///   - sendDate: Send time of request.
    ///   - parameters: Order book parameters.
    ///   - completion: Block that will be called when the result will be received.
    ///   - result: Member of `OrderBookApi.RequestOrderBookResult`
    /// - Returns: `CancellableToken`
    @discardableResult
    public func requestOrderBook(
        parameters: OrderBookRequestParameters?,
        sendDate: Date = Date(),
        completion: @escaping (_ result: RequestOrderBookResult) -> Void
        ) -> CancellableToken {
        
        let request = self.requestBuilder.buildOrderBookRequest(
            parameters: parameters,
            sendDate: sendDate
        )
        
        return self.network.responseObject(
            RequestResultPage<OrderBookEmbedded>.self,
            url: request.url,
            method: request.method,
            parameters: request.parameters,
            encoding: request.parametersEncoding,
            headers: request.signedHeaders,
            completion: { (result) in
                switch result {
                    
                case .success(let object):
                    completion(.success(orderBook: object.embedded.records))
                    
                case .failure(let errors):
                    completion(.failure(errors))
                }
        })
    }
}
