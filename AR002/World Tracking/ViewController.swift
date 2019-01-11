//
//  ViewController.swift
//  AR002
//
//  Created by Milan Todorovic on 1/10/19.
//  Copyright © 2019 Milan Todorovic. All rights reserved.
//

import UIKit
import ARKit
class ViewController: UIViewController {
    
    @IBOutlet weak var sceneView: ARSCNView!
    let configuration = ARWorldTrackingConfiguration()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints, ARSCNDebugOptions.showWorldOrigin]
        self.sceneView.session.run(configuration)
    }


    @IBAction func add(_ sender: Any) {
        let node = SCNNode()
        node.geometry = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0)
        node.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        node.position = SCNVector3(-0.5,-0.2,-0.5)
        self.sceneView.scene.rootNode.addChildNode(node)
        
        node.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "trava.jpg")
        
        let node2 = SCNNode()
        node2.geometry = SCNTorus(ringRadius: 0.4, pipeRadius: 0.2)
        node2.geometry?.firstMaterial?.diffuse.contents =  UIImage(named: "2.jpg")//UIColor.green
        node2.position = SCNVector3(0, 0, 0)
        self.sceneView.scene.rootNode.addChildNode(node2)
        
        let node3 = SCNNode()
        node3.geometry = SCNCapsule(capRadius: 0.05, height: 0.3)
        node3.geometry?.firstMaterial?.diffuse.contents = UIColor.yellow
        node3.position = SCNVector3(0.5, 0.2, -0.5)
        self.sceneView.scene.rootNode.addChildNode(node3)
        


        
    }
    
    
}

