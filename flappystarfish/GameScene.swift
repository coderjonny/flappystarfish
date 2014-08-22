//

//  GameScene.swift

//  NancyBirdSwift

//

//  Created by Nancy Kim on 8/18/14.

//  Copyright (c) 2014 Bloc. All rights reserved.

//



import SpriteKit



class GameScene: SKScene {
    
    
    
    var star = SKSpriteNode ()
    
    var skyColor = SKColor()
    
    
    
    override func didMoveToView(view: SKView) {
        
        /* Setup your scene here */
        
        //Physics
        
        self.physicsWorld.gravity = CGVectorMake(0.0, -5.0);
        
        
        
        //Background
        
        
        
        skyColor = SKColor (red: 113.0/255.0, green: 197.0/255.0, blue: 207.0/255.0, alpha: 1.0)
        
        self.backgroundColor = skyColor
        
        
        
        //Star images
        
        var StarTexture1 = SKTexture (imageNamed:"star-1")
        
        StarTexture1.filteringMode = SKTextureFilteringMode.Nearest
        
        var StarTexture2 = SKTexture (imageNamed:"star-2")
        
        StarTexture2.filteringMode = SKTextureFilteringMode.Nearest
        
        var StarTexture3 = SKTexture (imageNamed:"star-3")
        
        StarTexture3.filteringMode = SKTextureFilteringMode.Nearest
        
        
        
        var animation = SKAction.animateWithTextures([StarTexture1, StarTexture2, StarTexture3], timePerFrame: 0.2)
        
        var swim = SKAction.repeatActionForever(animation)
        
        
        
        star = SKSpriteNode(texture: StarTexture1)
        
        star.position = CGPoint(x: self.frame.size.width/2.8, y: CGRectGetMidY(self.frame))
        
        star.runAction(swim)
        
        
        
        self.addChild(star)
        
        
        
        
        
        //add a ground for the star fish
        
        var groundTexture = SKTexture (imageNamed:"ground")
        
        
        
        var sprite = SKSpriteNode(texture:groundTexture)
        
        sprite.setScale(1.7)
        
        sprite.position = CGPointMake(self.size.width/2,sprite.size.height/2.0)
        
        self.addChild(sprite) //adds image of sprite
        
    }
    
    var skylineTexture = SKTexture (imageNamed:"skyline")
    
    
    
}













//adds physics to ground node



//now let's make the star swim up when poked!







func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
    
    /* Called when a touch begins */
    
    
    
    for touch: AnyObject in touches {
        
        
        
        
        
    }
    
    
    
    func update(currentTime: CFTimeInterval) {
        
        /* Called before each frame is rendered */
        
    }
    
}