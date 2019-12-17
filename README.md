# MYvimrc
'vim' configuration

## Installation

1.  使用`setup.sh`脚本配置

    ```bash
    wget -qO- https://raw.githubusercontent.com/sunowsir/.vim/master/setup.sh | sh -x
    # 或者将该脚本下载下来执行都一样。
    ```

    

2.  注意事项
    * 确保您的clang版本在7以上, 并且默认的libclang版本也在7以上。
    * 如果您不需要C家族语言的高级补全，或者您当前的网络环境不是很好，您可以按照如下方式修改`setup.sh`: 
        ```bash
        # 将脚本中如下命令后面的参数全部去掉
        python3 ~/.vim/plugged/YouCompleteMe/install.py --clang-completer --system-libclang
        ```
    * 如果您在写代码的时候引入了某些库中的头文件，
    并且需要针对这些库中的函数的补全功能，
    您可以在执行完`setup.sh`后，在`~/.ycm_extra_conf.py`中的`flags`数组中添加您需要的库的头文件,例如:
        ```python
        '-isystem', 
        '/usr/include/'
        '-I', 
        '~/mylib/include'
        ```

## 快捷键

>   Vim's native features go to search on its own

| Key                    | function                                                                                                                                           |
| ---------------------- | ------------------------------------------------------------                                                                                       |
| `<空格>`+`<回车>`      | 普通模式下：清除黄色高亮的搜索结果                                                                                                                 |
| `<Shift>`+`j`          | 普通模式下：５行５行的往下跳                                                                                                                       |
| `<Shift>`+`k`          | 普通模式下：５行５行的往上跳                                                                                                                       |
| `<shift>`+`q`          | 普通模式下：退出vim                                                                                                                                |
| `<shift>`+`r`          | 普通模式下：更改vimrc文件后使其立即生效                                                                                                            |
| `<ctrl>`+`j`           | 普通模式下：保存．插入模式或选择模式下：退出当前模式．也就是说，在任意模式下，按住`<ctrl>`再连续按两次j就一定是保存了                             |
| `<ctrl>`+`c`           | 选择模式下：复制当前选中内容到系统剪切板．                                                                                                         |
| `<空格>`+`g`+`y`       | 普通模式下：进入阅读模式，再安一次快捷键退出阅读模式                                                                                               |
| `<ctrl>`+`o`+`o`       | 终端下任意位置键入vim，后面不加文件，直接进入vim紧接着按住`<ctrl>`双击o，就会出现上次编辑的文件                                                    |
| `t`+`t`                | 打开文件树，文件树按回车打开目录                                                                                                                   |
| `<空格>`+`<shift>`+`t` | 打开标签列表，查看当前文件中函数的函数原型，在标签列表中光标停留在某个函数名上敲击回车会跳转到该函数．                                             |
| `<空格>`+`t`+`m`       | 普通模式下: 在写markdown的时候,敲击该快捷键可开启表格自动格式化功能, 会根据上一行的格式自动格式化正在编辑的这行 |
| `g`+`d`                | 普通模式下：跳转到光标所在函数的定义处（不支持跨文件）                                                                                             |
| `<ctrl>`+`o`           | 普通模式下：跳回之前光标的位置，可以和`g`+`d`配合使用                                                                                              |
