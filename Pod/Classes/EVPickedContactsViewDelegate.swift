//
//  EVPickedContactsViewDelegate.swift
//  Pods
//
//  Created by Edward Valentini on 8/29/15.
//
//

import Foundation

protocol EVPickedContactsViewDelegate {
    func contactPickerTextViewDidChange(_ textViewText: String) -> Void
    func contactPickerDidRemoveContact(_ contact: EVContactProtocol) -> Void
    func contactPickerDidRemoveCPTContact(_ contact: String) -> Void
    func contactPickerDidResize(_ pickedContactView: EVPickedContactsView) -> Void
}
