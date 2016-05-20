# 我的vim管理方式
我使用的方法源于一篇博文  
[使用pathogen+git管理vim插件] (http://lostjs.com/2012/02/04/use-pathogen-and-git-to-manage-vimfiles/)  
我与文中所述方法的不同点是:  
    对pathogen插件我直接安装，未采用git submodule管理方式  
# 本vim配置使用方法
## linux用户
输入命令:  
    git clone https://github.com/CodeEremite/vimconfig.git ~/.vim  
    cd ~/.vim  
    git submodule init  
    git submodule update  
    ln -s ~/.vim/.vimrc ~/.vimrc  
    ln -s ~/.vim/gitconfig ~/.gitconfig
    
备注：  
1.这里默认已装好ctags,安装目录为: /usr/bin   如你的安装位置不同，请更改.vimrc中taglist设置  
2.升级插件方法:  
    git submodule foreach 'git checkout master && git pull'  
# 我的vim配置说明
