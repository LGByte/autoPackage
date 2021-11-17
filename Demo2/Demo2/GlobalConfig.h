//
//  GlobalConfig.h
//  Demo2
//
//  Created by ze hua chen on 2021/11/17.
//
#import "JenkinsConfig.h"

#ifndef GlobalConfig_h
#define GlobalConfig_h



#endif /* GlobalConfig_h */

//环境变量配置
//#define HOST_DEBUG
//#define HOST_DEBUG_2
//#define HOST_RELEASE

#ifndef HOST_DEBUG
#else
#define HOST @"测试环境1"
#endif

#ifndef HOST_DEBUG_2
#else
#define HOST @"测试环境2"
#endif

#ifndef HOST_RELEASE
#else
#define HOST @"发布环境"
#endif

//暗黑模式配置
//#define DarkModel

#ifndef DarkModel
#define kIsDarkModel NO
#else
#define kIsDarkModel YES
#endif


