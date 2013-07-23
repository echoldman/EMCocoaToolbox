//
//  CGEx.h
//  EMCocoaToolbox
//
//  Created by Echoldman on 13-7-24.
//  Copyright (c) 2013年 Echoldman. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>

#ifndef EMCocoaToolbox_CGEx_h
#define EMCocoaToolbox_CGEx_h

CG_INLINE bool
__CGSizeMaybeLessThanSize(CGSize size1, CGSize size2)
{
    return (size1.width < size2.width) || (size1.height < size2.height);
}
#define CGSizeMaybeLessThanSize __CGSizeMaybeLessThanSize

CG_INLINE bool
__CGSizeMaybeMoreThanSize(CGSize size1, CGSize size2)
{
    return (size1.width > size2.width) || (size1.height > size2.height);
}
#define CGSizeMaybeMoreThanSize __CGSizeMaybeMoreThanSize

CG_INLINE bool
__CGSizeCoordinateToSize(CGSize size1, CGSize size2)
{
    return (size1.width / size1.height) == (size2.width / size2.height);
}
#define CGSizeCoordinateToSize __CGSizeCoordinateToSize

CG_INLINE bool
__CGSizeUncoordinateToSize(CGSize size1, CGSize size2)
{
    return (size1.width / size1.height) != (size2.width / size2.height);
}
#define CGSizeUncoordinateToSize __CGSizeUncoordinateToSize

CG_INLINE bool
__CGSizeRatioWiderThanSize(CGSize size1, CGSize size2)
{
    return (size1.width / size1.height) > (size2.width / size2.height);
}
#define CGSizeRatioWiderThanSize __CGSizeRatioWiderThanSize

CG_INLINE bool
__CGSizeRatioHigherThanSize(CGSize size1, CGSize size2)
{
    return (size1.height / size1.width) > (size2.height / size2.width);
}
#define CGSizeRatioHigherThanSize __CGSizeRatioHigherThanSize


#endif
