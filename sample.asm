.section __TEXT,__text
.globl _main
_main:
    # ローカル変数のメモリを確保
    subq $8, %rsp;            # スタックポインタレジスタから8減算（8biteのメモリ確保）
    
    # ローカル変数
    movq $10, (%rsp);         # 10をrsp番地にセット
    movq $20, 4(%rsp);        # 20をrsp+4番地にセット

    movq (%rsp), %rax         # rsp番地のデータをアキュムレータレジスタにセット（rax = 10）
    addq 4(%rsp), %rax        # rsp番地のデータをアキュムレータレジスタに加算（rax += 20）

    addq $8, %rsp             # スタックポインタレジスタに8加算（8biteのメモリ解放）
    
    movq %rax, %rdi           # raxレジスタの内容をrdiレジスタにセット
    movq $0x2000001, %rax     # SYS_exit （システムコール番号1）をraxレジスタにセット
    
    syscall                   # 実行。終了ステータスとなる値がrdiレジスタ、呼び出すシステムコールの番号がraxレジスタにセットされている