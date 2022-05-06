; ModuleID = '/llk/IR/arch/arm/mach-omap2/powerdomains7xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/powerdomains7xx_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pwrdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@omap4_pwrdm_operations = external dso_local global %struct.pwrdm_ops, align 4
@powerdomains_dra7xx = internal global [23 x ptr] [ptr @iva_7xx_pwrdm, ptr @rtc_7xx_pwrdm, ptr @ipu_7xx_pwrdm, ptr @dss_7xx_pwrdm, ptr @l4per_7xx_pwrdm, ptr @gpu_7xx_pwrdm, ptr @wkupaon_7xx_pwrdm, ptr @core_7xx_pwrdm, ptr @coreaon_7xx_pwrdm, ptr @cpu0_7xx_pwrdm, ptr @cpu1_7xx_pwrdm, ptr @vpe_7xx_pwrdm, ptr @mpu_7xx_pwrdm, ptr @l3init_7xx_pwrdm, ptr @eve3_7xx_pwrdm, ptr @emu_7xx_pwrdm, ptr @dsp2_7xx_pwrdm, ptr @dsp1_7xx_pwrdm, ptr @cam_7xx_pwrdm, ptr @eve4_7xx_pwrdm, ptr @eve2_7xx_pwrdm, ptr @eve1_7xx_pwrdm, ptr null], section ".init.data", align 4
@powerdomains_dra76x = internal global [2 x ptr] [ptr @custefuse_aon_7xx_pwrdm, ptr null], section ".init.data", align 4
@powerdomains_dra74x = internal global [2 x ptr] [ptr @custefuse_7xx_pwrdm, ptr null], section ".init.data", align 4
@powerdomains_dra72x = internal global [2 x ptr] [ptr @custefuse_aon_7xx_pwrdm, ptr null], section ".init.data", align 4
@iva_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str, %union.anon zeroinitializer, i16 3840, i8 9, i8 0, i8 4, i8 4, [5 x i8] zeroinitializer, [5 x i8] c"\08\08\08\08\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@rtc_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.1, %union.anon zeroinitializer, i16 7264, i8 8, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@ipu_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.2, %union.anon zeroinitializer, i16 1280, i8 9, i8 0, i8 4, i8 2, [5 x i8] zeroinitializer, [5 x i8] c"\08\08\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@dss_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.3, %union.anon zeroinitializer, i16 4352, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@l4per_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.4, %union.anon zeroinitializer, i16 5120, i8 8, i8 0, i8 4, i8 2, [5 x i8] zeroinitializer, [5 x i8] c"\08\08\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@gpu_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.5, %union.anon zeroinitializer, i16 4608, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@wkupaon_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.6, %union.anon zeroinitializer, i16 5924, i8 8, i8 0, i8 0, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@core_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.7, %union.anon zeroinitializer, i16 1792, i8 8, i8 0, i8 4, i8 5, [5 x i8] zeroinitializer, [5 x i8] c"\08\08\08\08\08", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@coreaon_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.8, %union.anon zeroinitializer, i16 1576, i8 8, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@cpu0_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.9, %union.anon zeroinitializer, i16 1024, i8 10, i8 2, i8 0, i8 1, [5 x i8] c"\03\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 5, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@cpu1_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.10, %union.anon zeroinitializer, i16 2048, i8 10, i8 2, i8 0, i8 1, [5 x i8] c"\03\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 5, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@vpe_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.11, %union.anon zeroinitializer, i16 7296, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@mpu_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.12, %union.anon zeroinitializer, i16 768, i8 10, i8 2, i8 0, i8 2, [5 x i8] c"\03\02\00\00\00", [5 x i8] c"\08\08\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@l3init_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.13, %union.anon zeroinitializer, i16 4864, i8 8, i8 0, i8 4, i8 3, [5 x i8] zeroinitializer, [5 x i8] c"\08\08\08\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@eve3_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.14, %union.anon zeroinitializer, i16 7104, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@emu_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.15, %union.anon zeroinitializer, i16 6400, i8 9, i8 0, i8 0, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@dsp2_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.16, %union.anon zeroinitializer, i16 6912, i8 9, i8 0, i8 4, i8 3, [5 x i8] zeroinitializer, [5 x i8] c"\08\08\08\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@dsp1_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.17, %union.anon zeroinitializer, i16 1024, i8 9, i8 0, i8 4, i8 3, [5 x i8] zeroinitializer, [5 x i8] c"\08\08\08\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@cam_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.18, %union.anon zeroinitializer, i16 4096, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@eve4_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.19, %union.anon zeroinitializer, i16 7168, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@eve2_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.20, %union.anon zeroinitializer, i16 7040, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@eve1_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.21, %union.anon zeroinitializer, i16 6976, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"iva_pwrdm\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"rtc_pwrdm\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ipu_pwrdm\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"dss_pwrdm\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"l4per_pwrdm\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"gpu_pwrdm\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"wkupaon_pwrdm\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"core_pwrdm\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"coreaon_pwrdm\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"cpu0_pwrdm\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"cpu1_pwrdm\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"vpe_pwrdm\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"l3init_pwrdm\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"eve3_pwrdm\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"emu_pwrdm\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"dsp2_pwrdm\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"dsp1_pwrdm\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"cam_pwrdm\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"eve4_pwrdm\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"eve2_pwrdm\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"eve1_pwrdm\00", align 1
@custefuse_aon_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.22, %union.anon zeroinitializer, i16 5632, i8 8, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"custefuse_pwrdm\00", align 1
@custefuse_7xx_pwrdm = internal global %struct.powerdomain { ptr @.str.22, %union.anon zeroinitializer, i16 5632, i8 9, i8 0, i8 4, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @dra7xx_powerdomains_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @pwrdm_register_platform_funcs(ptr noundef nonnull @omap4_pwrdm_operations) #2
  %2 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_dra7xx) #2
  %3 = tail call i32 @omap_rev() #2
  %4 = and i32 %3, -1048576
  %5 = icmp eq i32 %4, 123731968
  br i1 %5, label %14, label %6

6:                                                ; preds = %0
  %7 = tail call i32 @omap_rev() #2
  %8 = and i32 %7, -1048576
  %9 = icmp eq i32 %8, 122683392
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @omap_rev() #2
  %12 = and i32 %11, -1048576
  %13 = icmp eq i32 %12, 119537664
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %6, %0
  %15 = phi ptr [ @powerdomains_dra76x, %0 ], [ @powerdomains_dra74x, %6 ], [ @powerdomains_dra72x, %10 ]
  %16 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull %15) #2
  br label %17

17:                                               ; preds = %14, %10
  %18 = tail call i32 @pwrdm_complete_init() #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_register_platform_funcs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_register_pwrdms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_complete_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
