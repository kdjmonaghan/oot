glabel func_80A35C24
/* 00914 80A35C24 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00918 80A35C28 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 0091C 80A35C2C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00920 80A35C30 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00924 80A35C34 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00928 80A35C38 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 0092C 80A35C3C C48001A0 */  lwc1    $f0, 0x01A0($a0)           ## 000001A0
/* 00930 80A35C40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00934 80A35C44 46002032 */  c.eq.s  $f4, $f0                   
/* 00938 80A35C48 00000000 */  nop
/* 0093C 80A35C4C 45020005 */  bc1fl   .L80A35C64                 
/* 00940 80A35C50 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00944 80A35C54 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00948 80A35C58 2405386C */  addiu   $a1, $zero, 0x386C         ## $a1 = 0000386C
/* 0094C 80A35C5C C60001A0 */  lwc1    $f0, 0x01A0($s0)           ## 000001A0
/* 00950 80A35C60 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
.L80A35C64:
/* 00954 80A35C64 44811000 */  mtc1    $at, $f2                   ## $f2 = 2.00
/* 00958 80A35C68 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0095C 80A35C6C 260604D0 */  addiu   $a2, $s0, 0x04D0           ## $a2 = 000004D0
/* 00960 80A35C70 46001032 */  c.eq.s  $f2, $f0                   
/* 00964 80A35C74 00000000 */  nop
/* 00968 80A35C78 45000019 */  bc1f    .L80A35CE0                 
/* 0096C 80A35C7C 00000000 */  nop
/* 00970 80A35C80 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00974 80A35C84 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00978 80A35C88 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 0097C 80A35C8C E606006C */  swc1    $f6, 0x006C($s0)           ## 0000006C
/* 00980 80A35C90 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00984 80A35C94 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00988 80A35C98 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 0098C 80A35C9C E7A20014 */  swc1    $f2, 0x0014($sp)           
/* 00990 80A35CA0 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00994 80A35CA4 0C00CC98 */  jal     func_80033260              
/* 00998 80A35CA8 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0099C 80A35CAC 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 009A0 80A35CB0 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 009A4 80A35CB4 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 009A8 80A35CB8 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 009AC 80A35CBC 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 009B0 80A35CC0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 009B4 80A35CC4 260604C4 */  addiu   $a2, $s0, 0x04C4           ## $a2 = 000004C4
/* 009B8 80A35CC8 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 009BC 80A35CCC AFA00018 */  sw      $zero, 0x0018($sp)         
/* 009C0 80A35CD0 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 009C4 80A35CD4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 009C8 80A35CD8 0C00CC98 */  jal     func_80033260              
/* 009CC 80A35CDC E7A80014 */  swc1    $f8, 0x0014($sp)           
.L80A35CE0:
/* 009D0 80A35CE0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 009D4 80A35CE4 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 009D8 80A35CE8 10400012 */  beq     $v0, $zero, .L80A35D34     
/* 009DC 80A35CEC 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 009E0 80A35CF0 C60A0080 */  lwc1    $f10, 0x0080($s0)          ## 00000080
/* 009E4 80A35CF4 44818000 */  mtc1    $at, $f16                  ## $f16 = 300.00
/* 009E8 80A35CF8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 009EC 80A35CFC 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 009F0 80A35D00 46105480 */  add.s   $f18, $f10, $f16           
/* 009F4 80A35D04 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 009F8 80A35D08 3C0741A4 */  lui     $a3, 0x41A4                ## $a3 = 41A40000
/* 009FC 80A35D0C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00A00 80A35D10 44059000 */  mfc1    $a1, $f18                  
/* 00A04 80A35D14 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00A08 80A35D18 00000000 */  nop
/* 00A0C 80A35D1C 8E180300 */  lw      $t8, 0x0300($s0)           ## 00000300
/* 00A10 80A35D20 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 00A14 80A35D24 17200003 */  bne     $t9, $zero, .L80A35D34     
/* 00A18 80A35D28 AE190300 */  sw      $t9, 0x0300($s0)           ## 00000300
/* 00A1C 80A35D2C 0C00B55C */  jal     Actor_Kill
              
/* 00A20 80A35D30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A35D34:
/* 00A24 80A35D34 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00A28 80A35D38 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00A2C 80A35D3C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00A30 80A35D40 03E00008 */  jr      $ra                        
/* 00A34 80A35D44 00000000 */  nop
