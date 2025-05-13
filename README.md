# 本科毕业设计模板

湖南工商大学本科毕业设计模板。

# 使用
推荐使用 [texstudio](https://pan.baidu.com/s/1Is2-VR1z-tMYvmdinsVY_g?pwd=hutb) 或 [overleaf](https://cn.overleaf.com/) 进行论文撰写。

注：在 latex 2023 中编译成功，latex 2016 编译失败（需要更高的版本，其他版本的 latex 没试过）。

# 贡献
有任何对模板格式进行调整的可以提交 [Issues](https://github.com/OpenHUTB/undergraduate/issues) 或 [Pull Request](https://github.com/OpenHUTB/undergraduate/pulls) 。

# 选题
[选题列表](https://github.com/OpenHUTB/undergraduate/wiki/%E6%AF%95%E8%AE%BE%E9%80%89%E9%A2%98) 


## 要求
1. 格式化、注释、文档翻译
2. 运行
3. 测试（例子通过）


## 初始化

1. 新建github工程

2. 运行`init_proj('PROJECT_NAME');`

3. 分配开发者


## 使用
克隆仓库
```shell
git clone --recursive https://github.com/OpenHUTB/undergraduate.git
```

## 修改方法

### 添加新的一页

以添加“授权使用说明书”为例：

1.添加内容文件`content/authorizationzh.tex`

2.在模板文件中`hutbthesis.cls`添加：
```latex
% 预定义名称
\newcommand*{\hutb@name@authorization@zh}{声明}
```
```latex
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 诚信声明
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{authorizationzh} {
	%\begin{titlepage}%
	\hutb@pdfbookmark{0}{\hutb@name@authorization@zh}
	%\renewcommand*{\headsep}{20pt}
	\vspace*{0pt}
	%	\begin{center} \zihao{-2} \heiti \@titlecn \end{center}
	\vspace{0pt}
	\begin{center} \zihao{2} \heiti 湖南工商大学本科毕业设计版权使用授权书 \end{center}  % 摘要为三号黑体
	\vspace{12pt}
	\linespread{1.5}
	\zihao{4}\songti  % 内容为四号宋体

	%\end{titlepage}%

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
```

3.在主文件`hutbthesis_main.tex`中引入
```latex
\include{content/authorizationzh}
```

# 贡献者
