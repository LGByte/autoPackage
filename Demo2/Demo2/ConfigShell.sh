
//ConfigShell.sh

#!/bin/sh

#变量1  HOST_NAME 环境切换 (list 测试环境1 | 测试环境2 | 测试环境3 )
#变量2  isDarkModel 是否暗黑模式 (BOOL 默认值 false: 不是暗黑模式 true: 暗黑模式)

echo "//环境配置注释">JenkinsConfig.h

echo "------ Jenkins_编译配置项打印日志: ------"

echo "HOST_NAME(环境切换)"
echo "//HOST_NAME(环境切换)">>JenkinsConfig.h

echo "value=测试环境1:说明..."
echo "//value=测试环境1:说明...">>JenkinsConfig.h

echo "value=测试环境2:说明..."
echo "//value=测试环境2:说明...">>JenkinsConfig.h

echo "value=测试环境3:说明..."
echo "//value=测试环境3:说明...">>JenkinsConfig.h

echo "当前配置环境:"$HOST_NAME

echo "\n">>JenkinsConfig.h
echo $0
if [ $HOST_NAME = "测试环境1" ] ; then
hostConfig="#define HOST_DEBUG"
elif [ $HOST_NAME = "测试环境2" ] ; then
hostConfig="#define HOST_DEBUG_2"
elif [ $HOST_NAME = "测试环境3" ] ; then
hostConfig="#define HOST_RELEASE"
else
echo "HOST_NAME参数无效!!!"
fi

echo $hostConfig>>JenkinsConfig.h

echo "\n">>JenkinsConfig.h
echo "isDarkModel(是否启用暗黑模式)"
echo "//isDarkModel(是否启用暗黑模式)">>JenkinsConfig.h

echo "当前是否启用暗黑模式:"$isDarkModel

if [ $isDarkModel = true ] ; then
darkModel="#define DarkModel"
else
darkModel="//#define DarkModel"
fi

#echo $darkModel>>JenkinsConfig.h

echo "------ Jenkins_编译配置项打印日志_end ------"

