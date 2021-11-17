###
 # @Author: 陈泽华
 # @Date: 2021-11-16 10:31:49
 # @LastEditors: 陈泽华
 # @LastEditTime: 2021-11-16 10:41:10
 # @Desc: 
### 

###
#!/bin/bash -l
# sh ./script/fastlane.sh "Debug"
###



#解决ArgumentError - invalid byte sequence in US-ASCII错误
#修改终端语言、地区等国际化环境变量
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=$PATH:/usr/local/bin
#更换ruby环境，对应的修改有 打包机下面的  .bashrc  .zshrc .zlogin
source $HOME/.rvm/scripts/rvm #source ~/.bashrc

#解锁keychain，是其它工具可以访问证书，解锁后设置keychain关闭时间为1小时, xxx为用户名
security -v unlock-keychain -p "zehuachen" "/Users/zehuachen/Library/Keychains/login.keychain"
security set-keychain-settings -t 3600 -l "/Users/zehuachen/Library/Keychains/login.keychain"
# /usr/local/bin/pod update --verbose --no-repo-update

# fastlane profile
if [[ $1 == "Debug" ]]; then
  fastlane iosDebug
elif [[ $1 == "Release" ]]; then
  fastlane iosRelease
elif [[ $1 == "TestFlight" ]]; then
  fastlane iosTestFlight
elif [[ $1 == "AppStore" ]]; then
  fastlane iosAppStore
fi