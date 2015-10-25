//---------------------------------------------------------------------------
// Task Force Arrowhead Radio 周波数初期値設定 MOD for MENTAIKO ARMA3 SERVER
//                                                           Create ITOM
//---------------------------------------------------------------------------
本スクリプトは Task Force Radio の無線周波数を自動設定するためのスクリプトです


導入方法
1. @TFAR_AutoSetting フォルダを Arma3のインストールフォルダへ入れる
2. @TFAR_AutoSetting\userconfig\TFAR_AutoSetting フォルダを Arma3のインストールフォルダの userconfig フォルダへ入れる

　以下のようになる
  - Arma 3
     - @TFAR_AutoSetting
       - addons
          - TFAR_AutoSetting.pbo
     - userconfig
       - TFAR_AutoSetting
          - setting.hpp


サーバー側の処理
　・長距離無線のデフォルト値設定
　・パーソナル無線のデフォルト値設定

　　※サーバー側は必須ではありません。


クライアント側の処理
　・アクションメニューに　Initialize TFAR Personal Radio　を追加する
　・メニューを実行すると
　　　1. AN/PRC-152 を自動セット
　　　2. 1Ch から 8Chまでの周波数を自動セット

　　※クライアント側は長距離無線の周波数は自動セットを行いません。
　　※サーバー側にMODがない場合でもパーソナル無線の自動設定は可能です。


userconfig\TFAR_AutoSetting\setting.hpp で設定できる周波数を変更可能です。


制限事項
　　パーソナル無線は AN/PRC-152 のみです。(setting.hppで変更は可能)
　　BLUEFOR(west) 陣営のみ対応



参考サイト


Category:Scripting Commands Arma 3
 https://community.bistudio.com/wiki/Category:Scripting_Commands_Arma_3

Task Force Arrowhead Radio
 http://radio.task-force.ru/en/

Task Force Arrowhead Radio Documentation Wiki
 https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki

Task Force Arrowhead Radio API variables with description
 https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki/API:-Variables

Task Force Arrowhead Radio Script API 
 https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki/Script-API



感謝
　本MODの前身であるMissionScriptを導入していただいた MENTAIKO鯖 様
　実際に使用していただいたMENTAIKO鯖の皆さん。
　ありがとうございます。

//---------------------------------------------------------------------------
// 修正履歴
// 2014/07/30 Ver. 1.00 新規作成
// 2014/07/30 Ver. 1.01 pboにごみファイルが入っていたので削除
// 2014/08/02 Ver. 1.02 長距離無線のデフォルト値設定はサーバー側のみにした
// 2014/08/03 Ver. 1.03 欠番
// 2014/08/03 Ver. 1.04 公開バージョン
// 2014/08/04 Ver. 1.05 サーバー側処理修正（テスト環境ではサーバー側で周波数初期値設定できている MODの順番は一番最後でOK）
//                      日本語が含まれているとエラーが出ているようなので、コメント等のの日本語（２バイト文字）を削除
//                      setting.hpp の記述ミスの修正（無線機の種類）
// 2015/05/30 Ver. 1.06 メニューのプライオリティーを変更
//                      一部修正
//                      MODフォルダ名を　@JMGS_TFRAS　へ変更
//---------------------------------------------------------------------------


