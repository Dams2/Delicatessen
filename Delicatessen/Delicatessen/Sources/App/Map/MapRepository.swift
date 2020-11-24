//
//  MapRepository.swift
//  Delicatessen
//
//  Created by Damien Rojo on 14.11.20.
//  Copyright © 2020 Chimere.io LTD. All rights reserved.
//

import Foundation
import DLNetwork

protocol MapRepositoryType: class {
    func getMerchants(callback: @escaping (MerchantsResponse) -> Void)
}

final class MapRepository: MapRepositoryType {
    
    let client: HTTPClientType

    let token = RequestCancellationToken()

    init(client: HTTPClientType) {
        self.client = client
    }
    
    func getMerchants(callback: @escaping (MerchantsResponse) -> Void) {
        let stringURL = "http://134.209.113.122/api/merchants"
        guard let url = URL(string: stringURL) else { return }
        client.request(type: MerchantsResponse.self,
                       requestType: .GET,
                       url: url,
                       cancelledBy: token,
                       completion: { merchants in
                        callback(merchants)
        })
    }
}
