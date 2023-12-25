//
//  ModuleFactory.swift
//  Food
//
//  Created by Aleksei Tsibrovskii on 02.12.2023.
//

import Foundation
import UIKit

class ModuleFactory {

    func make() -> UIViewController {
        let viewModel = ViewModel()

        let vc = ViewController(
            viewModel: viewModel,
            searchViewController: SearchViewControllerFactory().make()
        )
        viewModel.view = vc
        return vc
    }
}
