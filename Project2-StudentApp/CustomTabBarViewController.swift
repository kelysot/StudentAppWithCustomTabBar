//
//  CustomTabBarViewController.swift
//  Project2-StudentApp
//
//  Created by Kely Sotsky on 07/05/2022.
//

import UIKit

class CustomTabBarViewController: UIViewController, MySegueProtocol {
    
    func getVideContainer(identifier: String) -> UIView {
        viewContainer
    }

    @IBOutlet weak var viewContainer: UIView!

    @IBAction func Add(_ sender: Any) {
        viewContainer.addSubview(child1!.view)
    }
    @IBAction func About(_ sender: Any) {
        viewContainer.bringSubviewToFront(child3!.view)
    }
    @IBAction func Home(_ sender: Any) {
        viewContainer.bringSubviewToFront(child2!.view)
    }
    
    var child1:UIViewController?
    var child2:UIViewController?
    var child3:UIViewController?

    enum Segues{
        static let add = "AddSegue"
        static let about = "AboutSegue"
        static let home = "HomeSegue"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        performSegue(withIdentifier: Segues.add, sender: self)
        performSegue(withIdentifier: Segues.about, sender: self)
        performSegue(withIdentifier: Segues.home, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch(segue.identifier){
        case Segues.home:
            child2 = segue.destination
        case Segues.add:
            child1 = segue.destination
        case Segues.about:
            child3 = segue.destination
        default:
            child2 = segue.destination
        }
    }
}

protocol MySegueProtocol{
    func getVideContainer(identifier:String) ->UIView
}

class MySegue: UIStoryboardSegue{
    
    override func perform() {
        source.addChild(destination)
        let parent = source as! MySegueProtocol
        let container = parent.getVideContainer(identifier: identifier ?? "")
        destination.view.frame = container.frame
        destination.view.frame.origin = CGPoint(x: 0, y: 0)
        destination.view.reloadInputViews()
        container.addSubview(destination.view)
    }
}
