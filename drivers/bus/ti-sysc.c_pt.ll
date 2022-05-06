; ModuleID = '/llk/IR/drivers/bus/ti-sysc.c_pt.bc'
source_filename = "../drivers/bus/ti-sysc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sysc_revision_quirk = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysc_capabilities = type { i32, i32, ptr, i32 }
%struct.sysc_regbits = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.sysc_soc_info = type { i8, i32, %struct.mutex, %struct.list_head, %struct.list_head, %struct.notifier_block }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.sysc = type { ptr, i64, i32, ptr, [3 x i32], ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.sysc_config, %struct.ti_sysc_cookie, ptr, i32, i32, i8, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysc_config = type { i32, i32, i8, i8, i8, i32 }
%struct.ti_sysc_cookie = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ti_sysc_platform_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sysc_address = type { i32, %struct.list_head }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ti_sysc_module_data = type { ptr, i64, i32, ptr, i32, ptr, ptr }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.sysc_module = type { ptr, %struct.list_head }

@__initcall__kmod_ti_sysc__171_3443_sysc_init6 = internal global ptr @sysc_init, section ".initcall6.init", align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@sysc_nb = internal global %struct.notifier_block { ptr @sysc_notifier_call, ptr null, i32 0 }, align 4
@sysc_driver = internal global %struct.platform_driver { ptr @sysc_probe, ptr @sysc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.11, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sysc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sysc_exit = internal global ptr @sysc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description172 = internal constant [55 x i8] c"ti_sysc.description=TI sysc interconnect target driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [33 x i8] c"ti_sysc.file=drivers/bus/ti-sysc\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [23 x i8] c"ti_sysc.license=GPL v2\00", section ".modinfo", align 1
@sysc_device_type = internal global %struct.device_type zeroinitializer, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not add child clock %s: %i\0A\00", align 1
@sysc_child_pm_domain = internal global %struct.dev_pm_domain { %struct.dev_pm_ops { ptr null, ptr null, ptr @platform_pm_suspend, ptr @platform_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysc_child_suspend_noirq, ptr @sysc_child_resume_noirq, ptr @sysc_child_suspend_noirq, ptr @sysc_child_resume_noirq, ptr @sysc_child_suspend_noirq, ptr @sysc_child_resume_noirq, ptr @sysc_child_runtime_suspend, ptr @sysc_child_runtime_resume, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s error at %i: %i\0A\00", align 1
@__func__.sysc_child_suspend_noirq = private unnamed_addr constant [25 x i8] c"sysc_child_suspend_noirq\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: could not idle: %i\0A\00", align 1
@__func__.sysc_runtime_suspend_legacy = private unnamed_addr constant [28 x i8] c"sysc_runtime_suspend_legacy\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s: invalid midlemode\0A\00", align 1
@__func__.sysc_disable_module = private unnamed_addr constant [20 x i8] c"sysc_disable_module\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%s: invalid sidlemode\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s runtime resume error: %i\0A\00", align 1
@__func__.sysc_child_resume_noirq = private unnamed_addr constant [24 x i8] c"sysc_child_resume_noirq\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s generic runtime resume: %i\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%s: could not enable: %i\0A\00", align 1
@__func__.sysc_runtime_resume_legacy = private unnamed_addr constant [27 x i8] c"sysc_runtime_resume_legacy\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Optional clocks failed for enable: %i\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"OCP softreset timed out\0A\00", align 1
@__func__.sysc_enable_module = private unnamed_addr constant [19 x i8] c"sysc_enable_module\00", align 1
@timekeeping_suspended = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"%s error: %i\0A\00", align 1
@__func__.sysc_child_runtime_resume = private unnamed_addr constant [26 x i8] c"sysc_child_runtime_resume\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"ti-sysc\00", align 1
@sysc_match = internal constant [16 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap2-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap2_timer }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap4-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap4_timer }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap4-simple\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap4_simple }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap3430-sr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_34xx_sr }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap3630-sr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_36xx_sr }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap4-sr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap4_sr }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap3-sham\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap3_sham }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap3_aes }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-mcasp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap4_mcasp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-dra7-mcasp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_dra7_mcasp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-usb-host-fs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap4_usb_host_fs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-dra7-mcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_dra7_mcan }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-pruss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_pruss }, %struct.of_device_id zeroinitializer], align 4
@sysc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysc_noirq_suspend, ptr @sysc_noirq_resume, ptr @sysc_noirq_suspend, ptr @sysc_noirq_resume, ptr @sysc_noirq_suspend, ptr @sysc_noirq_resume, ptr @sysc_runtime_suspend, ptr @sysc_runtime_resume, ptr null }, align 4
@sysc_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"simple-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sysc_soc = internal unnamed_addr global ptr null, align 4
@sysc_init_static_data.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"&sysc_soc->list_lock\00", align 1
@sysc_soc_match = internal constant [12 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.18, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 2 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.19, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 3 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.20, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 4 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.21, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 5 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.22, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 6 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.23, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 7 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.24, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 8 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.25, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 9 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.26, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 10 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.27, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 11 to ptr), ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"/ocp\00", align 1
@sysc_init_static_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"simple-bus\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"drivers/bus/ti-sysc.c\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"ti-sysc: Incomplete old dtb, please update\0A\00", align 1
@sysc_soc_feat_match = internal constant [10 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr @.str.28, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.29, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.30, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 3 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.31, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 7 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.32, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 3 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.33, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.34, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 7 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.35, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 2 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.36, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 4 to ptr), ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"OMAP242*\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"OMAP243*\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"OMAP3[45]*\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"OMAP3[67]*\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"OMAP443*\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"OMAP446*\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"OMAP447*\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"OMAP54*\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"AM433\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"AM43*\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"DRA7*\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"AM3505\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"OMAP3525\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"OMAP3515\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"OMAP3503\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"AM3703\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"DM3725\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"OMAP3611\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"OMAP3615/AM3715\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"OMAP3621\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"ti,hwmods\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"ti,sysc-delay-us\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"bad ti,sysc-delay-us: %i\0A\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"dts flag should be at module level for %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"ti,no-idle-on-init\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"ti,no-reset-on-init\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"ti,no-idle\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"missing ranges for %pOF\0A\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"incomplete ranges for %pOF\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"invalid ranges for %pOF\0A\00", align 1
@sysc_defer = internal global %struct.atomic_t { i32 10 }, align 4
@.str.51 = private unnamed_addr constant [8 x i8] c"ti,sysc\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"really a child ti,hwmods property?\00", align 1
@stdout_path = internal unnamed_addr global ptr null, align 4
@.str.53 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"stdout-path\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"sysc\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"syss\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"register outside module range\00", align 1
@.str.59 = private unnamed_addr constant [31 x i8] c"overlapping registers: (%i/%i)\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"ti,sysc-mask\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"ti,sysc-midle\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"ti,sysc-sidle\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"invalid idlemode: %i\0A\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"ti,syss-mask\00", align 1
@sysc_revision_quirks = internal unnamed_addr constant [37 x %struct.sysc_revision_quirk] [%struct.sysc_revision_quirk { ptr @.str.65, i32 0, i32 80, i32 84, i32 88, i32 70, i32 -1, i32 2560 }, %struct.sysc_revision_quirk { ptr @.str.65, i32 0, i32 80, i32 84, i32 88, i32 82, i32 -1, i32 2560 }, %struct.sysc_revision_quirk { ptr @.str.65, i32 0, i32 80, i32 84, i32 88, i32 1346444803, i32 -65281, i32 2560 }, %struct.sysc_revision_quirk { ptr @.str.65, i32 0, i32 80, i32 84, i32 88, i32 1195519491, i32 -1, i32 2560 }, %struct.sysc_revision_quirk { ptr @.str.66, i32 1074995200, i32 0, i32 16, i32 -19, i32 1342179328, i32 -1, i32 3104 }, %struct.sysc_revision_quirk { ptr @.str.67, i32 0, i32 0, i32 16, i32 -19, i32 1073741824, i32 -1, i32 524288 }, %struct.sysc_revision_quirk { ptr @.str.68, i32 1256439808, i32 32, i32 -19, i32 -19, i32 -1558772476, i32 -1, i32 2097152 }, %struct.sysc_revision_quirk { ptr @.str.68, i32 1212678144, i32 32, i32 -19, i32 -19, i32 -1558772476, i32 -1, i32 2097152 }, %struct.sysc_revision_quirk { ptr @.str.69, i32 1211277312, i32 0, i32 16, i32 20, i32 32, i32 -1, i32 8388616 }, %struct.sysc_revision_quirk { ptr @.str.69, i32 1476395008, i32 0, i32 -19, i32 20, i32 64, i32 -1, i32 8388616 }, %struct.sysc_revision_quirk { ptr @.str.69, i32 1476395008, i32 0, i32 -19, i32 20, i32 97, i32 -1, i32 8388616 }, %struct.sysc_revision_quirk { ptr @.str.70, i32 1216872448, i32 0, i32 16, i32 -19, i32 1342833152, i32 -1, i32 2097152 }, %struct.sysc_revision_quirk { ptr @.str.70, i32 1217134592, i32 0, i32 16, i32 -19, i32 1342833152, i32 -1, i32 2097152 }, %struct.sysc_revision_quirk { ptr @.str.71, i32 0, i32 0, i32 16, i32 276, i32 1348470785, i32 -65281, i32 8 }, %struct.sysc_revision_quirk { ptr @.str.72, i32 0, i32 0, i32 16, i32 20, i32 96, i32 -1, i32 872415232 }, %struct.sysc_revision_quirk { ptr @.str.73, i32 0, i32 0, i32 16, i32 -19, i32 1342374400, i32 -1, i32 16 }, %struct.sysc_revision_quirk { ptr @.str.74, i32 0, i32 0, i32 20, i32 24, i32 6, i32 -1, i32 33685504 }, %struct.sysc_revision_quirk { ptr @.str.74, i32 0, i32 0, i32 20, i32 24, i32 10, i32 -1, i32 33685504 }, %struct.sysc_revision_quirk { ptr @.str.75, i32 0, i32 0, i32 32, i32 16, i32 54, i32 255, i32 33619968 }, %struct.sysc_revision_quirk { ptr @.str.75, i32 0, i32 0, i32 32, i32 16, i32 60, i32 255, i32 33619968 }, %struct.sysc_revision_quirk { ptr @.str.75, i32 0, i32 0, i32 32, i32 16, i32 64, i32 255, i32 33619968 }, %struct.sysc_revision_quirk { ptr @.str.75, i32 0, i32 0, i32 16, i32 144, i32 1346371594, i32 -3856, i32 33619968 }, %struct.sysc_revision_quirk { ptr @.str.76, i32 1342177280, i32 20, i32 -19, i32 -19, i32 66049, i32 -1, i32 0 }, %struct.sysc_revision_quirk { ptr @.str.76, i32 1342177280, i32 65024, i32 65040, i32 -19, i32 1073741824, i32 -1, i32 262144 }, %struct.sysc_revision_quirk { ptr @.str.77, i32 0, i32 0, i32 84, i32 -19, i32 1327501312, i32 -1, i32 10240 }, %struct.sysc_revision_quirk { ptr @.str.78, i32 0, i32 0, i32 4, i32 -19, i32 1144021762, i32 -1, i32 2048 }, %struct.sysc_revision_quirk { ptr @.str.79, i32 0, i32 116, i32 120, i32 -19, i32 1320163592, i32 -65296, i32 4194304 }, %struct.sysc_revision_quirk { ptr @.str.80, i32 0, i32 0, i32 16, i32 -19, i32 1073769472, i32 -4097, i32 10240 }, %struct.sysc_revision_quirk { ptr @.str.80, i32 0, i32 0, i32 -19, i32 -19, i32 1073773568, i32 -1, i32 10240 }, %struct.sysc_revision_quirk { ptr @.str.81, i32 0, i32 252, i32 4352, i32 -19, i32 1581326336, i32 -1, i32 10240 }, %struct.sysc_revision_quirk { ptr @.str.82, i32 0, i32 0, i32 16, i32 20, i32 1349517568, i32 -1, i32 10240 }, %struct.sysc_revision_quirk { ptr @.str.82, i32 0, i32 0, i32 16, i32 -19, i32 1349517569, i32 -1, i32 10240 }, %struct.sysc_revision_quirk { ptr @.str.83, i32 0, i32 1024, i32 1028, i32 1032, i32 80, i32 -1, i32 1073752064 }, %struct.sysc_revision_quirk { ptr @.str.83, i32 0, i32 0, i32 16, i32 -19, i32 1319241741, i32 -1, i32 268445696 }, %struct.sysc_revision_quirk { ptr @.str.84, i32 0, i32 0, i32 16, i32 20, i32 1344931072, i32 -3856, i32 32768 }, %struct.sysc_revision_quirk { ptr @.str.85, i32 0, i32 155648, i32 155652, i32 -19, i32 1191182336, i32 -16777216, i32 16777216 }, %struct.sysc_revision_quirk { ptr @.str.84, i32 1155747840, i32 0, i32 16, i32 20, i32 1344931072, i32 -3856, i32 34816 }], align 4
@.str.65 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"mcpdm\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"aess\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"dcan\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"dss\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"dwc3\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"gpmc\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"hdq1w\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"lcdc\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"mcasp\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"tptc\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"usb_host_hs\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"usb_otg_hs\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"wdt\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"pruss\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@clock_names = internal unnamed_addr constant [10 x ptr] [ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], align 4
@.str.87 = private unnamed_addr constant [26 x i8] c"too many clocks for %pOF\0A\00", align 1
@.str.88 = private unnamed_addr constant [30 x i8] c"max one fck and ick for %pOF\0A\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"ick\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"opt0\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"opt1\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"opt2\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"opt3\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"opt4\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"opt5\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"opt6\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"opt7\00", align 1
@.str.99 = private unnamed_addr constant [20 x i8] c"clock %s not added\0A\00", align 1
@.str.100 = private unnamed_addr constant [29 x i8] c"clock get error for %s: %li\0A\00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"clock prepare error for %s: %i\0A\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"rstctrl\00", align 1
@.str.103 = private unnamed_addr constant [22 x i8] c"Reset failed with %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [28 x i8] c"%s: timed out %08x !+ %08x\0A\00", align 1
@__func__.sysc_pre_reset_quirk_dss = private unnamed_addr constant [25 x i8] c"sysc_pre_reset_quirk_dss\00", align 1
@.str.105 = private unnamed_addr constant [18 x i8] c"rtc busy timeout\0A\00", align 1
@.str.106 = private unnamed_addr constant [26 x i8] c"wdt disable step1 failed\0A\00", align 1
@.str.107 = private unnamed_addr constant [26 x i8] c"wdt disable step2 failed\0A\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c":%x\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c":%08x\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.112 = private unnamed_addr constant [27 x i8] c"reinit suspend failed: %i\0A\00", align 1
@.str.113 = private unnamed_addr constant [26 x i8] c"reinit resume failed: %i\0A\00", align 1
@.str.114 = private unnamed_addr constant [25 x i8] c"reinit reset failed: %i\0A\00", align 1
@sysc_omap2 = internal constant %struct.sysc_capabilities { i32 0, i32 807, ptr @sysc_regbits_omap2, i32 0 }, align 4
@sysc_omap2_timer = internal constant %struct.sysc_capabilities { i32 1, i32 807, ptr @sysc_regbits_omap2, i32 1 }, align 4
@sysc_omap4 = internal constant %struct.sysc_capabilities { i32 4, i32 65539, ptr @sysc_regbits_omap4, i32 0 }, align 4
@sysc_omap4_timer = internal constant %struct.sysc_capabilities { i32 5, i32 65539, ptr @sysc_regbits_omap4, i32 0 }, align 4
@sysc_omap4_simple = internal constant %struct.sysc_capabilities { i32 6, i32 0, ptr @sysc_regbits_omap4_simple, i32 0 }, align 4
@sysc_34xx_sr = internal constant %struct.sysc_capabilities { i32 7, i32 768, ptr @sysc_regbits_omap34xx_sr, i32 515 }, align 4
@sysc_36xx_sr = internal constant %struct.sysc_capabilities { i32 8, i32 67108864, ptr @sysc_regbits_omap36xx_sr, i32 514 }, align 4
@sysc_omap4_sr = internal constant %struct.sysc_capabilities { i32 9, i32 0, ptr @sysc_regbits_omap36xx_sr, i32 512 }, align 4
@sysc_omap3_sham = internal constant %struct.sysc_capabilities { i32 2, i32 3, ptr @sysc_regbits_omap3_sham, i32 0 }, align 4
@sysc_omap3_aes = internal constant %struct.sysc_capabilities { i32 3, i32 3, ptr @sysc_regbits_omap3_aes, i32 0 }, align 4
@sysc_omap4_mcasp = internal constant %struct.sysc_capabilities { i32 10, i32 0, ptr @sysc_regbits_omap4_mcasp, i32 16 }, align 4
@sysc_dra7_mcasp = internal constant %struct.sysc_capabilities { i32 6, i32 0, ptr @sysc_regbits_omap4_simple, i32 16 }, align 4
@sysc_omap4_usb_host_fs = internal constant %struct.sysc_capabilities { i32 11, i32 4, ptr @sysc_regbits_omap4_usb_host_fs, i32 0 }, align 4
@sysc_dra7_mcan = internal constant %struct.sysc_capabilities { i32 12, i32 17, ptr @sysc_regbits_dra7_mcan, i32 16384 }, align 4
@sysc_pruss = internal constant %struct.sysc_capabilities { i32 13, i32 48, ptr @sysc_regbits_omap4_simple, i32 16777216 }, align 4
@sysc_regbits_omap2 = internal constant %struct.sysc_regbits { i8 12, i8 8, i8 3, i8 2, i8 1, i8 0, i8 -19, i8 5 }, align 1
@sysc_regbits_omap4 = internal constant %struct.sysc_regbits { i8 4, i8 -19, i8 2, i8 -19, i8 0, i8 -19, i8 16, i8 1 }, align 1
@sysc_regbits_omap4_simple = internal constant %struct.sysc_regbits { i8 2, i8 -19, i8 0, i8 -19, i8 -19, i8 -19, i8 -19, i8 -19 }, align 1
@sysc_regbits_omap34xx_sr = internal constant %struct.sysc_regbits { i8 -19, i8 20, i8 -19, i8 -19, i8 -19, i8 -19, i8 -19, i8 -19 }, align 1
@sysc_regbits_omap36xx_sr = internal constant %struct.sysc_regbits { i8 -19, i8 -19, i8 24, i8 26, i8 -19, i8 -19, i8 -19, i8 -19 }, align 1
@sysc_regbits_omap3_sham = internal constant %struct.sysc_regbits { i8 -19, i8 -19, i8 4, i8 -19, i8 1, i8 0, i8 -19, i8 -19 }, align 1
@sysc_regbits_omap3_aes = internal constant %struct.sysc_regbits { i8 -19, i8 -19, i8 6, i8 -19, i8 1, i8 0, i8 -19, i8 -19 }, align 1
@sysc_regbits_omap4_mcasp = internal constant %struct.sysc_regbits { i8 -19, i8 -19, i8 0, i8 -19, i8 -19, i8 -19, i8 -19, i8 -19 }, align 1
@sysc_regbits_omap4_usb_host_fs = internal constant %struct.sysc_regbits { i8 -19, i8 -19, i8 24, i8 26, i8 -19, i8 -19, i8 -19, i8 -19 }, align 1
@sysc_regbits_dra7_mcan = internal constant %struct.sysc_regbits { i8 -19, i8 -19, i8 -19, i8 4, i8 0, i8 -19, i8 -19, i8 -19 }, align 1
@.str.115 = private unnamed_addr constant [25 x i8] c"noirq_resume failed: %i\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_sysc_exit, ptr @__initcall__kmod_ti_sysc__171_3443_sysc_init6, ptr @sysc_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sysc_init() #0 section ".init.text" {
  %1 = tail call i32 @bus_register_notifier(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @sysc_nb) #13
  %2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sysc_driver, ptr noundef null) #13
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sysc_exit() #0 section ".exit.text" {
  %1 = tail call i32 @bus_unregister_notifier(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @sysc_nb) #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @sysc_driver) #13
  %2 = load ptr, ptr @sysc_soc, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %46, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.sysc_soc_info, ptr %2, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @cpu_pm_unregister_notifier(ptr noundef %5) #13
  %10 = load ptr, ptr @sysc_soc, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %10, %8 ], [ %2, %4 ]
  %13 = getelementptr inbounds %struct.sysc_soc_info, ptr %12, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %13) #13
  %14 = load ptr, ptr @sysc_soc, align 4
  %15 = getelementptr inbounds %struct.sysc_soc_info, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %28, label %18

18:                                               ; preds = %18, %11
  %19 = phi ptr [ %20, %18 ], [ %16, %11 ]
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %19, i32 -4
  %22 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %20, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void @kfree(ptr noundef %21) #13
  %25 = load ptr, ptr @sysc_soc, align 4
  %26 = getelementptr inbounds %struct.sysc_soc_info, ptr %25, i32 0, i32 4
  %27 = icmp eq ptr %20, %26
  br i1 %27, label %28, label %18

28:                                               ; preds = %18, %11
  %29 = phi ptr [ %14, %11 ], [ %25, %18 ]
  %30 = getelementptr inbounds %struct.sysc_soc_info, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %43, label %33

33:                                               ; preds = %33, %28
  %34 = phi ptr [ %35, %33 ], [ %31, %28 ]
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %34, i32 -4
  %37 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  store volatile ptr %35, ptr %38, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %34, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %37, align 4
  tail call void @kfree(ptr noundef %36) #13
  %40 = load ptr, ptr @sysc_soc, align 4
  %41 = getelementptr inbounds %struct.sysc_soc_info, ptr %40, i32 0, i32 3
  %42 = icmp eq ptr %35, %41
  br i1 %42, label %43, label %33

43:                                               ; preds = %33, %28
  %44 = phi ptr [ %29, %28 ], [ %40, %33 ]
  %45 = getelementptr inbounds %struct.sysc_soc_info, ptr %44, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %45) #13
  br label %46

46:                                               ; preds = %43, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysc_notifier_call(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %67, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, @sysc_device_type
  br i1 %10, label %11, label %67

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = icmp ne ptr %13, null
  %15 = icmp eq i32 %1, 1
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %67

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.sysc, ptr %13, i32 0, i32 8
  %19 = load i32, ptr %18, align 8
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sysc, ptr %13, i32 0, i32 7
  %23 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  br label %24

24:                                               ; preds = %51, %21
  %25 = phi i32 [ %19, %21 ], [ %52, %51 ]
  %26 = phi i32 [ 0, %21 ], [ %53, %51 ]
  %27 = load ptr, ptr %22, align 4
  %28 = getelementptr ptr, ptr %27, i32 %26
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %51, label %31

31:                                               ; preds = %24
  %32 = tail call ptr @clk_get(ptr noundef %2, ptr noundef nonnull %29) #13
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load ptr, ptr %13, align 8
  %36 = tail call ptr @clk_get(ptr noundef %35, ptr noundef nonnull %29) #13
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %55, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %23, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load ptr, ptr %2, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi ptr [ %42, %41 ], [ %39, %38 ]
  %45 = tail call ptr (ptr, ptr, ptr, ...) @clkdev_create(ptr noundef %36, ptr noundef nonnull %29, ptr noundef %44) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43, %31
  %48 = phi ptr [ %36, %43 ], [ %32, %31 ]
  tail call void @clk_put(ptr noundef %48) #13
  %49 = load i32, ptr %18, align 8
  br label %51

50:                                               ; preds = %43
  tail call void @clk_put(ptr noundef %36) #13
  br label %55

51:                                               ; preds = %47, %24
  %52 = phi i32 [ %25, %24 ], [ %49, %47 ]
  %53 = add nuw nsw i32 %26, 1
  %54 = icmp slt i32 %53, %52
  br i1 %54, label %24, label %61

55:                                               ; preds = %50, %34
  %56 = phi i32 [ -12, %50 ], [ -19, %34 ]
  %57 = load ptr, ptr %13, align 8
  %58 = load ptr, ptr %22, align 4
  %59 = getelementptr ptr, ptr %58, i32 %26
  %60 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str, ptr noundef %60, i32 noundef %56) #14
  br label %67

61:                                               ; preds = %51, %17
  %62 = getelementptr inbounds %struct.sysc, ptr %13, i32 0, i32 12, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 512
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  tail call void @dev_pm_domain_set(ptr noundef %2, ptr noundef nonnull @sysc_child_pm_domain) #13
  br label %67

67:                                               ; preds = %66, %61, %55, %11, %7, %3
  %68 = phi i32 [ 0, %11 ], [ %56, %55 ], [ 0, %61 ], [ 0, %66 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdev_create(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_pm_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_pm_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysc_child_suspend_noirq(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, @sysc_device_type
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = phi ptr [ %11, %9 ], [ null, %5 ], [ null, %1 ]
  %14 = tail call i32 @pm_generic_suspend_noirq(ptr noundef %0) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.sysc_child_suspend_noirq, i32 noundef 2454, i32 noundef %14) #14
  br label %33

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @pm_generic_runtime_suspend(ptr noundef %0) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load ptr, ptr %13, align 8
  %26 = tail call i32 @sysc_runtime_suspend(ptr noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.sysc_child_suspend_noirq, i32 noundef 2471, i32 noundef %26) #14
  br label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.sysc, ptr %13, i32 0, i32 17
  %31 = load i8, ptr %30, align 4
  %32 = or i8 %31, 8
  store i8 %32, ptr %30, align 4
  br label %33

33:                                               ; preds = %29, %28, %21, %17, %16
  %34 = phi i32 [ %14, %16 ], [ %26, %28 ], [ 0, %21 ], [ 0, %29 ], [ 0, %17 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysc_child_resume_noirq(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, @sysc_device_type
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = phi ptr [ %11, %9 ], [ null, %5 ], [ null, %1 ]
  %14 = getelementptr inbounds %struct.sysc, ptr %13, i32 0, i32 17
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %12
  %19 = and i8 %15, -9
  store i8 %19, ptr %14, align 4
  %20 = load ptr, ptr %13, align 8
  %21 = tail call i32 @sysc_runtime_resume(ptr noundef %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.sysc_child_resume_noirq, i32 noundef %21) #14
  br label %25

25:                                               ; preds = %23, %18
  %26 = tail call i32 @pm_generic_runtime_resume(ptr noundef %0) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.sysc_child_resume_noirq, i32 noundef %26) #14
  br label %30

30:                                               ; preds = %28, %25, %12
  %31 = tail call i32 @pm_generic_resume_noirq(ptr noundef %0) #13
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysc_child_runtime_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, @sysc_device_type
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = phi ptr [ %11, %9 ], [ null, %5 ], [ null, %1 ]
  %14 = tail call i32 @pm_generic_runtime_suspend(ptr noundef %0) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sysc, ptr %13, i32 0, i32 17
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %13, align 8
  %23 = tail call i32 @sysc_runtime_suspend(ptr noundef %22)
  br label %24

24:                                               ; preds = %21, %16, %12
  %25 = phi i32 [ %23, %21 ], [ %14, %12 ], [ 0, %16 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysc_child_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, @sysc_device_type
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = phi ptr [ %11, %9 ], [ null, %5 ], [ null, %1 ]
  %14 = getelementptr inbounds %struct.sysc, ptr %13, i32 0, i32 17
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load ptr, ptr %13, align 8
  %20 = tail call i32 @sysc_runtime_resume(ptr noundef %19)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.sysc_child_runtime_resume, i32 noundef %20) #14
  br label %24

24:                                               ; preds = %22, %18, %12
  %25 = tail call i32 @pm_generic_runtime_resume(ptr noundef %0) #13
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_suspend_noirq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysc_runtime_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 17
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %103, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 12, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %48, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %20, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %48, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 13
  tail call void %24(ptr noundef %18, ptr noundef %27) #13
  %28 = load ptr, ptr %9, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %26, %8
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %33, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %79, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 13
  %41 = tail call i32 %37(ptr noundef %0, ptr noundef %40) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.sysc_runtime_suspend_legacy, i32 noundef %41) #14
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 9
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @reset_control_assert(ptr noundef %46) #13
  br label %51

48:                                               ; preds = %26, %22, %17, %12
  %49 = tail call fastcc i32 @sysc_disable_module(ptr noundef %0)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %48, %44, %30
  %52 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 6
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %70, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %53, align 4
  %57 = icmp eq ptr %56, null
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  %59 = or i1 %57, %58
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  tail call void @clk_disable(ptr noundef nonnull %56) #13
  %61 = load ptr, ptr %52, align 8
  br label %62

62:                                               ; preds = %60, %55
  %63 = phi ptr [ %53, %55 ], [ %61, %60 ]
  %64 = getelementptr ptr, ptr %63, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  %67 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  %68 = or i1 %66, %67
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  tail call void @clk_disable(ptr noundef nonnull %65) #13
  br label %70

70:                                               ; preds = %69, %62, %51
  %71 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 12, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  tail call fastcc void @sysc_disable_opt_clocks(ptr noundef %3)
  br label %76

76:                                               ; preds = %75, %70
  %77 = load i8, ptr %4, align 4
  %78 = and i8 %77, -3
  store i8 %78, ptr %4, align 4
  br label %79

79:                                               ; preds = %76, %48, %35
  %80 = phi i32 [ 0, %76 ], [ %49, %48 ], [ -19, %35 ]
  %81 = load ptr, ptr %9, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 12, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 2097152
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load ptr, ptr %3, align 8
  %90 = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 7
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %91, i32 0, i32 4
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 13
  tail call void %95(ptr noundef %89, ptr noundef %98) #13
  br label %99

99:                                               ; preds = %97, %93, %88, %83, %79
  %100 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 9
  %101 = load ptr, ptr %100, align 4
  %102 = tail call i32 @reset_control_assert(ptr noundef %101) #13
  br label %103

103:                                              ; preds = %99, %1
  %104 = phi i32 [ %80, %99 ], [ 0, %1 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysc_disable_module(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.sysc, ptr %3, i32 0, i32 4, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -19
  br i1 %6, label %216, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 23
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %3) #13
  %12 = load i32, ptr %4, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i32 [ %12, %11 ], [ %5, %7 ]
  %15 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sysc_capabilities, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 12, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %14
  br i1 %22, label %42, label %26

26:                                               ; preds = %13
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %25) #13, !srcloc !8
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 4
  %30 = load i32, ptr %29, align 8
  %31 = icmp sgt i32 %30, -1
  %32 = icmp eq i32 %30, %14
  %33 = and i1 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = load ptr, ptr %23, align 4
  %36 = getelementptr i8, ptr %35, i32 %14
  %37 = getelementptr i8, ptr %36, i32 4
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %37) #13, !srcloc !8
  %39 = zext i16 %38 to i32
  %40 = shl nuw i32 %39, 16
  %41 = or i32 %40, %28
  br label %44

42:                                               ; preds = %13
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #13, !srcloc !9
  br label %44

44:                                               ; preds = %42, %34, %26
  %45 = phi i32 [ %43, %42 ], [ %41, %34 ], [ %28, %26 ]
  %46 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 12
  %47 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 12, i32 2
  %48 = load i8, ptr %47, align 8
  %49 = zext i8 %48 to i32
  %50 = icmp eq i8 %48, 0
  br i1 %50, label %109, label %51

51:                                               ; preds = %44
  %52 = load i8, ptr %18, align 1
  %53 = icmp slt i8 %52, 0
  br i1 %53, label %109, label %54

54:                                               ; preds = %51
  %55 = and i32 %49, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = and i32 %49, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = and i32 %49, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.sysc_disable_module) #14
  br label %216

64:                                               ; preds = %60, %57, %54
  %65 = phi i32 [ 3, %54 ], [ 2, %57 ], [ 0, %60 ]
  %66 = load i32, ptr %19, align 4
  %67 = and i32 %66, 1056768
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i32 %65, i32 0
  %70 = zext i8 %52 to i32
  %71 = shl i32 3, %70
  %72 = xor i32 %71, -1
  %73 = and i32 %45, %72
  %74 = shl i32 %69, %70
  %75 = or i32 %74, %73
  %76 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 24
  %77 = load ptr, ptr %76, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %64
  tail call void %77(ptr noundef %3) #13
  %80 = load i32, ptr %19, align 4
  br label %81

81:                                               ; preds = %79, %64
  %82 = phi i32 [ %80, %79 ], [ %66, %64 ]
  %83 = load i32, ptr %4, align 4
  %84 = and i32 %82, 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %81
  %87 = trunc i32 %75 to i16
  %88 = load ptr, ptr %23, align 4
  %89 = getelementptr i8, ptr %88, i32 %83
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %89, i16 %87) #13, !srcloc !10
  %90 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 4
  %91 = load i32, ptr %90, align 8
  %92 = icmp sgt i32 %91, -1
  %93 = icmp eq i32 %91, %83
  %94 = and i1 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = lshr i32 %75, 16
  %97 = trunc i32 %96 to i16
  %98 = load ptr, ptr %23, align 4
  %99 = getelementptr i8, ptr %98, i32 %83
  %100 = getelementptr i8, ptr %99, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %100, i16 %97) #13, !srcloc !10
  br label %104

101:                                              ; preds = %81
  %102 = load ptr, ptr %23, align 4
  %103 = getelementptr i8, ptr %102, i32 %83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %75) #13, !srcloc !11
  br label %104

104:                                              ; preds = %101, %95, %86
  %105 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 25
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  tail call void %106(ptr noundef %3) #13
  br label %109

109:                                              ; preds = %108, %104, %51, %44
  %110 = phi i32 [ %45, %51 ], [ %45, %44 ], [ %75, %104 ], [ %75, %108 ]
  %111 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 12, i32 3
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i8 %112, 0
  br i1 %114, label %187, label %115

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.sysc_regbits, ptr %18, i32 0, i32 2
  %117 = load i8, ptr %116, align 1
  %118 = icmp slt i8 %117, 0
  br i1 %118, label %187, label %119

119:                                              ; preds = %115
  %120 = load i32, ptr %19, align 4
  %121 = and i32 %120, 2048
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = and i32 %113, 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = and i32 %113, 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = and i32 %113, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.sysc_disable_module) #14
  br label %187

133:                                              ; preds = %129, %126, %123, %119
  %134 = phi i32 [ 0, %119 ], [ 3, %123 ], [ 2, %126 ], [ 0, %129 ]
  %135 = zext i8 %117 to i32
  %136 = shl i32 3, %135
  %137 = xor i32 %136, -1
  %138 = and i32 %110, %137
  %139 = shl i32 %134, %135
  %140 = or i32 %139, %138
  %141 = getelementptr inbounds %struct.sysc_regbits, ptr %18, i32 0, i32 5
  %142 = load i8, ptr %141, align 1
  %143 = icmp sgt i8 %142, -1
  br i1 %143, label %144, label %152

144:                                              ; preds = %133
  %145 = load i32, ptr %46, align 8
  %146 = zext i8 %142 to i32
  %147 = shl nuw i32 1, %146
  %148 = and i32 %145, %147
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, i32 0, i32 %147
  %151 = or i32 %150, %140
  br label %152

152:                                              ; preds = %144, %133
  %153 = phi i32 [ %140, %133 ], [ %151, %144 ]
  %154 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 24
  %155 = load ptr, ptr %154, align 8
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %152
  tail call void %155(ptr noundef %3) #13
  %158 = load i32, ptr %19, align 4
  br label %159

159:                                              ; preds = %157, %152
  %160 = phi i32 [ %158, %157 ], [ %120, %152 ]
  %161 = load i32, ptr %4, align 4
  %162 = and i32 %160, 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %179, label %164

164:                                              ; preds = %159
  %165 = trunc i32 %153 to i16
  %166 = load ptr, ptr %23, align 4
  %167 = getelementptr i8, ptr %166, i32 %161
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %167, i16 %165) #13, !srcloc !10
  %168 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 4
  %169 = load i32, ptr %168, align 8
  %170 = icmp sgt i32 %169, -1
  %171 = icmp eq i32 %169, %161
  %172 = and i1 %170, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %164
  %174 = lshr i32 %153, 16
  %175 = trunc i32 %174 to i16
  %176 = load ptr, ptr %23, align 4
  %177 = getelementptr i8, ptr %176, i32 %161
  %178 = getelementptr i8, ptr %177, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %178, i16 %175) #13, !srcloc !10
  br label %182

179:                                              ; preds = %159
  %180 = load ptr, ptr %23, align 4
  %181 = getelementptr i8, ptr %180, i32 %161
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %153) #13, !srcloc !11
  br label %182

182:                                              ; preds = %179, %173, %164
  %183 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 25
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  tail call void %184(ptr noundef %3) #13
  br label %187

187:                                              ; preds = %186, %182, %132, %115, %109
  %188 = phi i32 [ -22, %132 ], [ 0, %115 ], [ 0, %109 ], [ 0, %182 ], [ 0, %186 ]
  %189 = load i32, ptr %4, align 4
  %190 = load i32, ptr %19, align 4
  %191 = and i32 %190, 4
  %192 = icmp eq i32 %191, 0
  %193 = load ptr, ptr %23, align 4
  %194 = getelementptr i8, ptr %193, i32 %189
  br i1 %192, label %211, label %195

195:                                              ; preds = %187
  %196 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %194) #13, !srcloc !8
  %197 = zext i16 %196 to i32
  %198 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 4
  %199 = load i32, ptr %198, align 8
  %200 = icmp sgt i32 %199, -1
  %201 = icmp eq i32 %199, %189
  %202 = and i1 %200, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %195
  %204 = load ptr, ptr %23, align 4
  %205 = getelementptr i8, ptr %204, i32 %189
  %206 = getelementptr i8, ptr %205, i32 4
  %207 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %206) #13, !srcloc !8
  %208 = zext i16 %207 to i32
  %209 = shl nuw i32 %208, 16
  %210 = or i32 %209, %197
  br label %213

211:                                              ; preds = %187
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %194) #13, !srcloc !9
  br label %213

213:                                              ; preds = %211, %203, %195
  %214 = phi i32 [ %212, %211 ], [ %210, %203 ], [ %197, %195 ]
  %215 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 16
  store i32 %214, ptr %215, align 8
  br label %216

216:                                              ; preds = %213, %63, %1
  %217 = phi i32 [ %188, %213 ], [ -22, %63 ], [ 0, %1 ]
  ret i32 %217
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sysc_disable_main_clocks(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  tail call void @clk_disable(ptr noundef nonnull %6) #13
  %11 = load ptr, ptr %2, align 8
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %3, %5 ], [ %11, %10 ]
  %14 = getelementptr ptr, ptr %13, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %18 = or i1 %16, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  tail call void @clk_disable(ptr noundef nonnull %15) #13
  br label %20

20:                                               ; preds = %19, %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sysc_disable_opt_clocks(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %65, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %65, label %9

9:                                                ; preds = %5
  %10 = getelementptr ptr, ptr %3, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %65, label %15

15:                                               ; preds = %9
  tail call void @clk_disable(ptr noundef nonnull %11) #13
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr ptr, ptr %16, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %21 = or i1 %19, %20
  br i1 %21, label %65, label %22

22:                                               ; preds = %15
  tail call void @clk_disable(ptr noundef nonnull %18) #13
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr ptr, ptr %23, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %28 = or i1 %26, %27
  br i1 %28, label %65, label %29

29:                                               ; preds = %22
  tail call void @clk_disable(ptr noundef nonnull %25) #13
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr ptr, ptr %30, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %35 = or i1 %33, %34
  br i1 %35, label %65, label %36

36:                                               ; preds = %29
  tail call void @clk_disable(ptr noundef nonnull %32) #13
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr ptr, ptr %37, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  %42 = or i1 %40, %41
  br i1 %42, label %65, label %43

43:                                               ; preds = %36
  tail call void @clk_disable(ptr noundef nonnull %39) #13
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr ptr, ptr %44, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  %49 = or i1 %47, %48
  br i1 %49, label %65, label %50

50:                                               ; preds = %43
  tail call void @clk_disable(ptr noundef nonnull %46) #13
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr ptr, ptr %51, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  %56 = or i1 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %50
  tail call void @clk_disable(ptr noundef nonnull %53) #13
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr ptr, ptr %58, i32 9
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  %62 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  %63 = or i1 %61, %62
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  tail call void @clk_disable(ptr noundef nonnull %60) #13
  br label %65

65:                                               ; preds = %64, %57, %50, %43, %36, %29, %22, %15, %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sysc_clkdm_allow_idle(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 13
  tail call void %17(ptr noundef %11, ptr noundef %20) #13
  br label %21

21:                                               ; preds = %19, %15, %10, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysc_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 17
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %158

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 12, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %20, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 13
  tail call void %24(ptr noundef %18, ptr noundef %27) #13
  br label %28

28:                                               ; preds = %26, %22, %17, %12, %8
  %29 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 12, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = tail call fastcc i32 @sysc_enable_opt_clocks(ptr noundef %3)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %139

36:                                               ; preds = %33, %28
  %37 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 6
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %66, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 4
  %42 = icmp eq ptr %41, null
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  %44 = or i1 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = tail call i32 @clk_enable(ptr noundef nonnull %41) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %133

48:                                               ; preds = %45
  %49 = load ptr, ptr %37, align 8
  br label %50

50:                                               ; preds = %48, %40
  %51 = phi ptr [ %49, %48 ], [ %38, %40 ]
  %52 = getelementptr ptr, ptr %51, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  %56 = or i1 %54, %55
  br i1 %56, label %66, label %57

57:                                               ; preds = %50
  %58 = tail call i32 @clk_enable(ptr noundef nonnull %53) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %37, align 8
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  %65 = or i1 %63, %64
  br i1 %65, label %133, label %130

66:                                               ; preds = %57, %50, %36
  %67 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 9
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 @reset_control_deassert(ptr noundef %68) #13
  %70 = load ptr, ptr %9, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %89, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr %3, align 8
  %74 = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 7
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %92, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %75, i32 0, i32 6
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %112, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 13
  %83 = tail call i32 %79(ptr noundef %0, ptr noundef %82) #13
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.sysc_runtime_resume_legacy, i32 noundef %83) #14
  br label %86

86:                                               ; preds = %85, %81
  %87 = load ptr, ptr %67, align 4
  %88 = tail call i32 @reset_control_deassert(ptr noundef %87) #13
  br label %92

89:                                               ; preds = %66
  %90 = tail call fastcc i32 @sysc_enable_module(ptr noundef %0)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %89, %86, %72
  %93 = load i8, ptr %4, align 4
  %94 = or i8 %93, 2
  store i8 %94, ptr %4, align 4
  %95 = load ptr, ptr %9, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %158

97:                                               ; preds = %92
  %98 = load i32, ptr %29, align 4
  %99 = and i32 %98, 2097152
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %158

101:                                              ; preds = %97
  %102 = load ptr, ptr %3, align 8
  %103 = getelementptr inbounds %struct.device, ptr %102, i32 0, i32 7
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %158, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %104, i32 0, i32 4
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %158, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 13
  tail call void %108(ptr noundef %102, ptr noundef %111) #13
  br label %158

112:                                              ; preds = %89, %77
  %113 = phi i32 [ %90, %89 ], [ -19, %77 ]
  %114 = load ptr, ptr %37, align 8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %133, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr %114, align 4
  %118 = icmp eq ptr %117, null
  %119 = icmp ugt ptr %117, inttoptr (i32 -4096 to ptr)
  %120 = or i1 %118, %119
  br i1 %120, label %123, label %121

121:                                              ; preds = %116
  tail call void @clk_disable(ptr noundef nonnull %117) #13
  %122 = load ptr, ptr %37, align 8
  br label %123

123:                                              ; preds = %121, %116
  %124 = phi ptr [ %114, %116 ], [ %122, %121 ]
  %125 = getelementptr ptr, ptr %124, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  %128 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  %129 = or i1 %127, %128
  br i1 %129, label %133, label %130

130:                                              ; preds = %123, %60
  %131 = phi ptr [ %62, %60 ], [ %126, %123 ]
  %132 = phi i32 [ %58, %60 ], [ %113, %123 ]
  tail call void @clk_disable(ptr noundef nonnull %131) #13
  br label %133

133:                                              ; preds = %130, %123, %112, %60, %45
  %134 = phi i32 [ %58, %60 ], [ %46, %45 ], [ %113, %112 ], [ %113, %123 ], [ %132, %130 ]
  %135 = load i32, ptr %29, align 4
  %136 = and i32 %135, 16
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  tail call fastcc void @sysc_disable_opt_clocks(ptr noundef %3)
  br label %139

139:                                              ; preds = %138, %133, %33
  %140 = phi i32 [ %34, %33 ], [ %134, %138 ], [ %134, %133 ]
  %141 = load ptr, ptr %9, align 8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %158

143:                                              ; preds = %139
  %144 = load i32, ptr %29, align 4
  %145 = and i32 %144, 2097152
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %143
  %148 = load ptr, ptr %3, align 8
  %149 = getelementptr inbounds %struct.device, ptr %148, i32 0, i32 7
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %150, i32 0, i32 4
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 13
  tail call void %154(ptr noundef %148, ptr noundef %157) #13
  br label %158

158:                                              ; preds = %156, %152, %147, %143, %139, %110, %106, %101, %97, %92, %1
  %159 = phi i32 [ 0, %1 ], [ 0, %92 ], [ 0, %97 ], [ 0, %101 ], [ 0, %106 ], [ 0, %110 ], [ %140, %139 ], [ %140, %143 ], [ %140, %147 ], [ %140, %152 ], [ %140, %156 ]
  ret i32 %159
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_resume_noirq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysc_enable_opt_clocks(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %103, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %103, label %9

9:                                                ; preds = %5
  %10 = getelementptr ptr, ptr %3, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %103, label %15

15:                                               ; preds = %9
  %16 = tail call i32 @clk_enable(ptr noundef nonnull %11) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %88, %78, %68, %58, %48, %38, %28, %15
  %19 = phi i32 [ 1, %15 ], [ 2, %28 ], [ 3, %38 ], [ 4, %48 ], [ 5, %58 ], [ 6, %68 ], [ 7, %78 ], [ 8, %88 ]
  %20 = phi i32 [ %16, %15 ], [ %29, %28 ], [ %39, %38 ], [ %49, %48 ], [ %59, %58 ], [ %69, %68 ], [ %79, %78 ], [ %89, %88 ]
  br label %91

21:                                               ; preds = %15
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr ptr, ptr %22, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %27 = or i1 %25, %26
  br i1 %27, label %103, label %28

28:                                               ; preds = %21
  %29 = tail call i32 @clk_enable(ptr noundef nonnull %24) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %18

31:                                               ; preds = %28
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr ptr, ptr %32, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %37 = or i1 %35, %36
  br i1 %37, label %103, label %38

38:                                               ; preds = %31
  %39 = tail call i32 @clk_enable(ptr noundef nonnull %34) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %18

41:                                               ; preds = %38
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr ptr, ptr %42, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  %47 = or i1 %45, %46
  br i1 %47, label %103, label %48

48:                                               ; preds = %41
  %49 = tail call i32 @clk_enable(ptr noundef nonnull %44) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %18

51:                                               ; preds = %48
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr ptr, ptr %52, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  %57 = or i1 %55, %56
  br i1 %57, label %103, label %58

58:                                               ; preds = %51
  %59 = tail call i32 @clk_enable(ptr noundef nonnull %54) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %18

61:                                               ; preds = %58
  %62 = load ptr, ptr %2, align 8
  %63 = getelementptr ptr, ptr %62, i32 7
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  %66 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  %67 = or i1 %65, %66
  br i1 %67, label %103, label %68

68:                                               ; preds = %61
  %69 = tail call i32 @clk_enable(ptr noundef nonnull %64) #13
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %18

71:                                               ; preds = %68
  %72 = load ptr, ptr %2, align 8
  %73 = getelementptr ptr, ptr %72, i32 8
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  %76 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  %77 = or i1 %75, %76
  br i1 %77, label %103, label %78

78:                                               ; preds = %71
  %79 = tail call i32 @clk_enable(ptr noundef nonnull %74) #13
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %18

81:                                               ; preds = %78
  %82 = load ptr, ptr %2, align 8
  %83 = getelementptr ptr, ptr %82, i32 9
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  %86 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  %87 = or i1 %85, %86
  br i1 %87, label %103, label %88

88:                                               ; preds = %81
  %89 = tail call i32 @clk_enable(ptr noundef nonnull %84) #13
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %103, label %18

91:                                               ; preds = %100, %18
  %92 = phi i32 [ %101, %100 ], [ %19, %18 ]
  %93 = load ptr, ptr %2, align 8
  %94 = getelementptr ptr, ptr %93, i32 %92
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  %97 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  %98 = or i1 %96, %97
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  tail call void @clk_disable(ptr noundef nonnull %95) #13
  br label %100

100:                                              ; preds = %99, %91
  %101 = add nsw i32 %92, -1
  %102 = icmp sgt i32 %92, 0
  br i1 %102, label %91, label %103

103:                                              ; preds = %100, %88, %81, %71, %61, %51, %41, %31, %21, %9, %5, %1
  %104 = phi i32 [ 0, %5 ], [ 0, %1 ], [ 0, %88 ], [ 0, %81 ], [ 0, %71 ], [ 0, %61 ], [ 0, %51 ], [ 0, %41 ], [ 0, %31 ], [ 0, %21 ], [ 0, %9 ], [ %20, %100 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysc_enable_module(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 12
  %5 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 12, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = tail call fastcc i32 @sysc_enable_opt_clocks(ptr noundef %3)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, ptr %5, align 4
  br label %16

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.8, i32 noundef %10) #14
  br label %285

16:                                               ; preds = %12, %1
  %17 = phi i32 [ %13, %12 ], [ %6, %1 ]
  %18 = and i32 %17, 33554432
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @sysc_wait_softreset(ptr noundef %3)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.9) #14
  br label %25

25:                                               ; preds = %23, %20, %16
  %26 = load i32, ptr %5, align 4
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call fastcc void @sysc_disable_opt_clocks(ptr noundef %3)
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr %struct.sysc, ptr %3, i32 0, i32 4, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, -19
  br i1 %33, label %285, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 11
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sysc_capabilities, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %5, align 4
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 %32
  br i1 %41, label %61, label %45

45:                                               ; preds = %34
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %44) #13, !srcloc !8
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 4
  %49 = load i32, ptr %48, align 8
  %50 = icmp sgt i32 %49, -1
  %51 = icmp eq i32 %49, %32
  %52 = and i1 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = load ptr, ptr %42, align 4
  %55 = getelementptr i8, ptr %54, i32 %32
  %56 = getelementptr i8, ptr %55, i32 4
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %56) #13, !srcloc !8
  %58 = zext i16 %57 to i32
  %59 = shl nuw i32 %58, 16
  %60 = or i32 %59, %47
  br label %63

61:                                               ; preds = %34
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #13, !srcloc !9
  br label %63

63:                                               ; preds = %61, %53, %45
  %64 = phi i32 [ %62, %61 ], [ %60, %53 ], [ %47, %45 ]
  %65 = getelementptr inbounds %struct.sysc_regbits, ptr %38, i32 0, i32 1
  %66 = load i8, ptr %65, align 1
  %67 = icmp sgt i8 %66, -1
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i32, ptr %5, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = zext i8 %66 to i32
  %74 = shl i32 2, %73
  %75 = or i32 %74, %64
  br label %76

76:                                               ; preds = %72, %68, %63
  %77 = phi i32 [ %75, %72 ], [ %64, %68 ], [ %64, %63 ]
  %78 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 12, i32 3
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i8 %79, 0
  br i1 %81, label %149, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.sysc_regbits, ptr %38, i32 0, i32 2
  %84 = load i8, ptr %83, align 1
  %85 = icmp slt i8 %84, 0
  br i1 %85, label %149, label %86

86:                                               ; preds = %82
  %87 = load i32, ptr %5, align 4
  %88 = and i32 %87, 6144
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %86
  %91 = tail call i32 @llvm.ctlz.i32(i32 %80, i1 true) #13, !range !12
  %92 = xor i32 %91, 31
  %93 = icmp ugt i32 %92, 3
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.sysc_enable_module) #14
  br label %285

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.sysc_regbits, ptr %38, i32 0, i32 3
  %97 = load i8, ptr %96, align 1
  %98 = icmp sgt i8 %97, -1
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i32, ptr %4, align 8
  %101 = zext i8 %97 to i32
  %102 = shl nuw i32 1, %101
  %103 = and i32 %100, %102
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i32 0, i32 %102
  %106 = or i32 %105, %77
  br label %107

107:                                              ; preds = %99, %95, %86
  %108 = phi i32 [ %77, %95 ], [ %77, %86 ], [ %106, %99 ]
  %109 = phi i32 [ %92, %95 ], [ 1, %86 ], [ %92, %99 ]
  %110 = zext i8 %84 to i32
  %111 = shl i32 3, %110
  %112 = xor i32 %111, -1
  %113 = and i32 %108, %112
  %114 = shl i32 %109, %110
  %115 = or i32 %114, %113
  %116 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 24
  %117 = load ptr, ptr %116, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %107
  tail call void %117(ptr noundef %3) #13
  %120 = load i32, ptr %5, align 4
  br label %121

121:                                              ; preds = %119, %107
  %122 = phi i32 [ %120, %119 ], [ %87, %107 ]
  %123 = load i32, ptr %31, align 4
  %124 = and i32 %122, 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %141, label %126

126:                                              ; preds = %121
  %127 = trunc i32 %115 to i16
  %128 = load ptr, ptr %42, align 4
  %129 = getelementptr i8, ptr %128, i32 %123
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %129, i16 %127) #13, !srcloc !10
  %130 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 4
  %131 = load i32, ptr %130, align 8
  %132 = icmp sgt i32 %131, -1
  %133 = icmp eq i32 %131, %123
  %134 = and i1 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %126
  %136 = lshr i32 %115, 16
  %137 = trunc i32 %136 to i16
  %138 = load ptr, ptr %42, align 4
  %139 = getelementptr i8, ptr %138, i32 %123
  %140 = getelementptr i8, ptr %139, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %140, i16 %137) #13, !srcloc !10
  br label %144

141:                                              ; preds = %121
  %142 = load ptr, ptr %42, align 4
  %143 = getelementptr i8, ptr %142, i32 %123
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %115) #13, !srcloc !11
  br label %144

144:                                              ; preds = %141, %135, %126
  %145 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 25
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  tail call void %146(ptr noundef %3) #13
  br label %149

149:                                              ; preds = %148, %144, %82, %76
  %150 = phi i32 [ %77, %82 ], [ %77, %76 ], [ %115, %144 ], [ %115, %148 ]
  %151 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 12, i32 2
  %152 = load i8, ptr %151, align 8
  %153 = zext i8 %152 to i32
  %154 = icmp eq i8 %152, 0
  br i1 %154, label %207, label %155

155:                                              ; preds = %149
  %156 = load i8, ptr %38, align 1
  %157 = icmp slt i8 %156, 0
  br i1 %157, label %207, label %158

158:                                              ; preds = %155
  %159 = tail call i32 @llvm.ctlz.i32(i32 %153, i1 true) #13, !range !12
  %160 = xor i32 %159, 31
  %161 = icmp ugt i32 %160, 3
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.sysc_enable_module) #14
  br label %252

163:                                              ; preds = %158
  %164 = load i32, ptr %5, align 4
  %165 = and i32 %164, 8192
  %166 = icmp eq i32 %165, 0
  %167 = select i1 %166, i32 %160, i32 1
  %168 = zext i8 %156 to i32
  %169 = shl i32 3, %168
  %170 = xor i32 %169, -1
  %171 = and i32 %150, %170
  %172 = shl i32 %167, %168
  %173 = or i32 %172, %171
  %174 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 24
  %175 = load ptr, ptr %174, align 8
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %163
  tail call void %175(ptr noundef %3) #13
  %178 = load i32, ptr %5, align 4
  br label %179

179:                                              ; preds = %177, %163
  %180 = phi i32 [ %178, %177 ], [ %164, %163 ]
  %181 = load i32, ptr %31, align 4
  %182 = and i32 %180, 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %199, label %184

184:                                              ; preds = %179
  %185 = trunc i32 %173 to i16
  %186 = load ptr, ptr %42, align 4
  %187 = getelementptr i8, ptr %186, i32 %181
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %187, i16 %185) #13, !srcloc !10
  %188 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 4
  %189 = load i32, ptr %188, align 8
  %190 = icmp sgt i32 %189, -1
  %191 = icmp eq i32 %189, %181
  %192 = and i1 %190, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %184
  %194 = lshr i32 %173, 16
  %195 = trunc i32 %194 to i16
  %196 = load ptr, ptr %42, align 4
  %197 = getelementptr i8, ptr %196, i32 %181
  %198 = getelementptr i8, ptr %197, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %198, i16 %195) #13, !srcloc !10
  br label %202

199:                                              ; preds = %179
  %200 = load ptr, ptr %42, align 4
  %201 = getelementptr i8, ptr %200, i32 %181
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %173) #13, !srcloc !11
  br label %202

202:                                              ; preds = %199, %193, %184
  %203 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 25
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %207, label %206

206:                                              ; preds = %202
  tail call void %204(ptr noundef %3) #13
  br label %207

207:                                              ; preds = %206, %202, %155, %149
  %208 = phi i32 [ %150, %155 ], [ %150, %149 ], [ %173, %202 ], [ %173, %206 ]
  %209 = getelementptr inbounds %struct.sysc_regbits, ptr %38, i32 0, i32 5
  %210 = load i8, ptr %209, align 1
  %211 = icmp sgt i8 %210, -1
  br i1 %211, label %212, label %252

212:                                              ; preds = %207
  %213 = load i32, ptr %4, align 8
  %214 = zext i8 %210 to i32
  %215 = shl nuw i32 1, %214
  %216 = and i32 %213, %215
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %252, label %218

218:                                              ; preds = %212
  %219 = or i32 %215, %208
  %220 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 24
  %221 = load ptr, ptr %220, align 8
  %222 = icmp eq ptr %221, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %218
  tail call void %221(ptr noundef %3) #13
  br label %224

224:                                              ; preds = %223, %218
  %225 = load i32, ptr %31, align 4
  %226 = load i32, ptr %5, align 4
  %227 = and i32 %226, 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %244, label %229

229:                                              ; preds = %224
  %230 = trunc i32 %219 to i16
  %231 = load ptr, ptr %42, align 4
  %232 = getelementptr i8, ptr %231, i32 %225
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %232, i16 %230) #13, !srcloc !10
  %233 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 4
  %234 = load i32, ptr %233, align 8
  %235 = icmp sgt i32 %234, -1
  %236 = icmp eq i32 %234, %225
  %237 = and i1 %235, %236
  br i1 %237, label %238, label %247

238:                                              ; preds = %229
  %239 = lshr i32 %219, 16
  %240 = trunc i32 %239 to i16
  %241 = load ptr, ptr %42, align 4
  %242 = getelementptr i8, ptr %241, i32 %225
  %243 = getelementptr i8, ptr %242, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %243, i16 %240) #13, !srcloc !10
  br label %247

244:                                              ; preds = %224
  %245 = load ptr, ptr %42, align 4
  %246 = getelementptr i8, ptr %245, i32 %225
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %219) #13, !srcloc !11
  br label %247

247:                                              ; preds = %244, %238, %229
  %248 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 25
  %249 = load ptr, ptr %248, align 4
  %250 = icmp eq ptr %249, null
  br i1 %250, label %252, label %251

251:                                              ; preds = %247
  tail call void %249(ptr noundef %3) #13
  br label %252

252:                                              ; preds = %251, %247, %212, %207, %162
  %253 = phi i32 [ -22, %162 ], [ 0, %212 ], [ 0, %207 ], [ 0, %247 ], [ 0, %251 ]
  %254 = load i32, ptr %31, align 4
  %255 = load i32, ptr %5, align 4
  %256 = and i32 %255, 4
  %257 = icmp eq i32 %256, 0
  %258 = load ptr, ptr %42, align 4
  %259 = getelementptr i8, ptr %258, i32 %254
  br i1 %257, label %276, label %260

260:                                              ; preds = %252
  %261 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %259) #13, !srcloc !8
  %262 = zext i16 %261 to i32
  %263 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 4
  %264 = load i32, ptr %263, align 8
  %265 = icmp sgt i32 %264, -1
  %266 = icmp eq i32 %264, %254
  %267 = and i1 %265, %266
  br i1 %267, label %268, label %278

268:                                              ; preds = %260
  %269 = load ptr, ptr %42, align 4
  %270 = getelementptr i8, ptr %269, i32 %254
  %271 = getelementptr i8, ptr %270, i32 4
  %272 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %271) #13, !srcloc !8
  %273 = zext i16 %272 to i32
  %274 = shl nuw i32 %273, 16
  %275 = or i32 %274, %262
  br label %278

276:                                              ; preds = %252
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %259) #13, !srcloc !9
  br label %278

278:                                              ; preds = %276, %268, %260
  %279 = phi i32 [ %277, %276 ], [ %275, %268 ], [ %262, %260 ]
  %280 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 16
  store i32 %279, ptr %280, align 8
  %281 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 22
  %282 = load ptr, ptr %281, align 8
  %283 = icmp eq ptr %282, null
  br i1 %283, label %285, label %284

284:                                              ; preds = %278
  tail call void %282(ptr noundef %3) #13
  br label %285

285:                                              ; preds = %284, %278, %94, %30, %14
  %286 = phi i32 [ %10, %14 ], [ -22, %94 ], [ 0, %30 ], [ %253, %284 ], [ %253, %278 ]
  ret i32 %286
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysc_wait_softreset(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sysc_capabilities, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sysc_regbits, ptr %5, i32 0, i32 4
  %7 = load i8, ptr %6, align 1
  %8 = icmp slt i8 %7, 0
  br i1 %8, label %200, label %9

9:                                                ; preds = %1
  %10 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = icmp sgt i32 %11, -1
  %13 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %14 = load i32, ptr %13, align 4
  br i1 %12, label %15, label %111

15:                                               ; preds = %9
  %16 = and i32 %14, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 1
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %20, %18 ], [ 0, %15 ]
  %23 = load i32, ptr @timekeeping_suspended, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !13

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 1
  br label %101

27:                                               ; preds = %21
  %28 = tail call i64 @ktime_get() #13
  %29 = add i64 %28, 10000000
  %30 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %31 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %32 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 1
  br label %33

33:                                               ; preds = %93, %27
  %34 = load i32, ptr %10, align 8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %13, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  %40 = load ptr, ptr %30, align 4
  %41 = getelementptr i8, ptr %40, i32 %34
  br i1 %39, label %57, label %42

42:                                               ; preds = %36
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %41) #13, !srcloc !8
  %44 = zext i16 %43 to i32
  %45 = load i32, ptr %31, align 8
  %46 = icmp sgt i32 %45, -1
  %47 = icmp eq i32 %45, %34
  %48 = and i1 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load ptr, ptr %30, align 4
  %51 = getelementptr i8, ptr %50, i32 4
  %52 = getelementptr i8, ptr %51, i32 %34
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %52) #13, !srcloc !8
  %54 = zext i16 %53 to i32
  %55 = shl nuw i32 %54, 16
  %56 = or i32 %55, %44
  br label %59

57:                                               ; preds = %36
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #13, !srcloc !9
  br label %59

59:                                               ; preds = %57, %49, %42, %33
  %60 = phi i32 [ 0, %33 ], [ %58, %57 ], [ %56, %49 ], [ %44, %42 ]
  %61 = load i32, ptr %32, align 4
  %62 = and i32 %61, %60
  %63 = icmp eq i32 %62, %22
  br i1 %63, label %95, label %64

64:                                               ; preds = %59
  %65 = tail call i64 @ktime_get() #13
  %66 = icmp sgt i64 %65, %29
  br i1 %66, label %67, label %93

67:                                               ; preds = %64
  %68 = load i32, ptr %10, align 8
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %95, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %13, align 4
  %72 = and i32 %71, 4
  %73 = icmp eq i32 %72, 0
  %74 = load ptr, ptr %30, align 4
  %75 = getelementptr i8, ptr %74, i32 %68
  br i1 %73, label %91, label %76

76:                                               ; preds = %70
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %75) #13, !srcloc !8
  %78 = zext i16 %77 to i32
  %79 = load i32, ptr %31, align 8
  %80 = icmp sgt i32 %79, -1
  %81 = icmp eq i32 %79, %68
  %82 = and i1 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %76
  %84 = load ptr, ptr %30, align 4
  %85 = getelementptr i8, ptr %84, i32 %68
  %86 = getelementptr i8, ptr %85, i32 4
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %86) #13, !srcloc !8
  %88 = zext i16 %87 to i32
  %89 = shl nuw i32 %88, 16
  %90 = or i32 %89, %78
  br label %95

91:                                               ; preds = %70
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #13, !srcloc !9
  br label %95

93:                                               ; preds = %64
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 21474800) #13
  br label %33

95:                                               ; preds = %91, %83, %76, %67, %59
  %96 = phi i32 [ 0, %67 ], [ %92, %91 ], [ %90, %83 ], [ %78, %76 ], [ %60, %59 ]
  %97 = load i32, ptr %32, align 4
  %98 = and i32 %97, %96
  %99 = icmp eq i32 %98, %22
  %100 = select i1 %99, i32 0, i32 -110
  br label %200

101:                                              ; preds = %107, %25
  %102 = phi i32 [ 9999, %25 ], [ %109, %107 ]
  %103 = tail call fastcc i32 @sysc_read_sysstatus(ptr noundef %0) #13
  %104 = load i32, ptr %26, align 4
  %105 = and i32 %104, %103
  %106 = icmp eq i32 %105, %22
  br i1 %106, label %200, label %107

107:                                              ; preds = %101
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 429496) #13
  %109 = add nsw i32 %102, -1
  %110 = icmp eq i32 %102, 0
  br i1 %110, label %200, label %101

111:                                              ; preds = %9
  %112 = and i32 %14, 256
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %200, label %114

114:                                              ; preds = %111
  %115 = zext i8 %7 to i32
  %116 = shl nuw i32 1, %115
  %117 = load i32, ptr @timekeeping_suspended, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %191, !prof !13

119:                                              ; preds = %114
  %120 = tail call i64 @ktime_get() #13
  %121 = add i64 %120, 10000000
  %122 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 1
  %123 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %124 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  br label %125

125:                                              ; preds = %184, %119
  %126 = load i32, ptr %122, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %151, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr %13, align 4
  %130 = and i32 %129, 4
  %131 = icmp eq i32 %130, 0
  %132 = load ptr, ptr %123, align 4
  %133 = getelementptr i8, ptr %132, i32 %126
  br i1 %131, label %149, label %134

134:                                              ; preds = %128
  %135 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %133) #13, !srcloc !8
  %136 = zext i16 %135 to i32
  %137 = load i32, ptr %124, align 8
  %138 = icmp sgt i32 %137, -1
  %139 = icmp eq i32 %137, %126
  %140 = and i1 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %134
  %142 = load ptr, ptr %123, align 4
  %143 = getelementptr i8, ptr %142, i32 4
  %144 = getelementptr i8, ptr %143, i32 %126
  %145 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %144) #13, !srcloc !8
  %146 = zext i16 %145 to i32
  %147 = shl nuw i32 %146, 16
  %148 = or i32 %147, %136
  br label %151

149:                                              ; preds = %128
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #13, !srcloc !9
  br label %151

151:                                              ; preds = %149, %141, %134, %125
  %152 = phi i32 [ 0, %125 ], [ %150, %149 ], [ %148, %141 ], [ %136, %134 ]
  %153 = and i32 %152, %116
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %186, label %155

155:                                              ; preds = %151
  %156 = tail call i64 @ktime_get() #13
  %157 = icmp sgt i64 %156, %121
  br i1 %157, label %158, label %184

158:                                              ; preds = %155
  %159 = load i32, ptr %122, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %186, label %161

161:                                              ; preds = %158
  %162 = load i32, ptr %13, align 4
  %163 = and i32 %162, 4
  %164 = icmp eq i32 %163, 0
  %165 = load ptr, ptr %123, align 4
  %166 = getelementptr i8, ptr %165, i32 %159
  br i1 %164, label %182, label %167

167:                                              ; preds = %161
  %168 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %166) #13, !srcloc !8
  %169 = zext i16 %168 to i32
  %170 = load i32, ptr %124, align 8
  %171 = icmp sgt i32 %170, -1
  %172 = icmp eq i32 %170, %159
  %173 = and i1 %171, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %167
  %175 = load ptr, ptr %123, align 4
  %176 = getelementptr i8, ptr %175, i32 %159
  %177 = getelementptr i8, ptr %176, i32 4
  %178 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %177) #13, !srcloc !8
  %179 = zext i16 %178 to i32
  %180 = shl nuw i32 %179, 16
  %181 = or i32 %180, %169
  br label %186

182:                                              ; preds = %161
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #13, !srcloc !9
  br label %186

184:                                              ; preds = %155
  %185 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %185(i32 noundef 21474800) #13
  br label %125

186:                                              ; preds = %182, %174, %167, %158, %151
  %187 = phi i32 [ 0, %158 ], [ %183, %182 ], [ %181, %174 ], [ %169, %167 ], [ %152, %151 ]
  %188 = and i32 %187, %116
  %189 = icmp eq i32 %188, 0
  %190 = select i1 %189, i32 0, i32 -110
  br label %200

191:                                              ; preds = %196, %114
  %192 = phi i32 [ %198, %196 ], [ 9999, %114 ]
  %193 = tail call fastcc i32 @sysc_read_sysconfig(ptr noundef %0) #13
  %194 = and i32 %193, %116
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %191
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %197(i32 noundef 429496) #13
  %198 = add nsw i32 %192, -1
  %199 = icmp eq i32 %192, 0
  br i1 %199, label %200, label %191

200:                                              ; preds = %196, %191, %186, %111, %107, %101, %95, %1
  %201 = phi i32 [ 0, %1 ], [ 0, %111 ], [ %100, %95 ], [ %190, %186 ], [ 0, %101 ], [ -110, %107 ], [ 0, %191 ], [ -110, %196 ]
  ret i32 %201
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysc_read_sysstatus(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %3
  br i1 %9, label %29, label %13

13:                                               ; preds = %5
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #13, !srcloc !8
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = icmp sgt i32 %17, -1
  %19 = icmp eq i32 %17, %3
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load ptr, ptr %10, align 4
  %23 = getelementptr i8, ptr %22, i32 %3
  %24 = getelementptr i8, ptr %23, i32 4
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %24) #13, !srcloc !8
  %26 = zext i16 %25 to i32
  %27 = shl nuw i32 %26, 16
  %28 = or i32 %27, %15
  br label %31

29:                                               ; preds = %5
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #13, !srcloc !9
  br label %31

31:                                               ; preds = %29, %21, %13, %1
  %32 = phi i32 [ 0, %1 ], [ %30, %29 ], [ %28, %21 ], [ %15, %13 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysc_read_sysconfig(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %3
  br i1 %9, label %29, label %13

13:                                               ; preds = %5
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #13, !srcloc !8
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = icmp sgt i32 %17, -1
  %19 = icmp eq i32 %17, %3
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load ptr, ptr %10, align 4
  %23 = getelementptr i8, ptr %22, i32 %3
  %24 = getelementptr i8, ptr %23, i32 4
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %24) #13, !srcloc !8
  %26 = zext i16 %25 to i32
  %27 = shl nuw i32 %26, 16
  %28 = or i32 %27, %15
  br label %31

29:                                               ; preds = %5
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #13, !srcloc !9
  br label %31

31:                                               ; preds = %29, %21, %13, %1
  %32 = phi i32 [ 0, %1 ], [ %30, %29 ], [ %28, %21 ], [ %15, %13 ]
  ret i32 %32
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 176, i32 noundef 3520) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %566, label %16

16:                                               ; preds = %1
  %17 = getelementptr %struct.sysc, ptr %14, i32 0, i32 4
  store i32 -19, ptr %17, align 8
  %18 = getelementptr %struct.sysc, ptr %14, i32 0, i32 4, i32 1
  store i32 -19, ptr %18, align 4
  %19 = getelementptr %struct.sysc, ptr %14, i32 0, i32 4, i32 2
  store i32 -19, ptr %19, align 8
  store ptr %11, ptr %14, align 8
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %20, align 8
  %21 = load ptr, ptr @sysc_soc, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %172

23:                                               ; preds = %16
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 56) #15
  store ptr %25, ptr @sysc_soc, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %566, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sysc_soc_info, ptr %25, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %28, ptr noundef nonnull @.str.12, ptr noundef nonnull @sysc_init_static_data.__key) #13
  %29 = load ptr, ptr @sysc_soc, align 4
  %30 = getelementptr inbounds %struct.sysc_soc_info, ptr %29, i32 0, i32 3
  store volatile ptr %30, ptr %30, align 4
  %31 = getelementptr inbounds %struct.sysc_soc_info, ptr %29, i32 0, i32 3, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.sysc_soc_info, ptr %29, i32 0, i32 4
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.sysc_soc_info, ptr %29, i32 0, i32 4, i32 1
  store ptr %32, ptr %33, align 4
  %34 = load i8, ptr %29, align 4
  %35 = or i8 %34, 1
  store i8 %35, ptr %29, align 4
  %36 = load ptr, ptr %14, align 8
  %37 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %38, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = tail call zeroext i1 %42() #13
  %46 = load ptr, ptr @sysc_soc, align 4
  %47 = zext i1 %45 to i8
  %48 = load i8, ptr %46, align 4
  %49 = and i8 %48, -2
  %50 = or i8 %49, %47
  store i8 %50, ptr %46, align 4
  br label %51

51:                                               ; preds = %44, %40, %27
  %52 = tail call ptr @soc_device_match(ptr noundef nonnull @sysc_soc_match) #13
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.soc_device_attribute, ptr %52, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = ptrtoint ptr %56 to i32
  %60 = load ptr, ptr @sysc_soc, align 4
  %61 = getelementptr inbounds %struct.sysc_soc_info, ptr %60, i32 0, i32 1
  store i32 %59, ptr %61, align 4
  br label %62

62:                                               ; preds = %58, %54, %51
  %63 = load ptr, ptr @sysc_soc, align 4
  %64 = getelementptr inbounds %struct.sysc_soc_info, ptr %63, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, -5
  %67 = icmp ult i32 %66, 7
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.13, ptr noundef null) #13
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %69, ptr noundef nonnull @.str.14) #13
  %73 = icmp ne i32 %72, 0
  %74 = load i1, ptr @sysc_init_static_data.__already_done, align 1
  %75 = xor i1 %74, true
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %78, !prof !14

77:                                               ; preds = %71
  store i1 true, ptr @sysc_init_static_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 3140, i32 noundef 9, ptr noundef nonnull @.str.16) #13
  br label %78

78:                                               ; preds = %77, %71, %68, %62
  %79 = load ptr, ptr @sysc_soc, align 4
  %80 = load i8, ptr %79, align 4
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.sysc_soc_info, ptr %79, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  switch i32 %85, label %115 [
    i32 3, label %86
    i32 4, label %86
    i32 9, label %99
  ]

86:                                               ; preds = %83, %83
  %87 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %88 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %87, i32 noundef 3520, i32 noundef 12) #15
  %89 = icmp eq ptr %88, null
  br i1 %89, label %115, label %90

90:                                               ; preds = %86
  store i32 1211121664, ptr %88, align 8
  %91 = load ptr, ptr @sysc_soc, align 4
  %92 = getelementptr inbounds %struct.sysc_soc_info, ptr %91, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %92) #13
  %93 = getelementptr inbounds %struct.sysc_address, ptr %88, i32 0, i32 1
  %94 = load ptr, ptr @sysc_soc, align 4
  %95 = getelementptr inbounds %struct.sysc_soc_info, ptr %94, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  store ptr %93, ptr %97, align 4
  store ptr %96, ptr %93, align 4
  %98 = getelementptr inbounds %struct.sysc_address, ptr %88, i32 0, i32 1, i32 1
  store ptr %95, ptr %98, align 8
  store volatile ptr %93, ptr %95, align 4
  br label %112

99:                                               ; preds = %83
  %100 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %101 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %100, i32 noundef 3520, i32 noundef 12) #15
  %102 = icmp eq ptr %101, null
  br i1 %102, label %115, label %103

103:                                              ; preds = %99
  store i32 1211170816, ptr %101, align 8
  %104 = load ptr, ptr @sysc_soc, align 4
  %105 = getelementptr inbounds %struct.sysc_soc_info, ptr %104, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %105) #13
  %106 = getelementptr inbounds %struct.sysc_address, ptr %101, i32 0, i32 1
  %107 = load ptr, ptr @sysc_soc, align 4
  %108 = getelementptr inbounds %struct.sysc_soc_info, ptr %107, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  store ptr %106, ptr %110, align 4
  store ptr %109, ptr %106, align 4
  %111 = getelementptr inbounds %struct.sysc_address, ptr %101, i32 0, i32 1, i32 1
  store ptr %108, ptr %111, align 8
  store volatile ptr %106, ptr %108, align 4
  br label %112

112:                                              ; preds = %103, %90
  %113 = phi ptr [ %107, %103 ], [ %94, %90 ]
  %114 = getelementptr inbounds %struct.sysc_soc_info, ptr %113, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %114) #13
  br label %115

115:                                              ; preds = %112, %99, %86, %83, %78
  %116 = tail call ptr @soc_device_match(ptr noundef nonnull @sysc_soc_feat_match) #13
  %117 = icmp eq ptr %116, null
  br i1 %117, label %172, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.soc_device_attribute, ptr %116, i32 0, i32 5
  %120 = load ptr, ptr %119, align 4
  %121 = ptrtoint ptr %120 to i32
  %122 = and i32 %121, 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %118
  %125 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %126 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %125, i32 noundef 3520, i32 noundef 12) #15
  %127 = icmp eq ptr %126, null
  br i1 %127, label %138, label %128

128:                                              ; preds = %124
  store i32 1208734720, ptr %126, align 8
  %129 = load ptr, ptr @sysc_soc, align 4
  %130 = getelementptr inbounds %struct.sysc_soc_info, ptr %129, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %130) #13
  %131 = getelementptr inbounds %struct.sysc_address, ptr %126, i32 0, i32 1
  %132 = load ptr, ptr @sysc_soc, align 4
  %133 = getelementptr inbounds %struct.sysc_soc_info, ptr %132, i32 0, i32 3
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  store ptr %131, ptr %135, align 4
  store ptr %134, ptr %131, align 4
  %136 = getelementptr inbounds %struct.sysc_address, ptr %126, i32 0, i32 1, i32 1
  store ptr %133, ptr %136, align 8
  store volatile ptr %131, ptr %133, align 4
  %137 = getelementptr inbounds %struct.sysc_soc_info, ptr %132, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %137) #13
  br label %138

138:                                              ; preds = %128, %124, %118
  %139 = and i32 %121, 2
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %143 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %142, i32 noundef 3520, i32 noundef 12) #15
  %144 = icmp eq ptr %143, null
  br i1 %144, label %155, label %145

145:                                              ; preds = %141
  store i32 1560281088, ptr %143, align 8
  %146 = load ptr, ptr @sysc_soc, align 4
  %147 = getelementptr inbounds %struct.sysc_soc_info, ptr %146, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %147) #13
  %148 = getelementptr inbounds %struct.sysc_address, ptr %143, i32 0, i32 1
  %149 = load ptr, ptr @sysc_soc, align 4
  %150 = getelementptr inbounds %struct.sysc_soc_info, ptr %149, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.list_head, ptr %151, i32 0, i32 1
  store ptr %148, ptr %152, align 4
  store ptr %151, ptr %148, align 4
  %153 = getelementptr inbounds %struct.sysc_address, ptr %143, i32 0, i32 1, i32 1
  store ptr %150, ptr %153, align 8
  store volatile ptr %148, ptr %150, align 4
  %154 = getelementptr inbounds %struct.sysc_soc_info, ptr %149, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %154) #13
  br label %155

155:                                              ; preds = %145, %141, %138
  %156 = and i32 %121, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %172, label %158

158:                                              ; preds = %155
  %159 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %160 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %159, i32 noundef 3520, i32 noundef 12) #15
  %161 = icmp eq ptr %160, null
  br i1 %161, label %172, label %162

162:                                              ; preds = %158
  store i32 1342177280, ptr %160, align 8
  %163 = load ptr, ptr @sysc_soc, align 4
  %164 = getelementptr inbounds %struct.sysc_soc_info, ptr %163, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %164) #13
  %165 = getelementptr inbounds %struct.sysc_address, ptr %160, i32 0, i32 1
  %166 = load ptr, ptr @sysc_soc, align 4
  %167 = getelementptr inbounds %struct.sysc_soc_info, ptr %166, i32 0, i32 3
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.list_head, ptr %168, i32 0, i32 1
  store ptr %165, ptr %169, align 4
  store ptr %168, ptr %165, align 4
  %170 = getelementptr inbounds %struct.sysc_address, ptr %160, i32 0, i32 1, i32 1
  store ptr %167, ptr %170, align 8
  store volatile ptr %165, ptr %167, align 4
  %171 = getelementptr inbounds %struct.sysc_soc_info, ptr %166, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %171) #13
  br label %172

172:                                              ; preds = %162, %158, %155, %115, %16
  %173 = load ptr, ptr %14, align 8
  %174 = tail call ptr @of_device_get_match_data(ptr noundef %173) #13
  %175 = icmp eq ptr %174, null
  br i1 %175, label %566, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 11
  store ptr %174, ptr %177, align 4
  %178 = getelementptr inbounds %struct.sysc_capabilities, ptr %174, i32 0, i32 3
  %179 = load i32, ptr %178, align 4
  %180 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 12, i32 5
  %181 = load i32, ptr %180, align 4
  %182 = or i32 %181, %179
  store i32 %182, ptr %180, align 4
  %183 = load ptr, ptr %14, align 8
  %184 = getelementptr inbounds %struct.device, ptr %183, i32 0, i32 25
  %185 = load ptr, ptr %184, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store i32 0, ptr %10, align 4, !annotation !15
  %186 = tail call ptr @of_get_property(ptr noundef %185, ptr noundef nonnull @.str.37, ptr noundef null) #13
  %187 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 10
  store ptr %186, ptr %187, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4, !annotation !15
  %188 = call ptr @of_get_property(ptr noundef %185, ptr noundef nonnull @.str.41, ptr noundef nonnull %9) #13
  %189 = icmp eq ptr %188, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %176
  %191 = load i32, ptr %180, align 4
  %192 = or i32 %191, 64
  store i32 %192, ptr %180, align 4
  br label %193

193:                                              ; preds = %190, %176
  %194 = call ptr @of_get_property(ptr noundef %185, ptr noundef nonnull @.str.42, ptr noundef nonnull %9) #13
  %195 = icmp eq ptr %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load i32, ptr %180, align 4
  %198 = or i32 %197, 32
  store i32 %198, ptr %180, align 4
  br label %199

199:                                              ; preds = %196, %193
  %200 = call ptr @of_get_property(ptr noundef %185, ptr noundef nonnull @.str.43, ptr noundef nonnull %9) #13
  %201 = icmp eq ptr %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = load i32, ptr %180, align 4
  %204 = or i32 %203, 128
  store i32 %204, ptr %180, align 4
  br label %205

205:                                              ; preds = %202, %199
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  %206 = call i32 @of_property_read_variable_u32_array(ptr noundef %185, ptr noundef nonnull @.str.38, ptr noundef nonnull %10, i32 noundef 1, i32 noundef 0) #13
  %207 = icmp sgt i32 %206, -1
  br i1 %207, label %208, label %218

208:                                              ; preds = %205
  %209 = load i32, ptr %10, align 4
  %210 = icmp ugt i32 %209, 255
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %212, ptr noundef nonnull @.str.39, i32 noundef %209) #14
  %213 = load i32, ptr %10, align 4
  br label %214

214:                                              ; preds = %211, %208
  %215 = phi i32 [ %213, %211 ], [ %209, %208 ]
  %216 = trunc i32 %215 to i8
  %217 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 12, i32 4
  store i8 %216, ptr %217, align 2
  br label %218

218:                                              ; preds = %214, %205
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  %219 = load ptr, ptr %14, align 8
  %220 = getelementptr inbounds %struct.device, ptr %219, i32 0, i32 25
  %221 = load ptr, ptr %220, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !15
  %222 = call ptr @of_get_property(ptr noundef %221, ptr noundef nonnull @.str.45, ptr noundef nonnull %8) #13
  %223 = icmp eq ptr %222, null
  br i1 %223, label %240, label %224

224:                                              ; preds = %218
  %225 = load i32, ptr %8, align 4
  %226 = lshr i32 %225, 2
  store i32 %226, ptr %8, align 4
  %227 = icmp ult i32 %225, 12
  br i1 %227, label %240, label %228

228:                                              ; preds = %224
  %229 = call i32 @of_property_read_variable_u32_array(ptr noundef %221, ptr noundef nonnull @.str.48, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #13
  %230 = icmp sgt i32 %229, -1
  br i1 %230, label %231, label %244

231:                                              ; preds = %228
  %232 = call i32 @of_property_read_variable_u32_array(ptr noundef %221, ptr noundef nonnull @.str.49, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #13
  %233 = icmp sgt i32 %232, -1
  br i1 %233, label %234, label %244

234:                                              ; preds = %231
  %235 = load i32, ptr %6, align 4
  %236 = icmp ne i32 %235, 1
  %237 = load i32, ptr %7, align 4
  %238 = icmp ne i32 %237, 1
  %239 = select i1 %236, i1 true, i1 %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %234, %224, %218
  %241 = phi ptr [ @.str.46, %218 ], [ @.str.47, %224 ], [ @.str.50, %234 ]
  %242 = phi i32 [ -2, %218 ], [ -22, %224 ], [ -22, %234 ]
  %243 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %243, ptr noundef nonnull %241, ptr noundef %221) #14
  br label %244

244:                                              ; preds = %240, %231, %228
  %245 = phi i32 [ -2, %231 ], [ -2, %228 ], [ %242, %240 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %566

246:                                              ; preds = %234
  %247 = getelementptr i32, ptr %222, i32 1
  %248 = getelementptr i32, ptr %222, i32 2
  %249 = call i64 @of_translate_address(ptr noundef %221, ptr noundef %247) #13
  %250 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 1
  store i64 %249, ptr %250, align 8
  %251 = load i32, ptr %248, align 4
  %252 = call i32 @llvm.bswap.i32(i32 %251) #13
  %253 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 2
  store i32 %252, ptr %253, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %254 = load volatile i32, ptr @sysc_defer, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %282, label %256

256:                                              ; preds = %246
  %257 = icmp ult i64 %249, 1153433600
  br i1 %257, label %268, label %258

258:                                              ; preds = %256
  %259 = icmp ugt i64 %249, 1156579328
  br i1 %259, label %261, label %260

260:                                              ; preds = %263, %258
  store volatile i32 0, ptr @sysc_defer, align 4
  br label %282

261:                                              ; preds = %258
  %262 = icmp ult i64 %249, 1241513984
  br i1 %262, label %268, label %263

263:                                              ; preds = %261
  %264 = icmp ugt i64 %249, 1244856320
  %265 = add i64 %249, -1256390657
  %266 = icmp ult i64 %265, -196609
  %267 = and i1 %264, %266
  br i1 %267, label %268, label %260

268:                                              ; preds = %263, %261, %256
  %269 = load volatile i32, ptr @sysc_defer, align 4
  br label %270

270:                                              ; preds = %279, %268
  %271 = phi i32 [ %269, %268 ], [ %280, %279 ]
  %272 = add i32 %271, -1
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %566, label %274, !prof !14

274:                                              ; preds = %270
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @sysc_defer) #13, !srcloc !17
  br label %275

275:                                              ; preds = %275, %274
  %276 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sysc_defer, ptr nonnull @sysc_defer, i32 %271, i32 %272, ptr nonnull elementtype(i32) @sysc_defer) #13, !srcloc !18
  %277 = extractvalue { i32, i32 } %276, 0
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %275

279:                                              ; preds = %275
  %280 = extractvalue { i32, i32 } %276, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %281 = icmp eq i32 %280, %271
  br i1 %281, label %566, label %270, !prof !13

282:                                              ; preds = %260, %246
  %283 = load ptr, ptr %14, align 8
  %284 = getelementptr inbounds %struct.device, ptr %283, i32 0, i32 25
  %285 = load ptr, ptr %284, align 8
  %286 = call ptr @of_get_next_child(ptr noundef %285, ptr noundef null) #13
  %287 = icmp eq ptr %286, null
  br i1 %287, label %345, label %288

288:                                              ; preds = %339, %282
  %289 = phi ptr [ %343, %339 ], [ %286, %282 ]
  %290 = call ptr @of_get_property(ptr noundef nonnull %289, ptr noundef nonnull @.str.37, ptr noundef null) #13
  %291 = icmp eq ptr %290, null
  br i1 %291, label %297, label %292

292:                                              ; preds = %288
  %293 = call i32 @of_device_is_compatible(ptr noundef nonnull %289, ptr noundef nonnull @.str.51) #13
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %292
  %296 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %296, ptr noundef nonnull @.str.52) #14
  br label %297

297:                                              ; preds = %295, %292, %288
  %298 = load ptr, ptr @stdout_path, align 4
  %299 = icmp eq ptr %298, null
  br i1 %299, label %300, label %312

300:                                              ; preds = %297
  %301 = call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.53, ptr noundef null) #13
  %302 = icmp eq ptr %301, null
  br i1 %302, label %309, label %303

303:                                              ; preds = %300
  %304 = call ptr @of_get_property(ptr noundef nonnull %301, ptr noundef nonnull @.str.54, ptr noundef null) #13
  %305 = icmp eq ptr %304, null
  br i1 %305, label %309, label %306

306:                                              ; preds = %303
  %307 = call ptr @of_find_node_opts_by_path(ptr noundef nonnull %304, ptr noundef null) #13
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %310

309:                                              ; preds = %306, %303, %300
  br label %310

310:                                              ; preds = %309, %306
  %311 = phi ptr [ inttoptr (i32 -19 to ptr), %309 ], [ %307, %306 ]
  store ptr %311, ptr @stdout_path, align 4
  br label %312

312:                                              ; preds = %310, %297
  %313 = phi ptr [ %298, %297 ], [ %311, %310 ]
  %314 = icmp eq ptr %313, %289
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = load i32, ptr %180, align 4
  %317 = or i32 %316, 96
  store i32 %317, ptr %180, align 4
  br label %318

318:                                              ; preds = %315, %312
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !15
  %319 = call ptr @of_get_property(ptr noundef nonnull %289, ptr noundef nonnull @.str.41, ptr noundef nonnull %5) #13
  %320 = icmp eq ptr %319, null
  br i1 %320, label %325, label %321

321:                                              ; preds = %318
  %322 = load i32, ptr %180, align 4
  %323 = or i32 %322, 64
  store i32 %323, ptr %180, align 4
  %324 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %324, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #14
  br label %325

325:                                              ; preds = %321, %318
  %326 = call ptr @of_get_property(ptr noundef nonnull %289, ptr noundef nonnull @.str.42, ptr noundef nonnull %5) #13
  %327 = icmp eq ptr %326, null
  br i1 %327, label %332, label %328

328:                                              ; preds = %325
  %329 = load i32, ptr %180, align 4
  %330 = or i32 %329, 32
  store i32 %330, ptr %180, align 4
  %331 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %331, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.42) #14
  br label %332

332:                                              ; preds = %328, %325
  %333 = call ptr @of_get_property(ptr noundef nonnull %289, ptr noundef nonnull @.str.43, ptr noundef nonnull %5) #13
  %334 = icmp eq ptr %333, null
  br i1 %334, label %339, label %335

335:                                              ; preds = %332
  %336 = load i32, ptr %180, align 4
  %337 = or i32 %336, 128
  store i32 %337, ptr %180, align 4
  %338 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %338, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.43) #14
  br label %339

339:                                              ; preds = %335, %332
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  %340 = load ptr, ptr %14, align 8
  %341 = getelementptr inbounds %struct.device, ptr %340, i32 0, i32 25
  %342 = load ptr, ptr %341, align 8
  %343 = call ptr @of_get_next_child(ptr noundef %342, ptr noundef nonnull %289) #13
  %344 = icmp eq ptr %343, null
  br i1 %344, label %345, label %288

345:                                              ; preds = %339, %282
  %346 = call ptr @of_get_property(ptr noundef %221, ptr noundef nonnull @.str.44, ptr noundef null) #13
  %347 = icmp eq ptr %346, null
  br i1 %347, label %420, label %348

348:                                              ; preds = %345
  %349 = load ptr, ptr %14, align 8
  %350 = getelementptr i8, ptr %349, i32 -16
  %351 = call ptr @platform_get_resource_byname(ptr noundef %350, i32 noundef 512, ptr noundef nonnull @.str.55) #13
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %354

353:                                              ; preds = %348
  store i32 -19, ptr %17, align 4
  br label %368

354:                                              ; preds = %348
  %355 = load i32, ptr %351, align 4
  %356 = load i64, ptr %250, align 8
  %357 = trunc i64 %356 to i32
  %358 = sub i32 %355, %357
  store i32 %358, ptr %17, align 4
  %359 = getelementptr inbounds %struct.resource, ptr %351, i32 0, i32 1
  %360 = load i32, ptr %359, align 4
  %361 = load i32, ptr %351, align 4
  %362 = add i32 %360, 1
  %363 = sub i32 %362, %361
  %364 = icmp eq i32 %363, 8
  br i1 %364, label %365, label %368

365:                                              ; preds = %354
  %366 = load i32, ptr %180, align 4
  %367 = or i32 %366, 5
  store i32 %367, ptr %180, align 4
  br label %368

368:                                              ; preds = %365, %354, %353
  %369 = load ptr, ptr %14, align 8
  %370 = getelementptr i8, ptr %369, i32 -16
  %371 = call ptr @platform_get_resource_byname(ptr noundef %370, i32 noundef 512, ptr noundef nonnull @.str.56) #13
  %372 = icmp eq ptr %371, null
  br i1 %372, label %378, label %373

373:                                              ; preds = %368
  %374 = load i32, ptr %371, align 4
  %375 = load i64, ptr %250, align 8
  %376 = trunc i64 %375 to i32
  %377 = sub i32 %374, %376
  br label %378

378:                                              ; preds = %373, %368
  %379 = phi i32 [ %377, %373 ], [ -19, %368 ]
  store i32 %379, ptr %18, align 4
  %380 = load ptr, ptr %14, align 8
  %381 = getelementptr i8, ptr %380, i32 -16
  %382 = call ptr @platform_get_resource_byname(ptr noundef %381, i32 noundef 512, ptr noundef nonnull @.str.57) #13
  %383 = icmp eq ptr %382, null
  br i1 %383, label %389, label %384

384:                                              ; preds = %378
  %385 = load i32, ptr %382, align 4
  %386 = load i64, ptr %250, align 8
  %387 = trunc i64 %386 to i32
  %388 = sub i32 %385, %387
  br label %389

389:                                              ; preds = %384, %378
  %390 = phi i32 [ %388, %384 ], [ -19, %378 ]
  store i32 %390, ptr %19, align 4
  %391 = load i32, ptr %17, align 8
  %392 = icmp slt i32 %391, 0
  %393 = load i32, ptr %18, align 4
  %394 = icmp slt i32 %393, 0
  %395 = select i1 %392, i1 %394, i1 false
  %396 = icmp slt i32 %390, 0
  %397 = select i1 %395, i1 %396, i1 false
  br i1 %397, label %398, label %400

398:                                              ; preds = %389
  %399 = load i32, ptr %253, align 8
  br label %408

400:                                              ; preds = %389
  %401 = call i32 @llvm.smax.i32(i32 %391, i32 %393) #13
  %402 = call i32 @llvm.smax.i32(i32 %401, i32 %390) #13
  %403 = call i32 @llvm.smax.i32(i32 %402, i32 1024) #13
  %404 = add nuw i32 %403, 4
  %405 = load i32, ptr %253, align 8
  %406 = icmp ugt i32 %404, %405
  %407 = select i1 %406, i32 %405, i32 %403
  br label %408

408:                                              ; preds = %400, %398
  %409 = phi i32 [ %399, %398 ], [ %407, %400 ]
  %410 = load ptr, ptr %14, align 8
  %411 = load i64, ptr %250, align 8
  %412 = trunc i64 %411 to i32
  %413 = add i32 %409, 4
  %414 = call ptr @devm_ioremap(ptr noundef %410, i32 noundef %412, i32 noundef %413) #13
  %415 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 3
  store ptr %414, ptr %415, align 4
  %416 = icmp eq ptr %414, null
  br i1 %416, label %566, label %417

417:                                              ; preds = %408
  %418 = call fastcc i32 @sysc_check_registers(ptr noundef %14) #13
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %566

420:                                              ; preds = %417, %345
  %421 = load ptr, ptr %14, align 8
  %422 = getelementptr inbounds %struct.device, ptr %421, i32 0, i32 25
  %423 = load ptr, ptr %422, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !15
  %424 = call i32 @of_property_read_variable_u32_array(ptr noundef %423, ptr noundef nonnull @.str.60, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #13
  %425 = icmp sgt i32 %424, -1
  br i1 %425, label %426, label %433

426:                                              ; preds = %420
  %427 = load i32, ptr %4, align 4
  %428 = load ptr, ptr %177, align 4
  %429 = getelementptr inbounds %struct.sysc_capabilities, ptr %428, i32 0, i32 1
  %430 = load i32, ptr %429, align 4
  %431 = and i32 %430, %427
  %432 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 12
  store i32 %431, ptr %432, align 8
  br label %433

433:                                              ; preds = %426, %420
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %434 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 12, i32 2
  %435 = load ptr, ptr %14, align 8
  %436 = getelementptr inbounds %struct.device, ptr %435, i32 0, i32 25
  %437 = load ptr, ptr %436, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !15
  %438 = call ptr @of_find_property(ptr noundef %437, ptr noundef nonnull @.str.61, ptr noundef null) #13
  %439 = call ptr @of_prop_next_u32(ptr noundef %438, ptr noundef null, ptr noundef nonnull %3) #13
  %440 = icmp eq ptr %439, null
  br i1 %440, label %454, label %441

441:                                              ; preds = %445, %433
  %442 = phi ptr [ %450, %445 ], [ %439, %433 ]
  %443 = load i32, ptr %3, align 4
  %444 = icmp ugt i32 %443, 3
  br i1 %444, label %452, label %445

445:                                              ; preds = %441
  %446 = shl nuw nsw i32 1, %443
  %447 = load i8, ptr %434, align 1
  %448 = trunc i32 %446 to i8
  %449 = or i8 %447, %448
  store i8 %449, ptr %434, align 1
  %450 = call ptr @of_prop_next_u32(ptr noundef %438, ptr noundef nonnull %442, ptr noundef nonnull %3) #13
  %451 = icmp eq ptr %450, null
  br i1 %451, label %454, label %441

452:                                              ; preds = %441
  %453 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %453, ptr noundef nonnull @.str.63, i32 noundef %443) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %566

454:                                              ; preds = %445, %433
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %455 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 12, i32 3
  %456 = load ptr, ptr %14, align 8
  %457 = getelementptr inbounds %struct.device, ptr %456, i32 0, i32 25
  %458 = load ptr, ptr %457, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !15
  %459 = call ptr @of_find_property(ptr noundef %458, ptr noundef nonnull @.str.62, ptr noundef null) #13
  %460 = call ptr @of_prop_next_u32(ptr noundef %459, ptr noundef null, ptr noundef nonnull %2) #13
  %461 = icmp eq ptr %460, null
  br i1 %461, label %475, label %462

462:                                              ; preds = %466, %454
  %463 = phi ptr [ %471, %466 ], [ %460, %454 ]
  %464 = load i32, ptr %2, align 4
  %465 = icmp ugt i32 %464, 3
  br i1 %465, label %473, label %466

466:                                              ; preds = %462
  %467 = shl nuw nsw i32 1, %464
  %468 = load i8, ptr %455, align 1
  %469 = trunc i32 %467 to i8
  %470 = or i8 %468, %469
  store i8 %470, ptr %455, align 1
  %471 = call ptr @of_prop_next_u32(ptr noundef %459, ptr noundef nonnull %463, ptr noundef nonnull %2) #13
  %472 = icmp eq ptr %471, null
  br i1 %472, label %475, label %462

473:                                              ; preds = %462
  %474 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %474, ptr noundef nonnull @.str.63, i32 noundef %464) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %566

475:                                              ; preds = %466, %454
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  call fastcc void @sysc_init_syss_mask(ptr noundef nonnull %14)
  %476 = call fastcc i32 @sysc_init_pdata(ptr noundef nonnull %14)
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %566

478:                                              ; preds = %475
  call fastcc void @sysc_init_early_quirks(ptr noundef nonnull %14)
  %479 = call fastcc i32 @sysc_check_disabled_devices(ptr noundef nonnull %14)
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %566

481:                                              ; preds = %478
  %482 = load ptr, ptr %177, align 4
  %483 = load i32, ptr %482, align 4
  switch i32 %483, label %492 [
    i32 1, label %484
    i32 5, label %484
  ]

484:                                              ; preds = %481, %481
  %485 = load i32, ptr %180, align 4
  %486 = and i32 %485, 160
  %487 = icmp eq i32 %486, 160
  br i1 %487, label %488, label %492

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 17
  %490 = load i8, ptr %489, align 4
  %491 = or i8 %490, 1
  store i8 %491, ptr %489, align 4
  br label %492

492:                                              ; preds = %488, %484, %481
  %493 = call fastcc i32 @sysc_get_clocks(ptr noundef nonnull %14)
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %566

495:                                              ; preds = %492
  %496 = call fastcc i32 @sysc_init_resets(ptr noundef nonnull %14)
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %564

498:                                              ; preds = %495
  %499 = call fastcc i32 @sysc_init_module(ptr noundef nonnull %14)
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %564

501:                                              ; preds = %498
  %502 = load ptr, ptr %14, align 8
  call void @pm_runtime_enable(ptr noundef %502) #13
  %503 = load ptr, ptr %14, align 8
  %504 = call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %503)
  %505 = icmp slt i32 %504, 0
  br i1 %505, label %506, label %508

506:                                              ; preds = %501
  %507 = load ptr, ptr %14, align 8
  br label %561

508:                                              ; preds = %501
  %509 = load i32, ptr %180, align 4
  %510 = and i32 %509, 192
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %514

512:                                              ; preds = %508
  call fastcc void @sysc_disable_main_clocks(ptr noundef nonnull %14)
  call fastcc void @sysc_disable_opt_clocks(ptr noundef nonnull %14)
  call fastcc void @sysc_clkdm_allow_idle(ptr noundef nonnull %14)
  %513 = load i32, ptr %180, align 4
  br label %514

514:                                              ; preds = %512, %508
  %515 = phi i32 [ %513, %512 ], [ %509, %508 ]
  %516 = and i32 %515, 32
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %522

518:                                              ; preds = %514
  %519 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 9
  %520 = load ptr, ptr %519, align 4
  %521 = call i32 @reset_control_assert(ptr noundef %520) #13
  br label %522

522:                                              ; preds = %518, %514
  call fastcc void @sysc_show_registers(ptr noundef nonnull %14)
  %523 = load ptr, ptr %14, align 8
  %524 = getelementptr inbounds %struct.device, ptr %523, i32 0, i32 4
  store ptr @sysc_device_type, ptr %524, align 8
  %525 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 17
  %526 = load i8, ptr %525, align 4
  %527 = and i8 %526, 1
  %528 = icmp eq i8 %527, 0
  br i1 %528, label %529, label %540

529:                                              ; preds = %522
  %530 = load ptr, ptr %14, align 8
  %531 = getelementptr inbounds %struct.device, ptr %530, i32 0, i32 25
  %532 = load ptr, ptr %531, align 8
  %533 = icmp eq ptr %13, null
  br i1 %533, label %536, label %534

534:                                              ; preds = %529
  %535 = load ptr, ptr %13, align 4
  br label %536

536:                                              ; preds = %534, %529
  %537 = phi ptr [ %535, %534 ], [ null, %529 ]
  %538 = call i32 @of_platform_populate(ptr noundef %532, ptr noundef nonnull @sysc_match_table, ptr noundef %537, ptr noundef %530) #13
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %559

540:                                              ; preds = %536, %522
  %541 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 18
  store i32 -32, ptr %541, align 8
  %542 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 18, i32 0, i32 1
  store volatile ptr %542, ptr %542, align 4
  %543 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 18, i32 0, i32 1, i32 1
  store ptr %542, ptr %543, align 4
  %544 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 18, i32 0, i32 2
  store ptr @ti_sysc_idle, ptr %544, align 4
  %545 = getelementptr inbounds %struct.sysc, ptr %14, i32 0, i32 18, i32 1
  call void @init_timer_key(ptr noundef %545, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #13
  %546 = load i32, ptr %180, align 4
  %547 = and i32 %546, 224
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %552, label %549

549:                                              ; preds = %540
  %550 = load ptr, ptr @system_wq, align 4
  %551 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %550, ptr noundef %541, i32 noundef 3000) #13
  br label %554

552:                                              ; preds = %540
  %553 = call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 5) #13
  br label %554

554:                                              ; preds = %552, %549
  %555 = load i32, ptr %180, align 4
  %556 = and i32 %555, 268435456
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %566, label %558

558:                                              ; preds = %554
  call fastcc void @sysc_add_restored(ptr noundef nonnull %14)
  br label %566

559:                                              ; preds = %536
  %560 = call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #13
  br label %561

561:                                              ; preds = %559, %506
  %562 = phi ptr [ %11, %559 ], [ %507, %506 ]
  %563 = phi i32 [ %538, %559 ], [ %504, %506 ]
  call void @__pm_runtime_disable(ptr noundef %562, i1 noundef zeroext true) #13
  br label %564

564:                                              ; preds = %561, %498, %495
  %565 = phi i32 [ %496, %495 ], [ %499, %498 ], [ %563, %561 ]
  call fastcc void @sysc_unprepare(ptr noundef nonnull %14)
  br label %566

566:                                              ; preds = %564, %558, %554, %492, %478, %475, %473, %452, %417, %408, %279, %270, %244, %172, %23, %1
  %567 = phi i32 [ %565, %564 ], [ -12, %1 ], [ %418, %417 ], [ -22, %473 ], [ %476, %475 ], [ %479, %478 ], [ %493, %492 ], [ 0, %558 ], [ 0, %554 ], [ -12, %23 ], [ -22, %172 ], [ -22, %452 ], [ %245, %244 ], [ -5, %408 ], [ -517, %270 ], [ -517, %279 ]
  ret i32 %567
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysc_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 18
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #13
  %6 = load ptr, ptr %3, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #13
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #13, !srcloc !17
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #13, !srcloc !21
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  br label %15

15:                                               ; preds = %14, %9
  %16 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_disable(ptr noundef %16, i1 noundef zeroext true) #13
  br label %27

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @of_platform_depopulate(ptr noundef %18) #13
  %19 = tail call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 4) #13
  tail call void @__pm_runtime_disable(ptr noundef %18, i1 noundef zeroext true) #13
  %20 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @reset_control_status(ptr noundef %21) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load ptr, ptr %20, align 4
  %26 = tail call i32 @reset_control_assert(ptr noundef %25) #13
  br label %27

27:                                               ; preds = %24, %17, %15
  tail call fastcc void @sysc_unprepare(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sysc_init_syss_mask(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !15
  %6 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.64, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #13
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -2
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %38

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 256
  store i32 %22, ptr %20, align 4
  br label %38

23:                                               ; preds = %1
  %24 = load i32, ptr %2, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, 256
  store i32 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %32, %27, %23
  %37 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 1
  store i32 %24, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %19, %14, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysc_init_pdata(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 40, i32 noundef 3520) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  store ptr %11, ptr %7, align 8
  %14 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %7, i32 0, i32 1
  store i64 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %7, i32 0, i32 2
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %21 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %7, i32 0, i32 3
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %7, i32 0, i32 4
  store i32 3, ptr %22, align 8
  %23 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %7, i32 0, i32 5
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12
  %27 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %7, i32 0, i32 6
  store ptr %26, ptr %27, align 8
  br label %28

28:                                               ; preds = %13, %9
  %29 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 5
  store ptr %7, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %6, %1
  %31 = phi i32 [ 0, %28 ], [ 0, %1 ], [ -12, %6 ]
  ret i32 %31
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sysc_init_early_quirks(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %4 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 1
  %5 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 2
  %6 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 14
  %7 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  br label %8

8:                                                ; preds = %39, %1
  %9 = phi i32 [ 0, %1 ], [ %40, %39 ]
  %10 = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %9
  %11 = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %9, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %8
  %15 = zext i32 %12 to i64
  %16 = load i64, ptr %2, align 8
  %17 = icmp eq i64 %16, %15
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %9, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %3, align 8
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %9, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %4, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %9, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %5, align 8
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load ptr, ptr %10, align 4
  store ptr %34, ptr %6, align 8
  %35 = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %9, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, ptr %7, align 4
  br label %39

39:                                               ; preds = %33, %28, %23, %18, %14, %8
  %40 = add nuw nsw i32 %9, 1
  %41 = icmp eq i32 %40, 37
  br i1 %41, label %42, label %8

42:                                               ; preds = %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysc_check_disabled_devices(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr @sysc_soc, align 4
  %3 = getelementptr inbounds %struct.sysc_soc_info, ptr %2, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = load ptr, ptr @sysc_soc, align 4
  %5 = getelementptr inbounds %struct.sysc_soc_info, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %11, %1
  %8 = phi ptr [ %5, %1 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %5
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -4
  %13 = load i64, ptr %6, align 8
  %14 = load i32, ptr %12, align 4
  %15 = zext i32 %14 to i64
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %7

17:                                               ; preds = %11, %7
  %18 = phi i32 [ 0, %7 ], [ -19, %11 ]
  %19 = getelementptr inbounds %struct.sysc_soc_info, ptr %4, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %19) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysc_get_clocks(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 40, i32 noundef 3520) #13
  %6 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 7
  store ptr %5, ptr %6, align 4
  %7 = icmp eq ptr %5, null
  br i1 %7, label %189, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.86, ptr noundef null) #13
  %10 = tail call ptr @of_prop_next_string(ptr noundef %9, ptr noundef null) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 8
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ 0, %12 ], [ %25, %14 ]
  %16 = phi i32 [ 0, %12 ], [ %21, %14 ]
  %17 = phi ptr [ %10, %12 ], [ %31, %14 ]
  %18 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.89, ptr noundef nonnull %17, i32 noundef 3)
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = add i32 %16, %20
  %22 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.90, ptr noundef nonnull %17, i32 noundef 3)
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = add i32 %15, %24
  %26 = load ptr, ptr %6, align 4
  %27 = load i32, ptr %13, align 8
  %28 = getelementptr ptr, ptr %26, i32 %27
  store ptr %17, ptr %28, align 4
  %29 = load i32, ptr %13, align 8
  %30 = add i32 %29, 1
  store i32 %30, ptr %13, align 8
  %31 = tail call ptr @of_prop_next_string(ptr noundef %9, ptr noundef nonnull %17) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %14

33:                                               ; preds = %14, %8
  %34 = phi i32 [ 0, %8 ], [ %21, %14 ]
  %35 = phi i32 [ 0, %8 ], [ %25, %14 ]
  %36 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 8
  %37 = load i32, ptr %36, align 8
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %189, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1024
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %84, label %44

44:                                               ; preds = %39
  %45 = tail call i32 @llvm.smax.i32(i32 %37, i32 2) #13
  %46 = getelementptr [10 x ptr], ptr @clock_names, i32 0, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 25
  %50 = load ptr, ptr %49, align 8
  %51 = tail call ptr @of_clk_get_by_name(ptr noundef %50, ptr noundef %47) #13
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %76

53:                                               ; preds = %44
  %54 = tail call ptr @of_get_next_available_child(ptr noundef %50, ptr noundef null) #13
  %55 = icmp eq ptr %54, null
  br i1 %55, label %189, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %0, align 8
  %58 = tail call ptr @devm_get_clk_from_child(ptr noundef %57, ptr noundef nonnull %54, ptr noundef null) #13
  %59 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %82, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %62 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 24) #15
  %63 = icmp eq ptr %62, null
  br i1 %63, label %189, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.clk_lookup, ptr %62, i32 0, i32 2
  store ptr %47, ptr %65, align 4
  %66 = load ptr, ptr %0, align 8
  %67 = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load ptr, ptr %66, align 4
  br label %72

72:                                               ; preds = %70, %64
  %73 = phi ptr [ %71, %70 ], [ %68, %64 ]
  %74 = getelementptr inbounds %struct.clk_lookup, ptr %62, i32 0, i32 1
  store ptr %73, ptr %74, align 8
  %75 = getelementptr inbounds %struct.clk_lookup, ptr %62, i32 0, i32 3
  store ptr %58, ptr %75, align 8
  tail call void @clkdev_add(ptr noundef nonnull %62) #13
  br label %76

76:                                               ; preds = %72, %44
  %77 = phi ptr [ %58, %72 ], [ %51, %44 ]
  tail call void @clk_put(ptr noundef %77) #13
  %78 = load ptr, ptr %6, align 4
  %79 = getelementptr ptr, ptr %78, i32 %45
  store ptr %47, ptr %79, align 4
  %80 = load i32, ptr %36, align 8
  %81 = add i32 %80, 1
  store i32 %81, ptr %36, align 8
  br label %84

82:                                               ; preds = %56
  %83 = ptrtoint ptr %58 to i32
  br label %189

84:                                               ; preds = %76, %39
  %85 = phi i32 [ %81, %76 ], [ %37, %39 ]
  %86 = icmp sgt i32 %85, 10
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.87, ptr noundef %4) #14
  br label %189

89:                                               ; preds = %84
  %90 = icmp sgt i32 %34, 1
  %91 = icmp sgt i32 %35, 1
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.88, ptr noundef %4) #14
  br label %189

95:                                               ; preds = %89
  %96 = icmp eq i32 %34, 0
  %97 = zext i1 %96 to i32
  %98 = add nsw i32 %85, %97
  %99 = icmp eq i32 %35, 0
  %100 = zext i1 %99 to i32
  %101 = add nsw i32 %98, %100
  %102 = or i1 %96, %99
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i32 %101, ptr %36, align 8
  br label %104

104:                                              ; preds = %103, %95
  %105 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %101, i32 4) #13
  %106 = extractvalue { i32, i1 } %105, 1
  br i1 %106, label %107, label %109, !prof !14

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 6
  store ptr null, ptr %108, align 8
  br label %189

109:                                              ; preds = %104
  %110 = load ptr, ptr %0, align 8
  %111 = extractvalue { i32, i1 } %105, 0
  %112 = tail call noalias ptr @devm_kmalloc(ptr noundef %110, i32 noundef %111, i32 noundef 3520) #13
  %113 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 6
  store ptr %112, ptr %113, align 8
  %114 = icmp eq ptr %112, null
  br i1 %114, label %189, label %115

115:                                              ; preds = %184, %109
  %116 = phi i32 [ %185, %184 ], [ 0, %109 ]
  %117 = load ptr, ptr %6, align 4
  %118 = getelementptr ptr, ptr %117, i32 %116
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %184, label %121

121:                                              ; preds = %115
  %122 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.89, ptr noundef nonnull %119, i32 noundef 3) #13
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %162, label %124

124:                                              ; preds = %121
  %125 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.90, ptr noundef nonnull %119, i32 noundef 3) #13
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %162, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %113, align 8
  %129 = getelementptr ptr, ptr %128, i32 2
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %162, label %132

132:                                              ; preds = %127
  %133 = getelementptr ptr, ptr %128, i32 3
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %162, label %136

136:                                              ; preds = %132
  %137 = getelementptr ptr, ptr %128, i32 4
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %162, label %140

140:                                              ; preds = %136
  %141 = getelementptr ptr, ptr %128, i32 5
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %162, label %144

144:                                              ; preds = %140
  %145 = getelementptr ptr, ptr %128, i32 6
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %162, label %148

148:                                              ; preds = %144
  %149 = getelementptr ptr, ptr %128, i32 7
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %162, label %152

152:                                              ; preds = %148
  %153 = getelementptr ptr, ptr %128, i32 8
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %152
  %157 = getelementptr ptr, ptr %128, i32 9
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.99, ptr noundef nonnull %119) #14
  br label %189

162:                                              ; preds = %156, %152, %148, %144, %140, %136, %132, %127, %124, %121
  %163 = phi i32 [ 0, %121 ], [ 9, %156 ], [ 8, %152 ], [ 7, %148 ], [ 6, %144 ], [ 5, %140 ], [ 4, %136 ], [ 3, %132 ], [ 2, %127 ], [ 1, %124 ]
  %164 = load ptr, ptr %0, align 8
  %165 = tail call ptr @devm_clk_get(ptr noundef %164, ptr noundef nonnull %119) #13
  %166 = load ptr, ptr %113, align 8
  %167 = getelementptr ptr, ptr %166, i32 %163
  store ptr %165, ptr %167, align 4
  %168 = load ptr, ptr %113, align 8
  %169 = getelementptr ptr, ptr %168, i32 %163
  %170 = load ptr, ptr %169, align 4
  %171 = icmp ugt ptr %170, inttoptr (i32 -4096 to ptr)
  br i1 %171, label %177, label %172

172:                                              ; preds = %162
  %173 = tail call i32 @clk_prepare(ptr noundef %170) #13
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %184, label %175

175:                                              ; preds = %172
  %176 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %176, ptr noundef nonnull @.str.101, ptr noundef nonnull %119, i32 noundef %173) #14
  br label %189

177:                                              ; preds = %162
  %178 = load ptr, ptr %0, align 8
  %179 = ptrtoint ptr %170 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.100, ptr noundef nonnull %119, i32 noundef %179) #14
  %180 = load ptr, ptr %113, align 8
  %181 = getelementptr ptr, ptr %180, i32 %163
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %177, %172, %115
  %185 = add nuw nsw i32 %116, 1
  %186 = icmp eq i32 %185, 10
  br i1 %186, label %189, label %115

187:                                              ; preds = %177
  %188 = ptrtoint ptr %182 to i32
  br label %189

189:                                              ; preds = %187, %184, %175, %160, %109, %107, %93, %87, %82, %60, %53, %33, %1
  %190 = phi i32 [ -22, %87 ], [ -22, %93 ], [ -12, %1 ], [ 0, %33 ], [ %83, %82 ], [ -12, %109 ], [ -12, %107 ], [ -19, %53 ], [ -12, %60 ], [ %173, %175 ], [ -19, %160 ], [ %188, %187 ], [ 0, %184 ]
  ret i32 %190
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysc_init_resets(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.102, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #13
  %4 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 9
  store ptr %3, ptr %4, align 4
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = ptrtoint ptr %3 to i32
  %7 = select i1 %5, i32 %6, i32 0
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysc_init_module(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 8
  switch i32 %12, label %25 [
    i32 2, label %16
    i32 1, label %13
    i32 0, label %30
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  br label %21

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr ptr, ptr %18, i32 1
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi ptr [ %15, %13 ], [ %18, %16 ]
  %23 = phi ptr [ null, %13 ], [ %20, %16 ]
  %24 = load ptr, ptr %22, align 4
  br label %25

25:                                               ; preds = %21, %10
  %26 = phi ptr [ null, %10 ], [ %24, %21 ]
  %27 = phi ptr [ null, %10 ], [ %23, %21 ]
  %28 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 13
  %29 = tail call i32 %8(ptr noundef %2, ptr noundef %26, ptr noundef %27, ptr noundef %28) #13
  switch i32 %29, label %313 [
    i32 -19, label %30
    i32 0, label %30
  ]

30:                                               ; preds = %25, %25, %10, %6, %1
  %31 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 10
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 2097152
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %42, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 13
  tail call void %46(ptr noundef %40, ptr noundef %49) #13
  br label %50

50:                                               ; preds = %48, %44, %39, %34, %30
  %51 = tail call fastcc i32 @sysc_enable_opt_clocks(ptr noundef %0)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %313

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 6
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %83, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %55, align 4
  %59 = icmp eq ptr %58, null
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  %61 = or i1 %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = tail call i32 @clk_enable(ptr noundef nonnull %58) #13
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %282

65:                                               ; preds = %62
  %66 = load ptr, ptr %54, align 8
  br label %67

67:                                               ; preds = %65, %57
  %68 = phi ptr [ %66, %65 ], [ %55, %57 ]
  %69 = getelementptr ptr, ptr %68, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  %73 = or i1 %71, %72
  br i1 %73, label %83, label %74

74:                                               ; preds = %67
  %75 = tail call i32 @clk_enable(ptr noundef nonnull %70) #13
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %54, align 8
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  %81 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  %82 = or i1 %80, %81
  br i1 %82, label %282, label %278

83:                                               ; preds = %74, %67, %53
  %84 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 9
  %90 = load ptr, ptr %89, align 4
  %91 = tail call i32 @reset_control_deassert(ptr noundef %90) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %259

93:                                               ; preds = %88, %83
  %94 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %95 = load i32, ptr %94, align 8
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %121, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %84, align 4
  %99 = and i32 %98, 4
  %100 = icmp eq i32 %99, 0
  %101 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 %95
  br i1 %100, label %119, label %104

104:                                              ; preds = %97
  %105 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %103) #13, !srcloc !8
  %106 = zext i16 %105 to i32
  %107 = load i32, ptr %94, align 8
  %108 = icmp sgt i32 %107, -1
  %109 = icmp eq i32 %107, %95
  %110 = and i1 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load ptr, ptr %101, align 4
  %113 = getelementptr i8, ptr %112, i32 %95
  %114 = getelementptr i8, ptr %113, i32 4
  %115 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %114) #13, !srcloc !8
  %116 = zext i16 %115 to i32
  %117 = shl nuw i32 %116, 16
  %118 = or i32 %117, %106
  br label %121

119:                                              ; preds = %97
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #13, !srcloc !9
  br label %121

121:                                              ; preds = %119, %111, %104, %93
  %122 = phi i32 [ 0, %93 ], [ %120, %119 ], [ %118, %111 ], [ %106, %104 ]
  %123 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 15
  store i32 %122, ptr %123, align 4
  %124 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 1
  %125 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 1
  %126 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 2
  %127 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 14
  br label %128

128:                                              ; preds = %169, %121
  %129 = phi i32 [ 0, %121 ], [ %170, %169 ]
  %130 = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %129
  %131 = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %129, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %128
  %135 = zext i32 %132 to i64
  %136 = load i64, ptr %124, align 8
  %137 = icmp eq i64 %136, %135
  br i1 %137, label %138, label %169

138:                                              ; preds = %134, %128
  %139 = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %129, i32 2
  %140 = load i32, ptr %139, align 4
  %141 = load i32, ptr %94, align 8
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %169

143:                                              ; preds = %138
  %144 = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %129, i32 3
  %145 = load i32, ptr %144, align 4
  %146 = load i32, ptr %125, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %169

148:                                              ; preds = %143
  %149 = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %129, i32 4
  %150 = load i32, ptr %149, align 4
  %151 = load i32, ptr %126, align 8
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %169

153:                                              ; preds = %148
  %154 = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %129, i32 5
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, %122
  br i1 %156, label %163, label %157

157:                                              ; preds = %153
  %158 = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %129, i32 6
  %159 = load i32, ptr %158, align 4
  %160 = xor i32 %155, %122
  %161 = and i32 %159, %160
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %157, %153
  %164 = load ptr, ptr %130, align 4
  store ptr %164, ptr %127, align 8
  %165 = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %129, i32 7
  %166 = load i32, ptr %165, align 4
  %167 = load i32, ptr %84, align 4
  %168 = or i32 %167, %166
  store i32 %168, ptr %84, align 4
  br label %169

169:                                              ; preds = %163, %157, %148, %143, %138, %134
  %170 = add nuw nsw i32 %129, 1
  %171 = icmp eq i32 %170, 37
  br i1 %171, label %172, label %128

172:                                              ; preds = %169
  %173 = load ptr, ptr %31, align 8
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %228

175:                                              ; preds = %172
  %176 = load ptr, ptr %127, align 8
  %177 = icmp eq ptr %176, null
  br i1 %177, label %245, label %178

178:                                              ; preds = %175
  %179 = load i32, ptr %84, align 4
  %180 = and i32 %179, 131072
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 19
  store ptr @sysc_pre_reset_quirk_hdq1w, ptr %183, align 4
  br label %242

184:                                              ; preds = %178
  %185 = and i32 %179, 65536
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 19
  store ptr @sysc_pre_reset_quirk_i2c, ptr %188, align 4
  %189 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 20
  store ptr @sysc_post_reset_quirk_i2c, ptr %189, align 8
  br label %242

190:                                              ; preds = %184
  %191 = and i32 %179, 524288
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 22
  store ptr @sysc_module_enable_quirk_aess, ptr %194, align 8
  br label %195

195:                                              ; preds = %193, %190
  %196 = and i32 %179, 8388608
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 19
  store ptr @sysc_pre_reset_quirk_dss, ptr %199, align 4
  br label %200

200:                                              ; preds = %198, %195
  %201 = and i32 %179, 4194304
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 24
  store ptr @sysc_module_unlock_quirk_rtc, ptr %204, align 8
  %205 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 25
  store ptr @sysc_module_lock_quirk_rtc, ptr %205, align 4
  br label %242

206:                                              ; preds = %200
  %207 = and i32 %179, 1073741824
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 22
  store ptr @sysc_module_enable_quirk_otg, ptr %210, align 8
  %211 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 23
  store ptr @sysc_module_disable_quirk_otg, ptr %211, align 4
  br label %212

212:                                              ; preds = %209, %206
  %213 = and i32 %179, 262144
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 22
  store ptr @sysc_module_enable_quirk_sgx, ptr %216, align 8
  br label %217

217:                                              ; preds = %215, %212
  %218 = and i32 %179, 32768
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 21
  store ptr @sysc_reset_done_quirk_wdt, ptr %221, align 4
  %222 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 23
  store ptr @sysc_reset_done_quirk_wdt, ptr %222, align 4
  br label %223

223:                                              ; preds = %220, %217
  %224 = and i32 %179, 16777216
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %242, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 23
  store ptr @sysc_module_disable_quirk_pruss, ptr %227, align 4
  br label %242

228:                                              ; preds = %172
  %229 = load ptr, ptr %0, align 8
  %230 = getelementptr inbounds %struct.device, ptr %229, i32 0, i32 7
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %242, label %233

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %231, i32 0, i32 5
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %242, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 5
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 13
  %241 = tail call i32 %235(ptr noundef %229, ptr noundef %239, ptr noundef %240) #13
  switch i32 %241, label %259 [
    i32 -17, label %242
    i32 0, label %242
  ]

242:                                              ; preds = %237, %237, %233, %228, %226, %223, %203, %187, %182
  %243 = load ptr, ptr %31, align 8
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %249

245:                                              ; preds = %242, %175
  %246 = load ptr, ptr %0, align 8
  %247 = tail call fastcc i32 @sysc_enable_module(ptr noundef %246)
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %259

249:                                              ; preds = %245, %242
  %250 = tail call fastcc i32 @sysc_reset(ptr noundef %0)
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %313, label %252

252:                                              ; preds = %249
  %253 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %253, ptr noundef nonnull @.str.103, i32 noundef %250) #14
  %254 = load ptr, ptr %31, align 8
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = load ptr, ptr %0, align 8
  %258 = tail call fastcc i32 @sysc_disable_module(ptr noundef %257)
  br label %259

259:                                              ; preds = %256, %252, %245, %237, %88
  %260 = phi i32 [ %91, %88 ], [ %247, %245 ], [ %250, %256 ], [ %250, %252 ], [ %241, %237 ]
  %261 = phi i1 [ false, %88 ], [ %87, %245 ], [ %87, %256 ], [ %87, %252 ], [ %87, %237 ]
  %262 = load ptr, ptr %54, align 8
  %263 = icmp eq ptr %262, null
  br i1 %263, label %282, label %264

264:                                              ; preds = %259
  %265 = load ptr, ptr %262, align 4
  %266 = icmp eq ptr %265, null
  %267 = icmp ugt ptr %265, inttoptr (i32 -4096 to ptr)
  %268 = or i1 %266, %267
  br i1 %268, label %271, label %269

269:                                              ; preds = %264
  tail call void @clk_disable(ptr noundef nonnull %265) #13
  %270 = load ptr, ptr %54, align 8
  br label %271

271:                                              ; preds = %269, %264
  %272 = phi ptr [ %262, %264 ], [ %270, %269 ]
  %273 = getelementptr ptr, ptr %272, i32 1
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, null
  %276 = icmp ugt ptr %274, inttoptr (i32 -4096 to ptr)
  %277 = or i1 %275, %276
  br i1 %277, label %282, label %278

278:                                              ; preds = %271, %77
  %279 = phi ptr [ %79, %77 ], [ %274, %271 ]
  %280 = phi i32 [ %75, %77 ], [ %260, %271 ]
  %281 = phi i1 [ false, %77 ], [ %261, %271 ]
  tail call void @clk_disable(ptr noundef nonnull %279) #13
  br label %282

282:                                              ; preds = %278, %271, %259, %77, %62
  %283 = phi i32 [ %63, %62 ], [ %75, %77 ], [ %260, %271 ], [ %260, %259 ], [ %280, %278 ]
  %284 = phi i1 [ false, %62 ], [ false, %77 ], [ %261, %271 ], [ %261, %259 ], [ %281, %278 ]
  tail call fastcc void @sysc_disable_opt_clocks(ptr noundef %0)
  %285 = load ptr, ptr %31, align 8
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %303

287:                                              ; preds = %282
  %288 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %289 = load i32, ptr %288, align 4
  %290 = and i32 %289, 2097152
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %303

292:                                              ; preds = %287
  %293 = load ptr, ptr %0, align 8
  %294 = getelementptr inbounds %struct.device, ptr %293, i32 0, i32 7
  %295 = load ptr, ptr %294, align 4
  %296 = icmp eq ptr %295, null
  br i1 %296, label %303, label %297

297:                                              ; preds = %292
  %298 = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %295, i32 0, i32 4
  %299 = load ptr, ptr %298, align 4
  %300 = icmp eq ptr %299, null
  br i1 %300, label %303, label %301

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 13
  tail call void %299(ptr noundef %293, ptr noundef %302) #13
  br label %303

303:                                              ; preds = %301, %297, %292, %287, %282
  br i1 %284, label %304, label %313

304:                                              ; preds = %303
  %305 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %306 = load i32, ptr %305, align 4
  %307 = and i32 %306, 32
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 9
  %311 = load ptr, ptr %310, align 4
  %312 = tail call i32 @reset_control_assert(ptr noundef %311) #13
  br label %313

313:                                              ; preds = %309, %304, %303, %249, %50, %25
  %314 = phi i32 [ %51, %50 ], [ %283, %309 ], [ %283, %304 ], [ %283, %303 ], [ %29, %25 ], [ 0, %249 ]
  ret i32 %314
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %0) unnamed_addr #7 {
  %2 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #13
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #13, !srcloc !17
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 0, i32 -1, ptr elementtype(i32) %5) #13, !srcloc !21
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  br label %10

10:                                               ; preds = %9, %4, %1
  %11 = phi i32 [ 0, %1 ], [ %2, %4 ], [ %2, %9 ]
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sysc_show_registers(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = alloca [128 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %2, i8 0, i32 128, i1 false), !annotation !15
  %3 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 0
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.109, i32 noundef %4) #13
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ 3, %1 ]
  %10 = getelementptr i8, ptr %2, i32 %9
  %11 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %10, ptr noundef nonnull @.str.109, i32 noundef %12) #13
  br label %17

16:                                               ; preds = %8
  store i32 4279866, ptr %10, align 1
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ 3, %16 ], [ %15, %14 ]
  %19 = getelementptr i8, ptr %10, i32 %18
  %20 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %19, ptr noundef nonnull @.str.109, i32 noundef %21) #13
  br label %26

25:                                               ; preds = %17
  store i32 4279866, ptr %19, align 1
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ 3, %25 ], [ %24, %23 ]
  %28 = getelementptr i8, ptr %19, i32 %27
  %29 = load i32, ptr %3, align 8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 4279866, ptr %28, align 1
  br label %36

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 15
  %34 = load i32, ptr %33, align 4
  %35 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %28, ptr noundef nonnull @.str.110, i32 noundef %34) #13
  br label %36

36:                                               ; preds = %32, %31
  %37 = phi i32 [ 3, %31 ], [ %35, %32 ]
  %38 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 14
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %28, i32 %37
  %43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %42, ptr noundef nonnull @.str.111, ptr noundef nonnull %39) #13
  br label %44

44:                                               ; preds = %41, %36
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ti_sysc_idle(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -104
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 192
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %45, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -64
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 4
  %13 = icmp eq ptr %12, null
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %15 = or i1 %13, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  tail call void @clk_disable(ptr noundef nonnull %12) #13
  %17 = load ptr, ptr %8, align 8
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %9, %11 ], [ %17, %16 ]
  %20 = getelementptr ptr, ptr %19, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %24 = or i1 %22, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @clk_disable(ptr noundef nonnull %21) #13
  br label %26

26:                                               ; preds = %25, %18, %7
  tail call fastcc void @sysc_disable_opt_clocks(ptr noundef %2)
  %27 = getelementptr i8, ptr %0, i32 -48
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i32, ptr %3, align 4
  %32 = and i32 %31, 2097152
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %37, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %0, i32 -24
  tail call void %41(ptr noundef %35, ptr noundef %44) #13
  br label %45

45:                                               ; preds = %43, %39, %34, %30, %26, %1
  %46 = load i32, ptr %3, align 4
  %47 = and i32 %46, 128
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 11, i32 18
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 11, i32 15
  %56 = load i16, ptr %55, align 8
  %57 = and i16 %56, 7
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54, %49
  %60 = tail call i32 @__pm_runtime_idle(ptr noundef %50, i32 noundef 4) #13
  br label %61

61:                                               ; preds = %59, %54, %45
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sysc_add_restored(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr @sysc_soc, align 4
  %7 = getelementptr inbounds %struct.sysc_soc_info, ptr %6, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.sysc_module, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr @sysc_soc, align 4
  %10 = getelementptr inbounds %struct.sysc_soc_info, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %8, ptr %12, align 4
  store ptr %11, ptr %8, align 4
  %13 = getelementptr inbounds %struct.sysc_module, ptr %3, i32 0, i32 1, i32 1
  store ptr %10, ptr %13, align 8
  store volatile ptr %8, ptr %10, align 4
  %14 = getelementptr inbounds %struct.sysc_soc_info, ptr %9, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  store ptr @sysc_context_notifier, ptr %14, align 4
  %18 = tail call i32 @cpu_pm_register_notifier(ptr noundef %14) #13
  %19 = load ptr, ptr @sysc_soc, align 4
  br label %20

20:                                               ; preds = %17, %5
  %21 = phi ptr [ %9, %5 ], [ %19, %17 ]
  %22 = getelementptr inbounds %struct.sysc_soc_info, ptr %21, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %22) #13
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sysc_unprepare(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %92, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  tail call void @clk_unprepare(ptr noundef nonnull %6) #13
  %11 = load ptr, ptr %2, align 8
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %3, %5 ], [ %11, %10 ]
  %14 = getelementptr ptr, ptr %13, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %18 = or i1 %16, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef nonnull %15) #13
  %20 = load ptr, ptr %2, align 8
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi ptr [ %20, %19 ], [ %13, %12 ]
  %23 = getelementptr ptr, ptr %22, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %27 = or i1 %25, %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef nonnull %24) #13
  %29 = load ptr, ptr %2, align 8
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi ptr [ %29, %28 ], [ %22, %21 ]
  %32 = getelementptr ptr, ptr %31, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  %36 = or i1 %34, %35
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  tail call void @clk_unprepare(ptr noundef nonnull %33) #13
  %38 = load ptr, ptr %2, align 8
  br label %39

39:                                               ; preds = %37, %30
  %40 = phi ptr [ %38, %37 ], [ %31, %30 ]
  %41 = getelementptr ptr, ptr %40, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  %45 = or i1 %43, %44
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  tail call void @clk_unprepare(ptr noundef nonnull %42) #13
  %47 = load ptr, ptr %2, align 8
  br label %48

48:                                               ; preds = %46, %39
  %49 = phi ptr [ %47, %46 ], [ %40, %39 ]
  %50 = getelementptr ptr, ptr %49, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  %54 = or i1 %52, %53
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  tail call void @clk_unprepare(ptr noundef nonnull %51) #13
  %56 = load ptr, ptr %2, align 8
  br label %57

57:                                               ; preds = %55, %48
  %58 = phi ptr [ %56, %55 ], [ %49, %48 ]
  %59 = getelementptr ptr, ptr %58, i32 6
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  %62 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  %63 = or i1 %61, %62
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  tail call void @clk_unprepare(ptr noundef nonnull %60) #13
  %65 = load ptr, ptr %2, align 8
  br label %66

66:                                               ; preds = %64, %57
  %67 = phi ptr [ %65, %64 ], [ %58, %57 ]
  %68 = getelementptr ptr, ptr %67, i32 7
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  %72 = or i1 %70, %71
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  tail call void @clk_unprepare(ptr noundef nonnull %69) #13
  %74 = load ptr, ptr %2, align 8
  br label %75

75:                                               ; preds = %73, %66
  %76 = phi ptr [ %74, %73 ], [ %67, %66 ]
  %77 = getelementptr ptr, ptr %76, i32 8
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  %80 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  %81 = or i1 %79, %80
  br i1 %81, label %84, label %82

82:                                               ; preds = %75
  tail call void @clk_unprepare(ptr noundef nonnull %78) #13
  %83 = load ptr, ptr %2, align 8
  br label %84

84:                                               ; preds = %82, %75
  %85 = phi ptr [ %83, %82 ], [ %76, %75 ]
  %86 = getelementptr ptr, ptr %85, i32 9
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  %89 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  %90 = or i1 %88, %89
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  tail call void @clk_unprepare(ptr noundef nonnull %87) #13
  br label %92

92:                                               ; preds = %91, %84, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysc_check_registers(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 2
  %3 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 0
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 1
  %8 = load i32, ptr %7, align 4
  br label %32

9:                                                ; preds = %1
  %10 = load i32, ptr %2, align 8
  %11 = add i32 %10, -4
  %12 = icmp ugt i32 %4, %11
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = xor i32 %4, -1
  %15 = lshr i32 %14, 31
  %16 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, -1
  %19 = icmp eq i32 %4, %17
  %20 = select i1 %18, i1 %19, i1 false
  %21 = zext i1 %20 to i32
  %22 = add nuw nsw i32 %15, %21
  %23 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, -1
  %26 = icmp eq i32 %4, %24
  %27 = select i1 %25, i1 %26, i1 false
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i32 %22, %28
  br label %32

30:                                               ; preds = %66, %40, %9
  %31 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.58) #14
  br label %91

32:                                               ; preds = %13, %6
  %33 = phi i32 [ %8, %6 ], [ %17, %13 ]
  %34 = phi i32 [ 0, %6 ], [ 1, %13 ]
  %35 = phi i32 [ 0, %6 ], [ %29, %13 ]
  %36 = icmp slt i32 %33, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 2
  %39 = load i32, ptr %38, align 4
  br label %61

40:                                               ; preds = %32
  %41 = load i32, ptr %2, align 8
  %42 = add i32 %41, -4
  %43 = icmp ugt i32 %33, %42
  br i1 %43, label %30, label %44

44:                                               ; preds = %40
  %45 = icmp sgt i32 %4, -1
  %46 = icmp eq i32 %33, %4
  %47 = select i1 %45, i1 %46, i1 false
  %48 = zext i1 %47 to i32
  %49 = add nuw nsw i32 %35, %48
  %50 = xor i32 %33, -1
  %51 = lshr i32 %50, 31
  %52 = add nuw nsw i32 %49, %51
  %53 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = icmp sgt i32 %54, -1
  %56 = icmp eq i32 %33, %54
  %57 = select i1 %55, i1 %56, i1 false
  %58 = zext i1 %57 to i32
  %59 = add nuw nsw i32 %52, %58
  %60 = add nuw nsw i32 %34, 1
  br label %61

61:                                               ; preds = %44, %37
  %62 = phi i32 [ %39, %37 ], [ %54, %44 ]
  %63 = phi i32 [ %34, %37 ], [ %60, %44 ]
  %64 = phi i32 [ %35, %37 ], [ %59, %44 ]
  %65 = icmp slt i32 %62, 0
  br i1 %65, label %85, label %66

66:                                               ; preds = %61
  %67 = load i32, ptr %2, align 8
  %68 = add i32 %67, -4
  %69 = icmp ugt i32 %62, %68
  br i1 %69, label %30, label %70

70:                                               ; preds = %66
  %71 = icmp sgt i32 %4, -1
  %72 = icmp eq i32 %62, %4
  %73 = select i1 %71, i1 %72, i1 false
  %74 = zext i1 %73 to i32
  %75 = add nuw nsw i32 %64, %74
  %76 = icmp sgt i32 %33, -1
  %77 = icmp eq i32 %62, %33
  %78 = select i1 %76, i1 %77, i1 false
  %79 = zext i1 %78 to i32
  %80 = add nuw nsw i32 %75, %79
  %81 = xor i32 %62, -1
  %82 = lshr i32 %81, 31
  %83 = add nuw nsw i32 %80, %82
  %84 = add nuw nsw i32 %63, 1
  br label %85

85:                                               ; preds = %70, %61
  %86 = phi i32 [ %63, %61 ], [ %84, %70 ]
  %87 = phi i32 [ %64, %61 ], [ %83, %70 ]
  %88 = icmp ugt i32 %87, %86
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.59, i32 noundef %86, i32 noundef %87) #14
  br label %91

91:                                               ; preds = %89, %85, %30
  %92 = phi i32 [ -22, %30 ], [ -22, %89 ], [ 0, %85 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_get_clk_from_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdev_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysc_reset(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %105

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sysc_capabilities, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sysc_regbits, ptr %11, i32 0, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = icmp slt i8 %13, 0
  br i1 %14, label %105, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %105

20:                                               ; preds = %15
  %21 = zext i8 %13 to i32
  %22 = shl nuw i32 1, %21
  %23 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void %24(ptr noundef %0) #13
  br label %27

27:                                               ; preds = %26, %20
  %28 = icmp sgt i32 %3, -1
  br i1 %28, label %29, label %83

29:                                               ; preds = %27
  %30 = load i32, ptr %2, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %16, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 %30
  br i1 %35, label %55, label %39

39:                                               ; preds = %32
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %38) #13, !srcloc !8
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = icmp sgt i32 %43, -1
  %45 = icmp eq i32 %43, %30
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load ptr, ptr %36, align 4
  %49 = getelementptr i8, ptr %48, i32 %30
  %50 = getelementptr i8, ptr %49, i32 4
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %50) #13, !srcloc !8
  %52 = zext i16 %51 to i32
  %53 = shl nuw i32 %52, 16
  %54 = or i32 %53, %41
  br label %57

55:                                               ; preds = %32
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #13, !srcloc !9
  br label %57

57:                                               ; preds = %55, %47, %39, %29
  %58 = phi i32 [ 0, %29 ], [ %56, %55 ], [ %54, %47 ], [ %41, %39 ]
  %59 = or i32 %58, %22
  %60 = load i32, ptr %16, align 4
  %61 = and i32 %60, 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %57
  %64 = trunc i32 %59 to i16
  %65 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %66, i32 %3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %67, i16 %64) #13, !srcloc !10
  %68 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %69 = load i32, ptr %68, align 8
  %70 = icmp sgt i32 %69, -1
  %71 = icmp eq i32 %69, %3
  %72 = and i1 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %63
  %74 = lshr i32 %59, 16
  %75 = trunc i32 %74 to i16
  %76 = load ptr, ptr %65, align 4
  %77 = getelementptr i8, ptr %76, i32 %3
  %78 = getelementptr i8, ptr %77, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %78, i16 %75) #13, !srcloc !10
  br label %83

79:                                               ; preds = %57
  %80 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %59) #13, !srcloc !11
  br label %83

83:                                               ; preds = %79, %73, %63, %27
  %84 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 4
  %85 = load i8, ptr %84, align 2
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = zext i8 %85 to i32
  %89 = shl nuw nsw i32 %88, 1
  tail call void @usleep_range_state(i32 noundef %88, i32 noundef %89, i32 noundef 2) #13
  br label %90

90:                                               ; preds = %87, %83
  %91 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 20
  %92 = load ptr, ptr %91, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call void %92(ptr noundef %0) #13
  br label %95

95:                                               ; preds = %94, %90
  %96 = tail call fastcc i32 @sysc_wait_softreset(ptr noundef %0)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %99, ptr noundef nonnull @.str.9) #14
  br label %100

100:                                              ; preds = %98, %95
  %101 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 21
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  tail call void %102(ptr noundef %0) #13
  br label %105

105:                                              ; preds = %104, %100, %15, %7, %1
  %106 = phi i32 [ 0, %15 ], [ 0, %7 ], [ 0, %1 ], [ %96, %104 ], [ %96, %100 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysc_pre_reset_quirk_hdq1w(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  br i1 %5, label %19, label %9

9:                                                ; preds = %1
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %8) #13, !srcloc !8
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 12
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 16
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #13, !srcloc !8
  br label %21

19:                                               ; preds = %1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #13, !srcloc !9
  br label %21

21:                                               ; preds = %19, %15, %9
  %22 = phi i32 [ %20, %19 ], [ %11, %15 ], [ %11, %9 ]
  %23 = and i32 %22, 65503
  %24 = or i32 %23, 32
  %25 = load i32, ptr %2, align 4
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %21
  %29 = trunc i32 %24 to i16
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %31, i16 %29) #13, !srcloc !10
  %32 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 12
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load ptr, ptr %6, align 4
  %37 = getelementptr i8, ptr %36, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %37, i16 0) #13, !srcloc !10
  br label %41

38:                                               ; preds = %21
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr i8, ptr %39, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %24) #13, !srcloc !11
  br label %41

41:                                               ; preds = %38, %35, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysc_pre_reset_quirk_i2c(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -256
  %5 = icmp eq i32 %4, 2031616
  %6 = select i1 %5, i32 36, i32 164
  %7 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %6
  br i1 %10, label %27, label %14

14:                                               ; preds = %1
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #13, !srcloc !8
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = icmp sgt i32 %18, -1
  %20 = icmp eq i32 %18, %6
  %21 = and i1 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr i8, ptr %23, i32 %6
  %25 = getelementptr i8, ptr %24, i32 4
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %25) #13, !srcloc !8
  br label %29

27:                                               ; preds = %1
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #13, !srcloc !9
  br label %29

29:                                               ; preds = %27, %22, %14
  %30 = phi i32 [ %28, %27 ], [ %16, %22 ], [ %16, %14 ]
  %31 = and i32 %30, 32767
  %32 = load i32, ptr %7, align 4
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = trunc i32 %31 to i16
  %37 = load ptr, ptr %11, align 4
  %38 = getelementptr i8, ptr %37, i32 %6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %38, i16 %36) #13, !srcloc !10
  %39 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %40 = load i32, ptr %39, align 8
  %41 = icmp sgt i32 %40, -1
  %42 = icmp eq i32 %40, %6
  %43 = and i1 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load ptr, ptr %11, align 4
  %46 = getelementptr i8, ptr %45, i32 %6
  %47 = getelementptr i8, ptr %46, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %47, i16 0) #13, !srcloc !10
  br label %51

48:                                               ; preds = %29
  %49 = load ptr, ptr %11, align 4
  %50 = getelementptr i8, ptr %49, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %31) #13, !srcloc !11
  br label %51

51:                                               ; preds = %48, %44, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysc_post_reset_quirk_i2c(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -256
  %5 = icmp eq i32 %4, 2031616
  %6 = select i1 %5, i32 36, i32 164
  %7 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %6
  br i1 %10, label %27, label %14

14:                                               ; preds = %1
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #13, !srcloc !8
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = icmp sgt i32 %18, -1
  %20 = icmp eq i32 %18, %6
  %21 = and i1 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr i8, ptr %23, i32 %6
  %25 = getelementptr i8, ptr %24, i32 4
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %25) #13, !srcloc !8
  br label %29

27:                                               ; preds = %1
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #13, !srcloc !9
  br label %29

29:                                               ; preds = %27, %22, %14
  %30 = phi i32 [ %28, %27 ], [ %16, %22 ], [ %16, %14 ]
  %31 = and i32 %30, 32767
  %32 = or i32 %31, 32768
  %33 = load i32, ptr %7, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %29
  %37 = trunc i32 %32 to i16
  %38 = load ptr, ptr %11, align 4
  %39 = getelementptr i8, ptr %38, i32 %6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 %37) #13, !srcloc !10
  %40 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %41 = load i32, ptr %40, align 8
  %42 = icmp sgt i32 %41, -1
  %43 = icmp eq i32 %41, %6
  %44 = and i1 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load ptr, ptr %11, align 4
  %47 = getelementptr i8, ptr %46, i32 %6
  %48 = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %48, i16 0) #13, !srcloc !10
  br label %52

49:                                               ; preds = %29
  %50 = load ptr, ptr %11, align 4
  %51 = getelementptr i8, ptr %50, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %32) #13, !srcloc !11
  br label %52

52:                                               ; preds = %49, %45, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysc_module_enable_quirk_aess(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 124
  br i1 %5, label %16, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 1) #13, !srcloc !10
  %10 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 124
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 0) #13, !srcloc !10
  br label %17

16:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1) #13, !srcloc !11
  br label %17

17:                                               ; preds = %16, %13, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysc_pre_reset_quirk_dss(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @sysc_quirk_dispc(ptr noundef %0, i1 noundef zeroext false)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %99, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = trunc i32 %2 to i16
  %11 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 4120
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %13, i16 %10) #13, !srcloc !10
  %14 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 4120
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = lshr i32 %2, 16
  %19 = trunc i32 %18 to i16
  %20 = load ptr, ptr %11, align 4
  %21 = getelementptr i8, ptr %20, i32 4124
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %19) #13, !srcloc !10
  br label %26

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 4120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %2) #13, !srcloc !11
  br label %26

26:                                               ; preds = %22, %17, %9
  %27 = tail call fastcc i32 @sysc_quirk_dispc(ptr noundef %0, i1 noundef zeroext true)
  %28 = tail call i64 @ktime_get() #13
  %29 = add i64 %28, 50000
  %30 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 4120
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !23
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %35, label %47

35:                                               ; preds = %42, %26
  %36 = tail call i64 @ktime_get() #13
  %37 = icmp sgt i64 %36, %29
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load ptr, ptr %30, align 4
  %40 = getelementptr i8, ptr %39, i32 4120
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !24
  br label %47

42:                                               ; preds = %35
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #13
  %43 = load ptr, ptr %30, align 4
  %44 = getelementptr i8, ptr %43, i32 4120
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !23
  %46 = icmp eq i32 %45, %2
  br i1 %46, label %35, label %47

47:                                               ; preds = %42, %38, %26
  %48 = phi i32 [ %41, %38 ], [ %33, %26 ], [ %45, %42 ]
  %49 = icmp eq i32 %48, %2
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.sysc_pre_reset_quirk_dss, i32 noundef %2, i32 noundef %2) #14
  br label %52

52:                                               ; preds = %50, %47
  %53 = load ptr, ptr @sysc_soc, align 4
  %54 = getelementptr inbounds %struct.sysc_soc_info, ptr %53, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %85

57:                                               ; preds = %52
  %58 = load i32, ptr %5, align 4
  %59 = and i32 %58, 4
  %60 = icmp eq i32 %59, 0
  %61 = load ptr, ptr %30, align 4
  %62 = getelementptr i8, ptr %61, i32 68
  br i1 %60, label %70, label %63

63:                                               ; preds = %57
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %62, i16 0) #13, !srcloc !10
  %64 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, 68
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load ptr, ptr %30, align 4
  %69 = getelementptr i8, ptr %68, i32 72
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %69, i16 0) #13, !srcloc !10
  br label %71

70:                                               ; preds = %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 0) #13, !srcloc !11
  br label %71

71:                                               ; preds = %70, %67, %63
  %72 = load i32, ptr %5, align 4
  %73 = and i32 %72, 4
  %74 = icmp eq i32 %73, 0
  %75 = load ptr, ptr %30, align 4
  %76 = getelementptr i8, ptr %75, i32 72
  br i1 %74, label %84, label %77

77:                                               ; preds = %71
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %76, i16 0) #13, !srcloc !10
  %78 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %79 = load i32, ptr %78, align 8
  %80 = icmp eq i32 %79, 72
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load ptr, ptr %30, align 4
  %83 = getelementptr i8, ptr %82, i32 76
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %83, i16 0) #13, !srcloc !10
  br label %85

84:                                               ; preds = %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 0) #13, !srcloc !11
  br label %85

85:                                               ; preds = %84, %81, %77, %52
  %86 = load i32, ptr %5, align 4
  %87 = and i32 %86, 4
  %88 = icmp eq i32 %87, 0
  %89 = load ptr, ptr %30, align 4
  %90 = getelementptr i8, ptr %89, i32 64
  br i1 %88, label %98, label %91

91:                                               ; preds = %85
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %90, i16 0) #13, !srcloc !10
  %92 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %93 = load i32, ptr %92, align 8
  %94 = icmp eq i32 %93, 64
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load ptr, ptr %30, align 4
  %97 = getelementptr i8, ptr %96, i32 68
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %97, i16 0) #13, !srcloc !10
  br label %99

98:                                               ; preds = %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 0) #13, !srcloc !11
  br label %99

99:                                               ; preds = %98, %95, %91, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysc_module_unlock_quirk_rtc(ptr nocapture noundef readonly %0) #2 {
  tail call fastcc void @sysc_quirk_rtc(ptr noundef %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysc_module_lock_quirk_rtc(ptr nocapture noundef readonly %0) #2 {
  tail call fastcc void @sysc_quirk_rtc(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysc_module_enable_quirk_otg(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1044
  br i1 %5, label %16, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 0) #13, !srcloc !10
  %10 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 1044
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 1048
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 0) #13, !srcloc !10
  br label %17

16:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #13, !srcloc !11
  br label %17

17:                                               ; preds = %16, %13, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysc_module_disable_quirk_otg(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1044
  br i1 %5, label %16, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 1) #13, !srcloc !10
  %10 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 1044
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 1048
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 0) #13, !srcloc !10
  br label %17

16:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1) #13, !srcloc !11
  br label %17

17:                                               ; preds = %16, %13, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysc_module_enable_quirk_sgx(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 65288
  br i1 %5, label %16, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 0) #13, !srcloc !10
  %10 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 65288
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 65292
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 -32768) #13, !srcloc !10
  br label %17

16:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -2147483648) #13, !srcloc !11
  br label %17

17:                                               ; preds = %16, %13, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysc_reset_done_quirk_wdt(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 72
  br i1 %5, label %16, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 -21846) #13, !srcloc !10
  %10 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 72
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 76
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 0) #13, !srcloc !10
  br label %17

16:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 43690) #13, !srcloc !11
  br label %17

17:                                               ; preds = %16, %13, %9
  %18 = tail call i64 @ktime_get() #13
  %19 = add i64 %18, 10000000
  %20 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 52
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !25
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %33, %17
  %27 = tail call i64 @ktime_get() #13
  %28 = icmp sgt i64 %27, %19
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load ptr, ptr %20, align 4
  %31 = getelementptr i8, ptr %30, i32 52
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !26
  br label %39

33:                                               ; preds = %26
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #13
  %34 = load ptr, ptr %20, align 4
  %35 = getelementptr i8, ptr %34, i32 52
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !25
  %37 = and i32 %36, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %26

39:                                               ; preds = %33, %29, %17
  %40 = phi i32 [ %32, %29 ], [ %23, %17 ], [ %36, %33 ]
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.106) #14
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32, ptr %2, align 4
  %47 = and i32 %46, 4
  %48 = icmp eq i32 %47, 0
  %49 = load ptr, ptr %20, align 4
  %50 = getelementptr i8, ptr %49, i32 72
  br i1 %48, label %58, label %51

51:                                               ; preds = %45
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %50, i16 21845) #13, !srcloc !10
  %52 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 72
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load ptr, ptr %20, align 4
  %57 = getelementptr i8, ptr %56, i32 76
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %57, i16 0) #13, !srcloc !10
  br label %59

58:                                               ; preds = %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 21845) #13, !srcloc !11
  br label %59

59:                                               ; preds = %58, %55, %51
  %60 = tail call i64 @ktime_get() #13
  %61 = add i64 %60, 10000000
  %62 = load ptr, ptr %20, align 4
  %63 = getelementptr i8, ptr %62, i32 52
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !27
  %65 = and i32 %64, 16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %70, %59
  %68 = tail call i64 @ktime_get() #13
  %69 = icmp sgt i64 %68, %61
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #13
  %71 = load ptr, ptr %20, align 4
  %72 = getelementptr i8, ptr %71, i32 52
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !27
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %84, label %67

76:                                               ; preds = %67
  %77 = load ptr, ptr %20, align 4
  %78 = getelementptr i8, ptr %77, i32 52
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !28
  %80 = and i32 %79, 16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  %83 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %83, ptr noundef nonnull @.str.107) #14
  br label %84

84:                                               ; preds = %82, %76, %70, %59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysc_module_disable_quirk_pruss(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %3
  br i1 %7, label %27, label %11

11:                                               ; preds = %1
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %10) #13, !srcloc !8
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = icmp sgt i32 %15, -1
  %17 = icmp eq i32 %15, %3
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr i8, ptr %20, i32 %3
  %22 = getelementptr i8, ptr %21, i32 4
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %22) #13, !srcloc !8
  %24 = zext i16 %23 to i32
  %25 = shl nuw i32 %24, 16
  %26 = or i32 %25, %13
  br label %29

27:                                               ; preds = %1
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #13, !srcloc !9
  br label %29

29:                                               ; preds = %27, %19, %11
  %30 = phi i32 [ %28, %27 ], [ %26, %19 ], [ %13, %11 ]
  %31 = or i32 %30, 16
  %32 = load i32, ptr %2, align 4
  %33 = load i32, ptr %4, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %29
  %37 = trunc i32 %31 to i16
  %38 = load ptr, ptr %8, align 4
  %39 = getelementptr i8, ptr %38, i32 %32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 %37) #13, !srcloc !10
  %40 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %41 = load i32, ptr %40, align 8
  %42 = icmp sgt i32 %41, -1
  %43 = icmp eq i32 %41, %32
  %44 = and i1 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = lshr i32 %30, 16
  %47 = trunc i32 %46 to i16
  %48 = load ptr, ptr %8, align 4
  %49 = getelementptr i8, ptr %48, i32 %32
  %50 = getelementptr i8, ptr %49, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %50, i16 %47) #13, !srcloc !10
  br label %54

51:                                               ; preds = %29
  %52 = load ptr, ptr %8, align 4
  %53 = getelementptr i8, ptr %52, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %31) #13, !srcloc !11
  br label %54

54:                                               ; preds = %51, %45, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysc_quirk_dispc(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = load ptr, ptr @sysc_soc, align 4
  %4 = getelementptr inbounds %struct.sysc_soc_info, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  %7 = icmp ult i32 %6, 11
  br i1 %7, label %8, label %194

8:                                                ; preds = %2
  %9 = trunc i32 %6 to i16
  %10 = lshr i16 1791, %9
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %194, label %13

13:                                               ; preds = %8
  %14 = trunc i32 %6 to i11
  %15 = lshr i11 783, %14
  %16 = and i11 %15, 1
  %17 = icmp eq i11 %16, 0
  %18 = trunc i32 %6 to i11
  %19 = lshr i11 895, %18
  %20 = and i11 %19, 1
  %21 = icmp eq i11 %20, 0
  %22 = trunc i32 %6 to i11
  %23 = lshr i11 -784, %22
  %24 = and i11 %23, 1
  %25 = icmp eq i11 %24, 0
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  tail call void @devm_iounmap(ptr noundef %26, ptr noundef %28) #13
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = tail call ptr @devm_ioremap(ptr noundef %29, i32 noundef %32, i32 noundef %34) #13
  store ptr %35, ptr %27, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %194, label %37

37:                                               ; preds = %13
  %38 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr i8, ptr %35, i32 4160
  br i1 %41, label %56, label %43

43:                                               ; preds = %37
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %42) #13, !srcloc !8
  %45 = zext i16 %44 to i32
  %46 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 4160
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load ptr, ptr %27, align 4
  %51 = getelementptr i8, ptr %50, i32 4164
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %51) #13, !srcloc !8
  %53 = zext i16 %52 to i32
  %54 = shl nuw i32 %53, 16
  %55 = or i32 %54, %45
  br label %58

56:                                               ; preds = %37
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #13, !srcloc !9
  br label %58

58:                                               ; preds = %56, %49, %43
  %59 = phi i32 [ %57, %56 ], [ %55, %49 ], [ %45, %43 ]
  %60 = and i32 %59, 1
  %61 = and i32 %59, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  br i1 %25, label %66, label %64

64:                                               ; preds = %63
  %65 = or i32 %60, 16777216
  br label %68

66:                                               ; preds = %63
  %67 = or i32 %60, 12
  br label %68

68:                                               ; preds = %66, %64, %58
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ], [ %60, %58 ]
  %70 = zext i1 %1 to i32
  %71 = lshr exact i32 %61, 1
  %72 = or i32 %71, %59
  %73 = and i32 %72, %70
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %95, label %75

75:                                               ; preds = %68
  %76 = and i32 %59, -4
  %77 = load i32, ptr %38, align 4
  %78 = and i32 %77, 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %75
  %81 = trunc i32 %76 to i16
  %82 = load ptr, ptr %27, align 4
  %83 = getelementptr i8, ptr %82, i32 4160
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %83, i16 %81) #13, !srcloc !10
  %84 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %85 = load i32, ptr %84, align 8
  %86 = icmp eq i32 %85, 4160
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = lshr i32 %59, 16
  %89 = trunc i32 %88 to i16
  %90 = load ptr, ptr %27, align 4
  %91 = getelementptr i8, ptr %90, i32 4164
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %91, i16 %89) #13, !srcloc !10
  br label %95

92:                                               ; preds = %75
  %93 = load ptr, ptr %27, align 4
  %94 = getelementptr i8, ptr %93, i32 4160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %76) #13, !srcloc !11
  br label %95

95:                                               ; preds = %92, %87, %80, %68
  br i1 %17, label %96, label %194

96:                                               ; preds = %95
  %97 = load i32, ptr %38, align 4
  %98 = and i32 %97, 4
  %99 = icmp eq i32 %98, 0
  %100 = load ptr, ptr %27, align 4
  %101 = getelementptr i8, ptr %100, i32 4664
  br i1 %99, label %115, label %102

102:                                              ; preds = %96
  %103 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %101) #13, !srcloc !8
  %104 = zext i16 %103 to i32
  %105 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %106 = load i32, ptr %105, align 8
  %107 = icmp eq i32 %106, 4664
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = load ptr, ptr %27, align 4
  %110 = getelementptr i8, ptr %109, i32 4668
  %111 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %110) #13, !srcloc !8
  %112 = zext i16 %111 to i32
  %113 = shl nuw i32 %112, 16
  %114 = or i32 %113, %104
  br label %117

115:                                              ; preds = %96
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #13, !srcloc !9
  br label %117

117:                                              ; preds = %115, %108, %102
  %118 = phi i32 [ %116, %115 ], [ %114, %108 ], [ %104, %102 ]
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  %121 = shl nuw nsw i32 %119, 22
  %122 = or i32 %121, %69
  %123 = xor i1 %1, true
  %124 = select i1 %123, i1 true, i1 %120
  br i1 %124, label %145, label %125

125:                                              ; preds = %117
  %126 = and i32 %118, -2
  %127 = load i32, ptr %38, align 4
  %128 = and i32 %127, 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %142, label %130

130:                                              ; preds = %125
  %131 = trunc i32 %126 to i16
  %132 = load ptr, ptr %27, align 4
  %133 = getelementptr i8, ptr %132, i32 4664
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %133, i16 %131) #13, !srcloc !10
  %134 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %135 = load i32, ptr %134, align 8
  %136 = icmp eq i32 %135, 4664
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  %138 = lshr i32 %118, 16
  %139 = trunc i32 %138 to i16
  %140 = load ptr, ptr %27, align 4
  %141 = getelementptr i8, ptr %140, i32 4668
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %141, i16 %139) #13, !srcloc !10
  br label %145

142:                                              ; preds = %125
  %143 = load ptr, ptr %27, align 4
  %144 = getelementptr i8, ptr %143, i32 4664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %126) #13, !srcloc !11
  br label %145

145:                                              ; preds = %142, %137, %130, %117
  br i1 %21, label %146, label %194

146:                                              ; preds = %145
  %147 = load i32, ptr %38, align 4
  %148 = and i32 %147, 4
  %149 = icmp eq i32 %148, 0
  %150 = load ptr, ptr %27, align 4
  %151 = getelementptr i8, ptr %150, i32 6216
  br i1 %149, label %165, label %152

152:                                              ; preds = %146
  %153 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %151) #13, !srcloc !8
  %154 = zext i16 %153 to i32
  %155 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %156 = load i32, ptr %155, align 8
  %157 = icmp eq i32 %156, 6216
  br i1 %157, label %158, label %167

158:                                              ; preds = %152
  %159 = load ptr, ptr %27, align 4
  %160 = getelementptr i8, ptr %159, i32 6220
  %161 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %160) #13, !srcloc !8
  %162 = zext i16 %161 to i32
  %163 = shl nuw i32 %162, 16
  %164 = or i32 %163, %154
  br label %167

165:                                              ; preds = %146
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #13, !srcloc !9
  br label %167

167:                                              ; preds = %165, %158, %152
  %168 = phi i32 [ %166, %165 ], [ %164, %158 ], [ %154, %152 ]
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  %171 = shl nuw nsw i32 %169, 30
  %172 = or i32 %171, %122
  %173 = select i1 %123, i1 true, i1 %170
  br i1 %173, label %194, label %174

174:                                              ; preds = %167
  %175 = and i32 %168, -2
  %176 = load i32, ptr %38, align 4
  %177 = and i32 %176, 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %174
  %180 = trunc i32 %175 to i16
  %181 = load ptr, ptr %27, align 4
  %182 = getelementptr i8, ptr %181, i32 6216
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %182, i16 %180) #13, !srcloc !10
  %183 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %184 = load i32, ptr %183, align 8
  %185 = icmp eq i32 %184, 6216
  br i1 %185, label %186, label %194

186:                                              ; preds = %179
  %187 = lshr i32 %168, 16
  %188 = trunc i32 %187 to i16
  %189 = load ptr, ptr %27, align 4
  %190 = getelementptr i8, ptr %189, i32 6220
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %190, i16 %188) #13, !srcloc !10
  br label %194

191:                                              ; preds = %174
  %192 = load ptr, ptr %27, align 4
  %193 = getelementptr i8, ptr %192, i32 6216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %175) #13, !srcloc !11
  br label %194

194:                                              ; preds = %191, %186, %179, %167, %145, %95, %13, %8, %2
  %195 = phi i32 [ 0, %2 ], [ -5, %13 ], [ %69, %95 ], [ %122, %145 ], [ %172, %167 ], [ %172, %179 ], [ %172, %186 ], [ %172, %191 ], [ 0, %8 ]
  ret i32 %195
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sysc_quirk_rtc(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = select i1 %1, i32 0, i32 -1784352288
  %4 = select i1 %1, i32 0, i32 -2082010349
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !29
  %6 = tail call i64 @ktime_get() #13
  %7 = add i64 %6, 50000
  %8 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 68
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !30
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %21, %2
  %15 = tail call i64 @ktime_get() #13
  %16 = icmp sgt i64 %15, %7
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr i8, ptr %18, i32 68
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !31
  br label %28

21:                                               ; preds = %14
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 21474800) #13
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr i8, ptr %23, i32 68
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !30
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %14

28:                                               ; preds = %21, %17, %2
  %29 = phi i32 [ %20, %17 ], [ %11, %2 ], [ %25, %21 ]
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.105) #14
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %34
  %40 = trunc i32 %4 to i16
  %41 = load ptr, ptr %8, align 4
  %42 = getelementptr i8, ptr %41, i32 108
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %42, i16 %40) #13, !srcloc !10
  %43 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, 108
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = lshr i32 %4, 16
  %48 = trunc i32 %47 to i16
  %49 = load ptr, ptr %8, align 4
  %50 = getelementptr i8, ptr %49, i32 112
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %50, i16 %48) #13, !srcloc !10
  br label %54

51:                                               ; preds = %34
  %52 = load ptr, ptr %8, align 4
  %53 = getelementptr i8, ptr %52, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %4) #13, !srcloc !11
  br label %54

54:                                               ; preds = %51, %46, %39
  %55 = load i32, ptr %35, align 4
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = trunc i32 %3 to i16
  %60 = load ptr, ptr %8, align 4
  %61 = getelementptr i8, ptr %60, i32 112
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %61, i16 %59) #13, !srcloc !10
  %62 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %63, 112
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = lshr i32 %3, 16
  %67 = trunc i32 %66 to i16
  %68 = load ptr, ptr %8, align 4
  %69 = getelementptr i8, ptr %68, i32 116
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %69, i16 %67) #13, !srcloc !10
  br label %73

70:                                               ; preds = %54
  %71 = load ptr, ptr %8, align 4
  %72 = getelementptr i8, ptr %71, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %3) #13, !srcloc !11
  br label %73

73:                                               ; preds = %70, %65, %58
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #13, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysc_context_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = icmp eq i32 %1, 5
  br i1 %4, label %5, label %23

5:                                                ; preds = %3
  %6 = load ptr, ptr @sysc_soc, align 4
  %7 = getelementptr inbounds %struct.sysc_soc_info, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %23, label %10

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %19, %10 ], [ %8, %5 ]
  %12 = getelementptr i8, ptr %11, i32 -4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sysc, ptr %13, i32 0, i32 17
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 2
  %17 = icmp ne i8 %16, 0
  %18 = tail call fastcc i32 @sysc_reinit_module(ptr noundef %13, i1 noundef zeroext %17) #13
  %19 = load ptr, ptr %11, align 4
  %20 = load ptr, ptr @sysc_soc, align 4
  %21 = getelementptr inbounds %struct.sysc_soc_info, ptr %20, i32 0, i32 4
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %10

23:                                               ; preds = %10, %5, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysc_reinit_module(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 17
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %2
  %9 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %10
  br i1 %14, label %34, label %18

18:                                               ; preds = %8
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #13, !srcloc !8
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = icmp sgt i32 %22, -1
  %24 = icmp eq i32 %22, %10
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load ptr, ptr %15, align 4
  %28 = getelementptr i8, ptr %27, i32 %10
  %29 = getelementptr i8, ptr %28, i32 4
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %29) #13, !srcloc !8
  %31 = zext i16 %30 to i32
  %32 = shl nuw i32 %31, 16
  %33 = or i32 %32, %20
  br label %36

34:                                               ; preds = %8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #13, !srcloc !9
  br label %36

36:                                               ; preds = %34, %26, %18
  %37 = phi i32 [ %35, %34 ], [ %33, %26 ], [ %20, %18 ]
  %38 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 16
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %102, label %41

41:                                               ; preds = %36
  %42 = tail call i32 @sysc_runtime_suspend(ptr noundef %3)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.112, i32 noundef %42) #14
  br label %45

45:                                               ; preds = %44, %41, %2
  %46 = tail call i32 @sysc_runtime_resume(ptr noundef %3)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.113, i32 noundef %46) #14
  br label %49

49:                                               ; preds = %48, %45
  %50 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 12, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 536870912
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %96, label %54

54:                                               ; preds = %49
  %55 = tail call fastcc i32 @sysc_reset(ptr noundef %0)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.114, i32 noundef %55) #14
  br label %58

58:                                               ; preds = %57, %54
  %59 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 16
  %60 = load i32, ptr %59, align 8
  %61 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 24
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  tail call void %62(ptr noundef %0) #13
  br label %65

65:                                               ; preds = %64, %58
  %66 = getelementptr %struct.sysc, ptr %0, i32 0, i32 4, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = load i32, ptr %50, align 4
  %69 = and i32 %68, 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %65
  %72 = trunc i32 %60 to i16
  %73 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 %67
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %75, i16 %72) #13, !srcloc !10
  %76 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 4
  %77 = load i32, ptr %76, align 8
  %78 = icmp sgt i32 %77, -1
  %79 = icmp eq i32 %77, %67
  %80 = and i1 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %71
  %82 = lshr i32 %60, 16
  %83 = trunc i32 %82 to i16
  %84 = load ptr, ptr %73, align 4
  %85 = getelementptr i8, ptr %84, i32 %67
  %86 = getelementptr i8, ptr %85, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %86, i16 %83) #13, !srcloc !10
  br label %91

87:                                               ; preds = %65
  %88 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %60) #13, !srcloc !11
  br label %91

91:                                               ; preds = %87, %81, %71
  %92 = getelementptr inbounds %struct.sysc, ptr %0, i32 0, i32 25
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  tail call void %93(ptr noundef %0) #13
  br label %96

96:                                               ; preds = %95, %91, %49
  %97 = phi i32 [ %46, %49 ], [ %55, %91 ], [ %55, %95 ]
  br i1 %1, label %102, label %98

98:                                               ; preds = %96
  %99 = tail call i32 @sysc_runtime_suspend(ptr noundef %3)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.112, i32 noundef %99) #14
  br label %102

102:                                              ; preds = %101, %98, %96, %36
  %103 = phi i32 [ 0, %36 ], [ %97, %96 ], [ %99, %101 ], [ 0, %98 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysc_noirq_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 12, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 640
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 17
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = or i8 %10, 4
  store i8 %14, ptr %9, align 4
  %15 = tail call i32 @sysc_runtime_suspend(ptr noundef %0)
  br label %16

16:                                               ; preds = %13, %8, %1
  %17 = phi i32 [ %15, %13 ], [ 0, %1 ], [ 0, %8 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysc_noirq_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 12, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 640
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = and i32 %5, 134217728
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 17
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 4
  br i1 %10, label %18, label %14

14:                                               ; preds = %8
  %15 = icmp ne i8 %13, 0
  %16 = tail call fastcc i32 @sysc_reinit_module(ptr noundef %3, i1 noundef zeroext %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %23

18:                                               ; preds = %8
  %19 = icmp eq i8 %13, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = tail call i32 @sysc_runtime_resume(ptr noundef %0)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %14
  %24 = phi i32 [ %16, %14 ], [ %21, %20 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.115, i32 noundef %24) #14
  br label %25

25:                                               ; preds = %23, %20, %18, %14
  %26 = phi i32 [ 0, %14 ], [ 0, %20 ], [ 0, %18 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 17
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, -5
  store i8 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %25, %1
  %31 = phi i32 [ %26, %25 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
!8 = !{i64 446369}
!9 = !{i64 447207}
!10 = !{i64 446169}
!11 = !{i64 446789}
!12 = !{i32 0, i32 33}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"auto-init"}
!16 = !{i64 2148296836}
!17 = !{i64 682048, i64 2148172019, i64 2148172045, i64 2148172092, i64 2148172114, i64 2148172142, i64 2148172162}
!18 = !{i64 668111, i64 668135, i64 668156, i64 668173, i64 668190}
!19 = !{i64 2148297036}
!20 = !{i64 2148182941}
!21 = !{i64 668617, i64 668642, i64 668664, i64 668680, i64 668692, i64 668712, i64 668736, i64 668752, i64 668764}
!22 = !{i64 2148183067}
!23 = !{i64 2151750245}
!24 = !{i64 2151750642}
!25 = !{i64 2151757081}
!26 = !{i64 2151757430}
!27 = !{i64 2151759387}
!28 = !{i64 2151759736}
!29 = !{i64 587726, i64 587787}
!30 = !{i64 2151753733}
!31 = !{i64 2151754085}
!32 = !{i64 590743}
