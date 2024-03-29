# git 一番始めに設定するもの
## ユーザー情報
- clone,pull などするときに使われる
```bash
git config --global user.name "hoge"
git config --global user.email "hoge@fuga.com" 
```

## エディタの確認・変更
```
#core.editor
$ git config -l | grep core
$ git config --global core.editor vim
```

### AWS Cloud9 は ~/.bashrc の中で定義してる箇所を変更
```
#~/.bashrc :23
    # Set default editor for git
    git config --global core.editor nano
```

## alias
```bash
git config --global alias.logg "log --graph --pretty=oneline --abbrev-commit --decorate  --date=short --format='%C(yellow)%h%C(reset) %C(auto)%d%C(reset) %s %C(cyan)@%an%C(reset) %C(magenta)%ad%C(reset)'"

git config --global alias.co checkout
git config --global alias.st 'status -s -uall'
git config --global alias.br 'branch'
git config --global alias.fe 'fetch'
git config --global alias.cmfix 'commit --fixup'
git config --global alias.logone 'log -1 --name-status'
git config --global alias.difff 'diff --name-only'
git config --global alias.diffs 'diff --cached'
```
## その他
### カラーとか行番号とか
```bash
git config --global color.ui true
git config --global grep.lineNumber true
git config --global core.editor vim
```
- grep.lineNumber：git-grepで常に行番号を表示する
- core.editor：git-commit しようとしたときに、何やらエラーが出る場合

### git（ターミナル上）日本語ファイル名を表示する
```
git config --local core.quotepath false
or
git config --global core.quotepath false
```
- 全体設定でいいなら --global


## .gitignore のテンプレート
### 大抵の言語、フレームワークのはこのへんにある（ありがたや
- github/gitignore: A collection of useful .gitignore templates https://github.com/github/gitignore

```
$ curl -L  https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore -o .gitignore
# -o： ファイル名を指定してDL
```


