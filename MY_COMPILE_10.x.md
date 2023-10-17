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
/Users/dev/Documents/Android_Env/Sdk/ndk/22.0.7026061/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --version
```

* delete build
```shell
rm -rf build
```


### 参考
[mac ndk 集成 ollvm](https://www.jianshu.com/p/9758a8eb1443)