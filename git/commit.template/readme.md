# コミットログのテンプレート化
- Emojiで楽しく綺麗なコミットを手に入れる | Goodpatch Blog https://goodpatch.com/blog/beautiful-commits-with-emojis/

## 導入方法
### 任意の場所にテンプレートファイルを用意
- 例）自分の/home/配下に置く
```
$ cd ~
$ curl -L -O https://raw.githubusercontent.com/ka-san/dotfiles/master/git/commit.template/.git_commit_template
```
 
### git-configでcommit.template設定
```
$ git config --global commit.template ~/.git_commit_template
$ git config commit.template ~/.git_commit_template
```
