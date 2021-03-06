//
//  CartViewModel.swift
//  Delicatessen
//
//  Created by Bertrand BLOC'H on 25/11/2020.
//  Copyright © 2020 Chimere.io LTD. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

struct CartViewModel {

    // MARK: - Properties

    enum Item {
        case product(ProductViewModel)
    }

    // MARK: - Outputs

    struct Outputs {
        let title: Observable<String>
        let items: Observable<[Item]>
    }

    // MARK: - Inputs

    struct Inputs {
        let viewIsLoaded: Observable<Void>
    }

    // MARK: - Transform

    func transform(inputs: Inputs) -> Outputs {
        return Outputs(title: .just("Coucou"), items: .just([.product(.init(name: "Lemon", price: "3€"))]))
    }
}
