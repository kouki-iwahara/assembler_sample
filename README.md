# assembler_sample

単純な足し算をする関数を書いてみた。
個人的な学習となる。

## 環境

OS: MacOS Catalina 10.15.7  
プロセッサ: 2.6 GHz 6 コア Intel Core i7  

CPU アーキテクチャ  
$ uname -m  
x86_64  

Xcode のバージョン  
$ xcode-select -v  
xcode-select version 2373.  

コンパイラのバージョン  
$ cc -dumpversion  
12.0.0  

## アセンブラ実行手順

$ cc sample.asm  
$ ./a.out  
$ echo $?  
30
