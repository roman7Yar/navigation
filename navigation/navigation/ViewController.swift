//
//  ViewController.swift
//  navigation
//
//  Created by Roman Yarmoliuk on 01.12.2022.
//

import SpriteKit
import UIKit

<<<<<<< HEAD

=======
>>>>>>> d790a7a7ecabcdb7ab0d69214e306831f2bf0e15
class GameScene: SKScene {
    override func sceneDidLoad() {
        backgroundColor = .darkGray
        
        if let particles = SKEmitterNode(fileNamed: "snow") {
            particles.position.y = 800
            particles.position.x = 200
            addChild(particles)
        }
    }
}

<<<<<<< HEAD
class SparkGameScene: SKScene {
=======
class SecondGameScene: SKScene {
>>>>>>> d790a7a7ecabcdb7ab0d69214e306831f2bf0e15
    override func sceneDidLoad() {
        backgroundColor = .darkGray
        
        if let particles = SKEmitterNode(fileNamed: "spark") {
            particles.position.y = 600
            particles.position.x = 200
            addChild(particles)
        }
        
    }
}

<<<<<<< HEAD
//class MovingSparkGameScene: SKScene {
//    override func sceneDidLoad() {
//        backgroundColor = .darkGray
//        
//        if let particles = SKEmitterNode(fileNamed: "spark") {
////        particles.addChild(emitter!)
//            particles.position.y = 600
//            particles.position.x = 200
//            addChild(particles)
//        }
//        
//    }
//}

=======
>>>>>>> d790a7a7ecabcdb7ab0d69214e306831f2bf0e15
class FireGameScene: SKScene {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self)
            if let particles = SKEmitterNode(fileNamed: "fire") {
                particles.position.y = location.y
                particles.position.x = location.x
                addChild(particles)
            }
        }
    }
    
    override func sceneDidLoad() {
        backgroundColor = .darkGray

    }
}


<<<<<<< HEAD
//class SecondParticlesViewController: UIViewController {
//
//    @IBAction func startAnimation(_ sender: UIButton) {
//        if let view = self.view as? SKView {
//            let scene = SecondGameScene(size: view.bounds.size)
//            scene.scaleMode = .aspectFill
//            view.ignoresSiblingOrder = true
//            view.showsFPS = false
//            view.showsNodeCount = false
//            view.showsPhysics = false
//
//            view.presentScene(scene)
//        }
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }
//}

//class FirstParticlesViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        if let view = self.view as? SKView {
//            let scene = GameScene(size: view.bounds.size)
//            scene.scaleMode = .aspectFill
//            view.ignoresSiblingOrder = true
//            view.showsFPS = false
//            view.showsNodeCount = false
//            view.showsPhysics = false
//
//            view.presentScene(scene)
//        }
//    }
//}

class ParticlesViewController: UIViewController, UIGestureRecognizerDelegate {
    
    var sceneType = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect(x: 8, y: 50, width: 50, height: 25))
        button.setTitle("Back", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        self.view.addSubview(button)
        
        
        
        if let view = self.view as? SKView {
            let scene: SKScene
            
            switch sceneType {
            case "red":
                scene = FireGameScene(size: view.bounds.size)
            case "blue":
                scene = GameScene(size: view.bounds.size)
            case "yellow":
                let button = UIButton(frame: CGRect(x: 145, y: 700, width: 110, height: 30))
                button.backgroundColor = .brown
                button.layer.cornerRadius = 10
                button.setTitle("Do a spark", for: .normal)
                button.addTarget(self, action: #selector(buttonAction2), for: .touchUpInside)

                self.view.addSubview(button)
                scene = SparkGameScene(size: view.bounds.size)
            default: fatalError()
            }
            
=======
class SecondParticlesViewController: UIViewController {
    
    @IBAction func startAnimation(_ sender: UIButton) {
        if let view = self.view as? SKView {
            let scene = SecondGameScene(size: view.bounds.size)
            scene.scaleMode = .aspectFill
            view.ignoresSiblingOrder = true
            view.showsFPS = false
            view.showsNodeCount = false
            view.showsPhysics = false
            
            view.presentScene(scene)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

class FirstParticlesViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as? SKView {
            let scene = GameScene(size: view.bounds.size)
>>>>>>> d790a7a7ecabcdb7ab0d69214e306831f2bf0e15
            scene.scaleMode = .aspectFill
            view.ignoresSiblingOrder = true
            view.showsFPS = false
            view.showsNodeCount = false
            view.showsPhysics = false
            
            view.presentScene(scene)
        }
    }
<<<<<<< HEAD
    @objc func buttonAction(sender: UIButton!) {
        self.dismiss(animated: true, completion: nil)
    }
    @objc func buttonAction2(sender: UIButton!) {
        if let view = self.view as? SKView {
            let scene = SparkGameScene(size: view.bounds.size)
=======
}

class FireParticlesViewController: UIViewController, UIGestureRecognizerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as? SKView {
            let scene = FireGameScene(size: view.bounds.size)
>>>>>>> d790a7a7ecabcdb7ab0d69214e306831f2bf0e15
            scene.scaleMode = .aspectFill
            view.ignoresSiblingOrder = true
            view.showsFPS = false
            view.showsNodeCount = false
            view.showsPhysics = false
<<<<<<< HEAD

            view.presentScene(scene)
        }
    }
    
=======
            
            view.presentScene(scene)
        }
    }
>>>>>>> d790a7a7ecabcdb7ab0d69214e306831f2bf0e15
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
<<<<<<< HEAD
// Do any additional setup after loading the view.
    }

    @IBAction func blueTapped(_ sender: Any) {
        showVC(vcName: "blue")
    }
    
    @IBAction func yellowTapped(_ sender: Any) {
        showVC(vcName: "yellow")
    }
    
    @IBAction func redTapped(_ sender: Any) {
        showVC(vcName: "red")
    }
    
    func showVC(vcName: String) {
       
        let story = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc = story.instantiateViewController(withIdentifier: "particls")
        let particlsVC = vc as? ParticlesViewController
        particlsVC!.sceneType = vcName
        particlsVC!.modalPresentationStyle = .fullScreen
        present(particlsVC!, animated: true)
//        navigationController?.pushViewController(particlsVC, animated: true)
    }
    
}


//1 попробувати робити робити переходи без сторібордів

//let story = UIStoryboard(name: "Main", bundle: nil)
//let vc = story.instantiateViewController(withIdentifier: "particls")
//navigationController?.pushViewController(vc, animated: true)
//
//2 попробувати робити без навігейшн контроллера (презентом) і фул скрін

//vc.modalPresentationStyle = .overFullScreen
//present(vc, animated: true)

//тут треба буде продумати навігацію назад
=======
        // Do any additional setup after loading the view.
    }


}
>>>>>>> d790a7a7ecabcdb7ab0d69214e306831f2bf0e15

