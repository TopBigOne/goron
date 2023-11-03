* 
* step 1

```shell
mkdir build
```

* step 2

```shell
cd build
```
* step 3
*  v8.12.0
```shell
cd build && cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_PROJECTS=clang -DLLVM_INCLUDE_TESTS=OFF ../llvm
```

* step 4
```shell
cd build && make -j16
```


----

* 测试本地 llvm 版本
### test ndk version 
```shell
# 21.0.6113669   : clang version 9.0.8
# 22.0.7026061
ndk_version=21.0.6113669
/Users/dev/Documents/Android_Env/Sdk/ndk/${ndk_version}/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --version
```


* open ndk 文件夹
### test ndk version
```shell
# 21.0.6113669   : clang version 9.0.8
# 22.0.7026061
ndk_version=21.0.6113669
open /Users/dev/Documents/Android_Env/Sdk/ndk/${ndk_version}/toolchains/llvm/prebuilt/darwin-x86_64/bin
```

* delete build
```shell
rm -rf build
```


### 参考
[mac ndk 集成 ollvm](https://www.jianshu.com/p/9758a8eb1443)
[Android NDK 搭建 ollvm环境](https://blog.csdn.net/weixin_42600398/article/details/113572340)
[Windows下Android studio 搭建 android NDK 搭建 OLLVM](https://blog.csdn.net/qq_36535153/article/details/131374150?utm_medium=distribute.pc_relevant.none-task-blog-2~default~baidujs_baidulandingword~default-0-131374150-blog-113572340.235^v38^pc_relevant_sort_base3&spm=1001.2101.3001.4242.1&utm_relevant_index=1)
[Android给SO库增加混淆(OLLVM):ndk-21.0.6113669](https://blog.csdn.net/u013314647/article/details/117740784?spm=1001.2101.3001.6650.9&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7ERate-9-117740784-blog-113572340.235%5Ev38%5Epc_relevant_sort_base3&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7ERate-9-117740784-blog-113572340.235%5Ev38%5Epc_relevant_sort_base3&utm_relevant_index=12)