//
//  SpriteLayer.h
//  Pollen
//
//  Created by Eric Nelson on 5/1/14.
//  Copyright (c) 2014 bathtubindustries. All rights reserved.
//

#import "cocos2d.h"

@class GameplayScene;
@class TreeLayer;
@class PlayerSprite;

@interface SpriteLayer : CCLayer {
    //references
    CGSize size;
    GameplayScene *scene;
    TreeLayer *bgLayer;
    
    //members
    PlayerSprite* player;
}

//setters
-(void) setScene:(GameplayScene*)s;
-(void) setBackgroundLayer:(TreeLayer*)l;

//update
-(void) update:(ccTime)dt;

@end
