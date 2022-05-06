; ModuleID = '/llk/IR/sound/soc/sh/rcar/gen.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/gen.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rsnd_regmap_field_conf = type { i32, i32, i32, ptr }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rsnd_gen = type { ptr, [4 x ptr], [4 x i32], [4 x ptr], [182 x ptr], [182 x ptr] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }

@.str = private unnamed_addr constant [39 x i8] c"unknown generation R-Car sound device\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unsupported register access %x\0A\00", align 1
@rsnd_gen1_probe.conf_adg = internal constant [5 x %struct.rsnd_regmap_field_conf] [%struct.rsnd_regmap_field_conf { i32 97, i32 0, i32 0, ptr @.str.2 }, %struct.rsnd_regmap_field_conf { i32 98, i32 4, i32 0, ptr @.str.3 }, %struct.rsnd_regmap_field_conf { i32 99, i32 8, i32 0, ptr @.str.4 }, %struct.rsnd_regmap_field_conf { i32 101, i32 12, i32 0, ptr @.str.5 }, %struct.rsnd_regmap_field_conf { i32 102, i32 16, i32 0, ptr @.str.6 }], align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"BRRA\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"BRRB\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"BRGCKR\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"AUDIO_CLK_SEL0\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"AUDIO_CLK_SEL1\00", align 1
@rsnd_gen1_probe.conf_ssi = internal constant [5 x %struct.rsnd_regmap_field_conf] [%struct.rsnd_regmap_field_conf { i32 177, i32 0, i32 64, ptr @.str.7 }, %struct.rsnd_regmap_field_conf { i32 178, i32 4, i32 64, ptr @.str.8 }, %struct.rsnd_regmap_field_conf { i32 179, i32 8, i32 64, ptr @.str.9 }, %struct.rsnd_regmap_field_conf { i32 180, i32 12, i32 64, ptr @.str.10 }, %struct.rsnd_regmap_field_conf { i32 181, i32 32, i32 64, ptr @.str.11 }], align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"SSICR\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"SSISR\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SSITDR\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"SSIRDR\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SSIWSR\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"adg\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ssi\00", align 1
@rsnd_gen2_probe.conf_ssiu = internal constant [73 x %struct.rsnd_regmap_field_conf] [%struct.rsnd_regmap_field_conf { i32 105, i32 2048, i32 0, ptr @.str.14 }, %struct.rsnd_regmap_field_conf { i32 106, i32 2052, i32 0, ptr @.str.15 }, %struct.rsnd_regmap_field_conf { i32 107, i32 2056, i32 0, ptr @.str.16 }, %struct.rsnd_regmap_field_conf { i32 108, i32 2064, i32 0, ptr @.str.17 }, %struct.rsnd_regmap_field_conf { i32 135, i32 2112, i32 0, ptr @.str.18 }, %struct.rsnd_regmap_field_conf { i32 136, i32 2116, i32 0, ptr @.str.19 }, %struct.rsnd_regmap_field_conf { i32 137, i32 2120, i32 0, ptr @.str.20 }, %struct.rsnd_regmap_field_conf { i32 138, i32 2124, i32 0, ptr @.str.21 }, %struct.rsnd_regmap_field_conf { i32 139, i32 2176, i32 0, ptr @.str.22 }, %struct.rsnd_regmap_field_conf { i32 140, i32 2180, i32 0, ptr @.str.23 }, %struct.rsnd_regmap_field_conf { i32 141, i32 2184, i32 0, ptr @.str.24 }, %struct.rsnd_regmap_field_conf { i32 142, i32 2188, i32 0, ptr @.str.25 }, %struct.rsnd_regmap_field_conf { i32 143, i32 2128, i32 0, ptr @.str.26 }, %struct.rsnd_regmap_field_conf { i32 144, i32 2132, i32 0, ptr @.str.27 }, %struct.rsnd_regmap_field_conf { i32 145, i32 2136, i32 0, ptr @.str.28 }, %struct.rsnd_regmap_field_conf { i32 146, i32 2140, i32 0, ptr @.str.29 }, %struct.rsnd_regmap_field_conf { i32 147, i32 2192, i32 0, ptr @.str.30 }, %struct.rsnd_regmap_field_conf { i32 148, i32 2196, i32 0, ptr @.str.31 }, %struct.rsnd_regmap_field_conf { i32 149, i32 2200, i32 0, ptr @.str.32 }, %struct.rsnd_regmap_field_conf { i32 150, i32 2204, i32 0, ptr @.str.33 }, %struct.rsnd_regmap_field_conf { i32 151, i32 2528, i32 0, ptr @.str.34 }, %struct.rsnd_regmap_field_conf { i32 152, i32 2532, i32 0, ptr @.str.35 }, %struct.rsnd_regmap_field_conf { i32 110, i32 0, i32 128, ptr @.str.36 }, %struct.rsnd_regmap_field_conf { i32 118, i32 4, i32 128, ptr @.str.37 }, %struct.rsnd_regmap_field_conf { i32 126, i32 8, i32 128, ptr @.str.38 }, %struct.rsnd_regmap_field_conf { i32 111, i32 32, i32 128, ptr @.str.39 }, %struct.rsnd_regmap_field_conf { i32 119, i32 36, i32 128, ptr @.str.40 }, %struct.rsnd_regmap_field_conf { i32 127, i32 40, i32 128, ptr @.str.41 }, %struct.rsnd_regmap_field_conf { i32 112, i32 64, i32 128, ptr @.str.42 }, %struct.rsnd_regmap_field_conf { i32 120, i32 68, i32 128, ptr @.str.43 }, %struct.rsnd_regmap_field_conf { i32 128, i32 72, i32 128, ptr @.str.44 }, %struct.rsnd_regmap_field_conf { i32 113, i32 96, i32 128, ptr @.str.45 }, %struct.rsnd_regmap_field_conf { i32 121, i32 100, i32 128, ptr @.str.46 }, %struct.rsnd_regmap_field_conf { i32 129, i32 104, i32 128, ptr @.str.47 }, %struct.rsnd_regmap_field_conf { i32 114, i32 1280, i32 128, ptr @.str.48 }, %struct.rsnd_regmap_field_conf { i32 122, i32 1284, i32 128, ptr @.str.49 }, %struct.rsnd_regmap_field_conf { i32 130, i32 1288, i32 128, ptr @.str.50 }, %struct.rsnd_regmap_field_conf { i32 115, i32 1312, i32 128, ptr @.str.51 }, %struct.rsnd_regmap_field_conf { i32 123, i32 1316, i32 128, ptr @.str.52 }, %struct.rsnd_regmap_field_conf { i32 131, i32 1320, i32 128, ptr @.str.53 }, %struct.rsnd_regmap_field_conf { i32 116, i32 1344, i32 128, ptr @.str.54 }, %struct.rsnd_regmap_field_conf { i32 124, i32 1348, i32 128, ptr @.str.55 }, %struct.rsnd_regmap_field_conf { i32 132, i32 1352, i32 128, ptr @.str.56 }, %struct.rsnd_regmap_field_conf { i32 117, i32 1376, i32 128, ptr @.str.57 }, %struct.rsnd_regmap_field_conf { i32 125, i32 1380, i32 128, ptr @.str.58 }, %struct.rsnd_regmap_field_conf { i32 133, i32 1384, i32 128, ptr @.str.59 }, %struct.rsnd_regmap_field_conf { i32 104, i32 12, i32 128, ptr @.str.60 }, %struct.rsnd_regmap_field_conf { i32 109, i32 16, i32 128, ptr @.str.61 }, %struct.rsnd_regmap_field_conf { i32 134, i32 24, i32 128, ptr @.str.62 }, %struct.rsnd_regmap_field_conf { i32 153, i32 1164, i32 0, ptr @.str.63 }, %struct.rsnd_regmap_field_conf { i32 161, i32 1156, i32 0, ptr @.str.64 }, %struct.rsnd_regmap_field_conf { i32 169, i32 1160, i32 0, ptr @.str.65 }, %struct.rsnd_regmap_field_conf { i32 154, i32 1184, i32 0, ptr @.str.66 }, %struct.rsnd_regmap_field_conf { i32 162, i32 1188, i32 0, ptr @.str.67 }, %struct.rsnd_regmap_field_conf { i32 170, i32 1192, i32 0, ptr @.str.68 }, %struct.rsnd_regmap_field_conf { i32 155, i32 1216, i32 0, ptr @.str.69 }, %struct.rsnd_regmap_field_conf { i32 163, i32 1220, i32 0, ptr @.str.70 }, %struct.rsnd_regmap_field_conf { i32 171, i32 1224, i32 0, ptr @.str.71 }, %struct.rsnd_regmap_field_conf { i32 156, i32 1248, i32 0, ptr @.str.72 }, %struct.rsnd_regmap_field_conf { i32 164, i32 1252, i32 0, ptr @.str.73 }, %struct.rsnd_regmap_field_conf { i32 172, i32 1256, i32 0, ptr @.str.74 }, %struct.rsnd_regmap_field_conf { i32 157, i32 3456, i32 0, ptr @.str.75 }, %struct.rsnd_regmap_field_conf { i32 165, i32 3460, i32 0, ptr @.str.76 }, %struct.rsnd_regmap_field_conf { i32 173, i32 3464, i32 0, ptr @.str.77 }, %struct.rsnd_regmap_field_conf { i32 158, i32 3488, i32 0, ptr @.str.78 }, %struct.rsnd_regmap_field_conf { i32 166, i32 3492, i32 0, ptr @.str.79 }, %struct.rsnd_regmap_field_conf { i32 174, i32 3496, i32 0, ptr @.str.80 }, %struct.rsnd_regmap_field_conf { i32 159, i32 3520, i32 0, ptr @.str.81 }, %struct.rsnd_regmap_field_conf { i32 167, i32 3524, i32 0, ptr @.str.82 }, %struct.rsnd_regmap_field_conf { i32 175, i32 3528, i32 0, ptr @.str.83 }, %struct.rsnd_regmap_field_conf { i32 160, i32 3552, i32 0, ptr @.str.84 }, %struct.rsnd_regmap_field_conf { i32 168, i32 3556, i32 0, ptr @.str.85 }, %struct.rsnd_regmap_field_conf { i32 176, i32 3560, i32 0, ptr @.str.86 }], align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"SSI_MODE0\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"SSI_MODE1\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"SSI_MODE2\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"SSI_CONTROL\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"SSI_SYS_STATUS0\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"SSI_SYS_STATUS1\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"SSI_SYS_STATUS2\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"SSI_SYS_STATUS3\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"SSI_SYS_STATUS4\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"SSI_SYS_STATUS5\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"SSI_SYS_STATUS6\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"SSI_SYS_STATUS7\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"SSI_SYS_INT_ENABLE0\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"SSI_SYS_INT_ENABLE1\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"SSI_SYS_INT_ENABLE2\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"SSI_SYS_INT_ENABLE3\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"SSI_SYS_INT_ENABLE4\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"SSI_SYS_INT_ENABLE5\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"SSI_SYS_INT_ENABLE6\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"SSI_SYS_INT_ENABLE7\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"HDMI0_SEL\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"HDMI1_SEL\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"SSI_BUSIF0_MODE\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"SSI_BUSIF0_ADINR\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"SSI_BUSIF0_DALIGN\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"SSI_BUSIF1_MODE\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"SSI_BUSIF1_ADINR\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"SSI_BUSIF1_DALIGN\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"SSI_BUSIF2_MODE\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"SSI_BUSIF2_ADINR\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"SSI_BUSIF2_DALIGN\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"SSI_BUSIF3_MODE\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"SSI_BUSIF3_ADINR\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"SSI_BUSIF3_DALIGN\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"SSI_BUSIF4_MODE\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"SSI_BUSIF4_ADINR\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"SSI_BUSIF4_DALIGN\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"SSI_BUSIF5_MODE\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"SSI_BUSIF5_ADINR\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"SSI_BUSIF5_DALIGN\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"SSI_BUSIF6_MODE\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"SSI_BUSIF6_ADINR\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"SSI_BUSIF6_DALIGN\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"SSI_BUSIF7_MODE\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"SSI_BUSIF7_ADINR\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"SSI_BUSIF7_DALIGN\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"SSI_MODE\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"SSI_CTRL\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"SSI_INT_ENABLE\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"SSI9_BUSIF0_MODE\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"SSI9_BUSIF0_ADINR\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"SSI9_BUSIF0_DALIGN\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"SSI9_BUSIF1_MODE\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"SSI9_BUSIF1_ADINR\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"SSI9_BUSIF1_DALIGN\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"SSI9_BUSIF2_MODE\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"SSI9_BUSIF2_ADINR\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"SSI9_BUSIF2_DALIGN\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"SSI9_BUSIF3_MODE\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"SSI9_BUSIF3_ADINR\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"SSI9_BUSIF3_DALIGN\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"SSI9_BUSIF4_MODE\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"SSI9_BUSIF4_ADINR\00", align 1
@.str.77 = private unnamed_addr constant [19 x i8] c"SSI9_BUSIF4_DALIGN\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"SSI9_BUSIF5_MODE\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"SSI9_BUSIF5_ADINR\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"SSI9_BUSIF5_DALIGN\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"SSI9_BUSIF6_MODE\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"SSI9_BUSIF6_ADINR\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"SSI9_BUSIF6_DALIGN\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"SSI9_BUSIF7_MODE\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"SSI9_BUSIF7_ADINR\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"SSI9_BUSIF7_DALIGN\00", align 1
@rsnd_gen2_probe.conf_scu = internal constant [86 x %struct.rsnd_regmap_field_conf] [%struct.rsnd_regmap_field_conf { i32 0, i32 0, i32 32, ptr @.str.87 }, %struct.rsnd_regmap_field_conf { i32 1, i32 4, i32 32, ptr @.str.88 }, %struct.rsnd_regmap_field_conf { i32 13, i32 8, i32 32, ptr @.str.89 }, %struct.rsnd_regmap_field_conf { i32 2, i32 12, i32 32, ptr @.str.90 }, %struct.rsnd_regmap_field_conf { i32 9, i32 16, i32 32, ptr @.str.91 }, %struct.rsnd_regmap_field_conf { i32 12, i32 24, i32 32, ptr @.str.92 }, %struct.rsnd_regmap_field_conf { i32 29, i32 388, i32 32, ptr @.str.93 }, %struct.rsnd_regmap_field_conf { i32 30, i32 392, i32 32, ptr @.str.94 }, %struct.rsnd_regmap_field_conf { i32 31, i32 396, i32 32, ptr @.str.95 }, %struct.rsnd_regmap_field_conf { i32 28, i32 400, i32 32, ptr @.str.96 }, %struct.rsnd_regmap_field_conf { i32 24, i32 456, i32 0, ptr @.str.97 }, %struct.rsnd_regmap_field_conf { i32 26, i32 460, i32 0, ptr @.str.98 }, %struct.rsnd_regmap_field_conf { i32 25, i32 464, i32 0, ptr @.str.99 }, %struct.rsnd_regmap_field_conf { i32 27, i32 468, i32 0, ptr @.str.100 }, %struct.rsnd_regmap_field_conf { i32 3, i32 512, i32 64, ptr @.str.101 }, %struct.rsnd_regmap_field_conf { i32 4, i32 516, i32 64, ptr @.str.102 }, %struct.rsnd_regmap_field_conf { i32 5, i32 532, i32 64, ptr @.str.103 }, %struct.rsnd_regmap_field_conf { i32 6, i32 540, i32 64, ptr @.str.104 }, %struct.rsnd_regmap_field_conf { i32 7, i32 544, i32 64, ptr @.str.105 }, %struct.rsnd_regmap_field_conf { i32 8, i32 548, i32 64, ptr @.str.106 }, %struct.rsnd_regmap_field_conf { i32 10, i32 556, i32 64, ptr @.str.107 }, %struct.rsnd_regmap_field_conf { i32 11, i32 568, i32 64, ptr @.str.108 }, %struct.rsnd_regmap_field_conf { i32 33, i32 1280, i32 256, ptr @.str.109 }, %struct.rsnd_regmap_field_conf { i32 34, i32 1284, i32 256, ptr @.str.110 }, %struct.rsnd_regmap_field_conf { i32 35, i32 1288, i32 256, ptr @.str.111 }, %struct.rsnd_regmap_field_conf { i32 36, i32 1296, i32 256, ptr @.str.112 }, %struct.rsnd_regmap_field_conf { i32 37, i32 1300, i32 256, ptr @.str.113 }, %struct.rsnd_regmap_field_conf { i32 38, i32 1304, i32 256, ptr @.str.114 }, %struct.rsnd_regmap_field_conf { i32 39, i32 1308, i32 256, ptr @.str.115 }, %struct.rsnd_regmap_field_conf { i32 40, i32 1312, i32 256, ptr @.str.116 }, %struct.rsnd_regmap_field_conf { i32 41, i32 1316, i32 256, ptr @.str.117 }, %struct.rsnd_regmap_field_conf { i32 42, i32 1320, i32 256, ptr @.str.118 }, %struct.rsnd_regmap_field_conf { i32 43, i32 1324, i32 256, ptr @.str.119 }, %struct.rsnd_regmap_field_conf { i32 44, i32 1328, i32 256, ptr @.str.120 }, %struct.rsnd_regmap_field_conf { i32 45, i32 1332, i32 256, ptr @.str.121 }, %struct.rsnd_regmap_field_conf { i32 46, i32 1336, i32 256, ptr @.str.122 }, %struct.rsnd_regmap_field_conf { i32 47, i32 1340, i32 256, ptr @.str.123 }, %struct.rsnd_regmap_field_conf { i32 48, i32 1344, i32 256, ptr @.str.124 }, %struct.rsnd_regmap_field_conf { i32 49, i32 1348, i32 256, ptr @.str.125 }, %struct.rsnd_regmap_field_conf { i32 50, i32 1352, i32 256, ptr @.str.126 }, %struct.rsnd_regmap_field_conf { i32 51, i32 1356, i32 256, ptr @.str.127 }, %struct.rsnd_regmap_field_conf { i32 52, i32 1360, i32 256, ptr @.str.128 }, %struct.rsnd_regmap_field_conf { i32 53, i32 1364, i32 256, ptr @.str.129 }, %struct.rsnd_regmap_field_conf { i32 54, i32 1368, i32 256, ptr @.str.130 }, %struct.rsnd_regmap_field_conf { i32 55, i32 1372, i32 256, ptr @.str.131 }, %struct.rsnd_regmap_field_conf { i32 56, i32 1376, i32 256, ptr @.str.132 }, %struct.rsnd_regmap_field_conf { i32 57, i32 1380, i32 256, ptr @.str.133 }, %struct.rsnd_regmap_field_conf { i32 58, i32 1384, i32 256, ptr @.str.134 }, %struct.rsnd_regmap_field_conf { i32 59, i32 1388, i32 256, ptr @.str.135 }, %struct.rsnd_regmap_field_conf { i32 60, i32 1392, i32 256, ptr @.str.136 }, %struct.rsnd_regmap_field_conf { i32 61, i32 1396, i32 256, ptr @.str.137 }, %struct.rsnd_regmap_field_conf { i32 62, i32 1400, i32 256, ptr @.str.138 }, %struct.rsnd_regmap_field_conf { i32 63, i32 1404, i32 256, ptr @.str.139 }, %struct.rsnd_regmap_field_conf { i32 64, i32 1408, i32 256, ptr @.str.140 }, %struct.rsnd_regmap_field_conf { i32 65, i32 1412, i32 256, ptr @.str.141 }, %struct.rsnd_regmap_field_conf { i32 66, i32 1416, i32 256, ptr @.str.142 }, %struct.rsnd_regmap_field_conf { i32 67, i32 1420, i32 256, ptr @.str.143 }, %struct.rsnd_regmap_field_conf { i32 68, i32 1424, i32 256, ptr @.str.144 }, %struct.rsnd_regmap_field_conf { i32 69, i32 1428, i32 256, ptr @.str.145 }, %struct.rsnd_regmap_field_conf { i32 70, i32 3328, i32 64, ptr @.str.146 }, %struct.rsnd_regmap_field_conf { i32 71, i32 3332, i32 64, ptr @.str.147 }, %struct.rsnd_regmap_field_conf { i32 72, i32 3336, i32 64, ptr @.str.148 }, %struct.rsnd_regmap_field_conf { i32 73, i32 3344, i32 64, ptr @.str.149 }, %struct.rsnd_regmap_field_conf { i32 74, i32 3348, i32 64, ptr @.str.150 }, %struct.rsnd_regmap_field_conf { i32 75, i32 3352, i32 64, ptr @.str.151 }, %struct.rsnd_regmap_field_conf { i32 76, i32 3356, i32 64, ptr @.str.152 }, %struct.rsnd_regmap_field_conf { i32 77, i32 3360, i32 64, ptr @.str.153 }, %struct.rsnd_regmap_field_conf { i32 78, i32 3364, i32 64, ptr @.str.154 }, %struct.rsnd_regmap_field_conf { i32 79, i32 3368, i32 64, ptr @.str.155 }, %struct.rsnd_regmap_field_conf { i32 80, i32 3584, i32 256, ptr @.str.156 }, %struct.rsnd_regmap_field_conf { i32 81, i32 3588, i32 256, ptr @.str.157 }, %struct.rsnd_regmap_field_conf { i32 82, i32 3592, i32 256, ptr @.str.158 }, %struct.rsnd_regmap_field_conf { i32 83, i32 3600, i32 256, ptr @.str.159 }, %struct.rsnd_regmap_field_conf { i32 84, i32 3604, i32 256, ptr @.str.160 }, %struct.rsnd_regmap_field_conf { i32 94, i32 3608, i32 256, ptr @.str.161 }, %struct.rsnd_regmap_field_conf { i32 95, i32 3612, i32 256, ptr @.str.162 }, %struct.rsnd_regmap_field_conf { i32 96, i32 3616, i32 256, ptr @.str.163 }, %struct.rsnd_regmap_field_conf { i32 85, i32 3624, i32 256, ptr @.str.164 }, %struct.rsnd_regmap_field_conf { i32 86, i32 3628, i32 256, ptr @.str.165 }, %struct.rsnd_regmap_field_conf { i32 87, i32 3632, i32 256, ptr @.str.166 }, %struct.rsnd_regmap_field_conf { i32 88, i32 3636, i32 256, ptr @.str.167 }, %struct.rsnd_regmap_field_conf { i32 89, i32 3640, i32 256, ptr @.str.168 }, %struct.rsnd_regmap_field_conf { i32 90, i32 3644, i32 256, ptr @.str.169 }, %struct.rsnd_regmap_field_conf { i32 91, i32 3648, i32 256, ptr @.str.170 }, %struct.rsnd_regmap_field_conf { i32 92, i32 3652, i32 256, ptr @.str.171 }, %struct.rsnd_regmap_field_conf { i32 93, i32 3656, i32 256, ptr @.str.172 }], align 4
@.str.87 = private unnamed_addr constant [17 x i8] c"SRC_I_BUSIF_MODE\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"SRC_O_BUSIF_MODE\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"SRC_BUSIF_DALIGN\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"SRC_ROUTE_MODE0\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"SRC_CTRL\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"SRC_INT_ENABLE0\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"CMD_BUSIF_MODE\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"CMD_BUSIF_DALIGN\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"CMD_ROUTE_SLCT\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"CMD_CTRL\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"SCU_SYS_STATUS0\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"SCU_SYS_INT_EN0\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"SCU_SYS_STATUS1\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"SCU_SYS_INT_EN1\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"SRC_SWRSR\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"SRC_SRCIR\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"SRC_ADINR\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"SRC_IFSCR\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"SRC_IFSVR\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"SRC_SRCCR\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"SRC_BSDSR\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"SRC_BSISR\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"CTU_SWRSR\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"CTU_CTUIR\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"CTU_ADINR\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"CTU_CPMDR\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"CTU_SCMDR\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"CTU_SV00R\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"CTU_SV01R\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"CTU_SV02R\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"CTU_SV03R\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"CTU_SV04R\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"CTU_SV05R\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"CTU_SV06R\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"CTU_SV07R\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"CTU_SV10R\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"CTU_SV11R\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"CTU_SV12R\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"CTU_SV13R\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"CTU_SV14R\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"CTU_SV15R\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"CTU_SV16R\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"CTU_SV17R\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"CTU_SV20R\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"CTU_SV21R\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"CTU_SV22R\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"CTU_SV23R\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"CTU_SV24R\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"CTU_SV25R\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"CTU_SV26R\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"CTU_SV27R\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"CTU_SV30R\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"CTU_SV31R\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"CTU_SV32R\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"CTU_SV33R\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"CTU_SV34R\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"CTU_SV35R\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"CTU_SV36R\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"CTU_SV37R\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"MIX_SWRSR\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"MIX_MIXIR\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"MIX_ADINR\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"MIX_MIXMR\00", align 1
@.str.150 = private unnamed_addr constant [10 x i8] c"MIX_MVPDR\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"MIX_MDBAR\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"MIX_MDBBR\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"MIX_MDBCR\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"MIX_MDBDR\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"MIX_MDBER\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"DVC_SWRSR\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"DVC_DVUIR\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"DVC_ADINR\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"DVC_DVUCR\00", align 1
@.str.160 = private unnamed_addr constant [10 x i8] c"DVC_ZCMCR\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"DVC_VRCTR\00", align 1
@.str.162 = private unnamed_addr constant [10 x i8] c"DVC_VRPDR\00", align 1
@.str.163 = private unnamed_addr constant [10 x i8] c"DVC_VRDBR\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c"DVC_VOL0R\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"DVC_VOL1R\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"DVC_VOL2R\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"DVC_VOL3R\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"DVC_VOL4R\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"DVC_VOL5R\00", align 1
@.str.170 = private unnamed_addr constant [10 x i8] c"DVC_VOL6R\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"DVC_VOL7R\00", align 1
@.str.172 = private unnamed_addr constant [10 x i8] c"DVC_DVUER\00", align 1
@rsnd_gen2_probe.conf_adg = internal constant [18 x %struct.rsnd_regmap_field_conf] [%struct.rsnd_regmap_field_conf { i32 97, i32 0, i32 0, ptr @.str.2 }, %struct.rsnd_regmap_field_conf { i32 98, i32 4, i32 0, ptr @.str.3 }, %struct.rsnd_regmap_field_conf { i32 99, i32 8, i32 0, ptr @.str.4 }, %struct.rsnd_regmap_field_conf { i32 101, i32 12, i32 0, ptr @.str.5 }, %struct.rsnd_regmap_field_conf { i32 102, i32 16, i32 0, ptr @.str.6 }, %struct.rsnd_regmap_field_conf { i32 103, i32 20, i32 0, ptr @.str.173 }, %struct.rsnd_regmap_field_conf { i32 100, i32 48, i32 0, ptr @.str.174 }, %struct.rsnd_regmap_field_conf { i32 14, i32 52, i32 0, ptr @.str.175 }, %struct.rsnd_regmap_field_conf { i32 15, i32 56, i32 0, ptr @.str.176 }, %struct.rsnd_regmap_field_conf { i32 16, i32 60, i32 0, ptr @.str.177 }, %struct.rsnd_regmap_field_conf { i32 17, i32 64, i32 0, ptr @.str.178 }, %struct.rsnd_regmap_field_conf { i32 18, i32 68, i32 0, ptr @.str.179 }, %struct.rsnd_regmap_field_conf { i32 19, i32 72, i32 0, ptr @.str.180 }, %struct.rsnd_regmap_field_conf { i32 20, i32 76, i32 0, ptr @.str.181 }, %struct.rsnd_regmap_field_conf { i32 21, i32 80, i32 0, ptr @.str.182 }, %struct.rsnd_regmap_field_conf { i32 22, i32 84, i32 0, ptr @.str.183 }, %struct.rsnd_regmap_field_conf { i32 23, i32 88, i32 0, ptr @.str.184 }, %struct.rsnd_regmap_field_conf { i32 32, i32 92, i32 0, ptr @.str.185 }], align 4
@.str.173 = private unnamed_addr constant [15 x i8] c"AUDIO_CLK_SEL2\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"DIV_EN\00", align 1
@.str.175 = private unnamed_addr constant [14 x i8] c"SRCIN_TIMSEL0\00", align 1
@.str.176 = private unnamed_addr constant [14 x i8] c"SRCIN_TIMSEL1\00", align 1
@.str.177 = private unnamed_addr constant [14 x i8] c"SRCIN_TIMSEL2\00", align 1
@.str.178 = private unnamed_addr constant [14 x i8] c"SRCIN_TIMSEL3\00", align 1
@.str.179 = private unnamed_addr constant [14 x i8] c"SRCIN_TIMSEL4\00", align 1
@.str.180 = private unnamed_addr constant [15 x i8] c"SRCOUT_TIMSEL0\00", align 1
@.str.181 = private unnamed_addr constant [15 x i8] c"SRCOUT_TIMSEL1\00", align 1
@.str.182 = private unnamed_addr constant [15 x i8] c"SRCOUT_TIMSEL2\00", align 1
@.str.183 = private unnamed_addr constant [15 x i8] c"SRCOUT_TIMSEL3\00", align 1
@.str.184 = private unnamed_addr constant [15 x i8] c"SRCOUT_TIMSEL4\00", align 1
@.str.185 = private unnamed_addr constant [14 x i8] c"CMDOUT_TIMSEL\00", align 1
@rsnd_gen2_probe.conf_ssi = internal constant [5 x %struct.rsnd_regmap_field_conf] [%struct.rsnd_regmap_field_conf { i32 177, i32 0, i32 64, ptr @.str.7 }, %struct.rsnd_regmap_field_conf { i32 178, i32 4, i32 64, ptr @.str.8 }, %struct.rsnd_regmap_field_conf { i32 179, i32 8, i32 64, ptr @.str.9 }, %struct.rsnd_regmap_field_conf { i32 180, i32 12, i32 64, ptr @.str.10 }, %struct.rsnd_regmap_field_conf { i32 181, i32 32, i32 64, ptr @.str.11 }], align 4
@.str.186 = private unnamed_addr constant [5 x i8] c"ssiu\00", align 1
@.str.187 = private unnamed_addr constant [4 x i8] c"scu\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_mod_read(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rsnd_priv, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = getelementptr %struct.rsnd_gen, ptr %7, i32 0, i32 4, i32 %1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.1, i32 noundef %1) #7
  br label %28

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %16, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call i32 %18(ptr noundef %0) #6
  br label %24

22:                                               ; preds = %14
  %23 = tail call i32 @rsnd_mod_id(ptr noundef %0) #6
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @regmap_fields_read(ptr noundef nonnull %9, i32 noundef %25, ptr noundef nonnull %3) #6
  %27 = load i32, ptr %3, align 4
  br label %28

28:                                               ; preds = %24, %11
  %29 = phi i32 [ %27, %24 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_fields_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_mod_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rsnd_priv, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.rsnd_gen, ptr %7, i32 0, i32 4, i32 %1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.1, i32 noundef %1) #7
  br label %27

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %16, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call i32 %18(ptr noundef %0) #6
  br label %24

22:                                               ; preds = %14
  %23 = tail call i32 @rsnd_mod_id(ptr noundef %0) #6
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = tail call i32 @regmap_fields_update_bits_base(ptr noundef nonnull %9, i32 noundef %25, i32 noundef -1, i32 noundef %2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %27

27:                                               ; preds = %24, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_mod_bset(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rsnd_priv, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.rsnd_gen, ptr %8, i32 0, i32 4, i32 %1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef %1) #7
  br label %28

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %17, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = tail call i32 %19(ptr noundef %0) #6
  br label %25

23:                                               ; preds = %15
  %24 = tail call i32 @rsnd_mod_id(ptr noundef %0) #6
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = tail call i32 @regmap_fields_update_bits_base(ptr noundef nonnull %10, i32 noundef %26, i32 noundef %2, i32 noundef %3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %28

28:                                               ; preds = %25, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_gen_get_phy_addr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.rsnd_gen, ptr %4, i32 0, i32 2, i32 %1
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @rsnd_gen_get_base_addr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.rsnd_gen, ptr %4, i32 0, i32 1, i32 %1
  %6 = load ptr, ptr %5, align 4
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_gen_probe(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1508, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 3
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 15
  switch i32 %10, label %36 [
    i32 1, label %11
    i32 2, label %18
    i32 3, label %18
  ]

11:                                               ; preds = %6
  %12 = tail call fastcc i32 @_rsnd_gen_regmap_init(ptr noundef %0, i32 noundef 9, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @rsnd_gen1_probe.conf_adg, i32 noundef 5) #6
  %13 = tail call fastcc i32 @_rsnd_gen_regmap_init(ptr noundef %0, i32 noundef 9, i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @rsnd_gen1_probe.conf_ssi, i32 noundef 5) #6
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = select i1 %14, i1 true, i1 %15
  %17 = or i32 %13, %12
  br i1 %16, label %33, label %38

18:                                               ; preds = %6, %6
  %19 = tail call fastcc i32 @_rsnd_gen_regmap_init(ptr noundef %0, i32 noundef 10, i32 noundef 2, ptr noundef nonnull @.str.186, ptr noundef nonnull @rsnd_gen2_probe.conf_ssiu, i32 noundef 73) #6
  %20 = tail call fastcc i32 @_rsnd_gen_regmap_init(ptr noundef %0, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @.str.187, ptr noundef nonnull @rsnd_gen2_probe.conf_scu, i32 noundef 86) #6
  %21 = tail call fastcc i32 @_rsnd_gen_regmap_init(ptr noundef %0, i32 noundef 10, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @rsnd_gen2_probe.conf_adg, i32 noundef 18) #6
  %22 = tail call fastcc i32 @_rsnd_gen_regmap_init(ptr noundef %0, i32 noundef 10, i32 noundef 3, ptr noundef nonnull @.str.13, ptr noundef nonnull @rsnd_gen2_probe.conf_ssi, i32 noundef 5) #6
  %23 = icmp slt i32 %19, 0
  %24 = icmp slt i32 %20, 0
  %25 = select i1 %23, i1 true, i1 %24
  %26 = icmp slt i32 %21, 0
  %27 = select i1 %25, i1 true, i1 %26
  %28 = icmp slt i32 %22, 0
  %29 = select i1 %27, i1 true, i1 %28
  %30 = or i32 %20, %19
  %31 = or i32 %30, %21
  %32 = or i32 %31, %22
  br i1 %29, label %33, label %38

33:                                               ; preds = %18, %11
  %34 = phi i32 [ %17, %11 ], [ %32, %18 ]
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %6
  %37 = phi i32 [ %34, %33 ], [ -19, %6 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #7
  br label %38

38:                                               ; preds = %36, %33, %18, %11, %1
  %39 = phi i32 [ -12, %1 ], [ %37, %36 ], [ %34, %33 ], [ 0, %11 ], [ 0, %18 ]
  ret i32 %39
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_fields_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_rsnd_gen_regmap_init(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.regmap_config, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %7) #6
  %12 = getelementptr inbounds %struct.regmap_config, ptr %7, i32 0, i32 1
  %13 = getelementptr inbounds i8, ptr %7, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(160) %13, i8 0, i64 160, i1 false)
  store i32 32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.regmap_config, ptr %7, i32 0, i32 4
  store i32 32, ptr %14, align 4
  %15 = getelementptr inbounds %struct.regmap_config, ptr %7, i32 0, i32 2
  store i32 4, ptr %15, align 4
  store ptr %3, ptr %7, align 4
  %16 = tail call ptr @platform_get_resource_byname(ptr noundef %8, i32 noundef 512, ptr noundef %3) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = tail call ptr @platform_get_resource(ptr noundef %8, i32 noundef 512, i32 noundef %2) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %63, label %21

21:                                               ; preds = %18, %6
  %22 = phi ptr [ %19, %18 ], [ %16, %6 ]
  %23 = tail call ptr @devm_ioremap_resource(ptr noundef %11, ptr noundef nonnull %22) #6
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = ptrtoint ptr %23 to i32
  br label %63

27:                                               ; preds = %21
  %28 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %11, ptr noundef null, ptr noundef %23, ptr noundef nonnull %7, ptr noundef null, ptr noundef null) #6
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = ptrtoint ptr %28 to i32
  br label %63

32:                                               ; preds = %27
  %33 = getelementptr %struct.rsnd_gen, ptr %10, i32 0, i32 1, i32 %2
  store ptr %23, ptr %33, align 4
  %34 = getelementptr %struct.rsnd_gen, ptr %10, i32 0, i32 3, i32 %2
  store ptr %28, ptr %34, align 4
  %35 = load i32, ptr %22, align 4
  %36 = getelementptr %struct.rsnd_gen, ptr %10, i32 0, i32 2, i32 %2
  store i32 %35, ptr %36, align 4
  %37 = icmp sgt i32 %5, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %53, %32
  %39 = phi i32 [ %61, %53 ], [ 0, %32 ]
  %40 = getelementptr %struct.rsnd_regmap_field_conf, ptr %4, i32 %39, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.rsnd_regmap_field_conf, ptr %4, i32 %39, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = insertvalue [5 x i32] poison, i32 %41, 0
  %45 = insertvalue [5 x i32] %44, i32 0, 1
  %46 = insertvalue [5 x i32] %45, i32 31, 2
  %47 = insertvalue [5 x i32] %46, i32 %1, 3
  %48 = insertvalue [5 x i32] %47, i32 %43, 4
  %49 = call ptr @devm_regmap_field_alloc(ptr noundef %11, ptr noundef %28, [5 x i32] %48) #6
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = ptrtoint ptr %49 to i32
  br label %63

53:                                               ; preds = %38
  %54 = getelementptr %struct.rsnd_regmap_field_conf, ptr %4, i32 %39
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr %struct.rsnd_gen, ptr %10, i32 0, i32 4, i32 %55
  store ptr %49, ptr %56, align 4
  %57 = getelementptr %struct.rsnd_regmap_field_conf, ptr %4, i32 %39, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = load i32, ptr %54, align 4
  %60 = getelementptr %struct.rsnd_gen, ptr %10, i32 0, i32 5, i32 %59
  store ptr %58, ptr %60, align 4
  %61 = add nuw nsw i32 %39, 1
  %62 = icmp eq i32 %61, %5
  br i1 %62, label %63, label %38

63:                                               ; preds = %53, %51, %32, %30, %25, %18
  %64 = phi i32 [ %26, %25 ], [ %31, %30 ], [ %52, %51 ], [ -19, %18 ], [ 0, %32 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %7) #6
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
