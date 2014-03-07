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

- ```F2```：进入无缩进粘贴模式(```airline```会有提示)  
- ```F3```：切换颜色主题(下载的颜色主题请放到```bundle/color-sampler-pack/colors```下)
- ```F4```：切换颜色主题(下载的颜色主题请放到```bundle/color-sampler-pack/colors```下)
- ```F5```：在```Insert```模式下按```F5```保存
- ```F6```：运行(调用```call Runit()```函数，各个语言的运行参数可以进```.vimrc```自行修改)
- ```F8```：打开```NERDTree```
- ```F9```：对```css```文件中的颜色值进行上色
- ```Ctrl``` + ```h```/```j```/```k```/```l```：在各个窗口中移动
- ```bd```, ```Bookmark```, ```D```：```NERDTRee```的关闭标签，建立书签，删除书签命令

####注意事项：  

- 在```powerline-fonts-master```下面找个字体装上
- 必须在```.vimrc```中设置为使用```patch```过的字体，字体名有空格的，以```\+空格```表示  
- ```MacVim```的设置和```vim```很类似，不过要把```set```改成```se```	

####最近改动：

- 将字体改成了```Cosmic Sans Neue Mono```
- ```.vimrc```中开启了```expandtab```格式，所有```Tab```改成了两个空格，在```Github```中缩进终于好看了
- 加了插件```indentLine```，即使使用空格代替```Tab```，也可以显示缩进线
