# 我的vim管理方式
我使用pathogen+git管理vim插件,方法源于一篇博文,文章地址如下：  
<http://lostjs.com/2012/02/04/use-pathogen-and-git-to-manage-vimfiles/>  
我与博文所述方法的不同点是:  
+对pathogen插件管理不同:对pathogen插件我未采用git submodule管理方式  
# 本vim配置使用方法
## linux用户
输入命令:  
    git clone https://github.com/CodeEremite/vimconfig.git ~/.vim  
    cd ~/.vim
    git submodule init
    git submodule update
    ln -s ~/.vim/.vimrc ~/.vimrc  
备注：  
1.这里默认已装好ctags,安装目录为: /usr/bin   如你的安装位置不同，请更改.vimrc中taglist设置  

# 我的vim配置说明
