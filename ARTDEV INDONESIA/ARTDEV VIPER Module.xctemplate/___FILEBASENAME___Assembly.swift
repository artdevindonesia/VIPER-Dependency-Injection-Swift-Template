//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ARTDEV INDONESIA. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import Foundation
import Swinject

class ___VARIABLE_productName:identifier___Assembly: Assembly {
	
	func assemble(container: Container) {
		container.register(___VARIABLE_productName:identifier___ViewController.self) { (r, parameters: ___VARIABLE_productName:identifier___Model.Request) in
			let view = ___VARIABLE_productName:identifier___ViewController()
			let presenter = r.resolve(I___VARIABLE_productName:identifier___Presenter.self, argument: view as I___VARIABLE_productName:identifier___ViewController)!
			presenter.parameters = parameters
			view.presenter = presenter
			return view
		}
		
		container.register(I___VARIABLE_productName:identifier___Presenter.self) { (r, view: I___VARIABLE_productName:identifier___ViewController) in
			let interactor = r.resolve(I___VARIABLE_productName:identifier___Interactor.self)!
			let wireframe = r.resolve(I___VARIABLE_productName:identifier___Wireframe.self, argument: view as! ___VARIABLE_productName:identifier___ViewController)!
			let presenter = ___VARIABLE_productName:identifier___Presenter(interactor: interactor, wireframe: wireframe, view: view)
			interactor.delegate = presenter
			return presenter
		}
		
		container.register(I___VARIABLE_productName:identifier___Interactor.self) { r in
			let manager = r.resolve(I___VARIABLE_productName:identifier___DataManager.self)!
			return ___VARIABLE_productName:identifier___Interactor(manager: manager)
		}
		
		container.register(I___VARIABLE_productName:identifier___Wireframe.self) { (r, view: ___VARIABLE_productName:identifier___ViewController) in
			return ___VARIABLE_productName:identifier___Wireframe(view: view)
		}
		
		container.register(I___VARIABLE_productName:identifier___DataManager.self) { r in
			return ___VARIABLE_productName:identifier___DataManager()
		}
	}
}