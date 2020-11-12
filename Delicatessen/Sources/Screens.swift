//
//  Screens.swift
//  Delicatessen
//
//  Created by Damien Rojo on 10.11.20.
//  Copyright © 2020 Chimere.io LTD. All rights reserved.
//

import UIKit

public class Screens {
    
    let context: Context
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle(for: Screens.self))

    init(
        context: Context
    ) {
       self.context = context
    }
}

extension Screens {
    func createMapViewController(actions: MapViewModel.Actions) -> UIViewController {
        let viewController = storyboard.instantiateViewController(withIdentifier: "MapViewController") as! MapViewController
        let viewModel = MapViewModel(actions: actions)
        viewController.viewModel = viewModel
        return viewController
    }
}

extension Screens {
    func createShopDescriptionViewController(actions: ShopDescriptionViewModel.Actions) -> UIViewController {
        let viewController = storyboard.instantiateViewController(identifier: "ShopDescriptionViewController") as! ShopDescriptionViewController
        let viewModel = ShopDescriptionViewModel(actions: actions)
        viewController.viewModel = viewModel
        return viewController
    }
}

extension Screens {
    func createCategoriesViewController() -> UIViewController {
        let viewController = storyboard.instantiateViewController(identifier: "CategoriesViewController") as! CategoriesViewController
        return viewController
    }
}
