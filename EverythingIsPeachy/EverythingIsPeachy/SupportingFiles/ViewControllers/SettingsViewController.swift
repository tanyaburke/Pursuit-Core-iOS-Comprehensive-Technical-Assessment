//
//  SettingsViewController.swift
//  EverythingIsPeachy
//
//  Created by Tanya Burke on 3/17/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//

import UIKit
import FirebaseAuth
import Kingfisher


enum viewState {
    case ticketMaster
    case museum
}

class SettingsViewController: UIViewController {

   private lazy var imagePickerController: UIImagePickerController = {
          let imagePicker = UIImagePickerController()
          imagePicker.delegate = self
          return imagePicker
      }()
    
    private var selectedImage: UIImage? {
           didSet{
//               profileImageView.image = selectedImage
           }
       }
       
       private let storageService = StorageService()
//       private var databaseService = DatabaseService()
       
//       private var viewState: ViewState = .myItems {
//           didSet {
//               DispatchQueue.main.async {
//                   self.tableView.reloadData()
//               }
//           }
//       }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGroupedBackground
    }
    

    
//        private func updateDatabaseUser(displayName: String, photoURL: String) {
//            databaseService.updateDatabaseUser(displayName: displayName, photoURL: photoURL) { (result) in
//
//                switch result {
//                case .failure(let error):
//                    print("bleep: \(error)")
//                case .success:
//                    print("blop")
//                }
//            }
//        }
        
        
//        @IBAction func updateProfileButtonPressed(_ sender: UIButton) {
//
//            guard let displayName = displayNameTextField.text, !displayName.isEmpty, let selectedImage = selectedImage else {
//                print("missing fields")
//                return
//            }
//            //resize image before uploading to Firebase
//            let resizedImage = UIImage.resizeImage(originalImage: selectedImage, rect: profileImageView.bounds)
//
//            print("orig \(selectedImage.size) not orig \(resizedImage)")
//
//            guard let user = Auth.auth().currentUser else {
//                return
//            }
//            storageService.uploadPhoto(userID: user.uid, image: resizedImage) { [weak self] (result) in
//                switch result {
//                case .failure(let error):
//                    DispatchQueue.main.async {
//                        self?.showAlert(title: "Error uploading photo", message: "\(error.localizedDescription)")
//                    }
//                case .success(let url):
//                    self?.updateDatabaseUser(displayName: displayName, photoURL: url.absoluteString)
//                    //TODO: refactor into its own function
//                    let request = Auth.auth().currentUser?.createProfileChangeRequest()
//                    request?.displayName = displayName
//                    request?.photoURL = url
//                    //get kingfisher to update image in updateui
//                    request?.commitChanges(completion: { [weak self] error in
//
//                        if let error = error {
//                            DispatchQueue.main.async {
//                                self?.showAlert(title: "Error updating profile", message: "Error changing profile error: \(error.localizedDescription)")
//                            }
//                        } else {
//                            DispatchQueue.main.async {
//                                self?.showAlert(title: "Profile Update", message: "Profile successfully updated")
//                            }
//                        }
//                    })
//                }
//            }
//        }
//
//        @IBAction func editProfilePhotoButtonPressed(_ sender: UIButton) {
//            let alertController = UIAlertController(title: "Choose photo option", message: nil, preferredStyle: .actionSheet)
//            let cameraAction = UIAlertAction(title: "Camera", style: .default) {
//                alertAction in
//                self.imagePickerController.sourceType = .camera
//                self.present(self.imagePickerController, animated: true)
//            }
//            let photolibraryAction = UIAlertAction(title: "Photo Library", style: .default) {
//                alertAction in
//                self.imagePickerController.sourceType = .photoLibrary
//                self.present(self.imagePickerController, animated: true)
//            }
//            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//
//            if UIImagePickerController.isSourceTypeAvailable(.camera) {
//                alertController.addAction(cameraAction)
//            }
//            alertController.addAction(photolibraryAction)
//            alertController.addAction(cancelAction)
//            present(alertController, animated: true)
//        }
//
//        @IBAction func signOutButtonPressed(_ sender: UIButton) {
//            do {
//                try Auth.auth().signOut()
//                UIViewController.showViewController(storyBoardName: "LoginView", viewControllerId: "LoginViewController")
//            } catch {
//                DispatchQueue.main.async {
//                    self.showAlert(title: "Error signing out", message: "\(error.localizedDescription)")
//                }
//            }
//        }
        
//        @IBAction func segmentedControlPressed(_ sender: UISegmentedControl) {
//            //toggle current viewState
//
//            switch sender.selectedSegmentIndex {
//            case 0:
//                viewState = .ticketMaster
//
//            case 1:
//                viewState = .museum
//            default:
//                break
//            }
//
//        }
//
    }

extension SettingsViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

extension SettingsViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            return
        }
        selectedImage = image
        dismiss(animated: true)
    }
}

