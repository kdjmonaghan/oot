.late_rodata
glabel D_80139F14
    .float 182.04167

glabel D_80139F18
    .float 0.01
    .float 0.01
    .float 0.01

glabel D_80139F24
    .float 0.01

glabel D_80139F28
    .float 0.01

glabel D_80139F2C
    .float 0.01

glabel D_80139F30
    .float 0.01

glabel D_80139F34
    .float 0.05

glabel D_80139F38
    .float 0.3

glabel D_80139F3C
    .float 0.7

glabel D_80139F40
    .float -0.1

.text
glabel Camera_Parallel1
/* AC01AC 8004900C 27BDFF38 */  addiu $sp, $sp, -0xc8
/* AC01B0 80049010 AFB00020 */  sw    $s0, 0x20($sp)
/* AC01B4 80049014 00808025 */  move  $s0, $a0
/* AC01B8 80049018 AFBF0024 */  sw    $ra, 0x24($sp)
/* AC01BC 8004901C 0C00B721 */  jal   Player_GetCameraYOffset
/* AC01C0 80049020 8C840090 */   lw    $a0, 0x90($a0)
/* AC01C4 80049024 8602015E */  lh    $v0, 0x15e($s0)
/* AC01C8 80049028 10400008 */  beqz  $v0, .L8004904C
/* AC01CC 8004902C 2401000A */   li    $at, 10
/* AC01D0 80049030 10410006 */  beq   $v0, $at, .L8004904C
/* AC01D4 80049034 24010014 */   li    $at, 20
/* AC01D8 80049038 10410004 */  beq   $v0, $at, .L8004904C
/* AC01DC 8004903C 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC01E0 80049040 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC01E4 80049044 85C20314 */  lh    $v0, 0x314($t6)
/* AC01E8 80049048 1040006F */  beqz  $v0, .L80049208
.L8004904C:
/* AC01EC 8004904C 3C0C8016 */   lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* AC01F0 80049050 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC01F4 80049054 3C018014 */  lui   $at, %hi(D_80139F14)
/* AC01F8 80049058 C42E9F14 */  lwc1  $f14, %lo(D_80139F14)($at)
/* AC01FC 8004905C 858D01F0 */  lh    $t5, 0x1f0($t4)
/* AC0200 80049060 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC0204 80049064 44818000 */  mtc1  $at, $f16
/* AC0208 80049068 448D2000 */  mtc1  $t5, $f4
/* AC020C 8004906C 3C018014 */  lui   $at, %hi(D_80139F18)
/* AC0210 80049070 C4329F18 */  lwc1  $f18, %lo(D_80139F18)($at)
/* AC0214 80049074 468021A0 */  cvt.s.w $f6, $f4
/* AC0218 80049078 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC021C 8004907C 44814000 */  mtc1  $at, $f8
/* AC0220 80049080 3C014288 */  li    $at, 0x42880000 # 0.000000
/* AC0224 80049084 44812000 */  mtc1  $at, $f4
/* AC0228 80049088 860F0142 */  lh    $t7, 0x142($s0)
/* AC022C 8004908C 46123082 */  mul.s $f2, $f6, $f18
/* AC0230 80049090 46002183 */  div.s $f6, $f4, $f0
/* AC0234 80049094 3C198012 */  lui   $t9, %hi(sCameraSettings+4)
/* AC0238 80049098 000FC0C0 */  sll   $t8, $t7, 3
/* AC023C 8004909C 86090144 */  lh    $t1, 0x144($s0)
/* AC0240 800490A0 0338C821 */  addu  $t9, $t9, $t8
/* AC0244 800490A4 8F39D068 */  lw    $t9, %lo(sCameraSettings+4)($t9)
/* AC0248 800490A8 000950C0 */  sll   $t2, $t1, 3
/* AC024C 800490AC 46024280 */  add.s $f10, $f8, $f2
/* AC0250 800490B0 032A5821 */  addu  $t3, $t9, $t2
/* AC0254 800490B4 8D620004 */  lw    $v0, 4($t3)
/* AC0258 800490B8 3C0B8016 */  lui   $t3, %hi(gGameInfo)
/* AC025C 800490BC 844E0000 */  lh    $t6, ($v0)
/* AC0260 800490C0 24420028 */  addiu $v0, $v0, 0x28
/* AC0264 800490C4 448E2000 */  mtc1  $t6, $f4
/* AC0268 800490C8 46061202 */  mul.s $f8, $f2, $f6
/* AC026C 800490CC 468021A0 */  cvt.s.w $f6, $f4
/* AC0270 800490D0 46085301 */  sub.s $f12, $f10, $f8
/* AC0274 800490D4 46123282 */  mul.s $f10, $f6, $f18
/* AC0278 800490D8 00000000 */  nop
/* AC027C 800490DC 46005202 */  mul.s $f8, $f10, $f0
/* AC0280 800490E0 00000000 */  nop
/* AC0284 800490E4 460C4102 */  mul.s $f4, $f8, $f12
/* AC0288 800490E8 E6040000 */  swc1  $f4, ($s0)
/* AC028C 800490EC 844FFFDC */  lh    $t7, -0x24($v0)
/* AC0290 800490F0 448F3000 */  mtc1  $t7, $f6
/* AC0294 800490F4 00000000 */  nop
/* AC0298 800490F8 468032A0 */  cvt.s.w $f10, $f6
/* AC029C 800490FC 46125202 */  mul.s $f8, $f10, $f18
/* AC02A0 80049100 00000000 */  nop
/* AC02A4 80049104 46004102 */  mul.s $f4, $f8, $f0
/* AC02A8 80049108 00000000 */  nop
/* AC02AC 8004910C 460C2182 */  mul.s $f6, $f4, $f12
/* AC02B0 80049110 E6060004 */  swc1  $f6, 4($s0)
/* AC02B4 80049114 8458FFE0 */  lh    $t8, -0x20($v0)
/* AC02B8 80049118 44985000 */  mtc1  $t8, $f10
/* AC02BC 8004911C 00000000 */  nop
/* AC02C0 80049120 46805220 */  cvt.s.w $f8, $f10
/* AC02C4 80049124 460E4102 */  mul.s $f4, $f8, $f14
/* AC02C8 80049128 46102180 */  add.s $f6, $f4, $f16
/* AC02CC 8004912C 4600328D */  trunc.w.s $f10, $f6
/* AC02D0 80049130 44195000 */  mfc1  $t9, $f10
/* AC02D4 80049134 00000000 */  nop
/* AC02D8 80049138 A6190020 */  sh    $t9, 0x20($s0)
/* AC02DC 8004913C 844AFFE4 */  lh    $t2, -0x1c($v0)
/* AC02E0 80049140 448A4000 */  mtc1  $t2, $f8
/* AC02E4 80049144 00000000 */  nop
/* AC02E8 80049148 46804120 */  cvt.s.w $f4, $f8
/* AC02EC 8004914C 460E2182 */  mul.s $f6, $f4, $f14
/* AC02F0 80049150 46103280 */  add.s $f10, $f6, $f16
/* AC02F4 80049154 4600520D */  trunc.w.s $f8, $f10
/* AC02F8 80049158 440C4000 */  mfc1  $t4, $f8
/* AC02FC 8004915C 00000000 */  nop
/* AC0300 80049160 A60C0022 */  sh    $t4, 0x22($s0)
/* AC0304 80049164 844DFFE8 */  lh    $t5, -0x18($v0)
/* AC0308 80049168 448D2000 */  mtc1  $t5, $f4
/* AC030C 8004916C 00000000 */  nop
/* AC0310 80049170 468021A0 */  cvt.s.w $f6, $f4
/* AC0314 80049174 E6060008 */  swc1  $f6, 8($s0)
/* AC0318 80049178 844EFFEC */  lh    $t6, -0x14($v0)
/* AC031C 8004917C 448E5000 */  mtc1  $t6, $f10
/* AC0320 80049180 00000000 */  nop
/* AC0324 80049184 46805220 */  cvt.s.w $f8, $f10
/* AC0328 80049188 E608000C */  swc1  $f8, 0xc($s0)
/* AC032C 8004918C 844FFFF0 */  lh    $t7, -0x10($v0)
/* AC0330 80049190 448F2000 */  mtc1  $t7, $f4
/* AC0334 80049194 00000000 */  nop
/* AC0338 80049198 468021A0 */  cvt.s.w $f6, $f4
/* AC033C 8004919C E6060010 */  swc1  $f6, 0x10($s0)
/* AC0340 800491A0 8458FFF4 */  lh    $t8, -0xc($v0)
/* AC0344 800491A4 44985000 */  mtc1  $t8, $f10
/* AC0348 800491A8 00000000 */  nop
/* AC034C 800491AC 46805220 */  cvt.s.w $f8, $f10
/* AC0350 800491B0 46124102 */  mul.s $f4, $f8, $f18
/* AC0354 800491B4 E6040014 */  swc1  $f4, 0x14($s0)
/* AC0358 800491B8 8449FFF8 */  lh    $t1, -8($v0)
/* AC035C 800491BC A6090024 */  sh    $t1, 0x24($s0)
/* AC0360 800491C0 8459FFFC */  lh    $t9, -4($v0)
/* AC0364 800491C4 44993000 */  mtc1  $t9, $f6
/* AC0368 800491C8 00000000 */  nop
/* AC036C 800491CC 468032A0 */  cvt.s.w $f10, $f6
/* AC0370 800491D0 46125202 */  mul.s $f8, $f10, $f18
/* AC0374 800491D4 00000000 */  nop
/* AC0378 800491D8 46004102 */  mul.s $f4, $f8, $f0
/* AC037C 800491DC 00000000 */  nop
/* AC0380 800491E0 460C2182 */  mul.s $f6, $f4, $f12
/* AC0384 800491E4 E6060018 */  swc1  $f6, 0x18($s0)
/* AC0388 800491E8 844A0000 */  lh    $t2, ($v0)
/* AC038C 800491EC 448A5000 */  mtc1  $t2, $f10
/* AC0390 800491F0 00000000 */  nop
/* AC0394 800491F4 46805220 */  cvt.s.w $f8, $f10
/* AC0398 800491F8 46124102 */  mul.s $f4, $f8, $f18
/* AC039C 800491FC E604001C */  swc1  $f4, 0x1c($s0)
/* AC03A0 80049200 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AC03A4 80049204 85620314 */  lh    $v0, 0x314($t3)
.L80049208:
/* AC03A8 80049208 50400004 */  beql  $v0, $zero, .L8004921C
/* AC03AC 8004920C 26050050 */   addiu $a1, $s0, 0x50
/* AC03B0 80049210 0C011495 */  jal   Camera_CopyPREGToModeValues
/* AC03B4 80049214 02002025 */   move  $a0, $s0
/* AC03B8 80049218 26050050 */  addiu $a1, $s0, 0x50
.L8004921C:
/* AC03BC 8004921C 2606005C */  addiu $a2, $s0, 0x5c
/* AC03C0 80049220 AFA60040 */  sw    $a2, 0x40($sp)
/* AC03C4 80049224 AFA5003C */  sw    $a1, 0x3c($sp)
/* AC03C8 80049228 0C01F124 */  jal   OLib_Vec3fDiffToVecSphGeo
/* AC03CC 8004922C 27A400A0 */   addiu $a0, $sp, 0xa0
/* AC03D0 80049230 26060074 */  addiu $a2, $s0, 0x74
/* AC03D4 80049234 AFA60038 */  sw    $a2, 0x38($sp)
/* AC03D8 80049238 27A40098 */  addiu $a0, $sp, 0x98
/* AC03DC 8004923C 0C01F124 */  jal   OLib_Vec3fDiffToVecSphGeo
/* AC03E0 80049240 8FA5003C */   lw    $a1, 0x3c($sp)
/* AC03E4 80049244 8603015E */  lh    $v1, 0x15e($s0)
/* AC03E8 80049248 10600009 */  beqz  $v1, .L80049270
/* AC03EC 8004924C 2401000A */   li    $at, 10
/* AC03F0 80049250 10610007 */  beq   $v1, $at, .L80049270
/* AC03F4 80049254 24010014 */   li    $at, 20
/* AC03F8 80049258 10610005 */  beq   $v1, $at, .L80049270
/* AC03FC 8004925C 24010019 */   li    $at, 25
/* AC0400 80049260 50610004 */  beql  $v1, $at, .L80049274
/* AC0404 80049264 26080028 */   addiu $t0, $s0, 0x28
/* AC0408 80049268 10000017 */  b     .L800492C8
/* AC040C 8004926C 26080028 */   addiu $t0, $s0, 0x28
.L80049270:
/* AC0410 80049270 26080028 */  addiu $t0, $s0, 0x28
.L80049274:
/* AC0414 80049274 A5000016 */  sh    $zero, 0x16($t0)
/* AC0418 80049278 A5000010 */  sh    $zero, 0x10($t0)
/* AC041C 8004927C 860C0024 */  lh    $t4, 0x24($s0)
/* AC0420 80049280 44803000 */  mtc1  $zero, $f6
/* AC0424 80049284 240E0014 */  li    $t6, 20
/* AC0428 80049288 318D0004 */  andi  $t5, $t4, 4
/* AC042C 8004928C 11A00003 */  beqz  $t5, .L8004929C
/* AC0430 80049290 3C0F8016 */   lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AC0434 80049294 10000004 */  b     .L800492A8
/* AC0438 80049298 A50E0018 */   sh    $t6, 0x18($t0)
.L8004929C:
/* AC043C 8004929C 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AC0440 800492A0 85F801C2 */  lh    $t8, 0x1c2($t7)
/* AC0444 800492A4 A5180018 */  sh    $t8, 0x18($t0)
.L800492A8:
/* AC0448 800492A8 E5060000 */  swc1  $f6, ($t0)
/* AC044C 800492AC C60800F4 */  lwc1  $f8, 0xf4($s0)
/* AC0450 800492B0 C60A0098 */  lwc1  $f10, 0x98($s0)
/* AC0454 800492B4 46085101 */  sub.s $f4, $f10, $f8
/* AC0458 800492B8 E504000C */  swc1  $f4, 0xc($t0)
/* AC045C 800492BC 8609015E */  lh    $t1, 0x15e($s0)
/* AC0460 800492C0 25390001 */  addiu $t9, $t1, 1
/* AC0464 800492C4 A619015E */  sh    $t9, 0x15e($s0)
.L800492C8:
/* AC0468 800492C8 850A0018 */  lh    $t2, 0x18($t0)
/* AC046C 800492CC 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC0470 800492D0 51400013 */  beql  $t2, $zero, .L80049320
/* AC0474 800492D4 86020024 */   lh    $v0, 0x24($s0)
/* AC0478 800492D8 86020024 */  lh    $v0, 0x24($s0)
/* AC047C 800492DC 304B0002 */  andi  $t3, $v0, 2
/* AC0480 800492E0 11600007 */  beqz  $t3, .L80049300
/* AC0484 800492E4 30590004 */   andi  $t9, $v0, 4
/* AC0488 800492E8 860C00A2 */  lh    $t4, 0xa2($s0)
/* AC048C 800492EC 86180022 */  lh    $t8, 0x22($s0)
/* AC0490 800492F0 258F8001 */  addiu $t7, $t4, -0x7fff
/* AC0494 800492F4 01F84821 */  addu  $t1, $t7, $t8
/* AC0498 800492F8 10000014 */  b     .L8004934C
/* AC049C 800492FC A5090012 */   sh    $t1, 0x12($t0)
.L80049300:
/* AC04A0 80049300 13200004 */  beqz  $t9, .L80049314
/* AC04A4 80049304 87AB009E */   lh    $t3, 0x9e($sp)
/* AC04A8 80049308 860A0022 */  lh    $t2, 0x22($s0)
/* AC04AC 8004930C 1000000F */  b     .L8004934C
/* AC04B0 80049310 A50A0012 */   sh    $t2, 0x12($t0)
.L80049314:
/* AC04B4 80049314 1000000D */  b     .L8004934C
/* AC04B8 80049318 A50B0012 */   sh    $t3, 0x12($t0)
/* AC04BC 8004931C 86020024 */  lh    $v0, 0x24($s0)
.L80049320:
/* AC04C0 80049320 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC04C4 80049324 304C0020 */  andi  $t4, $v0, 0x20
/* AC04C8 80049328 11800007 */  beqz  $t4, .L80049348
/* AC04CC 8004932C 00000000 */   nop
/* AC04D0 80049330 860D00A2 */  lh    $t5, 0xa2($s0)
/* AC04D4 80049334 86090022 */  lh    $t1, 0x22($s0)
/* AC04D8 80049338 25B88001 */  addiu $t8, $t5, -0x7fff
/* AC04DC 8004933C 0309C821 */  addu  $t9, $t8, $t1
/* AC04E0 80049340 A5190012 */  sh    $t9, 0x12($t0)
/* AC04E4 80049344 86020024 */  lh    $v0, 0x24($s0)
.L80049348:
/* AC04E8 80049348 AC22D3A0 */  sw    $v0, %lo(D_8011D3A0)($at)
.L8004934C:
/* AC04EC 8004934C 860A0020 */  lh    $t2, 0x20($s0)
/* AC04F0 80049350 24010015 */  li    $at, 21
/* AC04F4 80049354 A50A0014 */  sh    $t2, 0x14($t0)
/* AC04F8 80049358 8602015E */  lh    $v0, 0x15e($s0)
/* AC04FC 8004935C 54410006 */  bnel  $v0, $at, .L80049378
/* AC0500 80049360 2401000B */   li    $at, 11
/* AC0504 80049364 24020001 */  li    $v0, 1
/* AC0508 80049368 A5020016 */  sh    $v0, 0x16($t0)
/* AC050C 8004936C 10000005 */  b     .L80049384
/* AC0510 80049370 A602015E */   sh    $v0, 0x15e($s0)
/* AC0514 80049374 2401000B */  li    $at, 11
.L80049378:
/* AC0518 80049378 14410002 */  bne   $v0, $at, .L80049384
/* AC051C 8004937C 24020001 */   li    $v0, 1
/* AC0520 80049380 A602015E */  sh    $v0, 0x15e($s0)
.L80049384:
/* AC0524 80049384 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC0528 80049388 3C018014 */  lui   $at, %hi(D_80139F24)
/* AC052C 8004938C C4309F24 */  lwc1  $f16, %lo(D_80139F24)($at)
/* AC0530 80049390 846B01C6 */  lh    $t3, 0x1c6($v1)
/* AC0534 80049394 846C01C8 */  lh    $t4, 0x1c8($v1)
/* AC0538 80049398 C60000E0 */  lwc1  $f0, 0xe0($s0)
/* AC053C 8004939C 448B3000 */  mtc1  $t3, $f6
/* AC0540 800493A0 448C2000 */  mtc1  $t4, $f4
/* AC0544 800493A4 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC0548 800493A8 468032A0 */  cvt.s.w $f10, $f6
/* AC054C 800493AC 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC0550 800493B0 468021A0 */  cvt.s.w $f6, $f4
/* AC0554 800493B4 46105202 */  mul.s $f8, $f10, $f16
/* AC0558 800493B8 00000000 */  nop
/* AC055C 800493BC 46004082 */  mul.s $f2, $f8, $f0
/* AC0560 800493C0 00000000 */  nop
/* AC0564 800493C4 46103282 */  mul.s $f10, $f6, $f16
/* AC0568 800493C8 44061000 */  mfc1  $a2, $f2
/* AC056C 800493CC 46005202 */  mul.s $f8, $f10, $f0
/* AC0570 800493D0 E7A800B4 */  swc1  $f8, 0xb4($sp)
/* AC0574 800493D4 846D01A0 */  lh    $t5, 0x1a0($v1)
/* AC0578 800493D8 C60E00C0 */  lwc1  $f14, 0xc0($s0)
/* AC057C 800493DC E7A200B8 */  swc1  $f2, 0xb8($sp)
/* AC0580 800493E0 448D2000 */  mtc1  $t5, $f4
/* AC0584 800493E4 AFA80034 */  sw    $t0, 0x34($sp)
/* AC0588 800493E8 0C010E27 */  jal   func_8004389C
/* AC058C 800493EC 46802320 */   cvt.s.w $f12, $f4
/* AC0590 800493F0 C7A200B8 */  lwc1  $f2, 0xb8($sp)
/* AC0594 800493F4 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC0598 800493F8 E60000C0 */  swc1  $f0, 0xc0($s0)
/* AC059C 800493FC 44061000 */  mfc1  $a2, $f2
/* AC05A0 80049400 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC05A4 80049404 C60C0008 */  lwc1  $f12, 8($s0)
/* AC05A8 80049408 0C010E27 */  jal   func_8004389C
/* AC05AC 8004940C C60E00C8 */   lwc1  $f14, 0xc8($s0)
/* AC05B0 80049410 3C014000 */  li    $at, 0x40000000 # 0.000000
/* AC05B4 80049414 E60000C8 */  swc1  $f0, 0xc8($s0)
/* AC05B8 80049418 44816000 */  mtc1  $at, $f12
/* AC05BC 8004941C 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC05C0 80049420 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC05C4 80049424 8FA600B4 */  lw    $a2, 0xb4($sp)
/* AC05C8 80049428 0C010E27 */  jal   func_8004389C
/* AC05CC 8004942C C60E00C4 */   lwc1  $f14, 0xc4($s0)
/* AC05D0 80049430 C7A200B8 */  lwc1  $f2, 0xb8($sp)
/* AC05D4 80049434 E60000C4 */  swc1  $f0, 0xc4($s0)
/* AC05D8 80049438 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC05DC 8004943C 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC05E0 80049440 3C018014 */  lui   $at, %hi(D_80139F28)
/* AC05E4 80049444 C4289F28 */  lwc1  $f8, %lo(D_80139F28)($at)
/* AC05E8 80049448 85CF0198 */  lh    $t7, 0x198($t6)
/* AC05EC 8004944C 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC05F0 80049450 44061000 */  mfc1  $a2, $f2
/* AC05F4 80049454 448F3000 */  mtc1  $t7, $f6
/* AC05F8 80049458 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC05FC 8004945C C60E00CC */  lwc1  $f14, 0xcc($s0)
/* AC0600 80049460 468032A0 */  cvt.s.w $f10, $f6
/* AC0604 80049464 46085302 */  mul.s $f12, $f10, $f8
/* AC0608 80049468 0C010E27 */  jal   func_8004389C
/* AC060C 8004946C 00000000 */   nop
/* AC0610 80049470 E60000CC */  swc1  $f0, 0xcc($s0)
/* AC0614 80049474 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AC0618 80049478 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AC061C 8004947C 3C018014 */  lui   $at, %hi(D_80139F2C)
/* AC0620 80049480 C42A9F2C */  lwc1  $f10, %lo(D_80139F2C)($at)
/* AC0624 80049484 8709019A */  lh    $t1, 0x19a($t8)
/* AC0628 80049488 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC062C 8004948C 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC0630 80049490 44892000 */  mtc1  $t1, $f4
/* AC0634 80049494 8FA600B4 */  lw    $a2, 0xb4($sp)
/* AC0638 80049498 C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* AC063C 8004949C 468021A0 */  cvt.s.w $f6, $f4
/* AC0640 800494A0 460A3302 */  mul.s $f12, $f6, $f10
/* AC0644 800494A4 0C010E27 */  jal   func_8004389C
/* AC0648 800494A8 00000000 */   nop
/* AC064C 800494AC E60000D0 */  swc1  $f0, 0xd0($s0)
/* AC0650 800494B0 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AC0654 800494B4 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AC0658 800494B8 3C018014 */  lui   $at, %hi(D_80139F30)
/* AC065C 800494BC C4269F30 */  lwc1  $f6, %lo(D_80139F30)($at)
/* AC0660 800494C0 872A019C */  lh    $t2, 0x19c($t9)
/* AC0664 800494C4 3C018014 */  lui   $at, %hi(D_80139F34)
/* AC0668 800494C8 C60A00E0 */  lwc1  $f10, 0xe0($s0)
/* AC066C 800494CC 448A4000 */  mtc1  $t2, $f8
/* AC0670 800494D0 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC0674 800494D4 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC0678 800494D8 46804120 */  cvt.s.w $f4, $f8
/* AC067C 800494DC C4289F34 */  lwc1  $f8, %lo(D_80139F34)($at)
/* AC0680 800494E0 C60E00D4 */  lwc1  $f14, 0xd4($s0)
/* AC0684 800494E4 46062302 */  mul.s $f12, $f4, $f6
/* AC0688 800494E8 00000000 */  nop
/* AC068C 800494EC 46085102 */  mul.s $f4, $f10, $f8
/* AC0690 800494F0 44062000 */  mfc1  $a2, $f4
/* AC0694 800494F4 0C010E27 */  jal   func_8004389C
/* AC0698 800494F8 00000000 */   nop
/* AC069C 800494FC 860B0024 */  lh    $t3, 0x24($s0)
/* AC06A0 80049500 8FA80034 */  lw    $t0, 0x34($sp)
/* AC06A4 80049504 E60000D4 */  swc1  $f0, 0xd4($s0)
/* AC06A8 80049508 316C0001 */  andi  $t4, $t3, 1
/* AC06AC 8004950C 51800024 */  beql  $t4, $zero, .L800495A0
/* AC06B0 80049510 A5000010 */   sh    $zero, 0x10($t0)
/* AC06B4 80049514 87A500A6 */  lh    $a1, 0xa6($sp)
/* AC06B8 80049518 02002025 */  move  $a0, $s0
/* AC06BC 8004951C 24060001 */  li    $a2, 1
/* AC06C0 80049520 24A58001 */  addiu $a1, $a1, -0x7fff
/* AC06C4 80049524 00052C00 */  sll   $a1, $a1, 0x10
/* AC06C8 80049528 00052C03 */  sra   $a1, $a1, 0x10
/* AC06CC 8004952C 0C0112B7 */  jal   func_80044ADC
/* AC06D0 80049530 AFA80034 */   sw    $t0, 0x34($sp)
/* AC06D4 80049534 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC06D8 80049538 44817000 */  mtc1  $at, $f14
/* AC06DC 8004953C C606000C */  lwc1  $f6, 0xc($s0)
/* AC06E0 80049540 3C018014 */  lui   $at, %hi(D_80139F38)
/* AC06E4 80049544 C42A9F38 */  lwc1  $f10, %lo(D_80139F38)($at)
/* AC06E8 80049548 46067003 */  div.s $f0, $f14, $f6
/* AC06EC 8004954C 3C018014 */  lui   $at, %hi(D_80139F3C)
/* AC06F0 80049550 C4289F3C */  lwc1  $f8, %lo(D_80139F3C)($at)
/* AC06F4 80049554 C60600E0 */  lwc1  $f6, 0xe0($s0)
/* AC06F8 80049558 8FA80034 */  lw    $t0, 0x34($sp)
/* AC06FC 8004955C 00022400 */  sll   $a0, $v0, 0x10
/* AC0700 80049560 00042403 */  sra   $a0, $a0, 0x10
/* AC0704 80049564 2407000F */  li    $a3, 15
/* AC0708 80049568 85050010 */  lh    $a1, 0x10($t0)
/* AC070C 8004956C 460A0082 */  mul.s $f2, $f0, $f10
/* AC0710 80049570 46067281 */  sub.s $f10, $f14, $f6
/* AC0714 80049574 46080102 */  mul.s $f4, $f0, $f8
/* AC0718 80049578 00000000 */  nop
/* AC071C 8004957C 460A2302 */  mul.s $f12, $f4, $f10
/* AC0720 80049580 460C1200 */  add.s $f8, $f2, $f12
/* AC0724 80049584 44064000 */  mfc1  $a2, $f8
/* AC0728 80049588 0C010E47 */  jal   func_8004391C
/* AC072C 8004958C 00000000 */   nop
/* AC0730 80049590 8FA80034 */  lw    $t0, 0x34($sp)
/* AC0734 80049594 10000002 */  b     .L800495A0
/* AC0738 80049598 A5020010 */   sh    $v0, 0x10($t0)
/* AC073C 8004959C A5000010 */  sh    $zero, 0x10($t0)
.L800495A0:
/* AC0740 800495A0 C6060098 */  lwc1  $f6, 0x98($s0)
/* AC0744 800495A4 C6040104 */  lwc1  $f4, 0x104($s0)
/* AC0748 800495A8 46043032 */  c.eq.s $f6, $f4
/* AC074C 800495AC 00000000 */  nop
/* AC0750 800495B0 4503000F */  bc1tl .L800495F0
/* AC0754 800495B4 C6060098 */   lwc1  $f6, 0x98($s0)
/* AC0758 800495B8 8E020090 */  lw    $v0, 0x90($s0)
/* AC075C 800495BC 3C018014 */  lui   $at, %hi(D_80139F40)
/* AC0760 800495C0 C42A9F40 */  lwc1  $f10, %lo(D_80139F40)($at)
/* AC0764 800495C4 C448006C */  lwc1  $f8, 0x6c($v0)
/* AC0768 800495C8 4608503C */  c.lt.s $f10, $f8
/* AC076C 800495CC 00000000 */  nop
/* AC0770 800495D0 45030007 */  bc1tl .L800495F0
/* AC0774 800495D4 C6060098 */   lwc1  $f6, 0x98($s0)
/* AC0778 800495D8 8C4D067C */  lw    $t5, 0x67c($v0)
/* AC077C 800495DC 240F0001 */  li    $t7, 1
/* AC0780 800495E0 000D7280 */  sll   $t6, $t5, 0xa
/* AC0784 800495E4 05C30006 */  bgezl $t6, .L80049600
/* AC0788 800495E8 A7AF006A */   sh    $t7, 0x6a($sp)
/* AC078C 800495EC C6060098 */  lwc1  $f6, 0x98($s0)
.L800495F0:
/* AC0790 800495F0 E506000C */  swc1  $f6, 0xc($t0)
/* AC0794 800495F4 10000002 */  b     .L80049600
/* AC0798 800495F8 A7A0006A */   sh    $zero, 0x6a($sp)
/* AC079C 800495FC A7AF006A */  sh    $t7, 0x6a($sp)
.L80049600:
/* AC07A0 80049600 86020024 */  lh    $v0, 0x24($s0)
/* AC07A4 80049604 87A9006A */  lh    $t1, 0x6a($sp)
/* AC07A8 80049608 02002025 */  move  $a0, $s0
/* AC07AC 8004960C 30580080 */  andi  $t8, $v0, 0x80
/* AC07B0 80049610 1700000C */  bnez  $t8, .L80049644
/* AC07B4 80049614 27A50098 */   addiu $a1, $sp, 0x98
/* AC07B8 80049618 1520000A */  bnez  $t1, .L80049644
/* AC07BC 8004961C 2507000C */   addiu $a3, $t0, 0xc
/* AC07C0 80049620 8E060000 */  lw    $a2, ($s0)
/* AC07C4 80049624 30590001 */  andi  $t9, $v0, 1
/* AC07C8 80049628 AFB90010 */  sw    $t9, 0x10($sp)
/* AC07CC 8004962C AFA80034 */  sw    $t0, 0x34($sp)
/* AC07D0 80049630 02002025 */  move  $a0, $s0
/* AC07D4 80049634 0C01171D */  jal   func_80045C74
/* AC07D8 80049638 27A50098 */   addiu $a1, $sp, 0x98
/* AC07DC 8004963C 10000008 */  b     .L80049660
/* AC07E0 80049640 8FA80034 */   lw    $t0, 0x34($sp)
.L80049644:
/* AC07E4 80049644 8E060018 */  lw    $a2, 0x18($s0)
/* AC07E8 80049648 304A0001 */  andi  $t2, $v0, 1
/* AC07EC 8004964C AFAA0010 */  sw    $t2, 0x10($sp)
/* AC07F0 80049650 AFA80034 */  sw    $t0, 0x34($sp)
/* AC07F4 80049654 0C011635 */  jal   func_800458D4
/* AC07F8 80049658 2507000C */   addiu $a3, $t0, 0xc
/* AC07FC 8004965C 8FA80034 */  lw    $t0, 0x34($sp)
.L80049660:
/* AC0800 80049660 850B0018 */  lh    $t3, 0x18($t0)
/* AC0804 80049664 51600028 */  beql  $t3, $zero, .L80049708
/* AC0808 80049668 A5000016 */   sh    $zero, 0x16($t0)
/* AC080C 8004966C 860C014C */  lh    $t4, 0x14c($s0)
/* AC0810 80049670 358D0020 */  ori   $t5, $t4, 0x20
/* AC0814 80049674 A60D014C */  sh    $t5, 0x14c($s0)
/* AC0818 80049678 85020018 */  lh    $v0, 0x18($t0)
/* AC081C 8004967C 87B800A6 */  lh    $t8, 0xa6($sp)
/* AC0820 80049680 850F0012 */  lh    $t7, 0x12($t0)
/* AC0824 80049684 244E0001 */  addiu $t6, $v0, 1
/* AC0828 80049688 01C20019 */  multu $t6, $v0
/* AC082C 8004968C 01F84823 */  subu  $t1, $t7, $t8
/* AC0830 80049690 0009CC00 */  sll   $t9, $t1, 0x10
/* AC0834 80049694 00195403 */  sra   $t2, $t9, 0x10
/* AC0838 80049698 87AE00A4 */  lh    $t6, 0xa4($sp)
/* AC083C 8004969C C7A400A0 */  lwc1  $f4, 0xa0($sp)
/* AC0840 800496A0 A7AE00AC */  sh    $t6, 0xac($sp)
/* AC0844 800496A4 E7A400A8 */  swc1  $f4, 0xa8($sp)
/* AC0848 800496A8 00001812 */  mflo  $v1
/* AC084C 800496AC 00031843 */  sra   $v1, $v1, 1
/* AC0850 800496B0 00031C00 */  sll   $v1, $v1, 0x10
/* AC0854 800496B4 00031C03 */  sra   $v1, $v1, 0x10
/* AC0858 800496B8 0143001A */  div   $zero, $t2, $v1
/* AC085C 800496BC 00005812 */  mflo  $t3
/* AC0860 800496C0 14600002 */  bnez  $v1, .L800496CC
/* AC0864 800496C4 00000000 */   nop
/* AC0868 800496C8 0007000D */  break 7
.L800496CC:
/* AC086C 800496CC 2401FFFF */  li    $at, -1
/* AC0870 800496D0 14610004 */  bne   $v1, $at, .L800496E4
/* AC0874 800496D4 3C018000 */   lui   $at, 0x8000
/* AC0878 800496D8 15410002 */  bne   $t2, $at, .L800496E4
/* AC087C 800496DC 00000000 */   nop
/* AC0880 800496E0 0006000D */  break 6
.L800496E4:
/* AC0884 800496E4 01620019 */  multu $t3, $v0
/* AC0888 800496E8 00006012 */  mflo  $t4
/* AC088C 800496EC 030C6821 */  addu  $t5, $t8, $t4
/* AC0890 800496F0 A7AD00AE */  sh    $t5, 0xae($sp)
/* AC0894 800496F4 850F0018 */  lh    $t7, 0x18($t0)
/* AC0898 800496F8 25E9FFFF */  addiu $t1, $t7, -1
/* AC089C 800496FC 1000004D */  b     .L80049834
/* AC08A0 80049700 A5090018 */   sh    $t1, 0x18($t0)
/* AC08A4 80049704 A5000016 */  sh    $zero, 0x16($t0)
.L80049708:
/* AC08A8 80049708 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC08AC 8004970C 44815000 */  mtc1  $at, $f10
/* AC08B0 80049710 C60800C0 */  lwc1  $f8, 0xc0($s0)
/* AC08B4 80049714 C60E00DC */  lwc1  $f14, 0xdc($s0)
/* AC08B8 80049718 C60C0004 */  lwc1  $f12, 4($s0)
/* AC08BC 8004971C 46085183 */  div.s $f6, $f10, $f8
/* AC08C0 80049720 AFA80034 */  sw    $t0, 0x34($sp)
/* AC08C4 80049724 3C074000 */  lui   $a3, 0x4000
/* AC08C8 80049728 44063000 */  mfc1  $a2, $f6
/* AC08CC 8004972C 0C010E27 */  jal   func_8004389C
/* AC08D0 80049730 00000000 */   nop
/* AC08D4 80049734 E60000DC */  swc1  $f0, 0xdc($s0)
/* AC08D8 80049738 8FA60038 */  lw    $a2, 0x38($sp)
/* AC08DC 8004973C 8FA5003C */  lw    $a1, 0x3c($sp)
/* AC08E0 80049740 0C01F124 */  jal   OLib_Vec3fDiffToVecSphGeo
/* AC08E4 80049744 27A400A8 */   addiu $a0, $sp, 0xa8
/* AC08E8 80049748 C60400DC */  lwc1  $f4, 0xdc($s0)
/* AC08EC 8004974C 3C063F4C */  lui   $a2, (0x3F4CCCCD >> 16) # lui $a2, 0x3f4c
/* AC08F0 80049750 8FA80034 */  lw    $t0, 0x34($sp)
/* AC08F4 80049754 E7A400A8 */  swc1  $f4, 0xa8($sp)
/* AC08F8 80049758 86190024 */  lh    $t9, 0x24($s0)
/* AC08FC 8004975C 34C6CCCD */  ori   $a2, (0x3F4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* AC0900 80049760 87A5009E */  lh    $a1, 0x9e($sp)
/* AC0904 80049764 332A0040 */  andi  $t2, $t9, 0x40
/* AC0908 80049768 1140000B */  beqz  $t2, .L80049798
/* AC090C 8004976C 2407000A */   li    $a3, 10
/* AC0910 80049770 85040012 */  lh    $a0, 0x12($t0)
/* AC0914 80049774 3C063F19 */  lui   $a2, (0x3F19999A >> 16) # lui $a2, 0x3f19
/* AC0918 80049778 34C6999A */  ori   $a2, (0x3F19999A & 0xFFFF) # ori $a2, $a2, 0x999a
/* AC091C 8004977C AFA80034 */  sw    $t0, 0x34($sp)
/* AC0920 80049780 87A5009E */  lh    $a1, 0x9e($sp)
/* AC0924 80049784 0C010E47 */  jal   func_8004391C
/* AC0928 80049788 2407000A */   li    $a3, 10
/* AC092C 8004978C 8FA80034 */  lw    $t0, 0x34($sp)
/* AC0930 80049790 10000006 */  b     .L800497AC
/* AC0934 80049794 A7A200AE */   sh    $v0, 0xae($sp)
.L80049798:
/* AC0938 80049798 85040012 */  lh    $a0, 0x12($t0)
/* AC093C 8004979C 0C010E47 */  jal   func_8004391C
/* AC0940 800497A0 AFA80034 */   sw    $t0, 0x34($sp)
/* AC0944 800497A4 8FA80034 */  lw    $t0, 0x34($sp)
/* AC0948 800497A8 A7A200AE */  sh    $v0, 0xae($sp)
.L800497AC:
/* AC094C 800497AC 860B0024 */  lh    $t3, 0x24($s0)
/* AC0950 800497B0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC0954 800497B4 44815000 */  mtc1  $at, $f10
/* AC0958 800497B8 31780001 */  andi  $t8, $t3, 1
/* AC095C 800497BC 53000008 */  beql  $t8, $zero, .L800497E0
/* AC0960 800497C0 85040014 */   lh    $a0, 0x14($t0)
/* AC0964 800497C4 850C0014 */  lh    $t4, 0x14($t0)
/* AC0968 800497C8 850D0010 */  lh    $t5, 0x10($t0)
/* AC096C 800497CC 018D2023 */  subu  $a0, $t4, $t5
/* AC0970 800497D0 00042400 */  sll   $a0, $a0, 0x10
/* AC0974 800497D4 10000002 */  b     .L800497E0
/* AC0978 800497D8 00042403 */   sra   $a0, $a0, 0x10
/* AC097C 800497DC 85040014 */  lh    $a0, 0x14($t0)
.L800497E0:
/* AC0980 800497E0 C60800C4 */  lwc1  $f8, 0xc4($s0)
/* AC0984 800497E4 87A5009C */  lh    $a1, 0x9c($sp)
/* AC0988 800497E8 24070004 */  li    $a3, 4
/* AC098C 800497EC 46085183 */  div.s $f6, $f10, $f8
/* AC0990 800497F0 44063000 */  mfc1  $a2, $f6
/* AC0994 800497F4 0C010E47 */  jal   func_8004391C
/* AC0998 800497F8 00000000 */   nop
/* AC099C 800497FC 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC09A0 80049800 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC09A4 80049804 A7A200AC */  sh    $v0, 0xac($sp)
/* AC09A8 80049808 8464019E */  lh    $a0, 0x19e($v1)
/* AC09AC 8004980C 0082082A */  slt   $at, $a0, $v0
/* AC09B0 80049810 50200003 */  beql  $at, $zero, .L80049820
/* AC09B4 80049814 846201D8 */   lh    $v0, 0x1d8($v1)
/* AC09B8 80049818 A7A400AC */  sh    $a0, 0xac($sp)
/* AC09BC 8004981C 846201D8 */  lh    $v0, 0x1d8($v1)
.L80049820:
/* AC09C0 80049820 87AE00AC */  lh    $t6, 0xac($sp)
/* AC09C4 80049824 01C2082A */  slt   $at, $t6, $v0
/* AC09C8 80049828 50200003 */  beql  $at, $zero, .L80049838
/* AC09CC 8004982C 8FA40038 */   lw    $a0, 0x38($sp)
/* AC09D0 80049830 A7A200AC */  sh    $v0, 0xac($sp)
.L80049834:
/* AC09D4 80049834 8FA40038 */  lw    $a0, 0x38($sp)
.L80049838:
/* AC09D8 80049838 8FA5003C */  lw    $a1, 0x3c($sp)
/* AC09DC 8004983C 0C010F0A */  jal   func_80043C28
/* AC09E0 80049840 27A600A8 */   addiu $a2, $sp, 0xa8
/* AC09E4 80049844 860F0140 */  lh    $t7, 0x140($s0)
/* AC09E8 80049848 24010007 */  li    $at, 7
/* AC09EC 8004984C 8FA90038 */  lw    $t1, 0x38($sp)
/* AC09F0 80049850 55E10032 */  bnel  $t7, $at, .L8004991C
/* AC09F4 80049854 C60C0010 */   lwc1  $f12, 0x10($s0)
/* AC09F8 80049858 8D2A0000 */  lw    $t2, ($t1)
/* AC09FC 8004985C 27A6006C */  addiu $a2, $sp, 0x6c
/* AC0A00 80049860 3C180001 */  lui   $t8, 1
/* AC0A04 80049864 ACCA0000 */  sw    $t2, ($a2)
/* AC0A08 80049868 8D390004 */  lw    $t9, 4($t1)
/* AC0A0C 8004986C 02002025 */  move  $a0, $s0
/* AC0A10 80049870 ACD90004 */  sw    $t9, 4($a2)
/* AC0A14 80049874 8D2A0008 */  lw    $t2, 8($t1)
/* AC0A18 80049878 ACCA0008 */  sw    $t2, 8($a2)
/* AC0A1C 8004987C 8E0B008C */  lw    $t3, 0x8c($s0)
/* AC0A20 80049880 030BC021 */  addu  $t8, $t8, $t3
/* AC0A24 80049884 93180A39 */  lbu   $t8, 0xa39($t8)
/* AC0A28 80049888 13000006 */  beqz  $t8, .L800498A4
/* AC0A2C 8004988C 00000000 */   nop
/* AC0A30 80049890 860C0024 */  lh    $t4, 0x24($s0)
/* AC0A34 80049894 8FA5003C */  lw    $a1, 0x3c($sp)
/* AC0A38 80049898 318D0010 */  andi  $t5, $t4, 0x10
/* AC0A3C 8004989C 11A0000C */  beqz  $t5, .L800498D0
/* AC0A40 800498A0 00000000 */   nop
.L800498A4:
/* AC0A44 800498A4 0C010F46 */  jal   func_80043D18
/* AC0A48 800498A8 8FA5003C */   lw    $a1, 0x3c($sp)
/* AC0A4C 800498AC 27AF006C */  addiu $t7, $sp, 0x6c
/* AC0A50 800498B0 8DF90000 */  lw    $t9, ($t7)
/* AC0A54 800498B4 8FAE0040 */  lw    $t6, 0x40($sp)
/* AC0A58 800498B8 ADD90000 */  sw    $t9, ($t6)
/* AC0A5C 800498BC 8DE90004 */  lw    $t1, 4($t7)
/* AC0A60 800498C0 ADC90004 */  sw    $t1, 4($t6)
/* AC0A64 800498C4 8DF90008 */  lw    $t9, 8($t7)
/* AC0A68 800498C8 10000013 */  b     .L80049918
/* AC0A6C 800498CC ADD90008 */   sw    $t9, 8($t6)
.L800498D0:
/* AC0A70 800498D0 0C010FE5 */  jal   func_80043F94
/* AC0A74 800498D4 02002025 */   move  $a0, $s0
/* AC0A78 800498D8 27AA006C */  addiu $t2, $sp, 0x6c
/* AC0A7C 800498DC 8FA50040 */  lw    $a1, 0x40($sp)
/* AC0A80 800498E0 8D580000 */  lw    $t8, ($t2)
/* AC0A84 800498E4 27A400A8 */  addiu $a0, $sp, 0xa8
/* AC0A88 800498E8 ACB80000 */  sw    $t8, ($a1)
/* AC0A8C 800498EC 8D4B0004 */  lw    $t3, 4($t2)
/* AC0A90 800498F0 ACAB0004 */  sw    $t3, 4($a1)
/* AC0A94 800498F4 8D580008 */  lw    $t8, 8($t2)
/* AC0A98 800498F8 ACB80008 */  sw    $t8, 8($a1)
/* AC0A9C 800498FC 0C01F124 */  jal   OLib_Vec3fDiffToVecSphGeo
/* AC0AA0 80049900 8FA6003C */   lw    $a2, 0x3c($sp)
/* AC0AA4 80049904 87AC00AC */  lh    $t4, 0xac($sp)
/* AC0AA8 80049908 A60C0134 */  sh    $t4, 0x134($s0)
/* AC0AAC 8004990C 87AD00AE */  lh    $t5, 0xae($sp)
/* AC0AB0 80049910 A6000138 */  sh    $zero, 0x138($s0)
/* AC0AB4 80049914 A60D0136 */  sh    $t5, 0x136($s0)
.L80049918:
/* AC0AB8 80049918 C60C0010 */  lwc1  $f12, 0x10($s0)
.L8004991C:
/* AC0ABC 8004991C C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC0AC0 80049920 8E0600D4 */  lw    $a2, 0xd4($s0)
/* AC0AC4 80049924 0C010E27 */  jal   func_8004389C
/* AC0AC8 80049928 3C073F80 */   lui   $a3, 0x3f80
/* AC0ACC 8004992C E60000FC */  swc1  $f0, 0xfc($s0)
/* AC0AD0 80049930 00002025 */  move  $a0, $zero
/* AC0AD4 80049934 8605015A */  lh    $a1, 0x15a($s0)
/* AC0AD8 80049938 3C063F00 */  lui   $a2, 0x3f00
/* AC0ADC 8004993C 0C010E47 */  jal   func_8004391C
/* AC0AE0 80049940 2407000A */   li    $a3, 10
/* AC0AE4 80049944 A602015A */  sh    $v0, 0x15a($s0)
/* AC0AE8 80049948 87AE006A */  lh    $t6, 0x6a($sp)
/* AC0AEC 8004994C 51C00004 */  beql  $t6, $zero, .L80049960
/* AC0AF0 80049950 C6000014 */   lwc1  $f0, 0x14($s0)
/* AC0AF4 80049954 10000002 */  b     .L80049960
/* AC0AF8 80049958 C600001C */   lwc1  $f0, 0x1c($s0)
/* AC0AFC 8004995C C6000014 */  lwc1  $f0, 0x14($s0)
.L80049960:
/* AC0B00 80049960 44050000 */  mfc1  $a1, $f0
/* AC0B04 80049964 0C011429 */  jal   func_800450A4
/* AC0B08 80049968 02002025 */   move  $a0, $s0
/* AC0B0C 8004996C E6000100 */  swc1  $f0, 0x100($s0)
/* AC0B10 80049970 8FBF0024 */  lw    $ra, 0x24($sp)
/* AC0B14 80049974 8FB00020 */  lw    $s0, 0x20($sp)
/* AC0B18 80049978 27BD00C8 */  addiu $sp, $sp, 0xc8
/* AC0B1C 8004997C 03E00008 */  jr    $ra
/* AC0B20 80049980 00000000 */   nop
