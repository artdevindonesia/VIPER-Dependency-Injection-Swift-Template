//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ARTDEV INDONESIA. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import UIKit

protocol I___VARIABLE_productName:identifier___Presenter: class {
	var parameters: ___VARIABLE_productName:identifier___Model.Request? { get set }
}

class ___VARIABLE_productName:identifier___Presenter: I___VARIABLE_productName:identifier___Presenter {
	
	var interactor: I___VARIABLE_productName:identifier___Interactor?
	var wireframe: I___VARIABLE_productName:identifier___Wireframe?
	weak var view: I___VARIABLE_productName:identifier___ViewController?
	var parameters: ___VARIABLE_productName:identifier___Model.Request?
	
	init(interactor: I___VARIABLE_productName:identifier___Interactor, wireframe: I___VARIABLE_productName:identifier___Wireframe, view: I___VARIABLE_productName:identifier___ViewController) {
		self.interactor = interactor
		self.wireframe = wireframe
		self.view = view
	}
}

extension ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___InteractorDelegate {
	
}
