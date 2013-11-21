My Vim
===

####目标：  

1. 维护自己的VIM插件及配置文件
2. 在有vim的环境下快速建立起小型完善的开发环境
3. 与他人分享插件

####安装：
先确认自己$HOME下没有.vim文件夹了，有就删了
			
	$cd
	$git clone https://github.com/MrHuxu/Dotfiles.git
	git submodule init
	git submodule update
	cp .vimrc ~/.vimrc
建议需要的人，自己fork一个项目。  
   
     
####简单使用方法 ：
插件什么的就不介绍了，反正都在目录下面，说一下快捷键，方便自己也方便别人：  

- F2：进入无缩进粘贴模式(airline会有提示)  
- F3：切换颜色主题(下载的颜色主题请放到```bundle/color-sampler-pack/colors```下)
- F4：切换颜色主题(下载的颜色主题请放到```bundle/color-sampler-pack/colors```下)
- F5：在Insert模式下按F5保存
- F6：运行(调用call Runit()函数)
- F8：打开NERDTree
- F9：对css文件中的颜色值进行上色
- Ctrl + h/j/k/l：在各个窗口中移动
- bd, Bookmark, D：NERDTRee的关闭标签，建立书签，删除书签命令

####注意事项：  

- 必须在.vimrc中设置为使用patch过的字体，字体名有空格的，以\+空格表示  
- MacVim的设置和vim很类似，不过要把```set```改成```se```	
