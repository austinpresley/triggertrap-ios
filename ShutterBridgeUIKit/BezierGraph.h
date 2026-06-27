//
//  BezierGraph.h
//  ShutterBridge
//
//  Created by Valentin Kalchev on 03/06/2014.
//
//

#import <UIKit/UIKit.h>

static NSString *const kBezierGraphControlPoint1 = @"com.shutterbridge.bezierGraph.controlPoint1";
static NSString *const kBezierGraphControlPoint2 = @"com.shutterbridge.bezierGraph.controlPoint2";

@protocol TTControlPointDelegate <NSObject>
@optional
- (void)controlPointReleased;
@end

@interface BezierGraph : UIView

- (void)setCurveColor:(UIColor *)color; 
- (void)setPointFillColor:(UIColor *)color;
- (void)setPointBorderColor:(UIColor *)color;
- (void)setOverlappingExposuresColor:(UIColor *)color;

- (CGPoint)controlPoint1GraphLocation;
- (CGPoint)controlPoint2GraphLocation;

- (void)updateViewComponentsAfterRotation;
- (void)overlappingPointsWithTime:(NSMutableArray *)timeOverlapIndicies withProgression:(NSMutableArray *)progressionOverlapIndicies;

@property (strong, nonatomic) id <TTControlPointDelegate> controlPointReleasedDelegate;
@end
