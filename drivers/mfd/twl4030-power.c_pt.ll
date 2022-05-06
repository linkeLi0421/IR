; ModuleID = '/llk/IR/drivers/mfd/twl4030-power.c_pt.bc'
source_filename = "../drivers/mfd/twl4030-power.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.twl4030_power_data = type { ptr, i32, ptr, ptr, i8, i8 }
%struct.twl4030_resconfig = type { i8, i8, i8, i8, i8, i8 }
%struct.twl4030_script = type { ptr, i32, i8 }
%struct.twl4030_ins = type { i16, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = private unnamed_addr constant [41 x i8] c"\013twl4030: unable to unlock PROTECT_KEY\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\013TWL4030 Unable to relock registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\013TWL4030 Unable to configure start-up\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\013TWL4030 Unable to power off\0A\00", align 1
@__initcall__kmod_twl4030_power__202_970_twl4030_power_driver_init6 = internal global ptr @twl4030_power_driver_init, section ".initcall6.init", align 4
@twl4030_power_driver = internal global %struct.platform_driver { ptr @twl4030_power_probe, ptr @twl4030_power_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl4030_power_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_twl4030_power_driver_exit = internal global ptr @twl4030_power_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author203 = internal constant [39 x i8] c"twl4030_power.author=Nokia Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_author204 = internal constant [45 x i8] c"twl4030_power.author=Texas Instruments, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description205 = internal constant [55 x i8] c"twl4030_power.description=Power management for TWL4030\00", section ".modinfo", align 1
@__UNIQUE_ID_file206 = internal constant [45 x i8] c"twl4030_power.file=drivers/mfd/twl4030-power\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [26 x i8] c"twl4030_power.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias208 = internal constant [43 x i8] c"twl4030_power.alias=platform:twl4030_power\00", section ".modinfo", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\013TWL4030 Register access failed: %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"twl4030_power\00", align 1
@twl4030_power_of_match = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-power\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-power-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_reset }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-power-idle\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_idle }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-power-idle-osc-off\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @osc_off_idle }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-power-omap3-sdp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_idle_ac_quirk }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-power-omap3-ldp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_idle_ac_quirk_osc_off }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-power-omap3-evm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_idle_ac_quirk }, %struct.of_device_id zeroinitializer], align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Platform data is missing\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"\013TWL4030 Unable to unlock registers\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"\013TWL4030 failed to load scripts\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"\013TWL4030 failed to configure resource\0A\00", align 1
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"\014TWL4030 Unable to read registers\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"\013TWL4030 Unable to setup SEQ_OFFSYNC\0A\00", align 1
@load_twl4030_script.order = internal unnamed_addr global i1 false, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"\013TWL4030 scripts too big error\0A\00", align 1
@.str.13 = private unnamed_addr constant [99 x i8] c"\014TWL4030: Bad order of scripts (sleep script before wakeup) Leads to boot failure on some boards\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"\013TWL4030 warmreset seq config error\0A\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"\013TWL4030 wakeup sequence for P1 and P2config error\0A\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"\013TWL4030 wakeup sequence for P3 config error\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"\013TWL4030 sleep sequence config error\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"\013TWL4030 Resource %d does not exist\0A\00", align 1
@res_config_addrs = internal unnamed_addr constant [29 x i8] c"\00\17\1B\1F#'+/37;?CGKUcqtwz\7F\82\85\88\8B\8E\91\94", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"\013TWL4030 Resource %d group could not be read\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"\013TWL4030 failed to program devgroup\0A\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"\013TWL4030 Resource %d type could not be read\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"\013TWL4030 failed to program resource type\0A\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"\013TWL4030 Resource %d remap could not be read\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"\013TWL4030 failed to program remap\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"ti,system-power-controller\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"ti,use_poweroff\00", align 1
@omap3_reset = internal global %struct.twl4030_power_data { ptr @omap3_reset_scripts, i32 1, ptr @omap3_rconfig, ptr null, i8 0, i8 0 }, align 4
@omap3_idle = internal global %struct.twl4030_power_data { ptr @omap3_idle_scripts, i32 4, ptr @omap3_idle_rconfig, ptr null, i8 0, i8 0 }, align 4
@osc_off_idle = internal global %struct.twl4030_power_data { ptr @omap3_idle_scripts, i32 4, ptr @omap3_idle_rconfig, ptr @osc_off_rconfig, i8 0, i8 0 }, align 4
@omap3_idle_ac_quirk = internal global %struct.twl4030_power_data { ptr @omap3_idle_scripts, i32 4, ptr @omap3_idle_rconfig, ptr null, i8 0, i8 1 }, align 4
@omap3_idle_ac_quirk_osc_off = internal global %struct.twl4030_power_data { ptr @omap3_idle_scripts, i32 4, ptr @omap3_idle_rconfig, ptr @osc_off_rconfig, i8 0, i8 1 }, align 4
@omap3_reset_scripts = internal global [1 x ptr] [ptr @omap3_wrst_script], align 4
@omap3_rconfig = internal global [4 x %struct.twl4030_resconfig] [%struct.twl4030_resconfig { i8 25, i8 4, i8 -1, i8 -1, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 15, i8 1, i8 -1, i8 -1, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 16, i8 1, i8 -1, i8 -1, i8 0, i8 8 }, %struct.twl4030_resconfig zeroinitializer], align 1
@omap3_wrst_script = internal global %struct.twl4030_script { ptr @omap3_wrst_seq, i32 10, i8 1 }, align 4
@omap3_wrst_seq = internal global [10 x %struct.twl4030_ins] [%struct.twl4030_ins { i16 352, i8 2 }, %struct.twl4030_ins { i16 432, i8 2 }, %struct.twl4030_ins { i16 463, i8 2 }, %struct.twl4030_ins { i16 7951, i8 2 }, %struct.twl4030_ins { i16 319, i8 2 }, %struct.twl4030_ins { i16 95, i8 2 }, %struct.twl4030_ins { i16 7823, i8 2 }, %struct.twl4030_ins { i16 5247, i8 2 }, %struct.twl4030_ins { i16 446, i8 2 }, %struct.twl4030_ins { i16 366, i8 2 }], align 2
@omap3_idle_scripts = internal global [4 x ptr] [ptr @omap3_idle_wakeup_p12_script, ptr @omap3_idle_wakeup_p3_script, ptr @omap3_wrst_script, ptr @omap3_idle_sleep_on_script], align 4
@omap3_idle_rconfig = internal global [28 x %struct.twl4030_resconfig] [%struct.twl4030_resconfig { i8 1, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 2, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 3, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 4, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 5, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 6, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 7, i8 1, i8 3, i8 1, i8 0, i8 0 }, %struct.twl4030_resconfig { i8 8, i8 1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 9, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 10, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 11, i8 7, i8 1, i8 2, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 12, i8 7, i8 0, i8 2, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 13, i8 7, i8 1, i8 2, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 14, i8 7, i8 2, i8 2, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 15, i8 1, i8 4, i8 1, i8 0, i8 0 }, %struct.twl4030_resconfig { i8 16, i8 1, i8 3, i8 1, i8 0, i8 0 }, %struct.twl4030_resconfig { i8 17, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 18, i8 -1, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 19, i8 7, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 21, i8 7, i8 2, i8 1, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 22, i8 7, i8 0, i8 1, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 23, i8 7, i8 3, i8 2, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 24, i8 7, i8 6, i8 1, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 25, i8 4, i8 0, i8 2, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 26, i8 7, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 27, i8 7, i8 6, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig { i8 28, i8 7, i8 0, i8 0, i8 0, i8 8 }, %struct.twl4030_resconfig zeroinitializer], align 1
@omap3_idle_wakeup_p12_script = internal global %struct.twl4030_script { ptr @omap3_idle_wakeup_p12_seq, i32 1, i8 2 }, align 4
@omap3_idle_wakeup_p3_script = internal global %struct.twl4030_script { ptr @omap3_idle_wakeup_p3_seq, i32 2, i8 4 }, align 4
@omap3_idle_sleep_on_script = internal global %struct.twl4030_script { ptr @omap3_idle_sleep_on_seq, i32 1, i8 8 }, align 4
@omap3_idle_wakeup_p12_seq = internal global [1 x %struct.twl4030_ins] [%struct.twl4030_ins { i16 7806, i8 2 }], align 2
@omap3_idle_wakeup_p3_seq = internal global [2 x %struct.twl4030_ins] [%struct.twl4030_ins { i16 382, i8 55 }, %struct.twl4030_ins { i16 7806, i8 2 }], align 2
@omap3_idle_sleep_on_seq = internal global [1 x %struct.twl4030_ins] [%struct.twl4030_ins { i16 7800, i8 2 }], align 2
@osc_off_rconfig = internal global [2 x %struct.twl4030_resconfig] [%struct.twl4030_resconfig { i8 23, i8 5, i8 3, i8 2, i8 0, i8 0 }, %struct.twl4030_resconfig zeroinitializer], align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias208, ptr @__UNIQUE_ID_author203, ptr @__UNIQUE_ID_author204, ptr @__UNIQUE_ID_description205, ptr @__UNIQUE_ID_file206, ptr @__UNIQUE_ID_license207, ptr @__exitcall_twl4030_power_driver_exit, ptr @__initcall__kmod_twl4030_power__202_970_twl4030_power_driver_init6, ptr @twl4030_power_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @twl4030_remove_script(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8)
  store i8 -64, ptr %8, align 1
  %9 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %8, i8 noundef zeroext 14, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 12, ptr %7, align 1
  %12 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %7, i8 noundef zeroext 14, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %11
  %15 = zext i8 %0 to i32
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 63, ptr %6, align 1
  %19 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %6, i8 noundef zeroext 34, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %18, %14
  %22 = and i32 %15, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 63, ptr %5, align 1
  %25 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %5, i8 noundef zeroext 32, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %24, %21
  %28 = and i32 %15, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 63, ptr %4, align 1
  %31 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %4, i8 noundef zeroext 33, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30, %27
  %34 = and i32 %15, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 63, ptr %3, align 1
  %37 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %3, i8 noundef zeroext 31, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36, %33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 0, ptr %2, align 1
  %40 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %2, i8 noundef zeroext 14, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39, %11, %1
  %43 = phi ptr [ @.str, %1 ], [ @.str, %11 ], [ @.str.1, %39 ]
  %44 = phi i32 [ %9, %1 ], [ %12, %11 ], [ %40, %39 ]
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %43) #8
  br label %46

46:                                               ; preds = %42, %39, %36, %30, %24, %18
  %47 = phi i32 [ %19, %18 ], [ %25, %24 ], [ %31, %30 ], [ %37, %36 ], [ 0, %39 ], [ %44, %42 ]
  ret i32 %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @twl4030_power_off() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 -64, ptr %5, align 1
  %7 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %5, i8 noundef zeroext 14, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 12, ptr %4, align 1
  %10 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %4, i8 noundef zeroext 14, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %6, i8 noundef zeroext 0, i32 noundef 1) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %36

15:                                               ; preds = %31
  %16 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %6, i8 noundef zeroext 1, i32 noundef 1) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load i8, ptr %6, align 1
  %20 = and i8 %19, -35
  store i8 %20, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 %20, ptr %3, align 1
  %21 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %3, i8 noundef zeroext 1, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %6, i8 noundef zeroext 2, i32 noundef 1) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i8, ptr %6, align 1
  %28 = and i8 %27, -35
  store i8 %28, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 %28, ptr %3, align 1
  %29 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %3, i8 noundef zeroext 2, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %36

31:                                               ; preds = %12
  %32 = load i8, ptr %6, align 1
  %33 = and i8 %32, -35
  store i8 %33, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 %33, ptr %3, align 1
  %34 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %15, label %36

36:                                               ; preds = %31, %26, %23, %18, %15, %12
  %37 = phi i32 [ %34, %31 ], [ %13, %12 ], [ %16, %15 ], [ %21, %18 ], [ %24, %23 ], [ %29, %26 ]
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %37) #8
  br label %39

39:                                               ; preds = %36, %26, %9, %0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 0, ptr %2, align 1
  %40 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %2, i8 noundef zeroext 14, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8
  br label %44

44:                                               ; preds = %42, %39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1)
  store i8 1, ptr %1, align 1
  %45 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %1, i8 noundef zeroext 16, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %49

49:                                               ; preds = %47, %44
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @twl4030_power_driver_init() #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl4030_power_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @twl4030_power_driver_exit() #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl4030_power_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030_power_probe(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %29 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %32 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %27) #7
  store i8 0, ptr %27, align 1, !annotation !8
  %33 = icmp ne ptr %30, null
  %34 = icmp ne ptr %32, null
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.6) #8
  br label %401

37:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %26)
  store i8 -64, ptr %26, align 1
  %38 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %26, i8 noundef zeroext 14, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25)
  store i8 12, ptr %25, align 1
  %39 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %25, i8 noundef zeroext 14, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25)
  %40 = or i32 %39, %38
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %401

44:                                               ; preds = %37
  %45 = call ptr @of_match_device(ptr noundef nonnull @twl4030_power_of_match, ptr noundef %28) #7
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.of_device_id, ptr %45, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr %30, ptr %49
  br label %52

52:                                               ; preds = %47, %44
  %53 = phi ptr [ %30, %44 ], [ %51, %47 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %368, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.twl4030_power_data, ptr %53, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %229, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.twl4030_power_data, ptr %53, i32 0, i32 5
  %61 = load ptr, ptr %53, align 4
  br label %62

62:                                               ; preds = %215, %59
  %63 = phi ptr [ %61, %59 ], [ %216, %215 ]
  %64 = phi i8 [ 43, %59 ], [ %222, %215 ]
  %65 = phi i32 [ 0, %59 ], [ %223, %215 ]
  %66 = getelementptr ptr, ptr %63, i32 %65
  %67 = load ptr, ptr %66, align 4
  %68 = zext i8 %64 to i32
  %69 = getelementptr inbounds %struct.twl4030_script, ptr %67, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %68
  %72 = icmp ugt i32 %71, 63
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %226

75:                                               ; preds = %62
  %76 = load ptr, ptr %67, align 4
  br label %77

77:                                               ; preds = %98, %75
  %78 = phi i8 [ %64, %75 ], [ %99, %98 ]
  %79 = phi ptr [ %76, %75 ], [ %101, %98 ]
  %80 = phi i32 [ %70, %75 ], [ %100, %98 ]
  %81 = phi i1 [ false, %75 ], [ true, %98 ]
  %82 = phi i32 [ -22, %75 ], [ 0, %98 ]
  switch i32 %80, label %91 [
    i32 0, label %102
    i32 1, label %83
  ]

83:                                               ; preds = %77
  %84 = load i16, ptr %79, align 2
  %85 = getelementptr inbounds %struct.twl4030_ins, ptr %79, i32 0, i32 1
  %86 = load i8, ptr %85, align 2
  %87 = call fastcc i32 @twl4030_write_script_ins(i8 noundef zeroext %78, i16 noundef zeroext %84, i8 noundef zeroext %86, i8 noundef zeroext 63) #7
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %226

89:                                               ; preds = %83
  %90 = add i8 %78, 1
  br label %98

91:                                               ; preds = %77
  %92 = load i16, ptr %79, align 2
  %93 = getelementptr inbounds %struct.twl4030_ins, ptr %79, i32 0, i32 1
  %94 = load i8, ptr %93, align 2
  %95 = add i8 %78, 1
  %96 = call fastcc i32 @twl4030_write_script_ins(i8 noundef zeroext %78, i16 noundef zeroext %92, i8 noundef zeroext %94, i8 noundef zeroext %95) #7
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %226

98:                                               ; preds = %91, %89
  %99 = phi i8 [ %90, %89 ], [ %95, %91 ]
  %100 = add i32 %80, -1
  %101 = getelementptr %struct.twl4030_ins, ptr %79, i32 1
  br label %77

102:                                              ; preds = %77
  br i1 %81, label %103, label %226

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.twl4030_script, ptr %67, i32 0, i32 2
  %105 = load i8, ptr %104, align 4
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %140, label %108

108:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #7
  store i8 0, ptr %24, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #7
  store i8 %64, ptr %23, align 1
  %109 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %23, i8 noundef zeroext 34, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #7
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %137

111:                                              ; preds = %108
  %112 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %24, i8 noundef zeroext 16, i32 noundef 1) #7
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %111
  %115 = load i8, ptr %24, align 1
  %116 = or i8 %115, 16
  store i8 %116, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #7
  store i8 %116, ptr %22, align 1
  %117 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %22, i8 noundef zeroext 16, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #7
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %114
  %120 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %24, i8 noundef zeroext 17, i32 noundef 1) #7
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %119
  %123 = load i8, ptr %24, align 1
  %124 = or i8 %123, 16
  store i8 %124, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #7
  store i8 %124, ptr %21, align 1
  %125 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %21, i8 noundef zeroext 17, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #7
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %24, i8 noundef zeroext 18, i32 noundef 1) #7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = load i8, ptr %24, align 1
  %132 = or i8 %131, 16
  store i8 %132, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #7
  store i8 %132, ptr %20, align 1
  %133 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %20, i8 noundef zeroext 18, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #7
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #7
  %136 = load i8, ptr %104, align 4
  br label %140

137:                                              ; preds = %130, %127, %122, %119, %114, %111, %108
  %138 = phi i32 [ %133, %130 ], [ %128, %127 ], [ %125, %122 ], [ %120, %119 ], [ %117, %114 ], [ %112, %111 ], [ %109, %108 ]
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #7
  br label %226

140:                                              ; preds = %135, %103
  %141 = phi i8 [ %136, %135 ], [ %105, %103 ]
  %142 = and i8 %141, 2
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %182, label %144

144:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #7
  store i8 63, ptr %19, align 1
  %145 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %19, i8 noundef zeroext 31, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #7
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %226

147:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #7
  store i8 0, ptr %18, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #7
  store i8 %64, ptr %17, align 1
  %148 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %17, i8 noundef zeroext 32, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #7
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %177

150:                                              ; preds = %147
  %151 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %18, i8 noundef zeroext 16, i32 noundef 1) #7
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %177

153:                                              ; preds = %150
  %154 = load i8, ptr %18, align 1
  %155 = or i8 %154, 8
  store i8 %155, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #7
  store i8 %155, ptr %16, align 1
  %156 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %16, i8 noundef zeroext 16, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #7
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %177

158:                                              ; preds = %153
  %159 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %18, i8 noundef zeroext 17, i32 noundef 1) #7
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %158
  %162 = load i8, ptr %18, align 1
  %163 = or i8 %162, 8
  store i8 %163, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #7
  store i8 %163, ptr %15, align 1
  %164 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %15, i8 noundef zeroext 17, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #7
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %161
  %167 = load i8, ptr %60, align 1, !range !9
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %180, label %169

169:                                              ; preds = %166
  %170 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %18, i8 noundef zeroext 0, i32 noundef 1) #7
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i8, ptr %18, align 1
  %174 = and i8 %173, -3
  store i8 %174, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #7
  store i8 %174, ptr %14, align 1
  %175 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %14, i8 noundef zeroext 0, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #7
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %172, %169, %161, %158, %153, %150, %147
  %178 = phi i32 [ %175, %172 ], [ %170, %169 ], [ %164, %161 ], [ %159, %158 ], [ %156, %153 ], [ %151, %150 ], [ %148, %147 ]
  %179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #7
  br label %226

180:                                              ; preds = %172, %166
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #7
  store i1 true, ptr @load_twl4030_script.order, align 4
  %181 = load i8, ptr %104, align 4
  br label %182

182:                                              ; preds = %180, %140
  %183 = phi i8 [ %181, %180 ], [ %141, %140 ]
  %184 = and i8 %183, 4
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %202, label %186

186:                                              ; preds = %182
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #7
  store i8 0, ptr %13, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #7
  store i8 %64, ptr %12, align 1
  %187 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %12, i8 noundef zeroext 33, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #7
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %186
  %190 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %13, i8 noundef zeroext 18, i32 noundef 1) #7
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = load i8, ptr %13, align 1
  %194 = or i8 %193, 8
  store i8 %194, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #7
  store i8 %194, ptr %11, align 1
  %195 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %11, i8 noundef zeroext 18, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #7
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #7
  %198 = load i8, ptr %104, align 4
  br label %202

199:                                              ; preds = %192, %189, %186
  %200 = phi i32 [ %195, %192 ], [ %190, %189 ], [ %187, %186 ]
  %201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #7
  br label %226

202:                                              ; preds = %197, %182
  %203 = phi i8 [ %198, %197 ], [ %183, %182 ]
  %204 = and i8 %203, 8
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %202
  %207 = load i1, ptr @load_twl4030_script.order, align 4
  br i1 %207, label %210, label %208

208:                                              ; preds = %206
  %209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %210

210:                                              ; preds = %208, %206
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #7
  store i8 %64, ptr %10, align 1
  %211 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %10, i8 noundef zeroext 31, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #7
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %210
  %214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #8
  br label %226

215:                                              ; preds = %210, %202
  %216 = load ptr, ptr %53, align 4
  %217 = getelementptr ptr, ptr %216, i32 %65
  %218 = load ptr, ptr %217, align 4
  %219 = getelementptr inbounds %struct.twl4030_script, ptr %218, i32 0, i32 1
  %220 = load i32, ptr %219, align 4
  %221 = trunc i32 %220 to i8
  %222 = add i8 %64, %221
  %223 = add nuw i32 %65, 1
  %224 = load i32, ptr %56, align 4
  %225 = icmp ult i32 %223, %224
  br i1 %225, label %62, label %229

226:                                              ; preds = %213, %199, %177, %144, %137, %102, %91, %83, %73
  %227 = phi i32 [ -22, %73 ], [ %138, %137 ], [ %178, %177 ], [ %200, %199 ], [ %211, %213 ], [ %87, %83 ], [ %96, %91 ], [ %82, %102 ], [ %145, %144 ]
  %228 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %395

229:                                              ; preds = %215, %55
  %230 = getelementptr inbounds %struct.twl4030_power_data, ptr %53, i32 0, i32 2
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.twl4030_power_data, ptr %53, i32 0, i32 3
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %231, null
  br i1 %234, label %364, label %235

235:                                              ; preds = %229
  %236 = icmp eq ptr %233, null
  br i1 %236, label %262, label %237

237:                                              ; preds = %235
  %238 = load i8, ptr %231, align 1
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %364, label %240

240:                                              ; preds = %237
  %241 = load i8, ptr %233, align 1
  br label %242

242:                                              ; preds = %257, %240
  %243 = phi i8 [ %258, %257 ], [ %241, %240 ]
  %244 = phi i8 [ %260, %257 ], [ %238, %240 ]
  %245 = phi ptr [ %259, %257 ], [ %231, %240 ]
  %246 = icmp eq i8 %243, 0
  br i1 %246, label %257, label %247

247:                                              ; preds = %253, %242
  %248 = phi i8 [ %255, %253 ], [ %243, %242 ]
  %249 = phi ptr [ %254, %253 ], [ %233, %242 ]
  %250 = icmp eq i8 %248, %244
  br i1 %250, label %251, label %253

251:                                              ; preds = %247
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %245, ptr noundef align 1 dereferenceable(6) %249, i32 6, i1 false) #7
  %252 = load i8, ptr %233, align 1
  br label %257

253:                                              ; preds = %247
  %254 = getelementptr %struct.twl4030_resconfig, ptr %249, i32 1
  %255 = load i8, ptr %254, align 1
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %247

257:                                              ; preds = %253, %251, %242
  %258 = phi i8 [ 0, %242 ], [ %252, %251 ], [ %243, %253 ]
  %259 = getelementptr %struct.twl4030_resconfig, ptr %245, i32 1
  %260 = load i8, ptr %259, align 1
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %262, label %242

262:                                              ; preds = %257, %235
  %263 = load i8, ptr %231, align 1
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %364, label %265

265:                                              ; preds = %357, %262
  %266 = phi ptr [ %358, %357 ], [ %231, %262 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #7
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #7
  store i8 0, ptr %9, align 1, !annotation !8
  %267 = load i8, ptr %266, align 1
  %268 = icmp ugt i8 %267, 28
  %269 = zext i8 %267 to i32
  br i1 %268, label %270, label %273

270:                                              ; preds = %265
  %271 = zext i8 %267 to i32
  %272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %271) #8
  br label %361

273:                                              ; preds = %265
  %274 = getelementptr [29 x i8], ptr @res_config_addrs, i32 0, i32 %269
  %275 = load i8, ptr %274, align 1
  %276 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %8, i8 noundef zeroext %275, i32 noundef 1) #7
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %273
  %279 = load i8, ptr %266, align 1
  %280 = zext i8 %279 to i32
  %281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %280) #8
  br label %361

282:                                              ; preds = %273
  %283 = getelementptr inbounds %struct.twl4030_resconfig, ptr %266, i32 0, i32 1
  %284 = load i8, ptr %283, align 1
  %285 = icmp eq i8 %284, -1
  br i1 %285, label %295, label %286

286:                                              ; preds = %282
  %287 = load i8, ptr %8, align 1
  %288 = and i8 %287, 31
  %289 = shl i8 %284, 5
  %290 = or i8 %288, %289
  store i8 %290, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 %290, ptr %6, align 1
  %291 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %6, i8 noundef zeroext %275, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %286
  %294 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #8
  br label %361

295:                                              ; preds = %286, %282
  %296 = add i8 %275, 1
  %297 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %7, i8 noundef zeroext %296, i32 noundef 1) #7
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %295
  %300 = load i8, ptr %266, align 1
  %301 = zext i8 %300 to i32
  %302 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %301) #8
  br label %361

303:                                              ; preds = %295
  %304 = getelementptr inbounds %struct.twl4030_resconfig, ptr %266, i32 0, i32 2
  %305 = load i8, ptr %304, align 1
  %306 = icmp eq i8 %305, -1
  %307 = load i8, ptr %7, align 1
  br i1 %306, label %311, label %308

308:                                              ; preds = %303
  %309 = and i8 %307, -8
  %310 = or i8 %309, %305
  store i8 %310, ptr %7, align 1
  br label %311

311:                                              ; preds = %308, %303
  %312 = phi i8 [ %310, %308 ], [ %307, %303 ]
  %313 = getelementptr inbounds %struct.twl4030_resconfig, ptr %266, i32 0, i32 3
  %314 = load i8, ptr %313, align 1
  %315 = icmp eq i8 %314, -1
  br i1 %315, label %320, label %316

316:                                              ; preds = %311
  %317 = and i8 %312, -25
  %318 = shl i8 %314, 3
  %319 = or i8 %318, %317
  store i8 %319, ptr %7, align 1
  br label %320

320:                                              ; preds = %316, %311
  %321 = phi i8 [ %319, %316 ], [ %312, %311 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 %321, ptr %5, align 1
  %322 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %5, i8 noundef zeroext %296, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %320
  %325 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #8
  br label %361

326:                                              ; preds = %320
  %327 = add i8 %275, 2
  %328 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %9, i8 noundef zeroext %327, i32 noundef 1) #7
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %326
  %331 = load i8, ptr %266, align 1
  %332 = zext i8 %331 to i32
  %333 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %332) #8
  br label %361

334:                                              ; preds = %326
  %335 = getelementptr inbounds %struct.twl4030_resconfig, ptr %266, i32 0, i32 4
  %336 = load i8, ptr %335, align 1
  %337 = icmp eq i8 %336, -1
  %338 = load i8, ptr %9, align 1
  br i1 %337, label %343, label %339

339:                                              ; preds = %334
  %340 = and i8 %338, 15
  %341 = shl i8 %336, 4
  %342 = or i8 %340, %341
  store i8 %342, ptr %9, align 1
  br label %343

343:                                              ; preds = %339, %334
  %344 = phi i8 [ %342, %339 ], [ %338, %334 ]
  %345 = getelementptr inbounds %struct.twl4030_resconfig, ptr %266, i32 0, i32 5
  %346 = load i8, ptr %345, align 1
  %347 = icmp eq i8 %346, -1
  br i1 %347, label %351, label %348

348:                                              ; preds = %343
  %349 = and i8 %344, -16
  %350 = or i8 %349, %346
  store i8 %350, ptr %9, align 1
  br label %351

351:                                              ; preds = %348, %343
  %352 = phi i8 [ %350, %348 ], [ %344, %343 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 %352, ptr %4, align 1
  %353 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %4, i8 noundef zeroext %327, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %351
  %356 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #8
  br label %361

357:                                              ; preds = %351
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  %358 = getelementptr %struct.twl4030_resconfig, ptr %266, i32 1
  %359 = load i8, ptr %358, align 1
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %364, label %265

361:                                              ; preds = %355, %330, %324, %299, %293, %278, %270
  %362 = phi i32 [ %353, %355 ], [ %328, %330 ], [ %322, %324 ], [ %297, %299 ], [ %291, %293 ], [ %276, %278 ], [ -22, %270 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  %363 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %395

364:                                              ; preds = %357, %262, %237, %229
  %365 = getelementptr inbounds %struct.twl4030_power_data, ptr %53, i32 0, i32 4
  %366 = load i8, ptr %365, align 4, !range !9
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %368, label %374

368:                                              ; preds = %364, %52
  %369 = call ptr @of_find_property(ptr noundef %32, ptr noundef nonnull @.str.25, ptr noundef null) #7
  %370 = icmp eq ptr %369, null
  br i1 %370, label %371, label %374

371:                                              ; preds = %368
  %372 = call ptr @of_find_property(ptr noundef %32, ptr noundef nonnull @.str.26, ptr noundef null) #7
  %373 = icmp eq ptr %372, null
  br label %374

374:                                              ; preds = %371, %368, %364
  %375 = phi i1 [ false, %364 ], [ false, %368 ], [ %373, %371 ]
  %376 = load ptr, ptr @pm_power_off, align 4
  %377 = icmp ne ptr %376, null
  %378 = select i1 %375, i1 true, i1 %377
  br i1 %378, label %395, label %379

379:                                              ; preds = %374
  %380 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %27, i8 noundef zeroext 3, i32 noundef 1) #7
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %384, label %382

382:                                              ; preds = %379
  %383 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  br label %394

384:                                              ; preds = %379
  %385 = load i8, ptr %27, align 1
  %386 = and i8 %385, 1
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %384
  %389 = or i8 %385, 1
  store i8 %389, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %389, ptr %3, align 1
  %390 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %3, i8 noundef zeroext 3, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %394, label %392

392:                                              ; preds = %388
  %393 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  br label %395

394:                                              ; preds = %388, %384, %382
  store ptr @twl4030_power_off, ptr @pm_power_off, align 4
  br label %395

395:                                              ; preds = %394, %392, %374, %361, %226
  %396 = phi i32 [ %227, %226 ], [ %362, %361 ], [ 0, %374 ], [ %380, %394 ], [ %390, %392 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 0, ptr %2, align 1
  %397 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %2, i8 noundef zeroext 14, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %401, label %399

399:                                              ; preds = %395
  %400 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %401

401:                                              ; preds = %399, %395, %42, %36
  %402 = phi i32 [ %40, %42 ], [ %397, %399 ], [ -22, %36 ], [ %396, %395 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %27) #7
  ret i32 %402
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @twl4030_power_remove(ptr nocapture noundef readnone %0) #6 {
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @twl4030_write_script_ins(i8 noundef zeroext %0, i16 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = shl i8 %0, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #7
  store i8 %13, ptr %12, align 1
  %14 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %12, i8 noundef zeroext 35, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %4
  %17 = lshr i16 %1, 8
  %18 = trunc i16 %17 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #7
  store i8 %18, ptr %11, align 1
  %19 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %11, i8 noundef zeroext 36, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = or i8 %13, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #7
  store i8 %22, ptr %10, align 1
  %23 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %10, i8 noundef zeroext 35, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = trunc i16 %1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #7
  store i8 %26, ptr %9, align 1
  %27 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %9, i8 noundef zeroext 36, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = or i8 %13, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #7
  store i8 %30, ptr %8, align 1
  %31 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %8, i8 noundef zeroext 35, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 %2, ptr %7, align 1
  %34 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %7, i8 noundef zeroext 36, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = or i8 %13, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 %37, ptr %6, align 1
  %38 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %6, i8 noundef zeroext 35, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 %3, ptr %5, align 1
  %41 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %5, i8 noundef zeroext 36, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  br label %42

42:                                               ; preds = %40, %36, %33, %29, %25, %21, %16, %4
  %43 = phi i32 [ %19, %16 ], [ %27, %25 ], [ %34, %33 ], [ %38, %36 ], [ %41, %40 ], [ %14, %4 ], [ %23, %21 ], [ %31, %29 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
