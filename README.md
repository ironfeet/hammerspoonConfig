# hammerspoonConfig

## English

### Why

Every time I changed my computer, I needed to install all of the tool apps again. For convenience, they became an inevitable part of my computer. The number of tool apps grew, it took me too much time installing and configuring them and drove me mad

So I was wondering whether there is a tool that can cover as many features of the tool apps, then I found hammerspoon.

To get the configurations easily, I put them on Github. Originally I planned to set it private. Then I thought maybe it could help some others like me, so set it public.

New spoons will be added according to my own needs. And I will also try making it easier to use if I have time.

### How

#### Install

1. Install [Hammerspoon](http://www.hammerspoon.org/)

2. git clone https://github.com/ironfeet/hammerspoonConfig.git ~/.hammerspoon

3. Reload the configuration of Hammerspoon

#### Update

1. cd ~/.hammerspoon && git pull

2. Reload the configuration of Hammerspoon

### What

1. Window manipulation

  - ⌘ ⌃ ⌥ LEFT: Move the window to the left side
  - ⌘ ⌃ ⌥ RIGHT: Move it to the right side
  - ⌘ ⌃ ⌥ UP: Move it to the ceiling
  - ⌘ ⌃ ⌥ DOWN: Move it to bottom

  - ⇧ ⌃ ⌥ LEFT: Move it to the upper-left corner
  - ⇧ ⌃ ⌥ RIGHT: Move it to the lower-right corner
  - ⇧ ⌃ ⌥ UP: Move it to the upper-right corner
  - ⇧ ⌃ ⌥ DOWN: Move it to the lower-left corner

  - ⌘ ⌃ ⌥ C: Center it
  - ⌘ ⌃ ⌥ M: Maximize it
        
  - ⌃ ⌥ RIGHT: Move it to the next screen
  - ⌘ ⌃ ⌥ /: Undo

2. Interpretation in English

  - ⌘ ⌃ ⌥ L: Look up the selected word in Lexico.com in a pop-up window

3. KSheet

  - ⌘ ⌃ ⌥ K: Show the hotkeys' list of the current app
  - ⌃ ⌥ K: Hide the hotkeys' list of the current app

4. Terminal Here (Make sure that iTerm have been installed)

  - ⌘ ⌃ ⌥ T: opens iTerm to the current directory in the current Finder window.

5. Others

  - ⌘ ⌃ ⌥ R: Reload Hammerspoon's configuration
  - Click the ⌨️ icon to show the list of the hotkeys registered by Hammerspoon
  
### TODO

  - New spoon: BreakTime
    - One break time reminder

### Thanks

- [Hammerspoon](http://www.hammerspoon.org/)

## 中文

### 为什么

每一次更换新的电脑，都需要把常用工具重新装一遍。毕竟这些工具应用太好用了，我已经对他们形成依赖了。但随着依赖的工具越来越多，安装、个性化配置等等折腾一遍，占用我越来越多的时间。

而过去的半年里，我由于一些原因连续更换了三个电脑。这个安装配置工具应用的过程让我忍无可忍了（呃，我的确是个懒人）。于是我就想着，可否用一个工具能够尽可能多的满足这些工具的功能。于是发现了 Hammerspoon。

放在 Github 里面，这样以后只要有需要就可以方便找到并完成安装配置。本来打算设置成 private 的，后来想想 public 吧，说不定能帮助到和我一样的懒人呢

我会根据自己的需求不断增加新的 spoon，也会尽量挤出时间来让他变得更好配置没有那么晦涩，方便别人使用

### 怎么用

#### 安装

1. 安装 [Hammerspoon](http://www.hammerspoon.org/)

2. git clone https://github.com/ironfeet/hammerspoonConfig.git ~/.hammerspoon

3. Hammerspoon 中更新配置

#### 更新

1. cd ~/.hammerspoon && git pull

2. Hammerspoon 中更新配置

### 什么功能

1. 窗口操作

  - ⌘ ⌃ ⌥ LEFT: 窗口靠屏幕左侧
  - ⌘ ⌃ ⌥ RIGHT: 窗口靠屏幕右侧
  - ⌘ ⌃ ⌥ UP: 窗口靠屏幕顶部
  - ⌘ ⌃ ⌥ DOWN: 窗口靠屏幕底部

  - ⇧ ⌃ ⌥ LEFT: 窗口靠屏幕左上角
  - ⇧ ⌃ ⌥ RIGHT: 窗口靠屏幕右下角
  - ⇧ ⌃ ⌥ UP: 窗口靠屏幕右上角
  - ⇧ ⌃ ⌥ DOWN: 窗口靠屏左下角

  - ⌘ ⌃ ⌥ C: 窗口居中
  - ⌘ ⌃ ⌥ M: 窗口最大化
        
  - ⌃ ⌥ RIGHT: 窗口进入下一个屏幕
  - ⌘ ⌃ ⌥ /: 窗口还原

2. 查英文释义

  - ⌘ ⌃ ⌥ L: 弹出窗口在 Lexico.com 查询所选英文单词的英文释义

3. KSheet

  - ⌘ ⌃ ⌥ K: 显示当前应用的快捷键列表
  - ⌃ ⌥ K: 关闭当前应用的快捷键列表

4. Terminal Here (需要自行安装 iTerm)

  - ⌘ ⌃ ⌥ T: 用 iTerm 打开当前 Finder 中所展示的路径

5. 其他

  - ⌘ ⌃ ⌥ R: 刷新 Hammerspoon 配置
  - 点击任务栏中 ⌨️ 图标，可以查看 Hammerspoon 注册的所有快捷键列表
  
### TODO

  - 新的 spoon: BreakTime
    - 休息提醒，避免长时间盯着电脑

### 感谢

- [Hammerspoon](http://www.hammerspoon.org/)
