# nexvod-debian-sh4

本專案用於開發 debian 版本 網樂通 作業系統.

目錄說明
* src/: 程式碼
* tool/: 建立 rootfs, image 工具
* settings/: 未編寫進套件的設定 scripts, 依照 rootfs 目錄擺放

## 安裝方式

下載點 (搜尋 target):
 * http://forum.cse.yzu.edu.tw/wheezy-sh4/
 * https://code.google.com/p/sh4twbox/

安裝方式1:

1. 先確定原本主機以 sda2 開機(例如已經裝了 sh4twbox)
2. power off, 插入 sh4twbox 開機片(請勿使用自動安裝片)
3. 按 reset 閃三下後放開
4. mount /dev/sda2 /mnt_system
5. cd /
6. tar xpvf <target.tgz>
7. 拔電源. 拔除外接 usb,不按 RESET, 靜待連線(約90秒)
8. 以 ssh 連入 (只能用 dhcp 方式)

安裝方式2 (測試失敗, 除非有事先放大 sda1 空間)

1. 以 sh4twbox 開機片開機(請勿使用自動安裝片), 或是其他系統開機
2. 將此檔放入 sda1/target.tgz
3. 拔除外接 usb, 拔電源, 插電源, RESET 閃 3 下後, 靜待連線(約90秒)
4. 以 ssh 連入 (只能用 dhcp 方式)

連入之帳號為 root, 密碼為 root, 請記得修改以免被入侵.

## 使用方式

### 進入圖形介面

    apt-get update
    apt-get upgrade
    apt-get install xorg lxde-core
    echo "exec startlxde" > ~/.xinit
    startx

## 開發相關資訊


### 建立 target.tgz 方式

    cd tool
    sudo ./build_target_tgz.sh ~/prj/nextvod/debian/target.tgz ~/prj/nextvod/debian/target.wheezy-sh4.20130728.tgz

<!-- vim:set et sw=4 ts=4 ai: -->
