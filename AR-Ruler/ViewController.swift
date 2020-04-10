//
//  ViewController.swift
//  AR-Ruler
//
//  Created by Victor on 4/8/20.
//  Copyright © 2020 VicKat. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]
       
      
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Pause the view's session
        sceneView.session.pause()
    
}
 

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      //  print("touch detected")
        if let touchlocation = touches.first?.location(in: sceneView){
            let hitTestResults = sceneView.hitTest(touchlocation, types: .featurePoint)
        }
   }

}
