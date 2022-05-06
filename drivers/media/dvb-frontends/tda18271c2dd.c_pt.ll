; ModuleID = '/llk/IR/drivers/media/dvb-frontends/tda18271c2dd.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda18271c2dd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda18271c2dd_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda18271c2dd_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda18271c2dd_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.SMapI = type { i32, i32 }
%struct.SRFBandMap = type { i32, i32, i32, i32 }
%struct.SMap = type { i32, i8 }
%struct.SStandardParam = type { i32, i32, i8, i8 }
%struct.SMap2 = type { i32, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.tda_state = type { ptr, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, [39 x i8], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], i8, i8 }

@tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"NXP TDA18271C2D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47125000, i32 865000000, i32 62500, i32 0, i32 0, i32 0 }, ptr @release, ptr @init, ptr @sleep, ptr null, ptr null, ptr @set_params, ptr null, ptr null, ptr null, ptr @get_bandwidth, ptr @get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_tda18271c2dd_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda18271c2dd_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda18271c2dd_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda18271c2dd_attach to i32), ptr @__kstrtab_tda18271c2dd_attach, ptr @__kstrtabns_tda18271c2dd_attach }, section "___ksymtab_gpl+tda18271c2dd_attach", align 4
@__UNIQUE_ID_description249 = internal constant [30 x i8] c"description=TDA18271C2 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [10 x i8] c"author=DD\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [44 x i8] c"\013tda18271c2dd: i2c write error at addr %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\014%s: i2c wr: len=%d is too big!\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"tda18271c2dd\00", align 1
@m_RF_Cal_Map = internal unnamed_addr constant [438 x %struct.SMapI] [%struct.SMapI { i32 41000000, i32 15 }, %struct.SMapI { i32 43000000, i32 28 }, %struct.SMapI { i32 45000000, i32 47 }, %struct.SMapI { i32 46000000, i32 57 }, %struct.SMapI { i32 47000000, i32 64 }, %struct.SMapI { i32 47900000, i32 80 }, %struct.SMapI { i32 49100000, i32 22 }, %struct.SMapI { i32 50000000, i32 24 }, %struct.SMapI { i32 51000000, i32 32 }, %struct.SMapI { i32 53000000, i32 40 }, %struct.SMapI { i32 55000000, i32 43 }, %struct.SMapI { i32 56000000, i32 50 }, %struct.SMapI { i32 57000000, i32 53 }, %struct.SMapI { i32 58000000, i32 62 }, %struct.SMapI { i32 59000000, i32 67 }, %struct.SMapI { i32 60000000, i32 78 }, %struct.SMapI { i32 61100000, i32 85 }, %struct.SMapI { i32 63000000, i32 15 }, %struct.SMapI { i32 64000000, i32 17 }, %struct.SMapI { i32 65000000, i32 18 }, %struct.SMapI { i32 66000000, i32 21 }, %struct.SMapI { i32 67000000, i32 22 }, %struct.SMapI { i32 68000000, i32 23 }, %struct.SMapI { i32 70000000, i32 25 }, %struct.SMapI { i32 71000000, i32 28 }, %struct.SMapI { i32 72000000, i32 29 }, %struct.SMapI { i32 73000000, i32 31 }, %struct.SMapI { i32 74000000, i32 32 }, %struct.SMapI { i32 75000000, i32 33 }, %struct.SMapI { i32 76000000, i32 36 }, %struct.SMapI { i32 77000000, i32 37 }, %struct.SMapI { i32 78000000, i32 39 }, %struct.SMapI { i32 80000000, i32 40 }, %struct.SMapI { i32 81000000, i32 41 }, %struct.SMapI { i32 82000000, i32 45 }, %struct.SMapI { i32 83000000, i32 46 }, %struct.SMapI { i32 84000000, i32 47 }, %struct.SMapI { i32 85000000, i32 49 }, %struct.SMapI { i32 86000000, i32 51 }, %struct.SMapI { i32 87000000, i32 52 }, %struct.SMapI { i32 88000000, i32 53 }, %struct.SMapI { i32 89000000, i32 55 }, %struct.SMapI { i32 90000000, i32 56 }, %struct.SMapI { i32 91000000, i32 57 }, %struct.SMapI { i32 93000000, i32 60 }, %struct.SMapI { i32 94000000, i32 62 }, %struct.SMapI { i32 95000000, i32 63 }, %struct.SMapI { i32 96000000, i32 64 }, %struct.SMapI { i32 97000000, i32 66 }, %struct.SMapI { i32 99000000, i32 69 }, %struct.SMapI { i32 100000000, i32 70 }, %struct.SMapI { i32 102000000, i32 72 }, %struct.SMapI { i32 103000000, i32 74 }, %struct.SMapI { i32 105000000, i32 77 }, %struct.SMapI { i32 106000000, i32 78 }, %struct.SMapI { i32 107000000, i32 80 }, %struct.SMapI { i32 108000000, i32 81 }, %struct.SMapI { i32 110000000, i32 84 }, %struct.SMapI { i32 111000000, i32 86 }, %struct.SMapI { i32 112000000, i32 87 }, %struct.SMapI { i32 113000000, i32 88 }, %struct.SMapI { i32 114000000, i32 89 }, %struct.SMapI { i32 115000000, i32 92 }, %struct.SMapI { i32 116000000, i32 93 }, %struct.SMapI { i32 117000000, i32 95 }, %struct.SMapI { i32 119000000, i32 96 }, %struct.SMapI { i32 120000000, i32 100 }, %struct.SMapI { i32 121000000, i32 101 }, %struct.SMapI { i32 122000000, i32 102 }, %struct.SMapI { i32 123000000, i32 104 }, %struct.SMapI { i32 124000000, i32 105 }, %struct.SMapI { i32 125000000, i32 108 }, %struct.SMapI { i32 126000000, i32 109 }, %struct.SMapI { i32 127000000, i32 110 }, %struct.SMapI { i32 128000000, i32 112 }, %struct.SMapI { i32 129000000, i32 113 }, %struct.SMapI { i32 130000000, i32 117 }, %struct.SMapI { i32 131000000, i32 119 }, %struct.SMapI { i32 132000000, i32 120 }, %struct.SMapI { i32 133000000, i32 123 }, %struct.SMapI { i32 134000000, i32 126 }, %struct.SMapI { i32 135000000, i32 129 }, %struct.SMapI { i32 136000000, i32 130 }, %struct.SMapI { i32 137000000, i32 135 }, %struct.SMapI { i32 138000000, i32 136 }, %struct.SMapI { i32 139000000, i32 141 }, %struct.SMapI { i32 140000000, i32 142 }, %struct.SMapI { i32 141000000, i32 145 }, %struct.SMapI { i32 142000000, i32 149 }, %struct.SMapI { i32 143000000, i32 154 }, %struct.SMapI { i32 144000000, i32 157 }, %struct.SMapI { i32 145000000, i32 161 }, %struct.SMapI { i32 146000000, i32 162 }, %struct.SMapI { i32 147000000, i32 164 }, %struct.SMapI { i32 148000000, i32 169 }, %struct.SMapI { i32 149000000, i32 174 }, %struct.SMapI { i32 150000000, i32 176 }, %struct.SMapI { i32 151000000, i32 177 }, %struct.SMapI { i32 152000000, i32 183 }, %struct.SMapI { i32 152600000, i32 189 }, %struct.SMapI { i32 154000000, i32 32 }, %struct.SMapI { i32 155000000, i32 34 }, %struct.SMapI { i32 156000000, i32 36 }, %struct.SMapI { i32 157000000, i32 37 }, %struct.SMapI { i32 158000000, i32 39 }, %struct.SMapI { i32 159000000, i32 41 }, %struct.SMapI { i32 160000000, i32 44 }, %struct.SMapI { i32 161000000, i32 45 }, %struct.SMapI { i32 163000000, i32 46 }, %struct.SMapI { i32 164000000, i32 47 }, %struct.SMapI { i32 164700000, i32 48 }, %struct.SMapI { i32 166000000, i32 17 }, %struct.SMapI { i32 167000000, i32 18 }, %struct.SMapI { i32 168000000, i32 19 }, %struct.SMapI { i32 169000000, i32 20 }, %struct.SMapI { i32 170000000, i32 21 }, %struct.SMapI { i32 172000000, i32 22 }, %struct.SMapI { i32 173000000, i32 23 }, %struct.SMapI { i32 174000000, i32 24 }, %struct.SMapI { i32 175000000, i32 26 }, %struct.SMapI { i32 176000000, i32 27 }, %struct.SMapI { i32 178000000, i32 29 }, %struct.SMapI { i32 179000000, i32 30 }, %struct.SMapI { i32 180000000, i32 31 }, %struct.SMapI { i32 181000000, i32 32 }, %struct.SMapI { i32 182000000, i32 33 }, %struct.SMapI { i32 183000000, i32 34 }, %struct.SMapI { i32 184000000, i32 36 }, %struct.SMapI { i32 185000000, i32 37 }, %struct.SMapI { i32 186000000, i32 38 }, %struct.SMapI { i32 187000000, i32 39 }, %struct.SMapI { i32 188000000, i32 41 }, %struct.SMapI { i32 189000000, i32 42 }, %struct.SMapI { i32 190000000, i32 44 }, %struct.SMapI { i32 191000000, i32 45 }, %struct.SMapI { i32 192000000, i32 46 }, %struct.SMapI { i32 193000000, i32 47 }, %struct.SMapI { i32 194000000, i32 48 }, %struct.SMapI { i32 195000000, i32 51 }, %struct.SMapI { i32 196000000, i32 53 }, %struct.SMapI { i32 198000000, i32 54 }, %struct.SMapI { i32 200000000, i32 56 }, %struct.SMapI { i32 201000000, i32 60 }, %struct.SMapI { i32 202000000, i32 61 }, %struct.SMapI { i32 203500000, i32 62 }, %struct.SMapI { i32 206000000, i32 14 }, %struct.SMapI { i32 208000000, i32 15 }, %struct.SMapI { i32 212000000, i32 16 }, %struct.SMapI { i32 216000000, i32 17 }, %struct.SMapI { i32 217000000, i32 18 }, %struct.SMapI { i32 218000000, i32 19 }, %struct.SMapI { i32 220000000, i32 20 }, %struct.SMapI { i32 222000000, i32 21 }, %struct.SMapI { i32 225000000, i32 22 }, %struct.SMapI { i32 228000000, i32 23 }, %struct.SMapI { i32 231000000, i32 24 }, %struct.SMapI { i32 234000000, i32 25 }, %struct.SMapI { i32 235000000, i32 26 }, %struct.SMapI { i32 236000000, i32 27 }, %struct.SMapI { i32 237000000, i32 28 }, %struct.SMapI { i32 240000000, i32 29 }, %struct.SMapI { i32 242000000, i32 30 }, %struct.SMapI { i32 244000000, i32 31 }, %struct.SMapI { i32 247000000, i32 32 }, %struct.SMapI { i32 249000000, i32 33 }, %struct.SMapI { i32 252000000, i32 34 }, %struct.SMapI { i32 253000000, i32 35 }, %struct.SMapI { i32 254000000, i32 36 }, %struct.SMapI { i32 256000000, i32 37 }, %struct.SMapI { i32 259000000, i32 38 }, %struct.SMapI { i32 262000000, i32 39 }, %struct.SMapI { i32 264000000, i32 40 }, %struct.SMapI { i32 267000000, i32 41 }, %struct.SMapI { i32 269000000, i32 42 }, %struct.SMapI { i32 271000000, i32 43 }, %struct.SMapI { i32 273000000, i32 44 }, %struct.SMapI { i32 275000000, i32 45 }, %struct.SMapI { i32 277000000, i32 46 }, %struct.SMapI { i32 279000000, i32 47 }, %struct.SMapI { i32 282000000, i32 48 }, %struct.SMapI { i32 284000000, i32 49 }, %struct.SMapI { i32 286000000, i32 50 }, %struct.SMapI { i32 287000000, i32 51 }, %struct.SMapI { i32 290000000, i32 52 }, %struct.SMapI { i32 293000000, i32 53 }, %struct.SMapI { i32 295000000, i32 54 }, %struct.SMapI { i32 297000000, i32 55 }, %struct.SMapI { i32 300000000, i32 56 }, %struct.SMapI { i32 303000000, i32 57 }, %struct.SMapI { i32 305000000, i32 58 }, %struct.SMapI { i32 306000000, i32 59 }, %struct.SMapI { i32 307000000, i32 60 }, %struct.SMapI { i32 310000000, i32 61 }, %struct.SMapI { i32 312000000, i32 62 }, %struct.SMapI { i32 315000000, i32 63 }, %struct.SMapI { i32 318000000, i32 64 }, %struct.SMapI { i32 320000000, i32 65 }, %struct.SMapI { i32 323000000, i32 66 }, %struct.SMapI { i32 324000000, i32 67 }, %struct.SMapI { i32 325000000, i32 68 }, %struct.SMapI { i32 327000000, i32 69 }, %struct.SMapI { i32 331000000, i32 70 }, %struct.SMapI { i32 334000000, i32 71 }, %struct.SMapI { i32 337000000, i32 72 }, %struct.SMapI { i32 339000000, i32 73 }, %struct.SMapI { i32 340000000, i32 74 }, %struct.SMapI { i32 341000000, i32 75 }, %struct.SMapI { i32 343000000, i32 76 }, %struct.SMapI { i32 345000000, i32 77 }, %struct.SMapI { i32 349000000, i32 78 }, %struct.SMapI { i32 352000000, i32 79 }, %struct.SMapI { i32 353000000, i32 80 }, %struct.SMapI { i32 355000000, i32 81 }, %struct.SMapI { i32 357000000, i32 82 }, %struct.SMapI { i32 359000000, i32 83 }, %struct.SMapI { i32 361000000, i32 84 }, %struct.SMapI { i32 362000000, i32 85 }, %struct.SMapI { i32 364000000, i32 86 }, %struct.SMapI { i32 368000000, i32 87 }, %struct.SMapI { i32 370000000, i32 88 }, %struct.SMapI { i32 372000000, i32 89 }, %struct.SMapI { i32 375000000, i32 90 }, %struct.SMapI { i32 376000000, i32 91 }, %struct.SMapI { i32 377000000, i32 92 }, %struct.SMapI { i32 379000000, i32 93 }, %struct.SMapI { i32 382000000, i32 94 }, %struct.SMapI { i32 384000000, i32 95 }, %struct.SMapI { i32 385000000, i32 96 }, %struct.SMapI { i32 386000000, i32 97 }, %struct.SMapI { i32 388000000, i32 98 }, %struct.SMapI { i32 390000000, i32 99 }, %struct.SMapI { i32 393000000, i32 100 }, %struct.SMapI { i32 394000000, i32 101 }, %struct.SMapI { i32 396000000, i32 102 }, %struct.SMapI { i32 397000000, i32 103 }, %struct.SMapI { i32 398000000, i32 104 }, %struct.SMapI { i32 400000000, i32 105 }, %struct.SMapI { i32 402000000, i32 106 }, %struct.SMapI { i32 403000000, i32 107 }, %struct.SMapI { i32 407000000, i32 108 }, %struct.SMapI { i32 408000000, i32 109 }, %struct.SMapI { i32 409000000, i32 110 }, %struct.SMapI { i32 410000000, i32 111 }, %struct.SMapI { i32 411000000, i32 112 }, %struct.SMapI { i32 412000000, i32 113 }, %struct.SMapI { i32 413000000, i32 114 }, %struct.SMapI { i32 414000000, i32 115 }, %struct.SMapI { i32 417000000, i32 116 }, %struct.SMapI { i32 418000000, i32 117 }, %struct.SMapI { i32 420000000, i32 118 }, %struct.SMapI { i32 422000000, i32 119 }, %struct.SMapI { i32 423000000, i32 120 }, %struct.SMapI { i32 424000000, i32 121 }, %struct.SMapI { i32 427000000, i32 122 }, %struct.SMapI { i32 428000000, i32 123 }, %struct.SMapI { i32 429000000, i32 125 }, %struct.SMapI { i32 432000000, i32 127 }, %struct.SMapI { i32 434000000, i32 128 }, %struct.SMapI { i32 435000000, i32 129 }, %struct.SMapI { i32 436000000, i32 131 }, %struct.SMapI { i32 437000000, i32 132 }, %struct.SMapI { i32 438000000, i32 133 }, %struct.SMapI { i32 439000000, i32 134 }, %struct.SMapI { i32 440000000, i32 135 }, %struct.SMapI { i32 441000000, i32 136 }, %struct.SMapI { i32 442000000, i32 137 }, %struct.SMapI { i32 445000000, i32 138 }, %struct.SMapI { i32 446000000, i32 139 }, %struct.SMapI { i32 447000000, i32 140 }, %struct.SMapI { i32 448000000, i32 142 }, %struct.SMapI { i32 449000000, i32 143 }, %struct.SMapI { i32 450000000, i32 144 }, %struct.SMapI { i32 452000000, i32 145 }, %struct.SMapI { i32 453000000, i32 147 }, %struct.SMapI { i32 454000000, i32 148 }, %struct.SMapI { i32 456000000, i32 150 }, %struct.SMapI { i32 457800000, i32 152 }, %struct.SMapI { i32 461000000, i32 17 }, %struct.SMapI { i32 468000000, i32 18 }, %struct.SMapI { i32 472000000, i32 19 }, %struct.SMapI { i32 473000000, i32 20 }, %struct.SMapI { i32 474000000, i32 21 }, %struct.SMapI { i32 481000000, i32 22 }, %struct.SMapI { i32 486000000, i32 23 }, %struct.SMapI { i32 491000000, i32 24 }, %struct.SMapI { i32 498000000, i32 25 }, %struct.SMapI { i32 499000000, i32 26 }, %struct.SMapI { i32 501000000, i32 27 }, %struct.SMapI { i32 506000000, i32 28 }, %struct.SMapI { i32 511000000, i32 29 }, %struct.SMapI { i32 516000000, i32 30 }, %struct.SMapI { i32 520000000, i32 31 }, %struct.SMapI { i32 521000000, i32 32 }, %struct.SMapI { i32 525000000, i32 33 }, %struct.SMapI { i32 529000000, i32 34 }, %struct.SMapI { i32 533000000, i32 35 }, %struct.SMapI { i32 539000000, i32 36 }, %struct.SMapI { i32 541000000, i32 37 }, %struct.SMapI { i32 547000000, i32 38 }, %struct.SMapI { i32 549000000, i32 39 }, %struct.SMapI { i32 551000000, i32 40 }, %struct.SMapI { i32 556000000, i32 41 }, %struct.SMapI { i32 561000000, i32 42 }, %struct.SMapI { i32 563000000, i32 43 }, %struct.SMapI { i32 565000000, i32 44 }, %struct.SMapI { i32 569000000, i32 45 }, %struct.SMapI { i32 571000000, i32 46 }, %struct.SMapI { i32 577000000, i32 47 }, %struct.SMapI { i32 580000000, i32 48 }, %struct.SMapI { i32 582000000, i32 49 }, %struct.SMapI { i32 584000000, i32 50 }, %struct.SMapI { i32 588000000, i32 51 }, %struct.SMapI { i32 591000000, i32 52 }, %struct.SMapI { i32 596000000, i32 53 }, %struct.SMapI { i32 598000000, i32 54 }, %struct.SMapI { i32 603000000, i32 55 }, %struct.SMapI { i32 604000000, i32 56 }, %struct.SMapI { i32 606000000, i32 57 }, %struct.SMapI { i32 612000000, i32 58 }, %struct.SMapI { i32 615000000, i32 59 }, %struct.SMapI { i32 617000000, i32 60 }, %struct.SMapI { i32 621000000, i32 61 }, %struct.SMapI { i32 622000000, i32 62 }, %struct.SMapI { i32 625000000, i32 63 }, %struct.SMapI { i32 632000000, i32 64 }, %struct.SMapI { i32 633000000, i32 65 }, %struct.SMapI { i32 634000000, i32 66 }, %struct.SMapI { i32 642000000, i32 67 }, %struct.SMapI { i32 643000000, i32 68 }, %struct.SMapI { i32 647000000, i32 69 }, %struct.SMapI { i32 650000000, i32 70 }, %struct.SMapI { i32 652000000, i32 71 }, %struct.SMapI { i32 657000000, i32 72 }, %struct.SMapI { i32 661000000, i32 73 }, %struct.SMapI { i32 662000000, i32 74 }, %struct.SMapI { i32 665000000, i32 75 }, %struct.SMapI { i32 667000000, i32 76 }, %struct.SMapI { i32 670000000, i32 77 }, %struct.SMapI { i32 673000000, i32 78 }, %struct.SMapI { i32 676000000, i32 79 }, %struct.SMapI { i32 677000000, i32 80 }, %struct.SMapI { i32 681000000, i32 81 }, %struct.SMapI { i32 683000000, i32 82 }, %struct.SMapI { i32 686000000, i32 83 }, %struct.SMapI { i32 688000000, i32 84 }, %struct.SMapI { i32 689000000, i32 85 }, %struct.SMapI { i32 691000000, i32 86 }, %struct.SMapI { i32 695000000, i32 87 }, %struct.SMapI { i32 698000000, i32 88 }, %struct.SMapI { i32 703000000, i32 89 }, %struct.SMapI { i32 704000000, i32 90 }, %struct.SMapI { i32 705000000, i32 91 }, %struct.SMapI { i32 707000000, i32 92 }, %struct.SMapI { i32 710000000, i32 93 }, %struct.SMapI { i32 712000000, i32 94 }, %struct.SMapI { i32 717000000, i32 95 }, %struct.SMapI { i32 718000000, i32 96 }, %struct.SMapI { i32 721000000, i32 97 }, %struct.SMapI { i32 722000000, i32 98 }, %struct.SMapI { i32 723000000, i32 99 }, %struct.SMapI { i32 725000000, i32 100 }, %struct.SMapI { i32 727000000, i32 101 }, %struct.SMapI { i32 730000000, i32 102 }, %struct.SMapI { i32 732000000, i32 103 }, %struct.SMapI { i32 735000000, i32 104 }, %struct.SMapI { i32 740000000, i32 105 }, %struct.SMapI { i32 741000000, i32 106 }, %struct.SMapI { i32 742000000, i32 107 }, %struct.SMapI { i32 743000000, i32 108 }, %struct.SMapI { i32 745000000, i32 109 }, %struct.SMapI { i32 747000000, i32 110 }, %struct.SMapI { i32 748000000, i32 111 }, %struct.SMapI { i32 750000000, i32 112 }, %struct.SMapI { i32 752000000, i32 113 }, %struct.SMapI { i32 754000000, i32 114 }, %struct.SMapI { i32 757000000, i32 115 }, %struct.SMapI { i32 758000000, i32 116 }, %struct.SMapI { i32 760000000, i32 117 }, %struct.SMapI { i32 763000000, i32 118 }, %struct.SMapI { i32 764000000, i32 119 }, %struct.SMapI { i32 766000000, i32 120 }, %struct.SMapI { i32 767000000, i32 121 }, %struct.SMapI { i32 768000000, i32 122 }, %struct.SMapI { i32 773000000, i32 123 }, %struct.SMapI { i32 774000000, i32 124 }, %struct.SMapI { i32 776000000, i32 125 }, %struct.SMapI { i32 777000000, i32 126 }, %struct.SMapI { i32 778000000, i32 127 }, %struct.SMapI { i32 779000000, i32 128 }, %struct.SMapI { i32 781000000, i32 129 }, %struct.SMapI { i32 783000000, i32 130 }, %struct.SMapI { i32 784000000, i32 131 }, %struct.SMapI { i32 785000000, i32 132 }, %struct.SMapI { i32 786000000, i32 133 }, %struct.SMapI { i32 793000000, i32 134 }, %struct.SMapI { i32 794000000, i32 135 }, %struct.SMapI { i32 795000000, i32 136 }, %struct.SMapI { i32 797000000, i32 137 }, %struct.SMapI { i32 799000000, i32 138 }, %struct.SMapI { i32 801000000, i32 139 }, %struct.SMapI { i32 802000000, i32 140 }, %struct.SMapI { i32 803000000, i32 141 }, %struct.SMapI { i32 804000000, i32 142 }, %struct.SMapI { i32 810000000, i32 144 }, %struct.SMapI { i32 811000000, i32 145 }, %struct.SMapI { i32 812000000, i32 146 }, %struct.SMapI { i32 814000000, i32 147 }, %struct.SMapI { i32 816000000, i32 148 }, %struct.SMapI { i32 817000000, i32 150 }, %struct.SMapI { i32 818000000, i32 151 }, %struct.SMapI { i32 820000000, i32 152 }, %struct.SMapI { i32 821000000, i32 153 }, %struct.SMapI { i32 822000000, i32 154 }, %struct.SMapI { i32 828000000, i32 155 }, %struct.SMapI { i32 829000000, i32 157 }, %struct.SMapI { i32 830000000, i32 159 }, %struct.SMapI { i32 831000000, i32 160 }, %struct.SMapI { i32 833000000, i32 161 }, %struct.SMapI { i32 835000000, i32 162 }, %struct.SMapI { i32 836000000, i32 163 }, %struct.SMapI { i32 837000000, i32 164 }, %struct.SMapI { i32 838000000, i32 166 }, %struct.SMapI { i32 840000000, i32 168 }, %struct.SMapI { i32 842000000, i32 169 }, %struct.SMapI { i32 845000000, i32 170 }, %struct.SMapI { i32 846000000, i32 171 }, %struct.SMapI { i32 847000000, i32 173 }, %struct.SMapI { i32 848000000, i32 174 }, %struct.SMapI { i32 852000000, i32 175 }, %struct.SMapI { i32 853000000, i32 176 }, %struct.SMapI { i32 858000000, i32 177 }, %struct.SMapI { i32 860000000, i32 178 }, %struct.SMapI { i32 861000000, i32 179 }, %struct.SMapI { i32 862000000, i32 180 }, %struct.SMapI { i32 863000000, i32 182 }, %struct.SMapI { i32 864000000, i32 184 }, %struct.SMapI { i32 865000000, i32 185 }, %struct.SMapI zeroinitializer], align 4
@m_RF_Band_Map = internal unnamed_addr constant [7 x %struct.SRFBandMap] [%struct.SRFBandMap { i32 47900000, i32 46000000, i32 0, i32 0 }, %struct.SRFBandMap { i32 61100000, i32 52200000, i32 0, i32 0 }, %struct.SRFBandMap { i32 152600000, i32 70100000, i32 136800000, i32 0 }, %struct.SRFBandMap { i32 164700000, i32 156700000, i32 0, i32 0 }, %struct.SRFBandMap { i32 203500000, i32 186250000, i32 0, i32 0 }, %struct.SRFBandMap { i32 457800000, i32 230000000, i32 345000000, i32 426000000 }, %struct.SRFBandMap { i32 865000000, i32 489500000, i32 697500000, i32 842000000 }], align 4
@m_RF_Cal_DC_Over_DT_Map = internal unnamed_addr constant [102 x %struct.SMap] [%struct.SMap { i32 47900000, i8 0 }, %struct.SMap { i32 55000000, i8 0 }, %struct.SMap { i32 61100000, i8 10 }, %struct.SMap { i32 64000000, i8 10 }, %struct.SMap { i32 82000000, i8 20 }, %struct.SMap { i32 84000000, i8 25 }, %struct.SMap { i32 119000000, i8 28 }, %struct.SMap { i32 124000000, i8 32 }, %struct.SMap { i32 129000000, i8 42 }, %struct.SMap { i32 134000000, i8 50 }, %struct.SMap { i32 139000000, i8 57 }, %struct.SMap { i32 144000000, i8 62 }, %struct.SMap { i32 149000000, i8 63 }, %struct.SMap { i32 152600000, i8 64 }, %struct.SMap { i32 154000000, i8 64 }, %struct.SMap { i32 164700000, i8 65 }, %struct.SMap { i32 203500000, i8 50 }, %struct.SMap { i32 353000000, i8 25 }, %struct.SMap { i32 356000000, i8 26 }, %struct.SMap { i32 359000000, i8 27 }, %struct.SMap { i32 363000000, i8 28 }, %struct.SMap { i32 366000000, i8 29 }, %struct.SMap { i32 369000000, i8 30 }, %struct.SMap { i32 373000000, i8 31 }, %struct.SMap { i32 376000000, i8 32 }, %struct.SMap { i32 379000000, i8 33 }, %struct.SMap { i32 383000000, i8 34 }, %struct.SMap { i32 386000000, i8 35 }, %struct.SMap { i32 389000000, i8 36 }, %struct.SMap { i32 393000000, i8 37 }, %struct.SMap { i32 396000000, i8 38 }, %struct.SMap { i32 399000000, i8 39 }, %struct.SMap { i32 402000000, i8 40 }, %struct.SMap { i32 404000000, i8 41 }, %struct.SMap { i32 407000000, i8 42 }, %struct.SMap { i32 409000000, i8 43 }, %struct.SMap { i32 412000000, i8 44 }, %struct.SMap { i32 414000000, i8 45 }, %struct.SMap { i32 417000000, i8 46 }, %struct.SMap { i32 419000000, i8 47 }, %struct.SMap { i32 422000000, i8 48 }, %struct.SMap { i32 424000000, i8 49 }, %struct.SMap { i32 427000000, i8 50 }, %struct.SMap { i32 429000000, i8 51 }, %struct.SMap { i32 432000000, i8 52 }, %struct.SMap { i32 434000000, i8 53 }, %struct.SMap { i32 437000000, i8 54 }, %struct.SMap { i32 439000000, i8 55 }, %struct.SMap { i32 442000000, i8 56 }, %struct.SMap { i32 444000000, i8 57 }, %struct.SMap { i32 447000000, i8 58 }, %struct.SMap { i32 449000000, i8 59 }, %struct.SMap { i32 457800000, i8 60 }, %struct.SMap { i32 465000000, i8 15 }, %struct.SMap { i32 477000000, i8 18 }, %struct.SMap { i32 483000000, i8 20 }, %struct.SMap { i32 502000000, i8 25 }, %struct.SMap { i32 508000000, i8 27 }, %struct.SMap { i32 519000000, i8 28 }, %struct.SMap { i32 522000000, i8 29 }, %struct.SMap { i32 524000000, i8 30 }, %struct.SMap { i32 534000000, i8 31 }, %struct.SMap { i32 549000000, i8 32 }, %struct.SMap { i32 554000000, i8 34 }, %struct.SMap { i32 584000000, i8 36 }, %struct.SMap { i32 589000000, i8 38 }, %struct.SMap { i32 658000000, i8 39 }, %struct.SMap { i32 664000000, i8 44 }, %struct.SMap { i32 669000000, i8 45 }, %struct.SMap { i32 699000000, i8 46 }, %struct.SMap { i32 704000000, i8 48 }, %struct.SMap { i32 709000000, i8 49 }, %struct.SMap { i32 714000000, i8 50 }, %struct.SMap { i32 724000000, i8 51 }, %struct.SMap { i32 729000000, i8 54 }, %struct.SMap { i32 739000000, i8 56 }, %struct.SMap { i32 744000000, i8 57 }, %struct.SMap { i32 749000000, i8 59 }, %struct.SMap { i32 754000000, i8 60 }, %struct.SMap { i32 759000000, i8 61 }, %struct.SMap { i32 764000000, i8 62 }, %struct.SMap { i32 769000000, i8 63 }, %struct.SMap { i32 774000000, i8 64 }, %struct.SMap { i32 779000000, i8 65 }, %struct.SMap { i32 784000000, i8 67 }, %struct.SMap { i32 789000000, i8 70 }, %struct.SMap { i32 794000000, i8 72 }, %struct.SMap { i32 799000000, i8 75 }, %struct.SMap { i32 804000000, i8 79 }, %struct.SMap { i32 809000000, i8 84 }, %struct.SMap { i32 814000000, i8 89 }, %struct.SMap { i32 819000000, i8 93 }, %struct.SMap { i32 824000000, i8 97 }, %struct.SMap { i32 829000000, i8 104 }, %struct.SMap { i32 834000000, i8 110 }, %struct.SMap { i32 839000000, i8 117 }, %struct.SMap { i32 844000000, i8 126 }, %struct.SMap { i32 849000000, i8 -126 }, %struct.SMap { i32 854000000, i8 -124 }, %struct.SMap { i32 859000000, i8 -113 }, %struct.SMap { i32 865000000, i8 -102 }, %struct.SMap zeroinitializer], align 4
@m_Thermometer_Map_2 = internal unnamed_addr constant [16 x i8] c"\\^b`jhdfzxtvlnrp", align 1
@m_Thermometer_Map_1 = internal unnamed_addr constant [16 x i8] c"<>B@JHDFZXTVLNRP", align 1
@m_StandardTable = internal unnamed_addr constant [19 x %struct.SStandardParam] [%struct.SStandardParam zeroinitializer, %struct.SStandardParam { i32 6000000, i32 7000000, i8 29, i8 44 }, %struct.SStandardParam { i32 6900000, i32 8000000, i8 30, i8 44 }, %struct.SStandardParam { i32 7100000, i32 8000000, i8 30, i8 44 }, %struct.SStandardParam { i32 7250000, i32 8000000, i8 30, i8 44 }, %struct.SStandardParam { i32 6900000, i32 8000000, i8 30, i8 44 }, %struct.SStandardParam { i32 1250000, i32 8000000, i8 30, i8 44 }, %struct.SStandardParam { i32 5400000, i32 6000000, i8 28, i8 44 }, %struct.SStandardParam { i32 1250000, i32 500000, i8 24, i8 44 }, %struct.SStandardParam zeroinitializer, %struct.SStandardParam { i32 3300000, i32 6000000, i8 28, i8 88 }, %struct.SStandardParam { i32 3500000, i32 7000000, i8 28, i8 55 }, %struct.SStandardParam { i32 4000000, i32 8000000, i8 29, i8 55 }, %struct.SStandardParam zeroinitializer, %struct.SStandardParam { i32 5000000, i32 6000000, i8 28, i8 55 }, %struct.SStandardParam { i32 4000000, i32 6000000, i8 29, i8 88 }, %struct.SStandardParam { i32 4500000, i32 7000000, i8 30, i8 55 }, %struct.SStandardParam { i32 5000000, i32 8000000, i8 31, i8 55 }, %struct.SStandardParam zeroinitializer], align 4
@m_BP_Filter_Map = internal unnamed_addr constant [8 x %struct.SMap] [%struct.SMap { i32 62000000, i8 0 }, %struct.SMap { i32 84000000, i8 1 }, %struct.SMap { i32 100000000, i8 2 }, %struct.SMap { i32 140000000, i8 3 }, %struct.SMap { i32 170000000, i8 4 }, %struct.SMap { i32 180000000, i8 5 }, %struct.SMap { i32 865000000, i8 6 }, %struct.SMap zeroinitializer], align 4
@m_GainTaper_Map = internal unnamed_addr constant [86 x %struct.SMap] [%struct.SMap { i32 45400000, i8 31 }, %struct.SMap { i32 45800000, i8 30 }, %struct.SMap { i32 46200000, i8 29 }, %struct.SMap { i32 46700000, i8 28 }, %struct.SMap { i32 47100000, i8 27 }, %struct.SMap { i32 47500000, i8 26 }, %struct.SMap { i32 47900000, i8 25 }, %struct.SMap { i32 49600000, i8 23 }, %struct.SMap { i32 51200000, i8 22 }, %struct.SMap { i32 52900000, i8 21 }, %struct.SMap { i32 54500000, i8 20 }, %struct.SMap { i32 56200000, i8 19 }, %struct.SMap { i32 57800000, i8 18 }, %struct.SMap { i32 59500000, i8 17 }, %struct.SMap { i32 61100000, i8 16 }, %struct.SMap { i32 67600000, i8 13 }, %struct.SMap { i32 74200000, i8 12 }, %struct.SMap { i32 80700000, i8 11 }, %struct.SMap { i32 87200000, i8 10 }, %struct.SMap { i32 93800000, i8 9 }, %struct.SMap { i32 100300000, i8 8 }, %struct.SMap { i32 106900000, i8 7 }, %struct.SMap { i32 113400000, i8 6 }, %struct.SMap { i32 119900000, i8 5 }, %struct.SMap { i32 126500000, i8 4 }, %struct.SMap { i32 133000000, i8 3 }, %struct.SMap { i32 139500000, i8 2 }, %struct.SMap { i32 146100000, i8 1 }, %struct.SMap { i32 152600000, i8 0 }, %struct.SMap { i32 154300000, i8 31 }, %struct.SMap { i32 156100000, i8 30 }, %struct.SMap { i32 157800000, i8 29 }, %struct.SMap { i32 159500000, i8 28 }, %struct.SMap { i32 161200000, i8 27 }, %struct.SMap { i32 163000000, i8 26 }, %struct.SMap { i32 164700000, i8 25 }, %struct.SMap { i32 170200000, i8 23 }, %struct.SMap { i32 175800000, i8 22 }, %struct.SMap { i32 181300000, i8 21 }, %struct.SMap { i32 186900000, i8 20 }, %struct.SMap { i32 192400000, i8 19 }, %struct.SMap { i32 198000000, i8 18 }, %struct.SMap { i32 203500000, i8 17 }, %struct.SMap { i32 216200000, i8 20 }, %struct.SMap { i32 228900000, i8 19 }, %struct.SMap { i32 241600000, i8 18 }, %struct.SMap { i32 254400000, i8 17 }, %struct.SMap { i32 267100000, i8 16 }, %struct.SMap { i32 279800000, i8 15 }, %struct.SMap { i32 292500000, i8 14 }, %struct.SMap { i32 305200000, i8 13 }, %struct.SMap { i32 317900000, i8 12 }, %struct.SMap { i32 330700000, i8 11 }, %struct.SMap { i32 343400000, i8 10 }, %struct.SMap { i32 356100000, i8 9 }, %struct.SMap { i32 368800000, i8 8 }, %struct.SMap { i32 381500000, i8 7 }, %struct.SMap { i32 394200000, i8 6 }, %struct.SMap { i32 406900000, i8 5 }, %struct.SMap { i32 419700000, i8 4 }, %struct.SMap { i32 432400000, i8 3 }, %struct.SMap { i32 445100000, i8 2 }, %struct.SMap { i32 457800000, i8 1 }, %struct.SMap { i32 476300000, i8 25 }, %struct.SMap { i32 494800000, i8 24 }, %struct.SMap { i32 513300000, i8 23 }, %struct.SMap { i32 531800000, i8 22 }, %struct.SMap { i32 550300000, i8 21 }, %struct.SMap { i32 568900000, i8 20 }, %struct.SMap { i32 587400000, i8 19 }, %struct.SMap { i32 605900000, i8 18 }, %struct.SMap { i32 624400000, i8 17 }, %struct.SMap { i32 642900000, i8 16 }, %struct.SMap { i32 661400000, i8 15 }, %struct.SMap { i32 679900000, i8 14 }, %struct.SMap { i32 698400000, i8 13 }, %struct.SMap { i32 716900000, i8 12 }, %struct.SMap { i32 735400000, i8 11 }, %struct.SMap { i32 753900000, i8 10 }, %struct.SMap { i32 772500000, i8 9 }, %struct.SMap { i32 791000000, i8 8 }, %struct.SMap { i32 809500000, i8 7 }, %struct.SMap { i32 828000000, i8 6 }, %struct.SMap { i32 846500000, i8 5 }, %struct.SMap { i32 865000000, i8 4 }, %struct.SMap zeroinitializer], align 4
@m_IR_Meas_Map = internal unnamed_addr constant [4 x %struct.SMap] [%struct.SMap { i32 200000000, i8 5 }, %struct.SMap { i32 400000000, i8 6 }, %struct.SMap { i32 865000000, i8 7 }, %struct.SMap zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"\013tda18271c2dd: %s SearchMap failed\0A\00", align 1
@__func__.ChannelConfiguration = private unnamed_addr constant [21 x i8] c"ChannelConfiguration\00", align 1
@m_Cal_PLL_Map = internal unnamed_addr constant [35 x %struct.SMap2] [%struct.SMap2 { i32 33813000, i8 -35, i8 -48 }, %struct.SMap2 { i32 36625000, i8 -36, i8 -64 }, %struct.SMap2 { i32 39938000, i8 -37, i8 -80 }, %struct.SMap2 { i32 43938000, i8 -38, i8 -96 }, %struct.SMap2 { i32 48813000, i8 -39, i8 -112 }, %struct.SMap2 { i32 54938000, i8 -40, i8 -128 }, %struct.SMap2 { i32 62813000, i8 -45, i8 112 }, %struct.SMap2 { i32 67625000, i8 -51, i8 104 }, %struct.SMap2 { i32 73250000, i8 -52, i8 96 }, %struct.SMap2 { i32 79875000, i8 -53, i8 88 }, %struct.SMap2 { i32 87875000, i8 -54, i8 80 }, %struct.SMap2 { i32 97625000, i8 -55, i8 72 }, %struct.SMap2 { i32 109875000, i8 -56, i8 64 }, %struct.SMap2 { i32 125625000, i8 -61, i8 56 }, %struct.SMap2 { i32 135250000, i8 -67, i8 52 }, %struct.SMap2 { i32 146500000, i8 -68, i8 48 }, %struct.SMap2 { i32 159750000, i8 -69, i8 44 }, %struct.SMap2 { i32 175750000, i8 -70, i8 40 }, %struct.SMap2 { i32 195250000, i8 -71, i8 36 }, %struct.SMap2 { i32 219750000, i8 -72, i8 32 }, %struct.SMap2 { i32 251250000, i8 -77, i8 28 }, %struct.SMap2 { i32 270500000, i8 -83, i8 26 }, %struct.SMap2 { i32 293000000, i8 -84, i8 24 }, %struct.SMap2 { i32 319500000, i8 -85, i8 22 }, %struct.SMap2 { i32 351500000, i8 -86, i8 20 }, %struct.SMap2 { i32 390500000, i8 -87, i8 18 }, %struct.SMap2 { i32 439500000, i8 -88, i8 16 }, %struct.SMap2 { i32 502500000, i8 -93, i8 14 }, %struct.SMap2 { i32 541000000, i8 -99, i8 13 }, %struct.SMap2 { i32 586000000, i8 -100, i8 12 }, %struct.SMap2 { i32 639000000, i8 -101, i8 11 }, %struct.SMap2 { i32 703000000, i8 -102, i8 10 }, %struct.SMap2 { i32 781000000, i8 -103, i8 9 }, %struct.SMap2 { i32 879000000, i8 -104, i8 8 }, %struct.SMap2 zeroinitializer], align 4
@m_Main_PLL_Map = internal unnamed_addr constant [41 x %struct.SMap2] [%struct.SMap2 { i32 33125000, i8 87, i8 -16 }, %struct.SMap2 { i32 35500000, i8 86, i8 -32 }, %struct.SMap2 { i32 38188000, i8 85, i8 -48 }, %struct.SMap2 { i32 41375000, i8 84, i8 -64 }, %struct.SMap2 { i32 45125000, i8 83, i8 -80 }, %struct.SMap2 { i32 49688000, i8 82, i8 -96 }, %struct.SMap2 { i32 55188000, i8 81, i8 -112 }, %struct.SMap2 { i32 62125000, i8 80, i8 -128 }, %struct.SMap2 { i32 66250000, i8 71, i8 120 }, %struct.SMap2 { i32 71000000, i8 70, i8 112 }, %struct.SMap2 { i32 76375000, i8 69, i8 104 }, %struct.SMap2 { i32 82750000, i8 68, i8 96 }, %struct.SMap2 { i32 90250000, i8 67, i8 88 }, %struct.SMap2 { i32 99375000, i8 66, i8 80 }, %struct.SMap2 { i32 110375000, i8 65, i8 72 }, %struct.SMap2 { i32 124250000, i8 64, i8 64 }, %struct.SMap2 { i32 132500000, i8 55, i8 60 }, %struct.SMap2 { i32 142000000, i8 54, i8 56 }, %struct.SMap2 { i32 152750000, i8 53, i8 52 }, %struct.SMap2 { i32 165500000, i8 52, i8 48 }, %struct.SMap2 { i32 180500000, i8 51, i8 44 }, %struct.SMap2 { i32 198750000, i8 50, i8 40 }, %struct.SMap2 { i32 220750000, i8 49, i8 36 }, %struct.SMap2 { i32 248500000, i8 48, i8 32 }, %struct.SMap2 { i32 265000000, i8 39, i8 30 }, %struct.SMap2 { i32 284000000, i8 38, i8 28 }, %struct.SMap2 { i32 305500000, i8 37, i8 26 }, %struct.SMap2 { i32 331000000, i8 36, i8 24 }, %struct.SMap2 { i32 361000000, i8 35, i8 22 }, %struct.SMap2 { i32 397500000, i8 34, i8 20 }, %struct.SMap2 { i32 441500000, i8 33, i8 18 }, %struct.SMap2 { i32 497000000, i8 32, i8 16 }, %struct.SMap2 { i32 530000000, i8 23, i8 15 }, %struct.SMap2 { i32 568000000, i8 22, i8 14 }, %struct.SMap2 { i32 611000000, i8 21, i8 13 }, %struct.SMap2 { i32 662000000, i8 20, i8 12 }, %struct.SMap2 { i32 722000000, i8 19, i8 11 }, %struct.SMap2 { i32 795000000, i8 18, i8 10 }, %struct.SMap2 { i32 883000000, i8 17, i8 9 }, %struct.SMap2 { i32 994000000, i8 16, i8 8 }, %struct.SMap2 zeroinitializer], align 4
@FixedContentsI2CUpdate.InitRegs = internal unnamed_addr constant [38 x i8] c"\08\80\C6\DF\16`\80\80\00\00\00\00\00\00\00\FC\01\84A\01\84@\07\00\00\96?\C1\00\8F\00\00\8C\00 \B3H\B0", align 1
@m_CID_Target_Map = internal unnamed_addr constant [13 x %struct.SMap2] [%struct.SMap2 { i32 46000000, i8 4, i8 18 }, %struct.SMap2 { i32 52200000, i8 10, i8 15 }, %struct.SMap2 { i32 70100000, i8 1, i8 40 }, %struct.SMap2 { i32 136800000, i8 24, i8 40 }, %struct.SMap2 { i32 156700000, i8 24, i8 40 }, %struct.SMap2 { i32 186250000, i8 10, i8 40 }, %struct.SMap2 { i32 230000000, i8 10, i8 40 }, %struct.SMap2 { i32 345000000, i8 24, i8 40 }, %struct.SMap2 { i32 426000000, i8 14, i8 40 }, %struct.SMap2 { i32 489500000, i8 30, i8 40 }, %struct.SMap2 { i32 697500000, i8 50, i8 40 }, %struct.SMap2 { i32 842000000, i8 58, i8 40 }, %struct.SMap2 zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"\013tda18271c2dd: %s Search map failed\0A\00", align 1
@__func__.PowerScan = private unnamed_addr constant [10 x i8] c"PowerScan\00", align 1
@m_KM_Map = internal unnamed_addr constant [6 x %struct.SMap2] [%struct.SMap2 { i32 47900000, i8 3, i8 2 }, %struct.SMap2 { i32 61100000, i8 3, i8 1 }, %struct.SMap2 { i32 350000000, i8 3, i8 0 }, %struct.SMap2 { i32 720000000, i8 2, i8 1 }, %struct.SMap2 { i32 865000000, i8 3, i8 3 }, %struct.SMap2 zeroinitializer], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_tda18271c2dd_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tda18271c2dd_attach(ptr noundef writeonly %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [64 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [64 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [64 x i8], align 1
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [2 x i8], align 2
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca [64 x i8], align 1
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca [2 x i8], align 2
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [2 x i8], align 2
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [2 x i8], align 2
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [64 x i8], align 1
  %26 = alloca %struct.i2c_msg, align 4
  %27 = alloca [2 x i8], align 2
  %28 = alloca %struct.i2c_msg, align 4
  %29 = alloca [64 x i8], align 1
  %30 = alloca %struct.i2c_msg, align 4
  %31 = alloca [2 x i8], align 2
  %32 = alloca %struct.i2c_msg, align 4
  %33 = alloca [64 x i8], align 1
  %34 = alloca %struct.i2c_msg, align 4
  %35 = alloca [2 x i8], align 2
  %36 = alloca %struct.i2c_msg, align 4
  %37 = alloca [64 x i8], align 1
  %38 = alloca %struct.i2c_msg, align 4
  %39 = alloca [2 x i8], align 2
  %40 = alloca %struct.i2c_msg, align 4
  %41 = alloca [2 x i8], align 2
  %42 = alloca %struct.i2c_msg, align 4
  %43 = alloca [2 x i8], align 2
  %44 = alloca %struct.i2c_msg, align 4
  %45 = alloca [2 x i8], align 2
  %46 = alloca %struct.i2c_msg, align 4
  %47 = alloca [64 x i8], align 1
  %48 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %49 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 268) #10
  %50 = icmp eq ptr %49, null
  br i1 %50, label %421, label %51

51:                                               ; preds = %3
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %49, ptr %52, align 4
  %53 = getelementptr inbounds %struct.tda_state, ptr %49, i32 0, i32 1
  store i8 %2, ptr %53, align 4
  store ptr %1, ptr %49, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %54, ptr noundef nonnull align 4 dereferenceable(220) @tuner_ops, i32 220, i1 false)
  %55 = getelementptr inbounds %struct.tda_state, ptr %49, i32 0, i32 2
  store i32 0, ptr %55, align 8
  %56 = getelementptr inbounds %struct.tda_state, ptr %49, i32 0, i32 11
  %57 = getelementptr inbounds %struct.tda_state, ptr %49, i32 0, i32 4
  store i8 0, ptr %57, align 8
  %58 = getelementptr inbounds %struct.tda_state, ptr %49, i32 0, i32 5
  store i8 8, ptr %58, align 1
  %59 = getelementptr inbounds %struct.tda_state, ptr %49, i32 0, i32 6
  store i8 28, ptr %59, align 2
  %60 = getelementptr inbounds %struct.tda_state, ptr %49, i32 0, i32 7
  store i8 24, ptr %60, align 1
  %61 = getelementptr inbounds %struct.tda_state, ptr %49, i32 0, i32 8
  store i8 32, ptr %61, align 4
  %62 = getelementptr inbounds %struct.tda_state, ptr %49, i32 0, i32 9
  store i8 -49, ptr %62, align 1
  %63 = getelementptr inbounds %struct.tda_state, ptr %49, i32 0, i32 10
  store i8 1, ptr %63, align 2
  store i32 100, ptr %56, align 8
  %64 = getelementptr inbounds %struct.tda_state, ptr %49, i32 0, i32 21
  store i8 0, ptr %64, align 1
  %65 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(38) %65, ptr noundef nonnull align 1 dereferenceable(38) @FixedContentsI2CUpdate.InitRegs, i32 38, i1 false) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %47) #11
  %66 = getelementptr inbounds i8, ptr %47, i32 1
  store i8 1, ptr %47, align 1
  %67 = getelementptr inbounds i8, ptr %47, i32 39
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(25) %67, i8 0, i32 25, i1 false) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(38) %66, ptr noundef nonnull align 1 dereferenceable(38) @FixedContentsI2CUpdate.InitRegs, i32 38, i1 false) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #11
  %68 = getelementptr inbounds i8, ptr %46, i32 4
  store i32 39, ptr %68, align 4, !annotation !8
  %69 = zext i8 %2 to i16
  store i16 %69, ptr %46, align 4
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %70, align 2
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store ptr %47, ptr %71, align 4
  %72 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %46, i32 noundef 1) #11
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %77, label %74

74:                                               ; preds = %51
  %75 = zext i8 %2 to i32
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %75) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %47) #11
  br label %421

77:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %47) #11
  %78 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 32
  store i8 0, ptr %78, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %45) #11
  store i8 32, ptr %45, align 2
  %79 = getelementptr inbounds i8, ptr %45, i32 1
  store i8 0, ptr %79, align 1
  %80 = load ptr, ptr %49, align 8
  %81 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #11
  %82 = getelementptr inbounds i8, ptr %44, i32 4
  store i32 2, ptr %82, align 4, !annotation !8
  %83 = zext i8 %81 to i16
  store i16 %83, ptr %44, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  store i16 0, ptr %84, align 2
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  store ptr %45, ptr %85, align 4
  %86 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %44, i32 noundef 1) #11
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %91, label %88

88:                                               ; preds = %77
  %89 = zext i8 %81 to i32
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %89) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %45) #11
  br label %421

91:                                               ; preds = %77
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %45) #11
  store i8 3, ptr %78, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %43) #11
  store i8 32, ptr %43, align 2
  %92 = getelementptr inbounds i8, ptr %43, i32 1
  store i8 3, ptr %92, align 1
  %93 = load ptr, ptr %49, align 8
  %94 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #11
  %95 = getelementptr inbounds i8, ptr %42, i32 4
  store i32 2, ptr %95, align 4, !annotation !8
  %96 = zext i8 %94 to i16
  store i16 %96, ptr %42, align 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  store i16 0, ptr %97, align 2
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  store ptr %43, ptr %98, align 4
  %99 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %42, i32 noundef 1) #11
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %104, label %101

101:                                              ; preds = %91
  %102 = zext i8 %94 to i32
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %102) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %43) #11
  br label %421

104:                                              ; preds = %91
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %43) #11
  store i8 67, ptr %78, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %41) #11
  store i8 32, ptr %41, align 2
  %105 = getelementptr inbounds i8, ptr %41, i32 1
  store i8 67, ptr %105, align 1
  %106 = load ptr, ptr %49, align 8
  %107 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #11
  %108 = getelementptr inbounds i8, ptr %40, i32 4
  store i32 2, ptr %108, align 4, !annotation !8
  %109 = zext i8 %107 to i16
  store i16 %109, ptr %40, align 4
  %110 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %110, align 2
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store ptr %41, ptr %111, align 4
  %112 = call i32 @i2c_transfer(ptr noundef %106, ptr noundef nonnull %40, i32 noundef 1) #11
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %117, label %114

114:                                              ; preds = %104
  %115 = zext i8 %107 to i32
  %116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %115) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %41) #11
  br label %421

117:                                              ; preds = %104
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %41) #11
  store i8 76, ptr %78, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %39) #11
  store i8 32, ptr %39, align 2
  %118 = getelementptr inbounds i8, ptr %39, i32 1
  store i8 76, ptr %118, align 1
  %119 = load ptr, ptr %49, align 8
  %120 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #11
  %121 = getelementptr inbounds i8, ptr %38, i32 4
  store i32 2, ptr %121, align 4, !annotation !8
  %122 = zext i8 %120 to i16
  store i16 %122, ptr %38, align 4
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  store i16 0, ptr %123, align 2
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  store ptr %39, ptr %124, align 4
  %125 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %38, i32 noundef 1) #11
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %130, label %127

127:                                              ; preds = %117
  %128 = zext i8 %120 to i32
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %128) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %39) #11
  br label %421

130:                                              ; preds = %117
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %39) #11
  %131 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 5
  store i8 31, ptr %131, align 1
  %132 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 6
  store i8 102, ptr %132, align 2
  %133 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 7
  store i8 -127, ptr %133, align 1
  %134 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 8
  store i8 -52, ptr %134, align 4
  %135 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 9
  store i8 108, ptr %135, align 1
  %136 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 10
  store i8 0, ptr %136, align 2
  %137 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 11
  store i8 0, ptr %137, align 1
  %138 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 12
  store i8 -59, ptr %138, align 8
  %139 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 13
  store i8 119, ptr %139, align 1
  %140 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 14
  store i8 8, ptr %140, align 2
  %141 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 15
  store i8 0, ptr %141, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %37) #11
  %142 = getelementptr inbounds i8, ptr %37, i32 1
  %143 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 4
  store i8 4, ptr %37, align 1
  %144 = getelementptr inbounds i8, ptr %37, i32 13
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(51) %144, i8 0, i32 51, i1 false) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %142, ptr noundef align 8 dereferenceable(12) %143, i32 12, i1 false) #11
  %145 = load ptr, ptr %49, align 8
  %146 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #11
  %147 = getelementptr inbounds i8, ptr %36, i32 4
  store i32 13, ptr %147, align 4, !annotation !8
  %148 = zext i8 %146 to i16
  store i16 %148, ptr %36, align 4
  %149 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 1
  store i16 0, ptr %149, align 2
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  store ptr %37, ptr %150, align 4
  %151 = call i32 @i2c_transfer(ptr noundef %145, ptr noundef nonnull %36, i32 noundef 1) #11
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %156, label %153

153:                                              ; preds = %130
  %154 = zext i8 %146 to i32
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %154) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %37) #11
  br label %421

156:                                              ; preds = %130
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %37) #11
  call void @msleep(i32 noundef 5) #11
  %157 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 3
  %158 = load i8, ptr %157, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #11
  store i8 3, ptr %35, align 2
  %159 = getelementptr inbounds i8, ptr %35, i32 1
  store i8 %158, ptr %159, align 1
  %160 = load ptr, ptr %49, align 8
  %161 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #11
  %162 = getelementptr inbounds i8, ptr %34, i32 4
  store i32 2, ptr %162, align 4, !annotation !8
  %163 = zext i8 %161 to i16
  store i16 %163, ptr %34, align 4
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %164, align 2
  %165 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %35, ptr %165, align 4
  %166 = call i32 @i2c_transfer(ptr noundef %160, ptr noundef nonnull %34, i32 noundef 1) #11
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %171, label %168

168:                                              ; preds = %156
  %169 = zext i8 %161 to i32
  %170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %169) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #11
  br label %421

171:                                              ; preds = %156
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #11
  call void @msleep(i32 noundef 5) #11
  store i8 -123, ptr %133, align 1
  store i8 -53, ptr %134, align 4
  store i8 102, ptr %135, align 1
  store i8 112, ptr %136, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %33) #11
  %172 = getelementptr inbounds i8, ptr %33, i32 1
  store i8 5, ptr %33, align 1
  %173 = getelementptr inbounds i8, ptr %33, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(56) %173, i8 0, i32 56, i1 false) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %172, ptr noundef align 1 dereferenceable(7) %131, i32 7, i1 false) #11
  %174 = load ptr, ptr %49, align 8
  %175 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #11
  %176 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 8, ptr %176, align 4, !annotation !8
  %177 = zext i8 %175 to i16
  store i16 %177, ptr %32, align 4
  %178 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %178, align 2
  %179 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %33, ptr %179, align 4
  %180 = call i32 @i2c_transfer(ptr noundef %174, ptr noundef nonnull %32, i32 noundef 1) #11
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %185, label %182

182:                                              ; preds = %171
  %183 = zext i8 %175 to i32
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %183) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %33) #11
  br label %421

185:                                              ; preds = %171
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %33) #11
  call void @msleep(i32 noundef 5) #11
  %186 = load i8, ptr %143, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #11
  store i8 4, ptr %31, align 2
  %187 = getelementptr inbounds i8, ptr %31, i32 1
  store i8 %186, ptr %187, align 1
  %188 = load ptr, ptr %49, align 8
  %189 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #11
  %190 = getelementptr inbounds i8, ptr %30, i32 4
  store i32 2, ptr %190, align 4, !annotation !8
  %191 = zext i8 %189 to i16
  store i16 %191, ptr %30, align 4
  %192 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %192, align 2
  %193 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %31, ptr %193, align 4
  %194 = call i32 @i2c_transfer(ptr noundef %188, ptr noundef nonnull %30, i32 noundef 1) #11
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %199, label %196

196:                                              ; preds = %185
  %197 = zext i8 %189 to i32
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %197) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #11
  br label %421

199:                                              ; preds = %185
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #11
  call void @msleep(i32 noundef 30) #11
  store i8 -126, ptr %133, align 1
  store i8 -88, ptr %134, align 4
  store i8 0, ptr %136, align 2
  store i8 -95, ptr %138, align 8
  store i8 115, ptr %139, align 1
  store i8 26, ptr %140, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %200 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 5, ptr %5, align 1
  %201 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(52) %201, i8 0, i32 52, i1 false) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(11) %200, ptr noundef align 1 dereferenceable(11) %131, i32 11, i1 false) #11
  %202 = load ptr, ptr %49, align 8
  %203 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %204 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 12, ptr %204, align 4, !annotation !8
  %205 = zext i8 %203 to i16
  store i16 %205, ptr %4, align 4
  %206 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %206, align 2
  %207 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %207, align 4
  %208 = call i32 @i2c_transfer(ptr noundef %202, ptr noundef nonnull %4, i32 noundef 1) #11
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %213, label %210

210:                                              ; preds = %199
  %211 = zext i8 %203 to i32
  %212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %211) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  br label %421

213:                                              ; preds = %199
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  call void @msleep(i32 noundef 5) #11
  %214 = load i8, ptr %157, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i8 3, ptr %7, align 2
  %215 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %214, ptr %215, align 1
  %216 = load ptr, ptr %49, align 8
  %217 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %218 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %218, align 4, !annotation !8
  %219 = zext i8 %217 to i16
  store i16 %219, ptr %6, align 4
  %220 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %220, align 2
  %221 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %221, align 4
  %222 = call i32 @i2c_transfer(ptr noundef %216, ptr noundef nonnull %6, i32 noundef 1) #11
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %227, label %224

224:                                              ; preds = %213
  %225 = zext i8 %217 to i32
  %226 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %225) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  br label %421

227:                                              ; preds = %213
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  call void @msleep(i32 noundef 5) #11
  store i8 -122, ptr %133, align 1
  store i8 -88, ptr %134, align 4
  store i8 102, ptr %135, align 1
  store i8 -96, ptr %136, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  %228 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 5, ptr %9, align 1
  %229 = getelementptr inbounds i8, ptr %9, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(56) %229, i8 0, i32 56, i1 false) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %228, ptr noundef align 1 dereferenceable(7) %131, i32 7, i1 false) #11
  %230 = load ptr, ptr %49, align 8
  %231 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %232 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 8, ptr %232, align 4, !annotation !8
  %233 = zext i8 %231 to i16
  store i16 %233, ptr %8, align 4
  %234 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %234, align 2
  %235 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %9, ptr %235, align 4
  %236 = call i32 @i2c_transfer(ptr noundef %230, ptr noundef nonnull %8, i32 noundef 1) #11
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %241, label %238

238:                                              ; preds = %227
  %239 = zext i8 %231 to i32
  %240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %239) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  br label %421

241:                                              ; preds = %227
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  call void @msleep(i32 noundef 5) #11
  %242 = load i8, ptr %143, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #11
  store i8 4, ptr %11, align 2
  %243 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 %242, ptr %243, align 1
  %244 = load ptr, ptr %49, align 8
  %245 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %246 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %246, align 4, !annotation !8
  %247 = zext i8 %245 to i16
  store i16 %247, ptr %10, align 4
  %248 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %248, align 2
  %249 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %11, ptr %249, align 4
  %250 = call i32 @i2c_transfer(ptr noundef %244, ptr noundef nonnull %10, i32 noundef 1) #11
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %255, label %252

252:                                              ; preds = %241
  %253 = zext i8 %245 to i32
  %254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %253) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #11
  br label %421

255:                                              ; preds = %241
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #11
  call void @msleep(i32 noundef 30) #11
  store i8 -125, ptr %133, align 1
  store i8 -104, ptr %134, align 4
  store i8 101, ptr %135, align 1
  store i8 0, ptr %136, align 2
  store i8 -111, ptr %138, align 8
  store i8 113, ptr %139, align 1
  store i8 -51, ptr %140, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #11
  %256 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 5, ptr %13, align 1
  %257 = getelementptr inbounds i8, ptr %13, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(52) %257, i8 0, i32 52, i1 false) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(11) %256, ptr noundef align 1 dereferenceable(11) %131, i32 11, i1 false) #11
  %258 = load ptr, ptr %49, align 8
  %259 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  %260 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 12, ptr %260, align 4, !annotation !8
  %261 = zext i8 %259 to i16
  store i16 %261, ptr %12, align 4
  %262 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %262, align 2
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %13, ptr %263, align 4
  %264 = call i32 @i2c_transfer(ptr noundef %258, ptr noundef nonnull %12, i32 noundef 1) #11
  %265 = icmp eq i32 %264, 1
  br i1 %265, label %269, label %266

266:                                              ; preds = %255
  %267 = zext i8 %259 to i32
  %268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %267) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #11
  br label %421

269:                                              ; preds = %255
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #11
  call void @msleep(i32 noundef 5) #11
  %270 = load i8, ptr %157, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #11
  store i8 3, ptr %15, align 2
  %271 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 %270, ptr %271, align 1
  %272 = load ptr, ptr %49, align 8
  %273 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  %274 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %274, align 4, !annotation !8
  %275 = zext i8 %273 to i16
  store i16 %275, ptr %14, align 4
  %276 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %276, align 2
  %277 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %15, ptr %277, align 4
  %278 = call i32 @i2c_transfer(ptr noundef %272, ptr noundef nonnull %14, i32 noundef 1) #11
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %283, label %280

280:                                              ; preds = %269
  %281 = zext i8 %273 to i32
  %282 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %281) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #11
  br label %421

283:                                              ; preds = %269
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #11
  call void @msleep(i32 noundef 5) #11
  store i8 -121, ptr %133, align 1
  store i8 101, ptr %135, align 1
  store i8 80, ptr %136, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #11
  %284 = getelementptr inbounds i8, ptr %17, i32 1
  store i8 5, ptr %17, align 1
  %285 = getelementptr inbounds i8, ptr %17, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(56) %285, i8 0, i32 56, i1 false) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %284, ptr noundef align 1 dereferenceable(7) %131, i32 7, i1 false) #11
  %286 = load ptr, ptr %49, align 8
  %287 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #11
  %288 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 8, ptr %288, align 4, !annotation !8
  %289 = zext i8 %287 to i16
  store i16 %289, ptr %16, align 4
  %290 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %290, align 2
  %291 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %17, ptr %291, align 4
  %292 = call i32 @i2c_transfer(ptr noundef %286, ptr noundef nonnull %16, i32 noundef 1) #11
  %293 = icmp eq i32 %292, 1
  br i1 %293, label %297, label %294

294:                                              ; preds = %283
  %295 = zext i8 %287 to i32
  %296 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %295) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #11
  br label %421

297:                                              ; preds = %283
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #11
  call void @msleep(i32 noundef 5) #11
  %298 = load i8, ptr %143, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #11
  store i8 4, ptr %19, align 2
  %299 = getelementptr inbounds i8, ptr %19, i32 1
  store i8 %298, ptr %299, align 1
  %300 = load ptr, ptr %49, align 8
  %301 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #11
  %302 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 2, ptr %302, align 4, !annotation !8
  %303 = zext i8 %301 to i16
  store i16 %303, ptr %18, align 4
  %304 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %304, align 2
  %305 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %19, ptr %305, align 4
  %306 = call i32 @i2c_transfer(ptr noundef %300, ptr noundef nonnull %18, i32 noundef 1) #11
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %311, label %308

308:                                              ; preds = %297
  %309 = zext i8 %301 to i32
  %310 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %309) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  br label %421

311:                                              ; preds = %297
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  call void @msleep(i32 noundef 30) #11
  store i8 100, ptr %132, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #11
  store i8 6, ptr %21, align 2
  %312 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 100, ptr %312, align 1
  %313 = load ptr, ptr %49, align 8
  %314 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  %315 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 2, ptr %315, align 4, !annotation !8
  %316 = zext i8 %314 to i16
  store i16 %316, ptr %20, align 4
  %317 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %317, align 2
  %318 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %21, ptr %318, align 4
  %319 = call i32 @i2c_transfer(ptr noundef %313, ptr noundef nonnull %20, i32 noundef 1) #11
  %320 = icmp eq i32 %319, 1
  br i1 %320, label %324, label %321

321:                                              ; preds = %311
  %322 = zext i8 %314 to i32
  %323 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %322) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #11
  br label %421

324:                                              ; preds = %311
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #11
  %325 = load i8, ptr %157, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #11
  store i8 3, ptr %23, align 2
  %326 = getelementptr inbounds i8, ptr %23, i32 1
  store i8 %325, ptr %326, align 1
  %327 = load ptr, ptr %49, align 8
  %328 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #11
  %329 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 2, ptr %329, align 4, !annotation !8
  %330 = zext i8 %328 to i16
  store i16 %330, ptr %22, align 4
  %331 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %331, align 2
  %332 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %23, ptr %332, align 4
  %333 = call i32 @i2c_transfer(ptr noundef %327, ptr noundef nonnull %22, i32 noundef 1) #11
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %338, label %335

335:                                              ; preds = %324
  %336 = zext i8 %328 to i32
  %337 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %336) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #11
  br label %421

338:                                              ; preds = %324
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #11
  call void @msleep(i32 noundef 200) #11
  %339 = load i8, ptr %131, align 1
  %340 = and i8 %339, -32
  %341 = or i8 %340, 18
  store i8 %341, ptr %131, align 1
  %342 = load i8, ptr %132, align 2
  %343 = and i8 %342, -32
  store i8 %343, ptr %132, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %29) #11
  %344 = getelementptr inbounds i8, ptr %29, i32 1
  %345 = getelementptr inbounds i8, ptr %29, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %345, i8 0, i32 61, i1 false) #11, !annotation !8
  store i8 5, ptr %29, align 1
  %346 = load i16, ptr %131, align 1
  store i16 %346, ptr %344, align 1
  %347 = load ptr, ptr %49, align 8
  %348 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #11
  %349 = getelementptr inbounds i8, ptr %28, i32 4
  store i32 3, ptr %349, align 4, !annotation !8
  %350 = zext i8 %348 to i16
  store i16 %350, ptr %28, align 4
  %351 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %351, align 2
  %352 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr %29, ptr %352, align 4
  %353 = call i32 @i2c_transfer(ptr noundef %347, ptr noundef nonnull %28, i32 noundef 1) #11
  %354 = icmp eq i32 %353, 1
  br i1 %354, label %358, label %355

355:                                              ; preds = %338
  %356 = zext i8 %348 to i32
  %357 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %356) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %29) #11
  br label %421

358:                                              ; preds = %338
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %29) #11
  %359 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 33
  %360 = load i8, ptr %359, align 1
  %361 = and i8 %360, -4
  store i8 %361, ptr %359, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #11
  store i8 33, ptr %27, align 2
  %362 = getelementptr inbounds i8, ptr %27, i32 1
  store i8 %361, ptr %362, align 1
  %363 = load ptr, ptr %49, align 8
  %364 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #11
  %365 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 2, ptr %365, align 4, !annotation !8
  %366 = zext i8 %364 to i16
  store i16 %366, ptr %26, align 4
  %367 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %367, align 2
  %368 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %27, ptr %368, align 4
  %369 = call i32 @i2c_transfer(ptr noundef %363, ptr noundef nonnull %26, i32 noundef 1) #11
  %370 = icmp eq i32 %369, 1
  br i1 %370, label %374, label %371

371:                                              ; preds = %358
  %372 = zext i8 %364 to i32
  %373 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %372) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #11
  br label %421

374:                                              ; preds = %358
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #11
  %375 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 36
  %376 = load i8, ptr %375, align 8
  %377 = and i8 %376, -4
  store i8 %377, ptr %375, align 8
  %378 = getelementptr %struct.tda_state, ptr %49, i32 0, i32 12, i32 38
  %379 = load i8, ptr %378, align 2
  %380 = or i8 %379, 6
  store i8 %380, ptr %378, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %25) #11
  %381 = getelementptr inbounds i8, ptr %25, i32 1
  store i8 36, ptr %25, align 1
  %382 = getelementptr inbounds i8, ptr %25, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(60) %382, i8 0, i32 60, i1 false) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %381, ptr noundef align 8 dereferenceable(3) %375, i32 3, i1 false) #11
  %383 = load ptr, ptr %49, align 8
  %384 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #11
  %385 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 4, ptr %385, align 4, !annotation !8
  %386 = zext i8 %384 to i16
  store i16 %386, ptr %24, align 4
  %387 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %387, align 2
  %388 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %25, ptr %388, align 4
  %389 = call i32 @i2c_transfer(ptr noundef %383, ptr noundef nonnull %24, i32 noundef 1) #11
  %390 = icmp eq i32 %389, 1
  br i1 %390, label %394, label %391

391:                                              ; preds = %374
  %392 = zext i8 %384 to i32
  %393 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %392) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %25) #11
  br label %421

394:                                              ; preds = %374
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %25) #11
  %395 = call fastcc i32 @RFTrackingFiltersInit(ptr noundef nonnull %49, i8 noundef zeroext 0) #11
  %396 = icmp slt i32 %395, 0
  br i1 %396, label %421, label %397

397:                                              ; preds = %394
  %398 = call fastcc i32 @RFTrackingFiltersInit(ptr noundef nonnull %49, i8 noundef zeroext 1) #11
  %399 = icmp slt i32 %398, 0
  br i1 %399, label %421, label %400

400:                                              ; preds = %397
  %401 = call fastcc i32 @RFTrackingFiltersInit(ptr noundef nonnull %49, i8 noundef zeroext 2) #11
  %402 = icmp slt i32 %401, 0
  br i1 %402, label %421, label %403

403:                                              ; preds = %400
  %404 = call fastcc i32 @RFTrackingFiltersInit(ptr noundef nonnull %49, i8 noundef zeroext 3) #11
  %405 = icmp slt i32 %404, 0
  br i1 %405, label %421, label %406

406:                                              ; preds = %403
  %407 = call fastcc i32 @RFTrackingFiltersInit(ptr noundef nonnull %49, i8 noundef zeroext 4) #11
  %408 = icmp slt i32 %407, 0
  br i1 %408, label %421, label %409

409:                                              ; preds = %406
  %410 = call fastcc i32 @RFTrackingFiltersInit(ptr noundef nonnull %49, i8 noundef zeroext 5) #11
  %411 = icmp slt i32 %410, 0
  br i1 %411, label %421, label %412

412:                                              ; preds = %409
  %413 = call fastcc i32 @RFTrackingFiltersInit(ptr noundef nonnull %49, i8 noundef zeroext 6) #11
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %421, label %415

415:                                              ; preds = %412
  %416 = getelementptr inbounds %struct.tda_state, ptr %49, i32 0, i32 20
  %417 = call fastcc i32 @ThermometerRead(ptr noundef nonnull %49, ptr noundef %416) #11
  %418 = icmp slt i32 %417, 0
  br i1 %418, label %421, label %419

419:                                              ; preds = %415
  %420 = call fastcc i32 @StandBy(ptr noundef nonnull %49) #11
  br label %421

421:                                              ; preds = %419, %415, %412, %409, %406, %403, %400, %397, %394, %391, %371, %355, %335, %321, %308, %294, %280, %266, %252, %238, %224, %210, %196, %182, %168, %153, %127, %114, %101, %88, %74, %3
  %422 = phi ptr [ null, %3 ], [ %0, %74 ], [ %0, %88 ], [ %0, %101 ], [ %0, %114 ], [ %0, %127 ], [ %0, %153 ], [ %0, %168 ], [ %0, %182 ], [ %0, %196 ], [ %0, %210 ], [ %0, %224 ], [ %0, %238 ], [ %0, %252 ], [ %0, %266 ], [ %0, %280 ], [ %0, %294 ], [ %0, %308 ], [ %0, %321 ], [ %0, %335 ], [ %0, %355 ], [ %0, %371 ], [ %0, %391 ], [ %0, %394 ], [ %0, %397 ], [ %0, %400 ], [ %0, %403 ], [ %0, %406 ], [ %0, %409 ], [ %0, %412 ], [ %0, %415 ], [ %0, %419 ]
  ret ptr %422
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #11
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @init(ptr nocapture noundef readnone %0) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc i32 @StandBy(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_params(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [64 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [2 x i8], align 2
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca [64 x i8], align 1
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca [2 x i8], align 2
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [64 x i8], align 1
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [2 x i8], align 2
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [2 x i8], align 2
  %26 = alloca i8, align 1
  %27 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %29, align 4
  %35 = getelementptr inbounds %struct.tda_state, ptr %28, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  switch i32 %33, label %445 [
    i32 3, label %36
    i32 16, label %36
    i32 1, label %39
    i32 18, label %39
  ]

36:                                               ; preds = %1, %1
  switch i32 %31, label %445 [
    i32 6000000, label %44
    i32 7000000, label %37
    i32 8000000, label %38
  ]

37:                                               ; preds = %36
  br label %44

38:                                               ; preds = %36
  br label %44

39:                                               ; preds = %1, %1
  %40 = icmp ult i32 %31, 6000001
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = icmp ult i32 %31, 7000001
  %43 = select i1 %42, i32 16, i32 17
  br label %44

44:                                               ; preds = %41, %39, %38, %37, %36
  %45 = phi i32 [ 12, %38 ], [ 11, %37 ], [ 10, %36 ], [ 15, %39 ], [ %43, %41 ]
  br label %46

46:                                               ; preds = %46, %44
  %47 = phi i32 [ 0, %44 ], [ %53, %46 ]
  %48 = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = icmp ult i32 %49, %34
  %52 = and i1 %50, %51
  %53 = add i32 %47, 1
  br i1 %52, label %46, label %54

54:                                               ; preds = %46
  %55 = icmp eq i32 %49, 0
  br i1 %55, label %445, label %56

56:                                               ; preds = %54
  %57 = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %47, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp ugt i32 %34, 47900000
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = icmp ugt i32 %34, 61100000
  br i1 %61, label %62, label %72

62:                                               ; preds = %60
  %63 = icmp ugt i32 %34, 152600000
  br i1 %63, label %64, label %72

64:                                               ; preds = %62
  %65 = icmp ugt i32 %34, 164700000
  br i1 %65, label %66, label %72

66:                                               ; preds = %64
  %67 = icmp ugt i32 %34, 203500000
  br i1 %67, label %68, label %72

68:                                               ; preds = %66
  %69 = icmp ugt i32 %34, 457800000
  br i1 %69, label %70, label %72

70:                                               ; preds = %68
  %71 = icmp ugt i32 %34, 865000000
  br i1 %71, label %445, label %72

72:                                               ; preds = %70, %68, %66, %64, %62, %60, %56
  %73 = phi i32 [ 0, %56 ], [ 1, %60 ], [ 2, %62 ], [ 3, %64 ], [ 4, %66 ], [ 5, %68 ], [ 6, %70 ]
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi i32 [ 0, %72 ], [ %81, %74 ]
  %76 = getelementptr %struct.SMap, ptr @m_RF_Cal_DC_Over_DT_Map, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = icmp ne i32 %77, 0
  %79 = icmp ult i32 %77, %34
  %80 = and i1 %78, %79
  %81 = add i32 %75, 1
  br i1 %80, label %74, label %82

82:                                               ; preds = %74
  %83 = icmp eq i32 %77, 0
  br i1 %83, label %445, label %84

84:                                               ; preds = %82
  %85 = getelementptr %struct.SMap, ptr @m_RF_Cal_DC_Over_DT_Map, i32 %75, i32 1
  %86 = load i8, ptr %85, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %26) #11
  store i8 0, ptr %26, align 1, !annotation !8
  %87 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 13, i32 %73
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 14, i32 %73
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 15, i32 %73
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 17, i32 %73
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 18, i32 %73
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 12, i32 5
  %98 = load i8, ptr %97, align 1
  %99 = and i8 %98, 31
  store i8 %99, ptr %97, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #11
  store i8 5, ptr %25, align 2
  %100 = getelementptr inbounds i8, ptr %25, i32 1
  store i8 %99, ptr %100, align 1
  %101 = load ptr, ptr %28, align 4
  %102 = getelementptr inbounds %struct.tda_state, ptr %28, i32 0, i32 1
  %103 = load i8, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #11
  %104 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 2, ptr %104, align 4, !annotation !8
  %105 = zext i8 %103 to i16
  store i16 %105, ptr %24, align 4
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %106, align 2
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %25, ptr %107, align 4
  %108 = call i32 @i2c_transfer(ptr noundef %101, ptr noundef nonnull %24, i32 noundef 1) #11
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %113, label %110

110:                                              ; preds = %84
  %111 = zext i8 %103 to i32
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %111) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #11
  br label %151

113:                                              ; preds = %84
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #11
  %114 = call fastcc i32 @ThermometerRead(ptr noundef %28, ptr noundef nonnull %26) #11
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %151, label %116

116:                                              ; preds = %113
  %117 = add i32 %88, -1
  %118 = icmp ult i32 %117, %34
  %119 = sub i32 %34, %88
  %120 = select i1 %118, i32 %94, i32 %90
  %121 = select i1 %118, i32 %96, i32 %92
  %122 = mul i32 %120, %119
  %123 = zext i8 %86 to i32
  %124 = load i8, ptr %26, align 1
  %125 = zext i8 %124 to i32
  %126 = getelementptr inbounds %struct.tda_state, ptr %28, i32 0, i32 20
  %127 = load i8, ptr %126, align 4
  %128 = zext i8 %127 to i32
  %129 = sub nsw i32 %125, %128
  %130 = mul nsw i32 %129, %123
  %131 = sdiv i32 %130, 1000
  %132 = add i32 %121, %58
  %133 = add i32 %132, %122
  %134 = add i32 %133, %131
  %135 = call i32 @llvm.smin.i32(i32 %134, i32 255) #11
  %136 = call i32 @llvm.smax.i32(i32 %135, i32 0) #11
  %137 = trunc i32 %136 to i8
  %138 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 12, i32 29
  store i8 %137, ptr %138, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #11
  store i8 29, ptr %23, align 2
  %139 = getelementptr inbounds i8, ptr %23, i32 1
  store i8 %137, ptr %139, align 1
  %140 = load ptr, ptr %28, align 4
  %141 = load i8, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #11
  %142 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 2, ptr %142, align 4, !annotation !8
  %143 = zext i8 %141 to i16
  store i16 %143, ptr %22, align 4
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %144, align 2
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %23, ptr %145, align 4
  %146 = call i32 @i2c_transfer(ptr noundef %140, ptr noundef nonnull %22, i32 noundef 1) #11
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %153, label %148

148:                                              ; preds = %116
  %149 = zext i8 %141 to i32
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %149) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #11
  br label %151

151:                                              ; preds = %148, %113, %110
  %152 = phi i32 [ -1, %148 ], [ -1, %110 ], [ %114, %113 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #11
  br label %445

153:                                              ; preds = %116
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #11
  %154 = load i32, ptr %35, align 4
  %155 = getelementptr [19 x %struct.SStandardParam], ptr @m_StandardTable, i32 0, i32 %45
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds %struct.tda_state, ptr %28, i32 0, i32 3
  store i32 %156, ptr %157, align 4
  %158 = icmp ugt i32 %154, 62000000
  br i1 %158, label %159, label %173

159:                                              ; preds = %153
  %160 = icmp ugt i32 %154, 84000000
  br i1 %160, label %161, label %173

161:                                              ; preds = %159
  %162 = icmp ugt i32 %154, 100000000
  br i1 %162, label %163, label %173

163:                                              ; preds = %161
  %164 = icmp ugt i32 %154, 140000000
  br i1 %164, label %165, label %173

165:                                              ; preds = %163
  %166 = icmp ugt i32 %154, 170000000
  br i1 %166, label %167, label %173

167:                                              ; preds = %165
  %168 = icmp ugt i32 %154, 180000000
  br i1 %168, label %169, label %173

169:                                              ; preds = %167
  %170 = icmp ugt i32 %154, 865000000
  %171 = select i1 %170, i32 7, i32 6
  %172 = select i1 %170, i1 true, i1 false
  br label %173

173:                                              ; preds = %169, %167, %165, %163, %161, %159, %153
  %174 = phi i32 [ 0, %153 ], [ 1, %159 ], [ 2, %161 ], [ 3, %163 ], [ 4, %165 ], [ 5, %167 ], [ %171, %169 ]
  %175 = phi i1 [ false, %153 ], [ false, %159 ], [ false, %161 ], [ false, %163 ], [ false, %165 ], [ false, %167 ], [ %172, %169 ]
  br i1 %175, label %218, label %176

176:                                              ; preds = %173
  %177 = getelementptr %struct.SMap, ptr @m_BP_Filter_Map, i32 %174, i32 1
  %178 = load i8, ptr %177, align 4
  br label %179

179:                                              ; preds = %179, %176
  %180 = phi i32 [ 0, %176 ], [ %186, %179 ]
  %181 = getelementptr %struct.SMap, ptr @m_GainTaper_Map, i32 %180
  %182 = load i32, ptr %181, align 4
  %183 = icmp ne i32 %182, 0
  %184 = icmp ult i32 %182, %154
  %185 = and i1 %183, %184
  %186 = add nuw nsw i32 %180, 1
  br i1 %185, label %179, label %187

187:                                              ; preds = %179
  %188 = icmp eq i32 %182, 0
  br i1 %188, label %218, label %189

189:                                              ; preds = %187
  %190 = getelementptr %struct.SMap, ptr @m_GainTaper_Map, i32 %180, i32 1
  %191 = load i8, ptr %190, align 4
  %192 = icmp ugt i32 %154, 200000000
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = icmp ugt i32 %154, 400000000
  br i1 %194, label %195, label %199

195:                                              ; preds = %193
  %196 = icmp ugt i32 %154, 865000000
  %197 = select i1 %196, i32 3, i32 2
  %198 = select i1 %196, i1 true, i1 false
  br label %199

199:                                              ; preds = %195, %193, %189
  %200 = phi i32 [ 0, %189 ], [ 1, %193 ], [ %197, %195 ]
  %201 = phi i1 [ false, %189 ], [ false, %193 ], [ %198, %195 ]
  br i1 %201, label %218, label %202

202:                                              ; preds = %199
  %203 = getelementptr %struct.SMap, ptr @m_IR_Meas_Map, i32 %200, i32 1
  %204 = load i8, ptr %203, align 4
  %205 = icmp ugt i32 %154, 47900000
  br i1 %205, label %206, label %220

206:                                              ; preds = %202
  %207 = icmp ugt i32 %154, 61100000
  br i1 %207, label %208, label %220

208:                                              ; preds = %206
  %209 = icmp ugt i32 %154, 152600000
  br i1 %209, label %210, label %220

210:                                              ; preds = %208
  %211 = icmp ugt i32 %154, 164700000
  br i1 %211, label %212, label %220

212:                                              ; preds = %210
  %213 = icmp ugt i32 %154, 203500000
  br i1 %213, label %214, label %220

214:                                              ; preds = %212
  %215 = icmp ugt i32 %154, 457800000
  br i1 %215, label %216, label %220

216:                                              ; preds = %214
  %217 = icmp ugt i32 %154, 865000000
  br i1 %217, label %218, label %220

218:                                              ; preds = %216, %199, %187, %173
  %219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ChannelConfiguration) #12
  br label %445

220:                                              ; preds = %216, %214, %212, %210, %208, %206, %202
  %221 = phi i8 [ 0, %202 ], [ 32, %206 ], [ 64, %208 ], [ 96, %210 ], [ -128, %212 ], [ -96, %214 ], [ -64, %216 ]
  %222 = load i8, ptr %97, align 1
  %223 = and i8 %222, -32
  %224 = getelementptr [19 x %struct.SStandardParam], ptr @m_StandardTable, i32 0, i32 %45, i32 2
  %225 = load i8, ptr %224, align 4
  %226 = and i8 %225, -5
  %227 = or i8 %226, %223
  store i8 %227, ptr %97, align 1
  %228 = getelementptr inbounds %struct.tda_state, ptr %28, i32 0, i32 8
  %229 = load i8, ptr %228, align 4
  %230 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 12, i32 6
  %231 = icmp ult i32 %45, 15
  %232 = getelementptr inbounds %struct.tda_state, ptr %28, i32 0, i32 6
  %233 = getelementptr inbounds %struct.tda_state, ptr %28, i32 0, i32 7
  %234 = select i1 %231, ptr %233, ptr %232
  %235 = load i8, ptr %234, align 1
  %236 = or i8 %235, %229
  store i8 %236, ptr %230, align 2
  %237 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 12, i32 12
  %238 = load i8, ptr %237, align 4
  %239 = or i8 %238, -128
  store i8 %239, ptr %237, align 4
  %240 = getelementptr [19 x %struct.SStandardParam], ptr @m_StandardTable, i32 0, i32 %45, i32 3
  %241 = load i8, ptr %240, align 1
  %242 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 12, i32 37
  store i8 %241, ptr %242, align 1
  %243 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 12, i32 38
  %244 = load i8, ptr %243, align 2
  %245 = and i8 %244, -7
  store i8 %245, ptr %243, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %21) #11
  %246 = getelementptr inbounds i8, ptr %21, i32 1
  %247 = getelementptr inbounds i8, ptr %21, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %247, i8 0, i32 61, i1 false) #11, !annotation !8
  store i8 37, ptr %21, align 1
  %248 = load i16, ptr %242, align 1
  store i16 %248, ptr %246, align 1
  %249 = load ptr, ptr %28, align 4
  %250 = load i8, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  %251 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 3, ptr %251, align 4, !annotation !8
  %252 = zext i8 %250 to i16
  store i16 %252, ptr %20, align 4
  %253 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %253, align 2
  %254 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %21, ptr %254, align 4
  %255 = call i32 @i2c_transfer(ptr noundef %249, ptr noundef nonnull %20, i32 noundef 1) #11
  %256 = icmp eq i32 %255, 1
  br i1 %256, label %260, label %257

257:                                              ; preds = %220
  %258 = zext i8 %250 to i32
  %259 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %258) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %21) #11
  br label %445

260:                                              ; preds = %220
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %21) #11
  %261 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 12, i32 3
  %262 = load i8, ptr %261, align 1
  %263 = and i8 %262, -72
  %264 = or i8 %178, %263
  %265 = or i8 %264, 64
  store i8 %265, ptr %261, align 1
  %266 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 12, i32 7
  %267 = load i8, ptr %266, align 1
  %268 = and i8 %267, -8
  %269 = or i8 %268, %204
  store i8 %269, ptr %266, align 1
  %270 = or i8 %221, %191
  %271 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 12, i32 4
  store i8 %270, ptr %271, align 4
  %272 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 12, i32 16
  %273 = load i8, ptr %272, align 4
  %274 = and i8 %273, -8
  %275 = getelementptr inbounds %struct.tda_state, ptr %28, i32 0, i32 10
  %276 = load i8, ptr %275, align 2, !range !9
  %277 = icmp eq i8 %276, 0
  %278 = select i1 %277, i8 0, i8 4
  %279 = or i8 %278, %274
  store i8 %279, ptr %272, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #11
  store i8 16, ptr %19, align 2
  %280 = getelementptr inbounds i8, ptr %19, i32 1
  store i8 %279, ptr %280, align 1
  %281 = load ptr, ptr %28, align 4
  %282 = load i8, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #11
  %283 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 2, ptr %283, align 4, !annotation !8
  %284 = zext i8 %282 to i16
  store i16 %284, ptr %18, align 4
  %285 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %285, align 2
  %286 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %19, ptr %286, align 4
  %287 = call i32 @i2c_transfer(ptr noundef %281, ptr noundef nonnull %18, i32 noundef 1) #11
  %288 = icmp eq i32 %287, 1
  br i1 %288, label %292, label %289

289:                                              ; preds = %260
  %290 = zext i8 %282 to i32
  %291 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %290) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  br label %445

292:                                              ; preds = %260
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  %293 = load i8, ptr %275, align 2, !range !9
  %294 = icmp eq i8 %293, 0
  %295 = add i32 %156, %154
  br i1 %294, label %346, label %296

296:                                              ; preds = %292
  %297 = call fastcc i32 @CalcMainPLL(ptr noundef %28, i32 noundef %295) #11
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %445, label %299

299:                                              ; preds = %296
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #11
  %300 = getelementptr inbounds i8, ptr %17, i32 1
  %301 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 12, i32 1
  store i8 1, ptr %17, align 1
  %302 = getelementptr inbounds i8, ptr %17, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(56) %302, i8 0, i32 56, i1 false) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %300, ptr noundef align 1 dereferenceable(7) %301, i32 7, i1 false) #11
  %303 = load ptr, ptr %28, align 4
  %304 = load i8, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #11
  %305 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 8, ptr %305, align 4, !annotation !8
  %306 = zext i8 %304 to i16
  store i16 %306, ptr %16, align 4
  %307 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %307, align 2
  %308 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %17, ptr %308, align 4
  %309 = call i32 @i2c_transfer(ptr noundef %303, ptr noundef nonnull %16, i32 noundef 1) #11
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %314, label %311

311:                                              ; preds = %299
  %312 = zext i8 %304 to i32
  %313 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %312) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #11
  br label %445

314:                                              ; preds = %299
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #11
  %315 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 12, i32 19
  %316 = load i8, ptr %315, align 1
  %317 = or i8 %316, 32
  store i8 %317, ptr %315, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #11
  store i8 19, ptr %15, align 2
  %318 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 %317, ptr %318, align 1
  %319 = load ptr, ptr %28, align 4
  %320 = load i8, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  %321 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %321, align 4, !annotation !8
  %322 = zext i8 %320 to i16
  store i16 %322, ptr %14, align 4
  %323 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %323, align 2
  %324 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %15, ptr %324, align 4
  %325 = call i32 @i2c_transfer(ptr noundef %319, ptr noundef nonnull %14, i32 noundef 1) #11
  %326 = icmp eq i32 %325, 1
  br i1 %326, label %330, label %327

327:                                              ; preds = %314
  %328 = zext i8 %320 to i32
  %329 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %328) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #11
  br label %445

330:                                              ; preds = %314
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #11
  call void @msleep(i32 noundef 1) #11
  %331 = load i8, ptr %315, align 1
  %332 = and i8 %331, -33
  store i8 %332, ptr %315, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #11
  store i8 19, ptr %13, align 2
  %333 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 %332, ptr %333, align 1
  %334 = load ptr, ptr %28, align 4
  %335 = load i8, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  %336 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %336, align 4, !annotation !8
  %337 = zext i8 %335 to i16
  store i16 %337, ptr %12, align 4
  %338 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %338, align 2
  %339 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %13, ptr %339, align 4
  %340 = call i32 @i2c_transfer(ptr noundef %334, ptr noundef nonnull %12, i32 noundef 1) #11
  %341 = icmp eq i32 %340, 1
  br i1 %341, label %345, label %342

342:                                              ; preds = %330
  %343 = zext i8 %335 to i32
  %344 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %343) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #11
  br label %445

345:                                              ; preds = %330
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #11
  br label %427

346:                                              ; preds = %292
  %347 = call fastcc i32 @CalcCalPLL(ptr noundef %28, i32 noundef %295) #11
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %445, label %349

349:                                              ; preds = %349, %346
  %350 = phi i32 [ %356, %349 ], [ 0, %346 ]
  %351 = getelementptr %struct.SMap2, ptr @m_Cal_PLL_Map, i32 %350
  %352 = load i32, ptr %351, align 4
  %353 = icmp ne i32 %352, 0
  %354 = icmp ult i32 %352, %295
  %355 = and i1 %353, %354
  %356 = add nuw nsw i32 %350, 1
  br i1 %355, label %349, label %357

357:                                              ; preds = %349
  %358 = icmp eq i32 %352, 0
  br i1 %358, label %363, label %359

359:                                              ; preds = %357
  %360 = getelementptr %struct.SMap2, ptr @m_Cal_PLL_Map, i32 %350, i32 1
  %361 = load i8, ptr %360, align 4
  %362 = and i8 %361, 119
  br label %363

363:                                              ; preds = %359, %357
  %364 = phi i8 [ 0, %357 ], [ %362, %359 ]
  %365 = load i8, ptr %237, align 4
  %366 = and i8 %365, -128
  %367 = or i8 %366, %364
  store i8 %367, ptr %237, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #11
  store i8 12, ptr %11, align 2
  %368 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 %367, ptr %368, align 1
  %369 = load ptr, ptr %28, align 4
  %370 = load i8, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %371 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %371, align 4, !annotation !8
  %372 = zext i8 %370 to i16
  store i16 %372, ptr %10, align 4
  %373 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %373, align 2
  %374 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %11, ptr %374, align 4
  %375 = call i32 @i2c_transfer(ptr noundef %369, ptr noundef nonnull %10, i32 noundef 1) #11
  %376 = icmp eq i32 %375, 1
  br i1 %376, label %380, label %377

377:                                              ; preds = %363
  %378 = zext i8 %370 to i32
  %379 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %378) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #11
  br label %445

380:                                              ; preds = %363
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  %381 = getelementptr inbounds i8, ptr %9, i32 1
  %382 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 12, i32 1
  store i8 1, ptr %9, align 1
  %383 = getelementptr inbounds i8, ptr %9, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(56) %383, i8 0, i32 56, i1 false) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %381, ptr noundef align 1 dereferenceable(7) %382, i32 7, i1 false) #11
  %384 = load ptr, ptr %28, align 4
  %385 = load i8, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %386 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 8, ptr %386, align 4, !annotation !8
  %387 = zext i8 %385 to i16
  store i16 %387, ptr %8, align 4
  %388 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %388, align 2
  %389 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %9, ptr %389, align 4
  %390 = call i32 @i2c_transfer(ptr noundef %384, ptr noundef nonnull %8, i32 noundef 1) #11
  %391 = icmp eq i32 %390, 1
  br i1 %391, label %395, label %392

392:                                              ; preds = %380
  %393 = zext i8 %385 to i32
  %394 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %393) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  br label %445

395:                                              ; preds = %380
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  %396 = getelementptr %struct.tda_state, ptr %28, i32 0, i32 12, i32 22
  %397 = load i8, ptr %396, align 2
  %398 = or i8 %397, 32
  store i8 %398, ptr %396, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i8 22, ptr %7, align 2
  %399 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %398, ptr %399, align 1
  %400 = load ptr, ptr %28, align 4
  %401 = load i8, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %402 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %402, align 4, !annotation !8
  %403 = zext i8 %401 to i16
  store i16 %403, ptr %6, align 4
  %404 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %404, align 2
  %405 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %405, align 4
  %406 = call i32 @i2c_transfer(ptr noundef %400, ptr noundef nonnull %6, i32 noundef 1) #11
  %407 = icmp eq i32 %406, 1
  br i1 %407, label %411, label %408

408:                                              ; preds = %395
  %409 = zext i8 %401 to i32
  %410 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %409) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  br label %445

411:                                              ; preds = %395
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  call void @msleep(i32 noundef 1) #11
  %412 = load i8, ptr %396, align 2
  %413 = and i8 %412, -33
  store i8 %413, ptr %396, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i8 22, ptr %3, align 2
  %414 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %413, ptr %414, align 1
  %415 = load ptr, ptr %28, align 4
  %416 = load i8, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #11
  %417 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 2, ptr %417, align 4, !annotation !8
  %418 = zext i8 %416 to i16
  store i16 %418, ptr %2, align 4
  %419 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %419, align 2
  %420 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %420, align 4
  %421 = call i32 @i2c_transfer(ptr noundef %415, ptr noundef nonnull %2, i32 noundef 1) #11
  %422 = icmp eq i32 %421, 1
  br i1 %422, label %426, label %423

423:                                              ; preds = %411
  %424 = zext i8 %416 to i32
  %425 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %424) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br label %445

426:                                              ; preds = %411
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br label %427

427:                                              ; preds = %426, %345
  call void @msleep(i32 noundef 20) #11
  %428 = load i8, ptr %97, align 1
  %429 = or i8 %428, 4
  store i8 %429, ptr %97, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i8 5, ptr %5, align 2
  %430 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %429, ptr %430, align 1
  %431 = load ptr, ptr %28, align 4
  %432 = load i8, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %433 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %433, align 4, !annotation !8
  %434 = zext i8 %432 to i16
  store i16 %434, ptr %4, align 4
  %435 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %435, align 2
  %436 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %436, align 4
  %437 = call i32 @i2c_transfer(ptr noundef %431, ptr noundef nonnull %4, i32 noundef 1) #11
  %438 = icmp eq i32 %437, 1
  br i1 %438, label %442, label %439

439:                                              ; preds = %427
  %440 = zext i8 %432 to i32
  %441 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %440) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  br label %445

442:                                              ; preds = %427
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  %443 = getelementptr inbounds %struct.tda_state, ptr %28, i32 0, i32 11
  %444 = load i32, ptr %443, align 4
  call void @msleep(i32 noundef %444) #11
  br label %445

445:                                              ; preds = %442, %439, %423, %408, %392, %377, %346, %342, %327, %311, %296, %289, %257, %218, %151, %82, %70, %54, %36, %1
  %446 = phi i32 [ -22, %36 ], [ -22, %1 ], [ 0, %442 ], [ %152, %151 ], [ -1, %439 ], [ -22, %54 ], [ -22, %70 ], [ -22, %82 ], [ -1, %423 ], [ %347, %346 ], [ -1, %377 ], [ -1, %392 ], [ -1, %408 ], [ -1, %342 ], [ -1, %327 ], [ -1, %311 ], [ -1, %289 ], [ -1, %257 ], [ %297, %296 ], [ -22, %218 ]
  ret i32 %446
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @get_bandwidth(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @get_if_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tda_state, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @StandBy(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [64 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 27
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, -33
  store i8 %12, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #11
  store i8 27, ptr %9, align 2
  %13 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %12, ptr %13, align 1
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.tda_state, ptr %0, i32 0, i32 1
  %16 = load i8, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %17 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %17, align 4, !annotation !8
  %18 = zext i8 %16 to i16
  store i16 %18, ptr %8, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %9, ptr %20, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %8, i32 noundef 1) #11
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = zext i8 %16 to i32
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %24) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #11
  br label %80

26:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #11
  %27 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 33
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 124
  store i8 %29, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i8 33, ptr %7, align 2
  %30 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %29, ptr %30, align 1
  %31 = load ptr, ptr %0, align 4
  %32 = load i8, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %33 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %33, align 4, !annotation !8
  %34 = zext i8 %32 to i16
  store i16 %34, ptr %6, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %36, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %6, i32 noundef 1) #11
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = zext i8 %32 to i32
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %40) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  br label %80

42:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  %43 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 36
  %44 = load i8, ptr %43, align 4
  %45 = or i8 %44, 3
  store i8 %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.tda_state, ptr %0, i32 0, i32 9
  %47 = load i8, ptr %46, align 1
  %48 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 5
  store i8 %47, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i8 5, ptr %5, align 2
  %49 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %47, ptr %49, align 1
  %50 = load ptr, ptr %0, align 4
  %51 = load i8, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %52 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %52, align 4, !annotation !8
  %53 = zext i8 %51 to i16
  store i16 %53, ptr %4, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %54, align 2
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %55, align 4
  %56 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %4, i32 noundef 1) #11
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %61, label %58

58:                                               ; preds = %42
  %59 = zext i8 %51 to i32
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %59) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  br label %80

61:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  %62 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 38
  %63 = load i8, ptr %62, align 2
  %64 = and i8 %63, -7
  store i8 %64, ptr %62, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %65 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 36, ptr %3, align 1
  %66 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(60) %66, i8 0, i32 60, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %65, ptr noundef align 1 dereferenceable(3) %43, i32 3, i1 false) #11
  %67 = load ptr, ptr %0, align 4
  %68 = load i8, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #11
  %69 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 4, ptr %69, align 4, !annotation !8
  %70 = zext i8 %68 to i16
  store i16 %70, ptr %2, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %71, align 2
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %72, align 4
  %73 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %2, i32 noundef 1) #11
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %78, label %75

75:                                               ; preds = %61
  %76 = zext i8 %68 to i32
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %76) #12
  br label %78

78:                                               ; preds = %75, %61
  %79 = phi i32 [ -1, %75 ], [ 0, %61 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  br label %80

80:                                               ; preds = %78, %58, %39, %23
  %81 = phi i32 [ %79, %78 ], [ -1, %23 ], [ -1, %39 ], [ -1, %58 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @UpdateReg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = zext i8 %1 to i32
  %6 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 %5
  %7 = load i8, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i8 %1, ptr %4, align 2
  %8 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %7, ptr %8, align 1
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.tda_state, ptr %0, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %12 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %12, align 4, !annotation !8
  %13 = zext i8 %11 to i16
  store i16 %13, ptr %3, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %15, align 4
  %16 = call i32 @i2c_transfer(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 1) #11
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = zext i8 %11 to i32
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %19) #12
  br label %21

21:                                               ; preds = %18, %2
  %22 = phi i32 [ -1, %18 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @UpdateRegs(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [64 x i8], align 1
  %6 = zext i8 %1 to i32
  %7 = zext i8 %2 to i32
  %8 = sub nsw i32 %7, %6
  %9 = trunc i32 %8 to i16
  %10 = add nsw i16 %9, 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %11 = getelementptr inbounds i8, ptr %5, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %11, i8 0, i32 63, i1 false) #11, !annotation !8
  %12 = zext i16 %10 to i32
  %13 = icmp ugt i16 %10, 63
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %12) #12
  br label %33

16:                                               ; preds = %3
  %17 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 %6
  %18 = add nsw i16 %9, 2
  store i8 %1, ptr %5, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %11, ptr align 1 %17, i32 %12, i1 false) #11
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.tda_state, ptr %0, i32 0, i32 1
  %21 = load i8, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %22 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %22, align 4, !annotation !8
  %23 = zext i8 %21 to i16
  store i16 %23, ptr %4, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %24, align 2
  store i16 %18, ptr %22, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %25, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %4, i32 noundef 1) #11
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %16
  %29 = zext i8 %21 to i32
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %29) #12
  br label %31

31:                                               ; preds = %28, %16
  %32 = phi i32 [ -1, %28 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  br label %33

33:                                               ; preds = %31, %14
  %34 = phi i32 [ -22, %14 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret i32 %34
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ThermometerRead(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [1 x %struct.i2c_msg], align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca [1 x %struct.i2c_msg], align 4
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %13, i8 0, i32 16, i1 false), !annotation !8
  %14 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = or i8 %15, 16
  store i8 %16, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #11
  store i8 1, ptr %12, align 2
  %17 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 %16, ptr %17, align 1
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.tda_state, ptr %0, i32 0, i32 1
  %20 = load i8, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %21 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %21, align 4, !annotation !8
  %22 = zext i8 %20 to i16
  store i16 %22, ptr %11, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %23, align 2
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %12, ptr %24, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %11, i32 noundef 1) #11
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = zext i8 %20 to i32
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %28) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #11
  br label %111

30:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #11
  %31 = load ptr, ptr %0, align 4
  %32 = load i8, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %33 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 16, ptr %33, align 4, !annotation !8
  %34 = zext i8 %32 to i16
  store i16 %34, ptr %10, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 1, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %13, ptr %36, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %10, i32 noundef 1) #11
  %38 = icmp eq i32 %37, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  br i1 %38, label %39, label %111

39:                                               ; preds = %30
  %40 = getelementptr inbounds [16 x i8], ptr %13, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 47
  switch i32 %43, label %71 [
    i32 32, label %44
    i32 8, label %44
  ]

44:                                               ; preds = %39, %39
  %45 = load i8, ptr %14, align 1
  %46 = xor i8 %45, 32
  store i8 %46, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #11
  store i8 1, ptr %9, align 2
  %47 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %46, ptr %47, align 1
  %48 = load ptr, ptr %0, align 4
  %49 = load i8, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %50 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %50, align 4, !annotation !8
  %51 = zext i8 %49 to i16
  store i16 %51, ptr %8, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %52, align 2
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %9, ptr %53, align 4
  %54 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %8, i32 noundef 1) #11
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %59, label %56

56:                                               ; preds = %44
  %57 = zext i8 %49 to i32
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %57) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #11
  br label %111

59:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #11
  call void @msleep(i32 noundef 10) #11
  %60 = load ptr, ptr %0, align 4
  %61 = load i8, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %62 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 16, ptr %62, align 4, !annotation !8
  %63 = zext i8 %61 to i16
  store i16 %63, ptr %7, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 1, ptr %64, align 2
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %13, ptr %65, align 4
  %66 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %7, i32 noundef 1) #11
  %67 = icmp eq i32 %66, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  br i1 %67, label %68, label %111

68:                                               ; preds = %59
  %69 = load i8, ptr %40, align 1
  %70 = zext i8 %69 to i32
  br label %71

71:                                               ; preds = %68, %39
  %72 = phi i32 [ %70, %68 ], [ %42, %39 ]
  %73 = and i32 %72, 32
  %74 = icmp eq i32 %73, 0
  %75 = and i32 %72, 15
  %76 = getelementptr [16 x i8], ptr @m_Thermometer_Map_2, i32 0, i32 %75
  %77 = getelementptr [16 x i8], ptr @m_Thermometer_Map_1, i32 0, i32 %75
  %78 = select i1 %74, ptr %77, ptr %76
  %79 = load i8, ptr %78, align 1
  store i8 %79, ptr %1, align 1
  %80 = load i8, ptr %14, align 1
  %81 = and i8 %80, -17
  store i8 %81, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  store i8 1, ptr %6, align 2
  %82 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %81, ptr %82, align 1
  %83 = load ptr, ptr %0, align 4
  %84 = load i8, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %85 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %85, align 4, !annotation !8
  %86 = zext i8 %84 to i16
  store i16 %86, ptr %5, align 4
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %87, align 2
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %88, align 4
  %89 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %5, i32 noundef 1) #11
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %94, label %91

91:                                               ; preds = %71
  %92 = zext i8 %84 to i32
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %92) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  br label %111

94:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  %95 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 6
  %96 = load i8, ptr %95, align 2
  %97 = and i8 %96, -4
  store i8 %97, ptr %95, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i8 6, ptr %4, align 2
  %98 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %97, ptr %98, align 1
  %99 = load ptr, ptr %0, align 4
  %100 = load i8, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %101 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %101, align 4, !annotation !8
  %102 = zext i8 %100 to i16
  store i16 %102, ptr %3, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %103, align 2
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %104, align 4
  %105 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %3, i32 noundef 1) #11
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %94
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br label %111

108:                                              ; preds = %94
  %109 = zext i8 %100 to i32
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %109) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br label %111

111:                                              ; preds = %108, %107, %91, %59, %56, %30, %27
  %112 = phi i32 [ -1, %30 ], [ -1, %59 ], [ -1, %27 ], [ -1, %56 ], [ -1, %91 ], [ -1, %108 ], [ 0, %107 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @CalcMainPLL(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [64 x i8], align 1
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %12, %5 ]
  %7 = getelementptr %struct.SMap2, ptr @m_Main_PLL_Map, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = icmp ult i32 %8, %1
  %11 = and i1 %9, %10
  %12 = add nuw nsw i32 %6, 1
  br i1 %11, label %5, label %13

13:                                               ; preds = %5
  %14 = icmp eq i32 %8, 0
  br i1 %14, label %56, label %15

15:                                               ; preds = %13
  %16 = getelementptr %struct.SMap2, ptr @m_Main_PLL_Map, i32 %6, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = getelementptr %struct.SMap2, ptr @m_Main_PLL_Map, i32 %6, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i32 %1 to i64
  %21 = zext i8 %19 to i64
  %22 = shl nuw nsw i64 %20, 14
  %23 = mul nuw nsw i64 %22, %21
  %24 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %23) #13, !srcloc !10
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %23, i64 %24, i32 0) #13, !srcloc !11
  %26 = extractvalue { i64, i32 } %25, 0
  %27 = and i8 %17, 119
  %28 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 12
  store i8 %27, ptr %28, align 4
  %29 = lshr i64 %26, 38
  %30 = trunc i64 %29 to i8
  %31 = and i8 %30, 127
  %32 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 13
  store i8 %31, ptr %32, align 1
  %33 = lshr i64 %26, 30
  %34 = trunc i64 %33 to i8
  %35 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 14
  store i8 %34, ptr %35, align 2
  %36 = lshr i64 %26, 22
  %37 = trunc i64 %36 to i8
  %38 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 15
  store i8 %37, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %39 = getelementptr inbounds i8, ptr %4, i32 1
  %40 = getelementptr inbounds i8, ptr %4, i32 5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %40, i8 0, i32 59, i1 false) #11, !annotation !8
  store i8 12, ptr %4, align 1
  %41 = load i32, ptr %28, align 1
  store i32 %41, ptr %39, align 1
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.tda_state, ptr %0, i32 0, i32 1
  %44 = load i8, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %45 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 5, ptr %45, align 4, !annotation !8
  %46 = zext i8 %44 to i16
  store i16 %46, ptr %3, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %47, align 2
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %48, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %3, i32 noundef 1) #11
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %15
  %52 = zext i8 %44 to i32
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %52) #12
  br label %54

54:                                               ; preds = %51, %15
  %55 = phi i32 [ -1, %51 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  br label %56

56:                                               ; preds = %54, %13
  %57 = phi i32 [ %55, %54 ], [ -22, %13 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @CalcCalPLL(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [64 x i8], align 1
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %12, %5 ]
  %7 = getelementptr %struct.SMap2, ptr @m_Cal_PLL_Map, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = icmp ult i32 %8, %1
  %11 = and i1 %9, %10
  %12 = add nuw nsw i32 %6, 1
  br i1 %11, label %5, label %13

13:                                               ; preds = %5
  %14 = icmp eq i32 %8, 0
  br i1 %14, label %54, label %15

15:                                               ; preds = %13
  %16 = getelementptr %struct.SMap2, ptr @m_Cal_PLL_Map, i32 %6, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = getelementptr %struct.SMap2, ptr @m_Cal_PLL_Map, i32 %6, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i32 %1 to i64
  %21 = zext i8 %19 to i64
  %22 = shl nuw nsw i64 %20, 14
  %23 = mul nuw nsw i64 %22, %21
  %24 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %23) #13, !srcloc !10
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %23, i64 %24, i32 0) #13, !srcloc !11
  %26 = extractvalue { i64, i32 } %25, 0
  %27 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 8
  store i8 %17, ptr %27, align 4
  %28 = lshr i64 %26, 38
  %29 = trunc i64 %28 to i8
  %30 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 9
  store i8 %29, ptr %30, align 1
  %31 = lshr i64 %26, 30
  %32 = trunc i64 %31 to i8
  %33 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 10
  store i8 %32, ptr %33, align 2
  %34 = lshr i64 %26, 22
  %35 = trunc i64 %34 to i8
  %36 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 11
  store i8 %35, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %37 = getelementptr inbounds i8, ptr %4, i32 1
  %38 = getelementptr inbounds i8, ptr %4, i32 5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %38, i8 0, i32 59, i1 false) #11, !annotation !8
  store i8 8, ptr %4, align 1
  %39 = load i32, ptr %27, align 1
  store i32 %39, ptr %37, align 1
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr inbounds %struct.tda_state, ptr %0, i32 0, i32 1
  %42 = load i8, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %43 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 5, ptr %43, align 4, !annotation !8
  %44 = zext i8 %42 to i16
  store i16 %44, ptr %3, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %45, align 2
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %46, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %3, i32 noundef 1) #11
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %52, label %49

49:                                               ; preds = %15
  %50 = zext i8 %42 to i32
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %50) #12
  br label %52

52:                                               ; preds = %49, %15
  %53 = phi i32 [ -1, %49 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  br label %54

54:                                               ; preds = %52, %13
  %55 = phi i32 [ %53, %52 ], [ -22, %13 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @RFTrackingFiltersInit(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %10 = zext i8 %1 to i32
  %11 = getelementptr [7 x %struct.SRFBandMap], ptr @m_RF_Band_Map, i32 0, i32 %10, i32 1
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %13 = getelementptr [7 x %struct.SRFBandMap], ptr @m_RF_Band_Map, i32 0, i32 %10, i32 2
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %15 = getelementptr [7 x %struct.SRFBandMap], ptr @m_RF_Band_Map, i32 0, i32 %10, i32 3
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 0, ptr %9, align 4
  %17 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 14, i32 %10
  store i32 0, ptr %17, align 4
  %18 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 15, i32 %10
  store i32 0, ptr %18, align 4
  %19 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 17, i32 %10
  store i32 0, ptr %19, align 4
  %20 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 18, i32 %10
  store i32 0, ptr %20, align 4
  %21 = call fastcc i32 @PowerScan(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %6)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, ptr %3, align 4
  br label %139

25:                                               ; preds = %2
  %26 = load i8, ptr %6, align 1, !range !9
  %27 = icmp eq i8 %26, 0
  %28 = load i32, ptr %3, align 4
  br i1 %27, label %32, label %29

29:                                               ; preds = %25
  %30 = call fastcc i32 @CalibrateRF(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %28, ptr noundef nonnull %7)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %139, label %32

32:                                               ; preds = %29, %25
  %33 = phi i32 [ 0, %29 ], [ %21, %25 ]
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi i32 [ 0, %32 ], [ %41, %34 ]
  %36 = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = icmp ult i32 %37, %28
  %40 = and i1 %38, %39
  %41 = add i32 %35, 1
  br i1 %40, label %34, label %42

42:                                               ; preds = %34
  %43 = icmp eq i32 %37, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %35, i32 1
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi i32 [ 0, %42 ], [ %46, %44 ]
  br i1 %27, label %51, label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %7, align 4
  br label %52

51:                                               ; preds = %47
  store i32 %48, ptr %7, align 4
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ %48, %51 ]
  %54 = sub i32 %53, %48
  store i32 %54, ptr %18, align 4
  %55 = lshr i32 27, %10
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %139

58:                                               ; preds = %52
  %59 = call fastcc i32 @PowerScan(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %6)
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, ptr %4, align 4
  br label %139

63:                                               ; preds = %58
  %64 = load i8, ptr %6, align 1, !range !9
  %65 = icmp eq i8 %64, 0
  %66 = load i32, ptr %4, align 4
  br i1 %65, label %70, label %67

67:                                               ; preds = %63
  %68 = call fastcc i32 @CalibrateRF(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %66, ptr noundef nonnull %8)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %139, label %70

70:                                               ; preds = %67, %63
  %71 = phi i32 [ 0, %67 ], [ %59, %63 ]
  br label %72

72:                                               ; preds = %72, %70
  %73 = phi i32 [ 0, %70 ], [ %79, %72 ]
  %74 = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = icmp ne i32 %75, 0
  %77 = icmp ult i32 %75, %66
  %78 = and i1 %76, %77
  %79 = add i32 %73, 1
  br i1 %78, label %72, label %80

80:                                               ; preds = %72
  %81 = icmp eq i32 %75, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %80
  %83 = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %73, i32 1
  %84 = load i32, ptr %83, align 4
  br label %85

85:                                               ; preds = %82, %80
  %86 = phi i32 [ 0, %80 ], [ %84, %82 ]
  br i1 %65, label %89, label %87

87:                                               ; preds = %85
  %88 = load i32, ptr %8, align 4
  br label %90

89:                                               ; preds = %85
  store i32 %86, ptr %8, align 4
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ %86, %89 ]
  %92 = add i32 %53, %86
  %93 = sub i32 %48, %92
  %94 = add i32 %93, %91
  %95 = sub i32 %66, %28
  %96 = sdiv i32 %94, %95
  store i32 %96, ptr %17, align 4
  %97 = add i8 %1, -7
  %98 = icmp ult i8 %97, -2
  br i1 %98, label %139, label %99

99:                                               ; preds = %90
  %100 = call fastcc i32 @PowerScan(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %16, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, ptr %5, align 4
  br label %139

104:                                              ; preds = %99
  %105 = load i8, ptr %6, align 1, !range !9
  %106 = icmp eq i8 %105, 0
  %107 = load i32, ptr %5, align 4
  br i1 %106, label %111, label %108

108:                                              ; preds = %104
  %109 = call fastcc i32 @CalibrateRF(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %107, ptr noundef nonnull %9)
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %139, label %111

111:                                              ; preds = %108, %104
  %112 = phi i32 [ %109, %108 ], [ %100, %104 ]
  br label %113

113:                                              ; preds = %113, %111
  %114 = phi i32 [ 0, %111 ], [ %120, %113 ]
  %115 = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %114
  %116 = load i32, ptr %115, align 4
  %117 = icmp ne i32 %116, 0
  %118 = icmp ult i32 %116, %107
  %119 = and i1 %117, %118
  %120 = add i32 %114, 1
  br i1 %119, label %113, label %121

121:                                              ; preds = %113
  %122 = icmp eq i32 %116, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %121
  %124 = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %114, i32 1
  %125 = load i32, ptr %124, align 4
  br label %126

126:                                              ; preds = %123, %121
  %127 = phi i32 [ 0, %121 ], [ %125, %123 ]
  br i1 %106, label %130, label %128

128:                                              ; preds = %126
  %129 = load i32, ptr %9, align 4
  br label %131

130:                                              ; preds = %126
  store i32 %127, ptr %9, align 4
  br label %131

131:                                              ; preds = %130, %128
  %132 = phi i32 [ %129, %128 ], [ %127, %130 ]
  %133 = add i32 %91, %127
  %134 = sub i32 %86, %133
  %135 = add i32 %134, %132
  %136 = sub i32 %107, %66
  %137 = sdiv i32 %135, %136
  store i32 %137, ptr %19, align 4
  %138 = sub i32 %91, %86
  store i32 %138, ptr %20, align 4
  br label %139

139:                                              ; preds = %131, %108, %102, %90, %67, %61, %52, %29, %23
  %140 = phi i32 [ %16, %23 ], [ %16, %29 ], [ %16, %52 ], [ %16, %61 ], [ %16, %67 ], [ %16, %90 ], [ %103, %102 ], [ %107, %108 ], [ %107, %131 ]
  %141 = phi i32 [ %14, %23 ], [ %14, %29 ], [ %14, %52 ], [ %62, %61 ], [ %66, %67 ], [ %66, %90 ], [ %66, %102 ], [ %66, %108 ], [ %66, %131 ]
  %142 = phi i32 [ %24, %23 ], [ %28, %29 ], [ %28, %52 ], [ %28, %61 ], [ %28, %67 ], [ %28, %90 ], [ %28, %102 ], [ %28, %108 ], [ %28, %131 ]
  %143 = phi i32 [ %21, %23 ], [ %30, %29 ], [ %33, %52 ], [ %59, %61 ], [ %68, %67 ], [ %71, %90 ], [ %100, %102 ], [ %109, %108 ], [ %112, %131 ]
  %144 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 13, i32 %10
  store i32 %142, ptr %144, align 4
  %145 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 16, i32 %10
  store i32 %141, ptr %145, align 4
  %146 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 19, i32 %10
  store i32 %140, ptr %146, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @PowerScan(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca [1 x %struct.i2c_msg], align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca [1 x %struct.i2c_msg], align 4
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [2 x i8], align 2
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca [2 x i8], align 2
  %18 = alloca [39 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %18) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(39) %18, i8 0, i32 39, i1 false), !annotation !8
  br label %19

19:                                               ; preds = %19, %5
  %20 = phi i32 [ 0, %5 ], [ %26, %19 ]
  %21 = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = icmp ult i32 %22, %2
  %25 = and i1 %23, %24
  %26 = add i32 %20, 1
  br i1 %25, label %19, label %27

27:                                               ; preds = %19
  %28 = icmp eq i32 %22, 0
  br i1 %28, label %216, label %29

29:                                               ; preds = %27
  %30 = getelementptr %struct.SMapI, ptr @m_RF_Cal_Map, i32 %20, i32 1
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi i32 [ 0, %29 ], [ %39, %32 ]
  %34 = getelementptr %struct.SMap, ptr @m_GainTaper_Map, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = icmp ult i32 %35, %2
  %38 = and i1 %36, %37
  %39 = add nuw nsw i32 %33, 1
  br i1 %38, label %32, label %40

40:                                               ; preds = %32
  %41 = icmp eq i32 %35, 0
  br i1 %41, label %216, label %42

42:                                               ; preds = %40
  %43 = getelementptr %struct.SMap, ptr @m_GainTaper_Map, i32 %33, i32 1
  %44 = load i8, ptr %43, align 4
  br label %45

45:                                               ; preds = %45, %42
  %46 = phi i32 [ 0, %42 ], [ %52, %45 ]
  %47 = getelementptr %struct.SMap2, ptr @m_CID_Target_Map, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = icmp ult i32 %48, %2
  %51 = and i1 %49, %50
  %52 = add nuw nsw i32 %46, 1
  br i1 %51, label %45, label %53

53:                                               ; preds = %45
  %54 = icmp eq i32 %48, 0
  br i1 %54, label %216, label %55

55:                                               ; preds = %53
  %56 = getelementptr %struct.SMap2, ptr @m_CID_Target_Map, i32 %46, i32 1
  %57 = load i8, ptr %56, align 4
  %58 = getelementptr %struct.SMap2, ptr @m_CID_Target_Map, i32 %46, i32 2
  %59 = load i8, ptr %58, align 1
  %60 = shl i8 %1, 5
  %61 = or i8 %44, %60
  %62 = getelementptr inbounds %struct.tda_state, ptr %0, i32 0, i32 12
  %63 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 4
  store i8 %61, ptr %63, align 4
  %64 = trunc i32 %31 to i8
  %65 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 29
  store i8 %64, ptr %65, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #11
  store i8 4, ptr %17, align 2
  %66 = getelementptr inbounds i8, ptr %17, i32 1
  store i8 %61, ptr %66, align 1
  %67 = load ptr, ptr %0, align 4
  %68 = getelementptr inbounds %struct.tda_state, ptr %0, i32 0, i32 1
  %69 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #11
  %70 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 2, ptr %70, align 4, !annotation !8
  %71 = zext i8 %69 to i16
  store i16 %71, ptr %16, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %72, align 2
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %17, ptr %73, align 4
  %74 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %16, i32 noundef 1) #11
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %79, label %76

76:                                               ; preds = %55
  %77 = zext i8 %69 to i32
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %77) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #11
  br label %218

79:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #11
  %80 = load i8, ptr %65, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #11
  store i8 29, ptr %15, align 2
  %81 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 %80, ptr %81, align 1
  %82 = load ptr, ptr %0, align 4
  %83 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  %84 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %84, align 4, !annotation !8
  %85 = zext i8 %83 to i16
  store i16 %85, ptr %14, align 4
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %86, align 2
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %15, ptr %87, align 4
  %88 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %14, i32 noundef 1) #11
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %93, label %90

90:                                               ; preds = %79
  %91 = zext i8 %83 to i32
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %91) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #11
  br label %218

93:                                               ; preds = %79
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #11
  %94 = add i32 %2, 1000000
  %95 = call fastcc i32 @CalcMainPLL(ptr noundef %0, i32 noundef %94)
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %218, label %97

97:                                               ; preds = %93
  call void @msleep(i32 noundef 5) #11
  %98 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 6
  %99 = load i8, ptr %98, align 2
  %100 = and i8 %99, -4
  %101 = or i8 %100, 1
  store i8 %101, ptr %98, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #11
  store i8 6, ptr %13, align 2
  %102 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 %101, ptr %102, align 1
  %103 = load ptr, ptr %0, align 4
  %104 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  %105 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %105, align 4, !annotation !8
  %106 = zext i8 %104 to i16
  store i16 %106, ptr %12, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %107, align 2
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %13, ptr %108, align 4
  %109 = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %12, i32 noundef 1) #11
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %114, label %111

111:                                              ; preds = %97
  %112 = zext i8 %104 to i32
  %113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %112) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #11
  br label %218

114:                                              ; preds = %97
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #11
  %115 = load i8, ptr %63, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #11
  store i8 4, ptr %11, align 2
  %116 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 %115, ptr %116, align 1
  %117 = load ptr, ptr %0, align 4
  %118 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %119 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %119, align 4, !annotation !8
  %120 = zext i8 %118 to i16
  store i16 %120, ptr %10, align 4
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %121, align 2
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %11, ptr %122, align 4
  %123 = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %10, i32 noundef 1) #11
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %128, label %125

125:                                              ; preds = %114
  %126 = zext i8 %118 to i32
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %126) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #11
  br label %218

128:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #11
  %129 = load ptr, ptr %0, align 4
  %130 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  %131 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 39, ptr %131, align 4, !annotation !8
  %132 = zext i8 %130 to i16
  store i16 %132, ptr %9, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 1, ptr %133, align 2
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %18, ptr %134, align 4
  %135 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %9, i32 noundef 1) #11
  %136 = icmp eq i32 %135, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  br i1 %136, label %137, label %218

137:                                              ; preds = %128
  %138 = getelementptr inbounds [39 x i8], ptr %18, i32 0, i32 25
  %139 = load i8, ptr %138, align 1
  %140 = and i8 %139, 63
  %141 = load i8, ptr %18, align 1
  store i8 %141, ptr %62, align 4
  store i32 %2, ptr %3, align 4
  %142 = icmp ult i8 %140, %57
  br i1 %142, label %143, label %209

143:                                              ; preds = %137
  %144 = getelementptr inbounds i8, ptr %8, i32 1
  %145 = getelementptr inbounds i8, ptr %7, i32 4
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %148 = getelementptr inbounds i8, ptr %6, i32 4
  %149 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %151 = zext i8 %59 to i32
  %152 = mul nuw nsw i32 %151, 100000
  br label %180

153:                                              ; preds = %208, %172
  %154 = phi i32 [ 1, %172 ], [ 5, %208 ]
  %155 = phi i32 [ %175, %172 ], [ 200000, %208 ]
  %156 = sub i32 %94, %155
  %157 = call fastcc i32 @CalcMainPLL(ptr noundef %0, i32 noundef %156)
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %218, label %159

159:                                              ; preds = %153
  call void @msleep(i32 noundef %154) #11
  %160 = load i8, ptr %63, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #11
  store i8 4, ptr %8, align 2
  store i8 %160, ptr %144, align 1
  %161 = load ptr, ptr %0, align 4
  %162 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  store i32 2, ptr %145, align 4, !annotation !8
  %163 = zext i8 %162 to i16
  store i16 %163, ptr %7, align 4
  store i16 0, ptr %146, align 2
  store ptr %8, ptr %147, align 4
  %164 = call i32 @i2c_transfer(ptr noundef %161, ptr noundef nonnull %7, i32 noundef 1) #11
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %192

166:                                              ; preds = %159
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  %167 = load ptr, ptr %0, align 4
  %168 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  store i32 39, ptr %148, align 4, !annotation !8
  %169 = zext i8 %168 to i16
  store i16 %169, ptr %6, align 4
  store i16 1, ptr %149, align 2
  store ptr %18, ptr %150, align 4
  %170 = call i32 @i2c_transfer(ptr noundef %167, ptr noundef nonnull %6, i32 noundef 1) #11
  %171 = icmp eq i32 %170, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  br i1 %171, label %172, label %218

172:                                              ; preds = %166
  %173 = load i8, ptr %138, align 1
  %174 = and i8 %173, 63
  %175 = add nuw nsw i32 %155, 200000
  %176 = icmp ult i32 %175, %152
  %177 = icmp ult i8 %174, %57
  %178 = select i1 %176, i1 %177, i1 false
  br i1 %178, label %153, label %209

179:                                              ; preds = %202
  br i1 %207, label %180, label %209

180:                                              ; preds = %179, %143
  %181 = phi i32 [ 0, %143 ], [ %205, %179 ]
  %182 = add i32 %94, %181
  %183 = call fastcc i32 @CalcMainPLL(ptr noundef %0, i32 noundef %182)
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %218, label %185

185:                                              ; preds = %180
  call void @msleep(i32 noundef 1) #11
  %186 = load i8, ptr %63, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #11
  store i8 4, ptr %8, align 2
  store i8 %186, ptr %144, align 1
  %187 = load ptr, ptr %0, align 4
  %188 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  store i32 2, ptr %145, align 4, !annotation !8
  %189 = zext i8 %188 to i16
  store i16 %189, ptr %7, align 4
  store i16 0, ptr %146, align 2
  store ptr %8, ptr %147, align 4
  %190 = call i32 @i2c_transfer(ptr noundef %187, ptr noundef nonnull %7, i32 noundef 1) #11
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %196, label %192

192:                                              ; preds = %185, %159
  %193 = phi i8 [ %162, %159 ], [ %188, %185 ]
  %194 = zext i8 %193 to i32
  %195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %194) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  br label %218

196:                                              ; preds = %185
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  %197 = load ptr, ptr %0, align 4
  %198 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  store i32 39, ptr %148, align 4, !annotation !8
  %199 = zext i8 %198 to i16
  store i16 %199, ptr %6, align 4
  store i16 1, ptr %149, align 2
  store ptr %18, ptr %150, align 4
  %200 = call i32 @i2c_transfer(ptr noundef %197, ptr noundef nonnull %6, i32 noundef 1) #11
  %201 = icmp eq i32 %200, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  br i1 %201, label %202, label %218

202:                                              ; preds = %196
  %203 = load i8, ptr %138, align 1
  %204 = and i8 %203, 63
  %205 = add nuw nsw i32 %181, 200000
  %206 = icmp ult i32 %205, %152
  %207 = icmp ult i8 %204, %57
  br i1 %206, label %179, label %208

208:                                              ; preds = %202
  br i1 %207, label %153, label %209

209:                                              ; preds = %208, %179, %172, %137
  %210 = phi i32 [ %94, %137 ], [ %182, %208 ], [ %156, %172 ], [ %182, %179 ]
  %211 = phi i8 [ %140, %137 ], [ %204, %208 ], [ %174, %172 ], [ %204, %179 ]
  %212 = icmp ult i8 %211, %57
  br i1 %212, label %215, label %213

213:                                              ; preds = %209
  store i8 1, ptr %4, align 1
  %214 = add i32 %210, -1000000
  store i32 %214, ptr %3, align 4
  br label %218

215:                                              ; preds = %209
  store i8 0, ptr %4, align 1
  br label %218

216:                                              ; preds = %53, %40, %27
  %217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.PowerScan) #12
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %18) #11
  br label %220

218:                                              ; preds = %215, %213, %196, %192, %180, %166, %153, %128, %125, %111, %93, %90, %76
  %219 = phi i32 [ -1, %125 ], [ -1, %111 ], [ -1, %90 ], [ -1, %76 ], [ 0, %213 ], [ 0, %215 ], [ -1, %128 ], [ %95, %93 ], [ -1, %192 ], [ %157, %153 ], [ -1, %166 ], [ -1, %196 ], [ %183, %180 ]
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %18) #11
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i32 [ -22, %216 ], [ %219, %218 ]
  ret i32 %221
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @CalibrateRF(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [64 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca [39 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %13) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(39) %13, i8 0, i32 39, i1 false), !annotation !8
  %14 = getelementptr inbounds %struct.tda_state, ptr %0, i32 0, i32 12
  %15 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 6
  %16 = load i8, ptr %15, align 2
  %17 = and i8 %16, -4
  store i8 %17, ptr %15, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #11
  store i8 6, ptr %12, align 2
  %18 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 %17, ptr %18, align 1
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.tda_state, ptr %0, i32 0, i32 1
  %21 = load i8, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %22 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %22, align 4, !annotation !8
  %23 = zext i8 %21 to i16
  store i16 %23, ptr %11, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %12, ptr %25, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %11, i32 noundef 1) #11
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = zext i8 %21 to i32
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %29) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #11
  br label %233

31:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #11
  %32 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 33
  %33 = load i8, ptr %32, align 1
  %34 = or i8 %33, 3
  store i8 %34, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #11
  store i8 33, ptr %10, align 2
  %35 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 %34, ptr %35, align 1
  %36 = load ptr, ptr %0, align 4
  %37 = load i8, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  %38 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %38, align 4, !annotation !8
  %39 = zext i8 %37 to i16
  store i16 %39, ptr %9, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %40, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %10, ptr %41, align 4
  %42 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %9, i32 noundef 1) #11
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %31
  %45 = zext i8 %37 to i32
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %45) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #11
  br label %233

47:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #11
  %48 = load i8, ptr %14, align 4
  %49 = icmp eq i8 %48, -125
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 5
  %52 = load i8, ptr %51, align 1
  %53 = or i8 %52, 64
  store i8 %53, ptr %51, align 1
  br label %54

54:                                               ; preds = %50, %47
  %55 = icmp ugt i32 %2, 62000000
  br i1 %55, label %56, label %70

56:                                               ; preds = %54
  %57 = icmp ugt i32 %2, 84000000
  br i1 %57, label %58, label %70

58:                                               ; preds = %56
  %59 = icmp ugt i32 %2, 100000000
  br i1 %59, label %60, label %70

60:                                               ; preds = %58
  %61 = icmp ugt i32 %2, 140000000
  br i1 %61, label %62, label %70

62:                                               ; preds = %60
  %63 = icmp ugt i32 %2, 170000000
  br i1 %63, label %64, label %70

64:                                               ; preds = %62
  %65 = icmp ugt i32 %2, 180000000
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  %67 = icmp ugt i32 %2, 865000000
  %68 = select i1 %67, i32 7, i32 6
  %69 = select i1 %67, i1 true, i1 false
  br label %70

70:                                               ; preds = %66, %64, %62, %60, %58, %56, %54
  %71 = phi i32 [ 0, %54 ], [ 1, %56 ], [ 2, %58 ], [ 3, %60 ], [ 4, %62 ], [ 5, %64 ], [ %68, %66 ]
  %72 = phi i1 [ false, %54 ], [ false, %56 ], [ false, %58 ], [ false, %60 ], [ false, %62 ], [ false, %64 ], [ %69, %66 ]
  br i1 %72, label %233, label %73

73:                                               ; preds = %70
  %74 = getelementptr %struct.SMap, ptr @m_BP_Filter_Map, i32 %71, i32 1
  %75 = load i8, ptr %74, align 4
  br label %76

76:                                               ; preds = %76, %73
  %77 = phi i32 [ 0, %73 ], [ %83, %76 ]
  %78 = getelementptr %struct.SMap, ptr @m_GainTaper_Map, i32 %77
  %79 = load i32, ptr %78, align 4
  %80 = icmp ne i32 %79, 0
  %81 = icmp ult i32 %79, %2
  %82 = and i1 %80, %81
  %83 = add nuw nsw i32 %77, 1
  br i1 %82, label %76, label %84

84:                                               ; preds = %76
  %85 = icmp eq i32 %79, 0
  br i1 %85, label %233, label %86

86:                                               ; preds = %84
  %87 = getelementptr %struct.SMap, ptr @m_GainTaper_Map, i32 %77, i32 1
  %88 = load i8, ptr %87, align 4
  %89 = icmp ugt i32 %2, 47900000
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = icmp ugt i32 %2, 61100000
  br i1 %91, label %92, label %100

92:                                               ; preds = %90
  %93 = icmp ugt i32 %2, 350000000
  br i1 %93, label %94, label %100

94:                                               ; preds = %92
  %95 = icmp ugt i32 %2, 720000000
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = icmp ugt i32 %2, 865000000
  %98 = select i1 %97, i32 5, i32 4
  %99 = select i1 %97, i1 true, i1 false
  br label %100

100:                                              ; preds = %96, %94, %92, %90, %86
  %101 = phi i32 [ 0, %86 ], [ 1, %90 ], [ 2, %92 ], [ 3, %94 ], [ %98, %96 ]
  %102 = phi i1 [ false, %86 ], [ false, %90 ], [ false, %92 ], [ false, %94 ], [ %99, %96 ]
  br i1 %102, label %233, label %103

103:                                              ; preds = %100
  %104 = getelementptr %struct.SMap2, ptr @m_KM_Map, i32 %101, i32 1
  %105 = load i8, ptr %104, align 4
  %106 = getelementptr %struct.SMap2, ptr @m_KM_Map, i32 %101, i32 2
  %107 = load i8, ptr %106, align 1
  %108 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 3
  %109 = load i8, ptr %108, align 1
  %110 = and i8 %109, -8
  %111 = or i8 %110, %75
  store i8 %111, ptr %108, align 1
  %112 = shl i8 %1, 5
  %113 = or i8 %88, %112
  %114 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 4
  store i8 %113, ptr %114, align 4
  %115 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 28
  %116 = load i8, ptr %115, align 4
  %117 = and i8 %116, -125
  %118 = shl i8 %105, 4
  %119 = shl i8 %107, 2
  %120 = or i8 %119, %118
  %121 = or i8 %120, %117
  store i8 %121, ptr %115, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  %122 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 3, ptr %8, align 1
  %123 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(60) %123, i8 0, i32 60, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %122, ptr noundef align 1 dereferenceable(3) %108, i32 3, i1 false) #11
  %124 = load ptr, ptr %0, align 4
  %125 = load i8, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %126 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %126, align 4, !annotation !8
  %127 = zext i8 %125 to i16
  store i16 %127, ptr %7, align 4
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %128, align 2
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %8, ptr %129, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %7, i32 noundef 1) #11
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %135, label %132

132:                                              ; preds = %103
  %133 = zext i8 %125 to i32
  %134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %133) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  br label %233

135:                                              ; preds = %103
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  %136 = load i8, ptr %115, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  store i8 28, ptr %6, align 2
  %137 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %136, ptr %137, align 1
  %138 = load ptr, ptr %0, align 4
  %139 = load i8, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %140 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %140, align 4, !annotation !8
  %141 = zext i8 %139 to i16
  store i16 %141, ptr %5, align 4
  %142 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %142, align 2
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %143, align 4
  %144 = call i32 @i2c_transfer(ptr noundef %138, ptr noundef nonnull %5, i32 noundef 1) #11
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %149, label %146

146:                                              ; preds = %135
  %147 = zext i8 %139 to i32
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %147) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  br label %233

149:                                              ; preds = %135
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  %150 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 19
  %151 = load i8, ptr %150, align 1
  %152 = or i8 %151, 32
  store i8 %152, ptr %150, align 1
  %153 = call fastcc i32 @UpdateReg(ptr noundef %0, i8 noundef zeroext 19)
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %233, label %155

155:                                              ; preds = %149
  %156 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 22
  %157 = load i8, ptr %156, align 2
  %158 = or i8 %157, 32
  store i8 %158, ptr %156, align 2
  %159 = call fastcc i32 @UpdateReg(ptr noundef %0, i8 noundef zeroext 22)
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %233, label %161

161:                                              ; preds = %155
  %162 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 29
  store i8 0, ptr %162, align 1
  %163 = call fastcc i32 @UpdateReg(ptr noundef %0, i8 noundef zeroext 29)
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %233, label %165

165:                                              ; preds = %161
  %166 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 35
  %167 = load i8, ptr %166, align 1
  %168 = and i8 %167, -33
  store i8 %168, ptr %166, align 1
  %169 = call fastcc i32 @UpdateReg(ptr noundef %0, i8 noundef zeroext 35)
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %233, label %171

171:                                              ; preds = %165
  %172 = load i8, ptr %15, align 2
  %173 = or i8 %172, 3
  store i8 %173, ptr %15, align 2
  %174 = call fastcc i32 @UpdateRegs(ptr noundef %0, i8 noundef zeroext 6, i8 noundef zeroext 7)
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %233, label %176

176:                                              ; preds = %171
  %177 = call fastcc i32 @CalcCalPLL(ptr noundef %0, i32 noundef %2)
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %233, label %179

179:                                              ; preds = %176
  %180 = add i32 %2, 1000000
  %181 = call fastcc i32 @CalcMainPLL(ptr noundef %0, i32 noundef %180)
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %233, label %183

183:                                              ; preds = %179
  call void @msleep(i32 noundef 5) #11
  %184 = call fastcc i32 @UpdateReg(ptr noundef %0, i8 noundef zeroext 4)
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %233, label %186

186:                                              ; preds = %183
  %187 = call fastcc i32 @UpdateReg(ptr noundef %0, i8 noundef zeroext 3)
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %233, label %189

189:                                              ; preds = %186
  %190 = call fastcc i32 @UpdateReg(ptr noundef %0, i8 noundef zeroext 4)
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %233, label %192

192:                                              ; preds = %189
  %193 = call fastcc i32 @UpdateReg(ptr noundef %0, i8 noundef zeroext 3)
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %233, label %195

195:                                              ; preds = %192
  %196 = load i8, ptr %150, align 1
  %197 = and i8 %196, -33
  store i8 %197, ptr %150, align 1
  %198 = call fastcc i32 @UpdateReg(ptr noundef %0, i8 noundef zeroext 19)
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %233, label %200

200:                                              ; preds = %195
  %201 = load i8, ptr %156, align 2
  %202 = and i8 %201, -33
  store i8 %202, ptr %156, align 2
  %203 = call fastcc i32 @UpdateReg(ptr noundef %0, i8 noundef zeroext 22)
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %233, label %205

205:                                              ; preds = %200
  call void @msleep(i32 noundef 10) #11
  %206 = load i8, ptr %166, align 1
  %207 = or i8 %206, 32
  store i8 %207, ptr %166, align 1
  %208 = call fastcc i32 @UpdateReg(ptr noundef %0, i8 noundef zeroext 35)
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %233, label %210

210:                                              ; preds = %205
  call void @msleep(i32 noundef 60) #11
  %211 = load i8, ptr %15, align 2
  %212 = and i8 %211, -4
  store i8 %212, ptr %15, align 2
  %213 = getelementptr %struct.tda_state, ptr %0, i32 0, i32 12, i32 5
  %214 = load i8, ptr %213, align 1
  %215 = and i8 %214, -65
  store i8 %215, ptr %213, align 1
  %216 = load i8, ptr %32, align 1
  %217 = and i8 %216, -4
  store i8 %217, ptr %32, align 1
  %218 = call fastcc i32 @UpdateReg(ptr noundef %0, i8 noundef zeroext 33)
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %233, label %220

220:                                              ; preds = %210
  %221 = call fastcc i32 @UpdateRegs(ptr noundef %0, i8 noundef zeroext 5, i8 noundef zeroext 6)
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %233, label %223

223:                                              ; preds = %220
  %224 = call fastcc i32 @UpdateReg(ptr noundef %0, i8 noundef zeroext 3)
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %233, label %226

226:                                              ; preds = %223
  %227 = call fastcc i32 @ReadExtented(ptr noundef %0, ptr noundef nonnull %13)
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %226
  %230 = getelementptr inbounds [39 x i8], ptr %13, i32 0, i32 29
  %231 = load i8, ptr %230, align 1
  %232 = zext i8 %231 to i32
  store i32 %232, ptr %3, align 4
  br label %233

233:                                              ; preds = %229, %226, %223, %220, %210, %205, %200, %195, %192, %189, %186, %183, %179, %176, %171, %165, %161, %155, %149, %146, %132, %100, %84, %70, %44, %28
  %234 = phi i32 [ -22, %100 ], [ -22, %84 ], [ -22, %70 ], [ -1, %146 ], [ -1, %132 ], [ -1, %44 ], [ -1, %28 ], [ -1, %226 ], [ -1, %223 ], [ %221, %220 ], [ -1, %210 ], [ -1, %205 ], [ -1, %200 ], [ -1, %195 ], [ -1, %192 ], [ -1, %189 ], [ -1, %186 ], [ -1, %183 ], [ %181, %179 ], [ %177, %176 ], [ %174, %171 ], [ -1, %165 ], [ -1, %161 ], [ -1, %155 ], [ -1, %149 ], [ 0, %229 ]
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %13) #11
  ret i32 %234
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ReadExtented(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.tda_state, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 39, ptr %7, align 4, !annotation !8
  %8 = zext i8 %6 to i16
  store i16 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %1, ptr %10, align 4
  %11 = call i32 @i2c_transfer(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1) #11
  %12 = icmp ne i32 %11, 1
  %13 = sext i1 %12 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 867040, i64 867067}
!11 = !{i64 867735, i64 867762, i64 867795, i64 867816, i64 867843, i64 867869}
