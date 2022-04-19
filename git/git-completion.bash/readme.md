# git-completion.bash を導入する
## windowsの場合
- vscode導入して、ターミナル設定をGitBashにしちゃったほうが早い
  - 【Windows/Mac】gitでTab補完を有効にする方法 | tachiのゆるブログ https://tachi15.com/programing/git-completion/#toc2
```
"terminal.integrated.defaultProfile.windows": "Git Bash"
```
## bash編
- git/git-completion.bash at master · git/git https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
### 導入方法
- git-completion.bash をダウンロードして適当な場所に配置
  - 例） `~/.my_ext/.git-completion.bash`
> curl -L -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash .my_ext/.git-completion.bash
- ~/.bashrc に `source ~/.my_ext/git-completion.bash` の一行を加える

## zsh編 - macOS Catalina 10.15.5
- git/git-completion.zsh at master · git/git https://github.com/git/git/blob/master/contrib/completion/git-completion.zsh
### 導入方法
```
% cd ~
% mkdir .zsh
% cd .zsh 
% curl -L -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh git-completion.zsh 
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  6124  100  6124    0     0   108k      0 --:--:-- --:--:-- --:--:--  108k
curl: (6) Could not resolve host: git-completion.zsh


% ll
total 16
-rw-r--r--  1 ymbp  staff  6124  7  9 13:25 git-completion.zsh
```

↓.zshrc 追記する
```
% vi ~/.zshrc

fpath=(~/.zsh $fpath)
```
↓記述したら再読み込み
> % source ~/.zshrc

## Mac導入参考
【zsh】絶対やるべき！ターミナルでgitのブランチ名を表示&補完【git-prompt / git-completion】 - Qiita https://qiita.com/mikan3rd/items/d41a8ca26523f950ea9d
