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
    
    var bgimage = SKSpriteNode ()
    
    
    
    override func didMoveToView(view: SKView) {
        
        /* Setup your scene here */
        
        //Physics
        
        self.physicsWorld.gravity = CGVectorMake(0.0, -5.0);
        
        
        
        //Background
        
        
        
        skyColor = SKColor (red: 108.0/255.0, green: 251.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        
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
        groundTexture.filteringMode = SKTextureFilteringMode.Nearest
        
    
        
        
        //make the ground move
        var moveGroundSprite = SKAction.moveByX(-groundTexture.size().width, y: 0, duration: NSTimeInterval(0.01 * groundTexture.size().width))
        var resetGroundSprite = SKAction.moveByX(groundTexture.size().width, y: 0, duration: 0.0)
        var moveGroundSpriteForever = SKAction.repeatActionForever(SKAction.sequence([moveGroundSprite, resetGroundSprite]))
        
        for var i: CGFloat = 0; i<1 + self.frame.size.width / (groundTexture.size().width); ++i
        {
            var sprite = SKSpriteNode(texture:groundTexture)
            sprite.setScale(2)
            sprite.position = CGPointMake(i * self.size.width/2,sprite.size.height/2.0)
            sprite.runAction(moveGroundSpriteForever)
            self.addChild(sprite)
    
        }
        
        //add a skyline
        var skylineTexture = SKTexture (imageNamed:"skyline")
        skylineTexture.filteringMode = SKTextureFilteringMode.Nearest
        
        //make the sky move!
        var moveSkylineSprite = SKAction.moveByX(-groundTexture.size().width, y: 0, duration: NSTimeInterval(0.01 * groundTexture.size().width))
        var resetSkylineSprite = SKAction.moveByX(groundTexture.size().width, y: 0, duration: 0.0)
        var moveSkylineSpriteForever = SKAction.repeatActionForever(SKAction.sequence([moveSkylineSprite,resetSkylineSprite]))
        
//        for var i: CGFloat = 0; i<+ self.frame.size.width / (skylineTexture.size().width); ++i {
        for var i: CGFloat = 0; i<2 ; ++i {
        var sprite = SKSpriteNode(texture:skylineTexture)
            sprite.zPosition = -20;
            sprite.setScale(2)
//          sprite.position = CGPointMake(i * sprite.size.width, sprite.size.height / 2 + groundTexture.size().height)
            sprite.position = CGPointMake(i * sprite.size.width, sprite.size.height / 2 + groundTexture.size().height)
            sprite.runAction(moveGroundSpriteForever)
            self.addChild(sprite)

        
    }
    

    }

//adds physics to ground node



//now let's make the star swim up when poked!







override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
    
    /* Called when a touch begins */
    
    
    
    for touch: AnyObject in touches {
        
        
        
        
        
    }
    
    
    
    func update(currentTime: CFTimeInterval) {
        
        /* Called before each frame is rendered */
        
    }
}
}
