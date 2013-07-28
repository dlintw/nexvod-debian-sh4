# 貢獻 nextvod-debian-sh4 社群的方法

以下是貢獻本開發群組的方法

## 分享指引

### 歡迎多使用 github 的 Pull requests 功能

請多使用 github 的 pull requests 功能將你修改的功能提交出來審核.
不管是文件錯字, 或是程式碼錯誤.

### 討論方式

建議有新的想法可以到 facebook 群組 https://www.facebook.com/groups/401123299994345/

### 建立問題清單

如果有任何想新增或改進的功能, 應該在修改之前先使用 [github
issue](https://github.com/dlintw/nexvod-debian-sh4/issues) 將文件紀錄下來.

注意: 最好是先檢查之前是否已經有人反應此問題, 如果有人已經反應, 你可以按個 +1.

### 修改問題的良好習慣

使用程式分枝(Fork)運用 branch 命名為 XXX-something, XXX 就是問題編號

- 若是錯誤修正, XXX 就是問題編號
- 若是新增功能, 先建立(enhancement issue)然後在開始修改

最好有單元測試程式可以一併簽入. 並確認簽入時相關的文件說明也一併修改.

TODO: 目前還沒有 pre-commit hooks.

Pull requests 的說明儘量除了寫 issue 編號外, 也需要加些簡短說明, 未來方便搜尋

可以適當的運用 `git rebase -i` 及 `git push -f` 來調整 pull request 的內容, 讓
相關的程式碼及文件併入同一個 commit.

Commits 修正或關閉一個 issue 必須使用 `Fixes #XXX` 或 `Closes #XXX`, 可以讓系統
在合併時自動關掉 issue.

將你的名字加入 AUTHORS 檔案. 這檔案有可能重新以工具自動排序.

## 決策流程

### 如何決定是否收錄更新?

1. 要求 pull request: 任何人皆可
2. 討論 pull request: 任何人可以註解(LGTM - looks good to me).
3. 接受與否, 由相對目錄維護者決定

### 各目錄負責人

基本上目前並沒有很多開發者, 若異動很多時, 將新增各目錄負責人.
