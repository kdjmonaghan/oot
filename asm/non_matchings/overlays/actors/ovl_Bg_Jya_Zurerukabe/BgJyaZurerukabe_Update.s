glabel BgJyaZurerukabe_Update
/* 004F8 8089B938 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004FC 8089B93C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00500 8089B940 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00504 8089B944 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
/* 00508 8089B948 18400002 */  blez    $v0, .L8089B954            
/* 0050C 8089B94C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00510 8089B950 A48E016A */  sh      $t6, 0x016A($a0)           ## 0000016A
.L8089B954:
/* 00514 8089B954 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00518 8089B958 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 0051C 8089B95C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00520 8089B960 0320F809 */  jalr    $ra, $t9                   
/* 00524 8089B964 00000000 */  nop
/* 00528 8089B968 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0052C 8089B96C 848F0168 */  lh      $t7, 0x0168($a0)           ## 00000168
/* 00530 8089B970 55E00004 */  bnel    $t7, $zero, .L8089B984     
/* 00534 8089B974 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00538 8089B978 0C226D32 */  jal     func_8089B4C8              
/* 0053C 8089B97C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00540 8089B980 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8089B984:
/* 00544 8089B984 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00548 8089B988 03E00008 */  jr      $ra                        
/* 0054C 8089B98C 00000000 */  nop
