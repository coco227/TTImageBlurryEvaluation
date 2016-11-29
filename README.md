###此控件的具体实现说明请访问：https://my.oschina.net/227/blog/796485

# TTImageBlurryEvaluation
iOS 中识别图片清晰度   
   
## 使用方法
引入“TTImageBlurryEvaluation.hpp”和“TTImageBlurryEvaluation.mm”两个文件

```objc
#import "TTImageBlurryEvaluation.hpp"

    if ([OpenCVExtension whetherTheImageBlurry:img]) {
        self.fuzzyText.text = @"清晰";
    }else{
        self.fuzzyText.text = @"模糊";
    }
    
```

## 查看demo
运行demo之前请先从openCV官网下载opencv2.framework，放到demo目录下
   
-----  

###作者：coco227   
###blog：https://my.oschina.net/227/home  
