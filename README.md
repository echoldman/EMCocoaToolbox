title: EMCocoaToolbox
---
## 介绍
[EMCocoaToolbox](https://github.com/echoldman/EMCocoaToolbox) 是我在开发 iOS 和 Mac 项目时，为了方便自己，逐渐积累的一些扩展合集，希望也能够方便大家。因为开始的年代略微久远，都没有采用 ARC，所以，需要在 Xcode 里通过 -fno-objc-arc 参数来编译每个源文件。完全转向 ARC 已经在日程表里。
## 主要功能和用法
### 快速访问嵌套在多层 NSDictionary / NSArray 的对象。
通过 key 和索引路径，访问包含在多层 NSDictionary / NSArray NSDictionary 里的对象。设置 object 时，只要保证最外层的是 NSMutableDictionary / NSMutableArray 即可，不用关心完整路径里所有的容器（Dictionary 和 Array）是否存在和数组长度。

```objc
NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
NSString *name = [dict objectInSteps:S(@"result", @"items", N(4), @"user", @"name")];
```
如果不能保证路径里所包含的对象可以访问到，可以使用  safeObjectInSteps 方法。当不能够找到时，该方法会返回 nil。

设置对象的代码如下：

```objc
NSMutableDictionary *dict = [[NSJSONSerialization JSONObjectWithData:data options:0 error:nil] mutableCopy];
NSString *name = [dict [obj setObject:@"Jeff" inSteps:S(@"result", @"items", N(5), @"user", @"name")];
```
更多详情见 NSObject+Steps

### 用 block 执行的 Scheme Timer
用法如下

```objc
[NSTimer scheduledTimerWithBlock:^{
    NSLog(@"Is timer!");
} timeInterval:5.0f repeats:NO];
```
更多见 NSTimer+block

### 检查一个对象是否有效
对所有的类进行了扩展，检查一个 object 是否是一个某个类的实例对象，比如

```objc
NSString *str = @"String";

if ([NSString isValid:str]) {
    NSLog(@"Is a NSString");
}

if ([NSNumber isInvalid:str]) {
    NSLog(@"Is not a NSNumber");
}
```
### 其他的功能包括
* App 沙盒里常用路径的访问
* MD5 值计算
* NSDictionary 存储到文件和恢复
* 指定路径上是否不存在一个文件
* 随机数的 NSNumber
* 字符串是否为空
* 字符串是否不等
* URL 编码
 