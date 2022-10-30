#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AKOCommonKit.h"
#import "AKOCommonMacroDefine.h"
#import "NSArray+functional.h"
#import "NSString+Ext.h"
#import "NSURL+Ext.h"
#import "UIColor+Ext.h"

FOUNDATION_EXPORT double AKOCommonToolsKitVersionNumber;
FOUNDATION_EXPORT const unsigned char AKOCommonToolsKitVersionString[];

