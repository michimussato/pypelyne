#ifndef _Ngrade_H_
#define _Ngrade_H_

enum {
    NGRD_LONG_LUMA_MATH         = 1000,

    NGRD_BOOL_CLAMP_BLACK,
    NGRD_BOOL_CLAMP_WHITE,

    NGRD_REAL_BLACKPOINT,
    NGRD_REAL_WHITEPOINT,
    NGRD_REAL_LIFT,
    NGRD_REAL_GAIN,
    NGRD_REAL_MULTIPLY,
    NGRD_REAL_OFFSET,
    NGRD_REAL_GAMMA,
    NGRD_REAL_SATURATION,
    NGRD_REAL_CONTRAST,

    NGRD_REAL_MIX,

    NGRD_LUM_REC709             = 0,
    NGRD_LUM_CCIR601            = 1,
    NGRD_LUM_AVERAGE            = 2,
    NGRD_LUM_MAXIMUM            = 3,

    NGRD_DUMMY
};

#endif
