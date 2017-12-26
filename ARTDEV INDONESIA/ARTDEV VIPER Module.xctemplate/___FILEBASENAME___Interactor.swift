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

protocol ___VARIABLE_productName:identifier___InteractorDelegate: class {
	
}

protocol I___VARIABLE_productName:identifier___Interactor: class {
	var delegate: ___VARIABLE_productName:identifier___InteractorDelegate? { get set }
}

class ___VARIABLE_productName:identifier___Interactor: I___VARIABLE_productName:identifier___Interactor {
	
	var manager: I___VARIABLE_productName:identifier___DataManager?
	var delegate: ___VARIABLE_productName:identifier___InteractorDelegate?
	
	init(manager: I___VARIABLE_productName:identifier___DataManager) {
		self.manager = manager
	}
}