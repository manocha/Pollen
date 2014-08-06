//
//  GameOverLayer.h
//  PollenBug
//
//  Created by Eric Nelson on 5/19/14.
//  Copyright (c) 2014 bathtubindustries. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"

@interface GameOverLayer : CCLayer <GKLeaderboardViewControllerDelegate> 
@property float playerScore;
-(id) initWithScore: (float)score;
- (void) showLeaderboard;
- (void) leaderboardViewControllerDidFinish: (GKLeaderboardViewController *)viewController;
+(CCScene*) sceneWithScore:(float)prevScore;
+(CCScene*) scene;
@end
