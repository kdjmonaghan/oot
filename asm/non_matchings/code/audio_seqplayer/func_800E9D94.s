glabel func_800E9D94
/* B60F34 800E9D94 8C820000 */  lw    $v0, ($a0)
/* B60F38 800E9D98 90430000 */  lbu   $v1, ($v0)
/* B60F3C 800E9D9C 244E0001 */  addiu $t6, $v0, 1
/* B60F40 800E9DA0 AC8E0000 */  sw    $t6, ($a0)
/* B60F44 800E9DA4 306F0080 */  andi  $t7, $v1, 0x80
/* B60F48 800E9DA8 11E00008 */  beqz  $t7, .L800E9DCC
/* B60F4C 800E9DAC 00602825 */   move  $a1, $v1
/* B60F50 800E9DB0 91D80000 */  lbu   $t8, ($t6)
/* B60F54 800E9DB4 00051A00 */  sll   $v1, $a1, 8
/* B60F58 800E9DB8 30637F00 */  andi  $v1, $v1, 0x7f00
/* B60F5C 800E9DBC 25D90001 */  addiu $t9, $t6, 1
/* B60F60 800E9DC0 03031825 */  or    $v1, $t8, $v1
/* B60F64 800E9DC4 3063FFFF */  andi  $v1, $v1, 0xffff
/* B60F68 800E9DC8 AC990000 */  sw    $t9, ($a0)
.L800E9DCC:
/* B60F6C 800E9DCC 03E00008 */  jr    $ra
/* B60F70 800E9DD0 00601025 */   move  $v0, $v1

