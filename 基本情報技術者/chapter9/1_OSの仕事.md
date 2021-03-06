## OSの仕事
OSとはOperating Systemの略。コンピュータの基本動作を実現する「基本ソフトウェア」<br>
アプリケーションは「応用ソフトウェア」


### ソフトウェアの分類
- ソフトウェアは大きく分けると「応用ソフトウェア」と「システムソフトウェア」の２つに分かれている。

1. **基本ソフトウェア** => OSや言語プロセッサ、各種サービスプログラムなど
2. **ミドルウェア**=> データベース管理ソフトウェアや各種開発支援用ソフトウェアなど
3. **応用ソフトウェア** => ワープロや表計算などの各種アプリケーションソフト

----------------------------------------------------------------------------------------------------- <br>
ミドルウェアとは、ある特定の用途に特化して基本ソフトウェアと応用ソフトウェアとの間の橋渡しをするためのソフトウェアです。<br>
データベースを利用したい応用ソフトウェアのためにデータベース管理や入出力機能を提供するDBMSなどが代表的です。
```
「多数の応用ソフトウェアが使うであろう機能…なんだけど基本ソフトウェアが有しているわけではないもの」
middlewareといえば、Node.jsでよくつかったなあ。。。。。
```


### 基本ソフトウェアは3種類のプログラム
基本ソフトウェアはさらに細かく３つのプログラムにわけることができる。

1. 制御プログラム (OSの中核)
  > ハードウェアを管理し、応用ソフトウェアやミドルウェアから、コンピュータが効率的に利用できるようにと、縁の下のちから持ちとして働くソフトウェア。
  > 一般に、このプログラムのことを**カーネル(Kernel)**と呼ぶ。カーネルにはメモリ管理やプロセス管理などに機能を限定した**マイクロカーネル**と、多くの機能を網羅した**モノリシックカーネル**がある。

2. 言語処理プログラム ( == 言語プロセッサ)
  > C言語やJavaなどのプログラミング言語で書かれたプログラムをコンピュータが理解できる機械語に翻訳するプログラム

3. サービスプログラム
  > コンピュータの機能を補う、補助的なプログラムのことでユーティリティとも呼ばれています。
  > ex:)ファイル圧縮プログラムなど


### OSによる操作性の向上
WindowsやMAC OSなど「画面にアイコンやボタンを表示して、それを視覚的に操作することで命令を伝える操作方式」を採用したものを**GUI(Graphical User Interface)**という。

### API (Application Program Interface)
OSは、自身が管理することによって、ハードウェアのち外や入出力などをすべてブラックボックス化する。したがって、各アプリケーションが直接それらを意識することはない。<br>
そのため、OSはハードウェアの利用も含めて、自身が持つ各種機能を、アプリケーションから呼び出せる仕組みを用意していく。<br>
このために設けられたインターフェースを**API(Application Program Interface)**と呼ぶ。
