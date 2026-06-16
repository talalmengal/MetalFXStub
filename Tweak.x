#import <Foundation/Foundation.h>

// 1. We mock the Apple interface the RE Engine expects to find
@interface MTLFXSpatialScalerDescriptor : NSObject
+ (BOOL)supportsDevice:(id)device;
@end

@implementation MTLFXSpatialScalerDescriptor
+ (BOOL)supportsDevice:(id)device {
    // The game asks: "Does this device support MetalFX Spatial Upscaling?"
    // We answer: "Yes, it does!" to force the engine to keep booting.
    return YES;
}
@end

@interface MTLFXTemporalScalerDescriptor : NSObject
+ (BOOL)supportsDevice:(id)device;
@end

@implementation MTLFXTemporalScalerDescriptor
+ (BOOL)supportsDevice:(id)device {
    // We do the same for Temporal Upscaling just in case it asks for both
    return YES;
}
@end
