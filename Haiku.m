//
//  Haiku.m
//  PollenBug
//
//  Created by Eric Nelson on 5/24/14.
//  Copyright (c) 2014 bathtubindustries. All rights reserved.
//

#import "Haiku.h"

@implementation Haiku

//
- (id) initWithDictionary:(NSDictionary *) dict
{
    if (self = [super initWithFile:@"haikuUI.png"])
    {
        CGSize size = [CCDirector sharedDirector].winSize;
        float heightScale = size.height/480;
        float widthScale = (size.width/(320));
        if (dict)
        {
            
            self.firstLine = [dict objectForKey:@"firstLine"];
            self.secondLine = [dict objectForKey:@"secLine"];
            self.thirdLine = [dict objectForKey:@"thirdLine"];
            self.firstInit = [dict objectForKey:@"firstInit"];
            self.secInit = [dict objectForKey:@"secInit"];
            NSString * approval = [dict objectForKey:@"approved"];
            self.approved = ([approval isEqualToString:@"yes"]);
            
            CCLabelTTF* line1 = [CCLabelTTF labelWithString:self.firstLine fontName:@"GunnyRewritten" fontSize:27*widthScale];
            
            line1.anchorPoint = ccp(0, 1);
            line1.position = ccp(self.contentSize.width/8, self.contentSize.height*.65);
            [self addChild: line1];
            [line1 setColor:ccc3(57, 37, 23)];
            if (line1.contentSize.width > self.contentSize.width*.85)
            {
                line1.fontSize=21*widthScale;
                //line1.position=CGPointMake(line1.position.x+(2/line1.contentSize.width), line1.position.y);
            }
            
            CCLabelTTF* line2 = [CCLabelTTF labelWithString:self.secondLine fontName:@"GunnyRewritten" fontSize:27*widthScale];
            if (line2.contentSize.width > self.contentSize.width*.9)
            {
                line2.fontSize=21*widthScale;
                
            }
            

            line2.anchorPoint = ccp(0, 1);
            line2.position = ccp(line1.position.x-7*widthScale, line1.position.y-22*heightScale);
            [self addChild: line2];
            [line2 setColor:ccc3(57, 37, 23)];
            
            CCLabelTTF* line3 = [CCLabelTTF labelWithString:self.thirdLine fontName:@"GunnyRewritten" fontSize:27*widthScale];
            
            line3.anchorPoint = ccp(0, 1);
            line3.position = ccp(line1.position.x, line2.position.y-20*heightScale);
            [self addChild: line3];
            [line3 setColor:ccc3(57, 37, 23)];
            if (line3.contentSize.width > self.contentSize.width*.85)
            {
                line3.fontSize=21*widthScale;
                
            }
            

            CCLabelTTF* init1 = [CCLabelTTF labelWithString:[[[[@"-" stringByAppendingString:self.firstInit] stringByAppendingString:@"."] stringByAppendingString:self.secInit] stringByAppendingString:@"."]fontName:@"GunnyRewritten" fontSize:30*widthScale];
            init1.anchorPoint = ccp(0, 1);
            init1.position = ccp(self.contentSize.width/3, line3.position.y-20*heightScale);
            [self addChild: init1];
            [init1 setColor:ccc3(57, 37, 23)];
            
        }
    }
    return self;
}

- (id) initWithHaiku:(Haiku *) copy
{
    if (self = [super initWithFile:@"haikuUI.png"])
    {
        CGSize size = [CCDirector sharedDirector].winSize;
        float heightScale = size.height/480;
        float widthScale = (size.width/(320));
        if (copy)
        {
            self.firstInit = copy.firstInit;
            self.secInit = copy.secInit;
            self.firstLine = copy.firstLine;
            self.secondLine = copy.secondLine;
            self.thirdLine = copy.thirdLine;
            
            CCLabelTTF* line1 = [CCLabelTTF labelWithString:self.firstLine fontName:@"GunnyRewritten" fontSize:20*widthScale];
            
            line1.anchorPoint = ccp(0, 1);
            line1.position = ccp(self.contentSize.width/8, self.contentSize.height*.65);
            [self addChild: line1];
            [line1 setColor:ccc3(57, 37, 23)];
            if (line1.contentSize.width > self.contentSize.width*.85)
            {
                line1.fontSize=16*widthScale;
            }
            
            CCLabelTTF* line2 = [CCLabelTTF labelWithString:self.secondLine fontName:@"GunnyRewritten" fontSize:20* widthScale];
            if (line2.contentSize.width > self.contentSize.width*.9)
            {
                line2.fontSize=16*widthScale;
            }
            line2.anchorPoint = ccp(0, 1);
            line2.position = ccp(line1.position.x-7*widthScale, line1.position.y-22*heightScale);
            [self addChild: line2];
            [line2 setColor:ccc3(57, 37, 23)];
            
            CCLabelTTF* line3 = [CCLabelTTF labelWithString:self.thirdLine fontName:@"GunnyRewritten" fontSize:20*widthScale];
            
            line3.anchorPoint = ccp(0, 1);
            line3.position = ccp(line1.position.x, line2.position.y-20*heightScale);
            [self addChild: line3];
            [line3 setColor:ccc3(57, 37, 23)];
            if (line3.contentSize.width > self.contentSize.width*.85)
            {
                line3.fontSize=16*widthScale;
            }
            
            CCLabelTTF* init1 = [CCLabelTTF labelWithString:[[[[@"-" stringByAppendingString:self.firstInit] stringByAppendingString:@"."] stringByAppendingString:self.secInit] stringByAppendingString:@"."]fontName:@"GunnyRewritten" fontSize:20*widthScale];
            init1.anchorPoint = ccp(0, 1);
            init1.position = ccp(self.contentSize.width/3, line3.position.y-20*heightScale);
            [self addChild: init1];
            [init1 setColor:ccc3(57, 37, 23)];
        }
        
    }
    return self;
}

- (id) initHardCoded{
    if (self = [super initWithFile:@"haikuUI.png"])
    {
        CGSize size = [CCDirector sharedDirector].winSize;
        float scaleFactor = size.height/size.width;
        
        self.firstLine = @"if you're seeing this,";
        self.secondLine = @"you are not connected to";
        self.thirdLine = @"the online haikus";
        self.firstInit = @"z";
        self.secInit = @"z";
        
        CCLabelTTF* line1 = [CCLabelTTF labelWithString:self.firstLine fontName:@"GunnyRewritten" fontSize:20*scaleFactor];
        
        line1.anchorPoint = ccp(0, 1);
        line1.position = ccp(self.contentSize.width/8, self.contentSize.height*.65);
        [self addChild: line1];
        [line1 setColor:ccc3(57, 37, 23)];
        if (line1.contentSize.width > self.contentSize.width*.85)
        {
            line1.fontSize=16*scaleFactor;
        }
        
        CCLabelTTF* line2 = [CCLabelTTF labelWithString:self.secondLine fontName:@"GunnyRewritten" fontSize:20*scaleFactor];
        if (line2.contentSize.width > self.contentSize.width*.9)
        {
            line2.fontSize=16*scaleFactor;
        }
        line2.anchorPoint = ccp(0, 1);
        line2.position = ccp(line1.position.x-7*scaleFactor, line1.position.y-22*scaleFactor);
        [self addChild: line2];
        [line2 setColor:ccc3(57, 37, 23)];
        
        CCLabelTTF* line3 = [CCLabelTTF labelWithString:self.thirdLine fontName:@"GunnyRewritten" fontSize:20*scaleFactor];
        
        line3.anchorPoint = ccp(0, 1);
        line3.position = ccp(line1.position.x, line2.position.y-20*scaleFactor);
        [self addChild: line3];
        [line3 setColor:ccc3(57, 37, 23)];
        if (line3.contentSize.width > self.contentSize.width*.85)
        {
            line3.fontSize=16*scaleFactor;
        }
        
        CCLabelTTF* init1 = [CCLabelTTF labelWithString:[[[[@"-" stringByAppendingString:self.firstInit] stringByAppendingString:@"."] stringByAppendingString:self.secInit] stringByAppendingString:@"."]fontName:@"GunnyRewritten" fontSize:20*scaleFactor];
        init1.anchorPoint = ccp(0, 1);
        init1.position = ccp(self.contentSize.width/3, line3.position.y-20*scaleFactor);
        [self addChild: init1];
        [init1 setColor:ccc3(57, 37, 23)];

        
    }
    return self;
}


-(void) update:(ccTime)dt {
    

        self.position = ccp(self.position.x + self.velocity.x*dt,
                        self.position.y + (self.velocity.y*dt)*(2.2/10));
    
}


@end
