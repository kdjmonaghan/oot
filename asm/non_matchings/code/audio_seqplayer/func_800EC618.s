glabel func_800EC618
/* B637B8 800EC618 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B637BC 800EC61C AFBF001C */  sw    $ra, 0x1c($sp)
/* B637C0 800EC620 AFB00018 */  sw    $s0, 0x18($sp)
/* B637C4 800EC624 8C8E00DC */  lw    $t6, 0xdc($a0)
/* B637C8 800EC628 00808025 */  move  $s0, $a0
/* B637CC 800EC62C 59C0000A */  blezl $t6, .L800EC658
/* B637D0 800EC630 8FBF001C */   lw    $ra, 0x1c($sp)
.L800EC634:
/* B637D4 800EC634 0C03AF56 */  jal   func_800EBD58
/* B637D8 800EC638 02002025 */   move  $a0, $s0
/* B637DC 800EC63C 0C03A2A2 */  jal   Audio_SequencePlayerProcessSound
/* B637E0 800EC640 02002025 */   move  $a0, $s0
/* B637E4 800EC644 8E0F00DC */  lw    $t7, 0xdc($s0)
/* B637E8 800EC648 25F8FFFF */  addiu $t8, $t7, -1
/* B637EC 800EC64C 1F00FFF9 */  bgtz  $t8, .L800EC634
/* B637F0 800EC650 AE1800DC */   sw    $t8, 0xdc($s0)
/* B637F4 800EC654 8FBF001C */  lw    $ra, 0x1c($sp)
.L800EC658:
/* B637F8 800EC658 8FB00018 */  lw    $s0, 0x18($sp)
/* B637FC 800EC65C 27BD0020 */  addiu $sp, $sp, 0x20
/* B63800 800EC660 03E00008 */  jr    $ra
/* B63804 800EC664 00000000 */   nop   

