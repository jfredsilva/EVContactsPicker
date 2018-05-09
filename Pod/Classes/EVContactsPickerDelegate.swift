//
//  EVContactsPickerDelegate.swift
//  Pods
//
//  Created by Edward Valentini on 9/19/15.
//
//

import Foundation

public protocol EVContactsPickerDelegate: class  {
    func didChooseAddContact() -> Void
    func didChooseContacts(_ contacts: [EVContactProtocol]? ) -> Void
    func didChooseContacts(_ contacts: [EVContactProtocol]?, manualContacts: [ContactStruct]? ) -> Void
    func shouldShowContact(_ contact: EVContactProtocol) -> Bool
}

extension EVContactsPickerDelegate {
    public func shouldShowContact(_ contact: EVContactProtocol) -> Bool {
        return true
    }
}
