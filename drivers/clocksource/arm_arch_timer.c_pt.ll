; ModuleID = '/llk/IR/drivers/clocksource/arm_arch_timer.c_pt.bc'
source_filename = "../drivers/clocksource/arm_arch_timer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arch_timer_read_counter:\09\09\09\09\09"
module asm "\09.asciz \09\22arch_timer_read_counter\22\09\09\09\09\09"
module asm "__kstrtabns_arch_timer_read_counter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvm_arch_ptp_get_crosststamp:\09\09\09\09\09"
module asm "\09.asciz \09\22kvm_arch_ptp_get_crosststamp\22\09\09\09\09\09"
module asm "__kstrtabns_kvm_arch_ptp_get_crosststamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.arch_timer_kvm_info = type { %struct.timecounter, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.arch_timer_mem = type { i32, i32, [8 x %struct.arch_timer_mem_frame] }
%struct.arch_timer_mem_frame = type { i8, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.arch_timer = type { ptr, [60 x i8], %struct.clock_event_device }

@__setup_str_early_evtstrm_cfg = internal constant [35 x i8] c"clocksource.arm_arch_timer.evtstrm\00", section ".init.rodata", align 1
@__setup_early_evtstrm_cfg = internal global %struct.obs_kernel_param { ptr @__setup_str_early_evtstrm_cfg, ptr @early_evtstrm_cfg, i32 1 }, section ".init.setup", align 4
@arch_timer_read_counter = dso_local global ptr @arch_counter_get_cntvct, section ".data..ro_after_init", align 4
@__kstrtab_arch_timer_read_counter = external dso_local constant [0 x i8], align 1
@__kstrtabns_arch_timer_read_counter = external dso_local constant [0 x i8], align 1
@__ksymtab_arch_timer_read_counter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arch_timer_read_counter to i32), ptr @__kstrtab_arch_timer_read_counter, ptr @__kstrtabns_arch_timer_read_counter }, section "___ksymtab_gpl+arch_timer_read_counter", align 4
@arch_timer_rate = internal global i32 0, section ".data..ro_after_init", align 4
@evtstrm_available = internal global %struct.cpumask zeroinitializer, align 4
@arch_timer_kvm_info = internal global %struct.arch_timer_kvm_info zeroinitializer, align 8
@__of_table_armv7_arch_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv7-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @arch_timer_of_init }, section "__timer_of_table", align 4
@__of_table_armv8_arch_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv8-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @arch_timer_of_init }, section "__timer_of_table", align 4
@__of_table_armv7_arch_timer_mem = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv7-timer-mem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @arch_timer_mem_of_init }, section "__timer_of_table", align 4
@arch_timer_uses_ppi = internal unnamed_addr global i32 2, section ".data..ro_after_init", align 4
@clocksource_counter = internal global %struct.clocksource { ptr @arch_counter_read, i64 0, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.39, %struct.list_head zeroinitializer, i32 400, i32 1, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@__kstrtab_kvm_arch_ptp_get_crosststamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvm_arch_ptp_get_crosststamp = external dso_local constant [0 x i8], align 1
@__ksymtab_kvm_arch_ptp_get_crosststamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvm_arch_ptp_get_crosststamp to i32), ptr @__kstrtab_kvm_arch_ptp_get_crosststamp, ptr @__kstrtabns_kvm_arch_ptp_get_crosststamp }, section "___ksymtab_gpl+kvm_arch_ptp_get_crosststamp", align 4
@evtstrm_enable = internal global i8 1, section ".data..ro_after_init", align 1
@arch_timers_present = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str = private unnamed_addr constant [46 x i8] c"\014arch_timer: multiple nodes in dt, skipping\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"interrupt-names\00", align 1
@arch_timer_ppi_names = internal unnamed_addr constant [5 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 4
@arch_timer_ppi = internal unnamed_addr global [5 x i32] zeroinitializer, section ".data..ro_after_init", align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"always-on\00", align 1
@arch_timer_c3stop = internal unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"arm,cpu-registers-not-fw-configured\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"\013arch_timer: No interrupt available, giving up\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"arm,no-tick-in-suspend\00", align 1
@arch_counter_suspend_stop = internal unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"sec-phys\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"virt\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"hyp-phys\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"hyp-virt\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"\014arch_timer: frequency not available\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"drivers/clocksource/arm_arch_timer.c\00", align 1
@__boot_cpu_mode = external dso_local local_unnamed_addr global i32, align 4
@arch_timer_evt = internal unnamed_addr global ptr null, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"arch_timer\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"\013arch_timer: can't register interrupt %d (%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"clockevents/arm/arch_timer:starting\00", align 1
@arch_timer_cpu_pm_notifier = internal global %struct.notifier_block { ptr @arch_timer_cpu_pm_notify, ptr null, i32 0 }, align 4
@saved_cntkctl = internal global i32 0, section ".data..percpu", align 4
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [15 x i8] c"arch_sys_timer\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"arch_mem_timer\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@arch_timer_mem_use_virtual = internal unnamed_addr global i1 false, section ".data..ro_after_init", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.21 = private unnamed_addr constant [70 x i8] c"\014arch_timer: WARNING: Invalid trigger for IRQ%d, assuming level low\0A\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"\014arch_timer: WARNING: Please fix your firmware\0A\00", align 1
@arch_timer_mem_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv7-timer-mem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@arch_timer_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv7-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv8-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.23 = private unnamed_addr constant [65 x i8] c"\016arch_timer: %s%s%s timer(s) running at %lu.%02luMHz (%s%s%s).\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"cp15\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"mmio\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@cyclecounter = internal global %struct.cyclecounter { ptr @arch_counter_read_cc, i64 0, i32 0, i32 0 }, section ".data..ro_after_init", align 8
@arch_timer_mem = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str.29 = private unnamed_addr constant [13 x i8] c"frame-number\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c"\013arch_timer: [Firmware Bug]: Missing frame-number.\0A\00", align 1
@.str.31 = private unnamed_addr constant [76 x i8] c"\013arch_timer: [Firmware Bug]: Wrong frame-number, only 0-%u are permitted.\0A\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"\013arch_timer: [Firmware Bug]: Duplicated frame-number.\0A\00", align 1
@.str.33 = private unnamed_addr constant [62 x i8] c"\013arch_timer: Unable to find a suitable frame in timer @ %pa\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.34 = private unnamed_addr constant [42 x i8] c"\013arch_timer: Can't map CNTCTLBase @ %pa\0A\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"\013arch_timer: Unable to map frame @ %pa\0A\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"\013arch_timer: Frame missing %s irq.\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.37 = private unnamed_addr constant [43 x i8] c"\013arch_timer: Can't map frame's registers\0A\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"\013arch_timer: Failed to request mem timer irq\0A\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"arch_sys_counter\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_arch_timer_read_counter, ptr @__ksymtab_kvm_arch_ptp_get_crosststamp, ptr @__of_table_armv7_arch_timer, ptr @__of_table_armv7_arch_timer_mem, ptr @__of_table_armv8_arch_timer, ptr @__setup_early_evtstrm_cfg], section "llvm.metadata"
@switch.table.__arch_timer_setup = private unnamed_addr constant [4 x ptr] [ptr @arch_timer_shutdown_phys, ptr @arch_timer_shutdown_phys, ptr @arch_timer_shutdown_virt, ptr @arch_timer_shutdown_phys], align 4
@switch.table.__arch_timer_setup.40 = private unnamed_addr constant [4 x ptr] [ptr @arch_timer_set_next_event_phys, ptr @arch_timer_set_next_event_phys, ptr @arch_timer_set_next_event_virt, ptr @arch_timer_set_next_event_phys], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_evtstrm_cfg(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @evtstrm_enable) #15
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @arch_counter_get_cntvct() #1 {
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !9
  %1 = tail call i64 asm sideeffect "mrrc p15, 1, ${0:Q}, ${0:R}, c14", "=r"() #15, !srcloc !10
  ret i64 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @arch_timer_get_rate() local_unnamed_addr #2 {
  %1 = load i32, ptr @arch_timer_rate, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @arch_timer_evtstrm_available() local_unnamed_addr #3 {
  %1 = tail call ptr @llvm.thread.pointer() #15
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = lshr i32 %3, 5
  %5 = getelementptr i32, ptr @evtstrm_available, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %3, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, %6
  %10 = icmp ne i32 %9, 0
  ret i1 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @arch_timer_get_kvm_info() local_unnamed_addr #4 {
  ret ptr @arch_timer_kvm_info
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @arch_timer_of_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load i32, ptr @arch_timers_present, align 4
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  br label %60

7:                                                ; preds = %1
  %8 = or i32 %2, 1
  store i32 %8, ptr @arch_timers_present, align 4
  %9 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef null) #15
  %10 = icmp eq ptr %9, null
  br label %11

11:                                               ; preds = %24, %7
  %12 = phi i32 [ 0, %7 ], [ %25, %24 ]
  br i1 %10, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr [5 x ptr], ptr @arch_timer_ppi_names, i32 0, i32 %12
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @of_irq_get_byname(ptr noundef %0, ptr noundef %15) #15
  br label %19

17:                                               ; preds = %11
  %18 = tail call i32 @of_irq_get(ptr noundef %0, i32 noundef %12) #15
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i32 [ %16, %13 ], [ %18, %17 ]
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = getelementptr [5 x i32], ptr @arch_timer_ppi, i32 0, i32 %12
  store i32 %20, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = add nuw nsw i32 %12, 1
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %11

27:                                               ; preds = %24
  %28 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 2), align 4
  store i32 %28, ptr getelementptr inbounds (%struct.arch_timer_kvm_info, ptr @arch_timer_kvm_info, i32 0, i32 1), align 8
  %29 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c0, 0", "=r"() #15, !srcloc !11
  tail call fastcc void @arch_timer_of_configure_rate(i32 noundef %29, ptr noundef %0) #17
  %30 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef null) #15
  %31 = icmp eq ptr %30, null
  %32 = zext i1 %31 to i8
  store i8 %32, ptr @arch_timer_c3stop, align 1
  %33 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef null) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load i32, ptr @__boot_cpu_mode, align 4
  %37 = and i32 %36, -2147483617
  %38 = icmp ne i32 %37, 26
  %39 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 2), align 4
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  %42 = select i1 %41, i32 2, i32 0
  br label %43

43:                                               ; preds = %35, %27
  %44 = phi i32 [ %42, %35 ], [ 0, %27 ]
  store i32 %44, ptr @arch_timer_uses_ppi, align 4
  %45 = getelementptr [5 x i32], ptr @arch_timer_ppi, i32 0, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  br label %60

50:                                               ; preds = %43
  %51 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef null) #15
  %52 = icmp ne ptr %51, null
  %53 = zext i1 %52 to i8
  store i8 %53, ptr @arch_counter_suspend_stop, align 1
  %54 = tail call fastcc i32 @arch_timer_register() #17
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = tail call fastcc zeroext i1 @arch_timer_needs_of_probing() #17
  br i1 %57, label %60, label %58

58:                                               ; preds = %56
  %59 = tail call fastcc i32 @arch_timer_common_init() #17
  br label %60

60:                                               ; preds = %58, %56, %50, %48, %5
  %61 = phi i32 [ 0, %5 ], [ %59, %58 ], [ -22, %48 ], [ %54, %50 ], [ 0, %56 ]
  ret i32 %61
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @arch_timer_mem_of_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.resource, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !12
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 168) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %68, label %7

7:                                                ; preds = %1
  %8 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %66

10:                                               ; preds = %7
  %11 = load i32, ptr %2, align 4
  store i32 %11, ptr %5, align 8
  %12 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 1, %11
  %15 = add i32 %14, %13
  %16 = getelementptr inbounds %struct.arch_timer_mem, ptr %5, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = call ptr @of_get_next_available_child(ptr noundef %0, ptr noundef null) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %53, label %19

19:                                               ; preds = %40, %10
  %20 = phi ptr [ %51, %40 ], [ %17, %10 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !12
  %21 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %20, ptr noundef nonnull @.str.29, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #15
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #16
  br label %39

25:                                               ; preds = %19
  %26 = load i32, ptr %3, align 4
  %27 = icmp ugt i32 %26, 7
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 7) #16
  br label %39

30:                                               ; preds = %25
  %31 = getelementptr %struct.arch_timer_mem, ptr %5, i32 0, i32 2, i32 %26
  %32 = load i8, ptr %31, align 4, !range !13
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #16
  br label %39

36:                                               ; preds = %30
  %37 = call i32 @of_address_to_resource(ptr noundef nonnull %20, i32 noundef 0, ptr noundef nonnull %2) #15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %34, %28, %23
  call void @of_node_put(ptr noundef nonnull %20) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %66

40:                                               ; preds = %36
  %41 = load i32, ptr %2, align 4
  %42 = getelementptr %struct.arch_timer_mem, ptr %5, i32 0, i32 2, i32 %26, i32 1
  store i32 %41, ptr %42, align 4
  %43 = load i32, ptr %12, align 4
  %44 = sub i32 1, %41
  %45 = add i32 %44, %43
  %46 = getelementptr %struct.arch_timer_mem, ptr %5, i32 0, i32 2, i32 %26, i32 2
  store i32 %45, ptr %46, align 4
  %47 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %20, i32 noundef 1) #15
  %48 = getelementptr %struct.arch_timer_mem, ptr %5, i32 0, i32 2, i32 %26, i32 4
  store i32 %47, ptr %48, align 4
  %49 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %20, i32 noundef 0) #15
  %50 = getelementptr %struct.arch_timer_mem, ptr %5, i32 0, i32 2, i32 %26, i32 3
  store i32 %49, ptr %50, align 4
  store i8 1, ptr %31, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %51 = call ptr @of_get_next_available_child(ptr noundef %0, ptr noundef nonnull %20) #15
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %19

53:                                               ; preds = %40, %10
  %54 = call fastcc ptr @arch_timer_mem_find_best_frame(ptr noundef nonnull %5) #17
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull %5) #16
  br label %66

58:                                               ; preds = %53
  %59 = call fastcc i32 @arch_timer_mem_frame_get_cntfrq(ptr noundef nonnull %54) #17
  call fastcc void @arch_timer_of_configure_rate(i32 noundef %59, ptr noundef %0) #17
  %60 = call fastcc i32 @arch_timer_mem_frame_register(ptr noundef nonnull %54) #17
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = call fastcc zeroext i1 @arch_timer_needs_of_probing() #17
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = call fastcc i32 @arch_timer_common_init() #17
  br label %66

66:                                               ; preds = %64, %62, %58, %56, %39, %7
  %67 = phi i32 [ -22, %7 ], [ %60, %58 ], [ 0, %62 ], [ %65, %64 ], [ -22, %56 ], [ -22, %39 ]
  call void @kfree(ptr noundef nonnull %5) #15
  br label %68

68:                                               ; preds = %66, %1
  %69 = phi i32 [ %67, %66 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #15
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kvm_arch_ptp_get_crosststamp(ptr noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2) #1 {
  %4 = alloca %struct.timespec64, align 8
  %5 = load i32, ptr @arch_timer_uses_ppi, align 4
  %6 = icmp ne i32 %5, 2
  %7 = zext i1 %6 to i32
  %8 = tail call i32 @arm_smccc_1_1_get_conduit() #15
  switch i32 %8, label %13 [
    i32 2, label %9
    i32 1, label %11
  ]

9:                                                ; preds = %3
  %10 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2046820351, i32 %7) #15, !srcloc !14
  br label %14

11:                                               ; preds = %3
  %12 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1600070 | (((0) & 0xF) << 0)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2046820351, i32 %7) #15, !srcloc !15
  br label %14

13:                                               ; preds = %3
  tail call void asm sideeffect "", "{r0},{r1},~{memory}"(i32 -2046820351, i32 %7) #15, !srcloc !16
  br label %35

14:                                               ; preds = %11, %9
  %15 = phi { i32, i32, i32, i32 } [ %12, %11 ], [ %10, %9 ]
  %16 = extractvalue { i32, i32, i32, i32 } %15, 3
  %17 = extractvalue { i32, i32, i32, i32 } %15, 2
  %18 = extractvalue { i32, i32, i32, i32 } %15, 0
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %14
  %21 = extractvalue { i32, i32, i32, i32 } %15, 1
  %22 = zext i32 %18 to i64
  %23 = shl nuw nsw i64 %22, 32
  %24 = zext i32 %21 to i64
  %25 = or i64 %23, %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %25) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  %26 = icmp eq ptr %0, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = zext i32 %17 to i64
  %29 = shl nuw i64 %28, 32
  %30 = zext i32 %16 to i64
  %31 = or i64 %29, %30
  store i64 %31, ptr %0, align 8
  br label %32

32:                                               ; preds = %27, %20
  %33 = icmp eq ptr %2, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  store ptr @clocksource_counter, ptr %2, align 4
  br label %35

35:                                               ; preds = %34, %32, %14, %13
  %36 = phi i32 [ -95, %14 ], [ 0, %34 ], [ 0, %32 ], [ -95, %13 ]
  ret i32 %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_1_1_get_conduit() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @arch_timer_of_configure_rate(i32 noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = load i32, ptr @arch_timer_rate, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @arch_timer_rate, i32 noundef 1, i32 noundef 0) #15
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store i32 %0, ptr @arch_timer_rate, align 4
  br label %11

9:                                                ; preds = %5
  %10 = load i32, ptr @arch_timer_rate, align 4
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i32 [ %10, %9 ], [ %0, %8 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = icmp ult i32 %12, 1000000
  br i1 %15, label %16, label %19, !prof !17

16:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #15
  br label %19

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #16
  br label %19

19:                                               ; preds = %17, %16, %14, %2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @arch_timer_register() unnamed_addr #0 section ".init.text" {
  %1 = tail call noalias ptr @__alloc_percpu(i32 noundef 192, i32 noundef 64) #19
  store ptr %1, ptr @arch_timer_evt, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %54, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @arch_timer_uses_ppi, align 4
  %5 = getelementptr [5 x i32], ptr @arch_timer_ppi, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  switch i32 %4, label %23 [
    i32 2, label %24
    i32 0, label %7
    i32 1, label %7
  ]

7:                                                ; preds = %3, %3
  %8 = tail call i32 @__request_percpu_irq(i32 noundef %6, ptr noundef nonnull @arch_timer_handler_phys, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull %1) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load i32, ptr @arch_timer_uses_ppi, align 4
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 1), align 4
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = load ptr, ptr @arch_timer_evt, align 4
  %18 = tail call i32 @__request_percpu_irq(i32 noundef %13, ptr noundef nonnull @arch_timer_handler_phys, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef %17) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr @arch_timer_ppi, align 4
  %22 = load ptr, ptr @arch_timer_evt, align 4
  tail call void @free_percpu_irq(i32 noundef %21, ptr noundef %22) #15
  br label %27

23:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/arm_arch_timer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1203, 0\0A.popsection", ""() #15, !srcloc !18
  unreachable

24:                                               ; preds = %3
  %25 = tail call i32 @__request_percpu_irq(i32 noundef %6, ptr noundef nonnull @arch_timer_handler_virt, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull %1) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24, %20, %7
  %28 = phi i32 [ %6, %24 ], [ %13, %20 ], [ %6, %7 ]
  %29 = phi i32 [ %25, %24 ], [ %18, %20 ], [ %8, %7 ]
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %28, i32 noundef %29) #16
  br label %51

31:                                               ; preds = %24, %16, %10
  %32 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @arch_timer_cpu_pm_notifier) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = tail call i32 @__cpuhp_setup_state(i32 noundef 122, ptr noundef nonnull @.str.16, i1 noundef zeroext true, ptr noundef nonnull @arch_timer_starting_cpu, ptr noundef nonnull @arch_timer_dying_cpu, i1 noundef zeroext false) #15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %34
  tail call fastcc void @arch_timer_cpu_pm_deinit() #17
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi i32 [ %32, %31 ], [ %35, %37 ]
  %40 = load i32, ptr @arch_timer_uses_ppi, align 4
  %41 = getelementptr [5 x i32], ptr @arch_timer_ppi, i32 0, i32 %40
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr @arch_timer_evt, align 4
  tail call void @free_percpu_irq(i32 noundef %42, ptr noundef %43) #15
  %44 = load i32, ptr @arch_timer_uses_ppi, align 4
  %45 = icmp eq i32 %44, 0
  %46 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 1), align 4
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load ptr, ptr @arch_timer_evt, align 4
  tail call void @free_percpu_irq(i32 noundef %46, ptr noundef %50) #15
  br label %51

51:                                               ; preds = %49, %38, %27
  %52 = phi i32 [ %29, %27 ], [ %39, %49 ], [ %39, %38 ]
  %53 = load ptr, ptr @arch_timer_evt, align 4
  tail call void @free_percpu(ptr noundef %53) #15
  br label %54

54:                                               ; preds = %51, %34, %0
  %55 = phi i32 [ 0, %34 ], [ %52, %51 ], [ -12, %0 ]
  ret i32 %55
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc zeroext i1 @arch_timer_needs_of_probing() unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @arch_timers_present, align 4
  %2 = and i32 %1, 3
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %14, label %4

4:                                                ; preds = %0
  %5 = and i32 %1, 1
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr @arch_timer_of_match, ptr @arch_timer_mem_of_match
  %8 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull %7, ptr noundef null) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %8) #15
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ false, %4 ], [ %11, %10 ]
  tail call void @of_node_put(ptr noundef %8) #15
  br label %14

14:                                               ; preds = %12, %0
  %15 = phi i1 [ %13, %12 ], [ false, %0 ]
  ret i1 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @arch_timer_common_init() unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @arch_timers_present, align 4
  tail call fastcc void @arch_timer_banner(i32 noundef %1) #17
  %2 = load i32, ptr @arch_timers_present, align 4
  tail call fastcc void @arch_counter_register(i32 noundef %2) #17
  %3 = tail call i32 @arch_timer_arch_init() #15
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arch_timer_handler_virt(i32 noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c3, 1", "=r"() #15, !srcloc !19
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = or i32 %3, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c3, 1", "r"(i32 %7) #15, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !21
  %8 = load ptr, ptr %1, align 64
  tail call void %8(ptr noundef %1) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 1, %6 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arch_timer_handler_phys(i32 noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c2, 1", "=r"() #15, !srcloc !22
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = or i32 %3, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c2, 1", "r"(i32 %7) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  %8 = load ptr, ptr %1, align 64
  tail call void %8(ptr noundef %1) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 1, %6 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_irq(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arch_timer_starting_cpu(i32 noundef %0) #1 {
  %2 = load ptr, ptr @arch_timer_evt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %5) #12, !srcloc !25
  %7 = add i32 %6, %3
  %8 = inttoptr i32 %7 to ptr
  tail call fastcc void @__arch_timer_setup(i32 noundef 1, ptr noundef %8)
  %9 = load i32, ptr @arch_timer_uses_ppi, align 4
  %10 = getelementptr [5 x i32], ptr @arch_timer_ppi, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = tail call ptr @irq_get_irq_data(i32 noundef %11) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 15
  switch i32 %18, label %19 [
    i32 8, label %22
    i32 4, label %22
  ]

19:                                               ; preds = %14, %1
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %11) #16
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #16
  br label %22

22:                                               ; preds = %19, %14, %14
  %23 = phi i32 [ 8, %19 ], [ %18, %14 ], [ %18, %14 ]
  %24 = load i32, ptr @arch_timer_uses_ppi, align 4
  %25 = getelementptr [5 x i32], ptr @arch_timer_ppi, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  tail call void @enable_percpu_irq(i32 noundef %26, i32 noundef %23) #15
  %27 = load i32, ptr @arch_timer_uses_ppi, align 4
  %28 = icmp eq i32 %27, 0
  %29 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 1), align 4
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %46

32:                                               ; preds = %22
  %33 = tail call ptr @irq_get_irq_data(i32 noundef %29) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.irq_data, ptr %33, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 15
  switch i32 %39, label %40 [
    i32 8, label %43
    i32 4, label %43
  ]

40:                                               ; preds = %35, %32
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %29) #16
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #16
  br label %43

43:                                               ; preds = %40, %35, %35
  %44 = phi i32 [ 8, %40 ], [ %39, %35 ], [ %39, %35 ]
  %45 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 1), align 4
  tail call void @enable_percpu_irq(i32 noundef %45, i32 noundef %44) #15
  br label %46

46:                                               ; preds = %43, %22
  %47 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c1, 0", "=r"() #15, !srcloc !26
  %48 = and i32 %47, -776
  %49 = or i32 %48, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c1, 0", "r"(i32 %49) #15, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !28
  %50 = load i8, ptr @evtstrm_enable, align 1, !range !13
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %81, label %52

52:                                               ; preds = %46
  %53 = load i32, ptr @arch_timer_rate, align 4
  %54 = udiv i32 %53, 20000
  %55 = icmp ult i32 %53, 20000
  %56 = tail call i32 @llvm.ctlz.i32(i32 %54, i1 false) #15, !range !29
  %57 = sub nuw nsw i32 32, %56
  %58 = select i1 %55, i32 0, i32 %57
  %59 = add nsw i32 %58, -1
  %60 = icmp ugt i32 %58, 1
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = add nsw i32 %58, -2
  %63 = shl nuw nsw i32 1, %62
  %64 = and i32 %63, %54
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 %59, i32 %58
  br label %67

67:                                               ; preds = %61, %52
  %68 = phi i32 [ %59, %52 ], [ %66, %61 ]
  %69 = tail call i32 @llvm.smin.i32(i32 %68, i32 15) #15
  %70 = tail call i32 @llvm.smax.i32(i32 %69, i32 0) #15
  %71 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c1, 0", "=r"() #15, !srcloc !26
  %72 = and i32 %71, -245
  %73 = shl nuw nsw i32 %70, 4
  %74 = or i32 %72, %73
  %75 = or i32 %74, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c1, 0", "r"(i32 %75) #15, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !28
  %76 = load i32, ptr @elf_hwcap, align 4
  %77 = or i32 %76, 2097152
  store i32 %77, ptr @elf_hwcap, align 4
  %78 = tail call ptr @llvm.thread.pointer() #15
  %79 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  tail call void @_set_bit(i32 noundef %80, ptr noundef nonnull @evtstrm_available) #15
  br label %81

81:                                               ; preds = %67, %46
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arch_timer_dying_cpu(i32 noundef %0) #1 {
  %2 = load ptr, ptr @arch_timer_evt, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #12, !srcloc !25
  %6 = tail call ptr @llvm.thread.pointer() #15
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  tail call void @_clear_bit(i32 noundef %8, ptr noundef nonnull @evtstrm_available) #15
  %9 = load i32, ptr @arch_timer_uses_ppi, align 4
  %10 = getelementptr [5 x i32], ptr @arch_timer_ppi, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  tail call void @disable_percpu_irq(i32 noundef %11) #15
  %12 = load i32, ptr @arch_timer_uses_ppi, align 4
  %13 = icmp eq i32 %12, 0
  %14 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 1), align 4
  %15 = icmp ne i32 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void @disable_percpu_irq(i32 noundef %14) #15
  br label %18

18:                                               ; preds = %17, %1
  %19 = ptrtoint ptr %2 to i32
  %20 = add i32 %5, %19
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.clock_event_device, ptr %21, i32 0, i32 14
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 %23(ptr noundef %21) #15
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @arch_timer_cpu_pm_deinit() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @cpu_pm_unregister_notifier(ptr noundef nonnull @arch_timer_cpu_pm_notifier) #15
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !30

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1154, i32 noundef 9, ptr noundef null) #15
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arch_timer_cpu_pm_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #1 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c1, 0", "=r"() #15, !srcloc !26
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #12, !srcloc !25
  %10 = add i32 %9, ptrtoint (ptr @saved_cntkctl to i32)
  %11 = inttoptr i32 %10 to ptr
  store i32 %6, ptr %11, align 4
  %12 = tail call ptr @llvm.thread.pointer() #15
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  tail call void @_clear_bit(i32 noundef %14, ptr noundef nonnull @evtstrm_available) #15
  br label %32

15:                                               ; preds = %3
  %16 = add i32 %1, -1
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #12, !srcloc !25
  %22 = add i32 %21, ptrtoint (ptr @saved_cntkctl to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = load i32, ptr %23, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c1, 0", "r"(i32 %24) #15, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !28
  %25 = load i32, ptr @elf_hwcap, align 4
  %26 = and i32 %25, 2097152
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = tail call ptr @llvm.thread.pointer() #15
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  tail call void @_set_bit(i32 noundef %31, ptr noundef nonnull @evtstrm_available) #15
  br label %32

32:                                               ; preds = %28, %18, %15, %5
  ret i32 1
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__arch_timer_setup(i32 noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 9
  store i32 2, ptr %3, align 4
  %4 = icmp eq i32 %0, 1
  br i1 %4, label %5, label %56

5:                                                ; preds = %2
  %6 = load i8, ptr @arch_timer_c3stop, align 1, !range !13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store i32 10, ptr %3, align 4
  br label %9

9:                                                ; preds = %8, %5
  %10 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 21
  store ptr @.str.19, ptr %10, align 4
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 22
  store i32 450, ptr %11, align 8
  %12 = tail call ptr @llvm.thread.pointer() #15
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 31
  %16 = add nuw nsw i32 %15, 1
  %17 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %16
  %18 = lshr i32 %14, 5
  %19 = sub nsw i32 0, %18
  %20 = getelementptr i32, ptr %17, i32 %19
  %21 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 25
  store ptr %20, ptr %21, align 4
  %22 = load i32, ptr @arch_timer_uses_ppi, align 4
  %23 = getelementptr [5 x i32], ptr @arch_timer_ppi, i32 0, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 23
  store i32 %24, ptr %25, align 4
  %26 = icmp ult i32 %22, 4
  br i1 %26, label %28, label %27

27:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/arm_arch_timer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 853, 0\0A.popsection", ""() #15, !srcloc !31
  unreachable

28:                                               ; preds = %9
  %29 = getelementptr inbounds [4 x ptr], ptr @switch.table.__arch_timer_setup, i32 0, i32 %22
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds [4 x ptr], ptr @switch.table.__arch_timer_setup.40, i32 0, i32 %22
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 14
  store ptr %30, ptr %33, align 8
  %34 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 13
  store ptr %30, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 1
  store ptr %32, ptr %35, align 4
  %36 = load i32, ptr @arch_timer_rate, align 4
  %37 = zext i32 %36 to i64
  %38 = mul nuw nsw i64 %37, 1261440000
  %39 = add nsw i64 %38, -1
  %40 = lshr i64 %39, 32
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %41, 0
  %43 = trunc i64 %39 to i32
  %44 = tail call i32 @llvm.ctlz.i32(i32 %43, i1 true) #15, !range !32
  %45 = sub nuw nsw i32 32, %44
  %46 = tail call i32 @llvm.ctlz.i32(i32 %41, i1 true) #15, !range !29
  %47 = sub nuw nsw i32 64, %46
  %48 = select i1 %42, i32 %45, i32 %47
  %49 = call i32 @llvm.smax.i32(i32 %48, i32 56)
  %50 = add nsw i32 %49, -1
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 63) #15
  %52 = xor i32 %51, 63
  %53 = zext i32 %52 to i64
  %54 = lshr i64 -1, %53
  %55 = trunc i64 %54 to i32
  br label %68

56:                                               ; preds = %2
  store i32 34, ptr %3, align 4
  %57 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 21
  store ptr @.str.20, ptr %57, align 4
  %58 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 22
  store i32 400, ptr %58, align 8
  %59 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 25
  store ptr @__cpu_possible_mask, ptr %59, align 4
  %60 = load i1, ptr @arch_timer_mem_use_virtual, align 1
  %61 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 14
  br i1 %60, label %62, label %65

62:                                               ; preds = %56
  store ptr @arch_timer_shutdown_virt_mem, ptr %61, align 8
  %63 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 13
  store ptr @arch_timer_shutdown_virt_mem, ptr %63, align 4
  %64 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 1
  store ptr @arch_timer_set_next_event_virt_mem, ptr %64, align 4
  br label %68

65:                                               ; preds = %56
  store ptr @arch_timer_shutdown_phys_mem, ptr %61, align 8
  %66 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 13
  store ptr @arch_timer_shutdown_phys_mem, ptr %66, align 4
  %67 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 1
  store ptr @arch_timer_set_next_event_phys_mem, ptr %67, align 4
  br label %68

68:                                               ; preds = %65, %62, %28
  %69 = phi ptr [ %30, %28 ], [ @arch_timer_shutdown_phys_mem, %65 ], [ @arch_timer_shutdown_virt_mem, %62 ]
  %70 = phi i32 [ %55, %28 ], [ -1, %65 ], [ -1, %62 ]
  %71 = tail call i32 %69(ptr noundef %1) #15
  %72 = load i32, ptr @arch_timer_rate, align 4
  tail call void @clockevents_config_and_register(ptr noundef %1, i32 noundef %72, i32 noundef 15, i32 noundef %70) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arch_timer_shutdown_virt(ptr nocapture noundef readnone %0) #1 {
  %2 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c3, 1", "=r"() #15, !srcloc !19
  %3 = and i32 %2, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c3, 1", "r"(i32 %3) #15, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arch_timer_set_next_event_virt(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c3, 1", "=r"() #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !9
  %4 = tail call i64 asm sideeffect "mrrc p15, 1, ${0:Q}, ${0:R}, c14", "=r"() #15, !srcloc !10
  %5 = and i32 %3, -4
  %6 = or i32 %5, 1
  %7 = zext i32 %0 to i64
  %8 = add i64 %4, %7
  tail call void asm sideeffect "mcrr p15, 3, ${0:Q}, ${0:R}, c14", "r"(i64 %8) #15, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c3, 1", "r"(i32 %6) #15, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arch_timer_shutdown_phys(ptr nocapture noundef readnone %0) #1 {
  %2 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c2, 1", "=r"() #15, !srcloc !22
  %3 = and i32 %2, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c2, 1", "r"(i32 %3) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arch_timer_set_next_event_phys(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c2, 1", "=r"() #15, !srcloc !22
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !34
  %4 = tail call i64 asm sideeffect "mrrc p15, 0, ${0:Q}, ${0:R}, c14", "=r"() #15, !srcloc !35
  %5 = and i32 %3, -4
  %6 = or i32 %5, 1
  %7 = zext i32 %0 to i64
  %8 = add i64 %4, %7
  tail call void asm sideeffect "mcrr p15, 2, ${0:Q}, ${0:R}, c14", "r"(i64 %8) #15, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c2, 1", "r"(i32 %6) #15, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arch_timer_shutdown_virt_mem(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 60
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #15, !srcloc !37
  %6 = and i32 %5, -2
  %7 = load ptr, ptr %2, align 64
  %8 = getelementptr i8, ptr %7, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #15, !srcloc !38
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arch_timer_set_next_event_virt_mem(i32 noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr i8, ptr %1, i32 -64
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %4, i32 60
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #15, !srcloc !37
  br label %7

7:                                                ; preds = %7, %2
  %8 = load ptr, ptr %3, align 64
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #15, !srcloc !37
  %11 = load ptr, ptr %3, align 64
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #15, !srcloc !37
  %13 = load ptr, ptr %3, align 64
  %14 = getelementptr i8, ptr %13, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #15, !srcloc !37
  %16 = icmp eq i32 %10, %15
  br i1 %16, label %17, label %7

17:                                               ; preds = %7
  %18 = zext i32 %10 to i64
  %19 = shl nuw i64 %18, 32
  %20 = zext i32 %12 to i64
  %21 = and i32 %6, -4
  %22 = or i32 %21, 1
  %23 = zext i32 %0 to i64
  %24 = or i64 %19, %23
  %25 = add i64 %24, %20
  %26 = load ptr, ptr %3, align 64
  %27 = getelementptr i8, ptr %26, i32 48
  %28 = trunc i64 %25 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %28) #15, !srcloc !38
  %29 = lshr i64 %25, 32
  %30 = trunc i64 %29 to i32
  %31 = getelementptr i8, ptr %26, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #15, !srcloc !38
  %32 = load ptr, ptr %3, align 64
  %33 = getelementptr i8, ptr %32, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %22) #15, !srcloc !38
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arch_timer_shutdown_phys_mem(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 44
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #15, !srcloc !37
  %6 = and i32 %5, -2
  %7 = load ptr, ptr %2, align 64
  %8 = getelementptr i8, ptr %7, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #15, !srcloc !38
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arch_timer_set_next_event_phys_mem(i32 noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr i8, ptr %1, i32 -64
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %4, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #15, !srcloc !37
  br label %7

7:                                                ; preds = %7, %2
  %8 = load ptr, ptr %3, align 64
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #15, !srcloc !37
  %11 = load ptr, ptr %3, align 64
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #15, !srcloc !37
  %14 = load ptr, ptr %3, align 64
  %15 = getelementptr i8, ptr %14, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #15, !srcloc !37
  %17 = icmp eq i32 %10, %16
  br i1 %17, label %18, label %7

18:                                               ; preds = %7
  %19 = zext i32 %10 to i64
  %20 = shl nuw i64 %19, 32
  %21 = zext i32 %13 to i64
  %22 = and i32 %6, -4
  %23 = or i32 %22, 1
  %24 = zext i32 %0 to i64
  %25 = or i64 %20, %24
  %26 = add i64 %25, %21
  %27 = load ptr, ptr %3, align 64
  %28 = getelementptr i8, ptr %27, i32 32
  %29 = trunc i64 %26 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %29) #15, !srcloc !38
  %30 = lshr i64 %26, 32
  %31 = trunc i64 %30 to i32
  %32 = getelementptr i8, ptr %27, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #15, !srcloc !38
  %33 = load ptr, ptr %3, align 64
  %34 = getelementptr i8, ptr %33, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %23) #15, !srcloc !38
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @arch_timer_banner(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = and i32 %0, 1
  %3 = icmp eq i32 %2, 0
  %4 = and i32 %0, 2
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr @arch_timer_rate, align 4
  %7 = load i32, ptr @arch_timer_uses_ppi, align 4
  %8 = icmp eq i32 %7, 2
  %9 = select i1 %8, ptr @.str.8, ptr @.str.7
  %10 = select i1 %3, ptr @.str.25, ptr %9
  %11 = load i1, ptr @arch_timer_mem_use_virtual, align 1
  %12 = select i1 %11, ptr @.str.8, ptr @.str.7
  %13 = select i1 %5, ptr @.str.25, ptr @.str.27
  %14 = select i1 %5, ptr @.str.25, ptr %12
  %15 = icmp eq i32 %0, 3
  %16 = select i1 %15, ptr @.str.28, ptr @.str.25
  %17 = udiv i32 %6, 10000
  %18 = urem i32 %17, 100
  %19 = udiv i32 %6, 1000000
  %20 = select i1 %15, ptr @.str.26, ptr @.str.25
  %21 = select i1 %3, ptr @.str.25, ptr @.str.24
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull %21, ptr noundef nonnull %20, ptr noundef nonnull %13, i32 noundef %19, i32 noundef %18, ptr noundef nonnull %10, ptr noundef nonnull %16, ptr noundef nonnull %14) #16
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @arch_counter_register(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = and i32 %0, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @arch_timer_uses_ppi, align 4
  %6 = icmp eq i32 %5, 2
  %7 = select i1 %6, ptr @arch_counter_get_cntvct, ptr @arch_counter_get_cntpct
  store ptr %7, ptr @arch_timer_read_counter, align 4
  store i32 1, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_counter, i32 0, i32 12), align 4
  br label %9

8:                                                ; preds = %1
  store ptr @arch_counter_get_cntvct_mem, ptr @arch_timer_read_counter, align 4
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi ptr [ @arch_counter_get_cntvct_mem, %8 ], [ %7, %4 ]
  %11 = load i32, ptr @arch_timer_rate, align 4
  %12 = zext i32 %11 to i64
  %13 = mul nuw nsw i64 %12, 1261440000
  %14 = add nsw i64 %13, -1
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  %17 = icmp eq i32 %16, 0
  %18 = trunc i64 %14 to i32
  %19 = tail call i32 @llvm.ctlz.i32(i32 %18, i1 true) #15, !range !32
  %20 = sub nuw nsw i32 32, %19
  %21 = tail call i32 @llvm.ctlz.i32(i32 %16, i1 true) #15, !range !29
  %22 = sub nuw nsw i32 64, %21
  %23 = select i1 %17, i32 %20, i32 %22
  %24 = call i32 @llvm.smax.i32(i32 %23, i32 56)
  %25 = add nsw i32 %24, -1
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 63) #15
  %27 = xor i32 %26, 63
  %28 = zext i32 %27 to i64
  %29 = lshr i64 -1, %28
  store i64 %29, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_counter, i32 0, i32 1), align 8
  store i64 %29, ptr getelementptr inbounds (%struct.cyclecounter, ptr @cyclecounter, i32 0, i32 1), align 8
  %30 = load i8, ptr @arch_counter_suspend_stop, align 1, !range !13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %9
  %33 = load i32, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_counter, i32 0, i32 13), align 8
  %34 = or i32 %33, 128
  store i32 %34, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_counter, i32 0, i32 13), align 8
  br label %35

35:                                               ; preds = %32, %9
  %36 = add nuw nsw i32 %26, 1
  %37 = tail call i64 %10() #15
  %38 = load i32, ptr @arch_timer_rate, align 4
  %39 = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @clocksource_counter, i32 noundef 1, i32 noundef %38) #15
  %40 = load i32, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_counter, i32 0, i32 2), align 8
  store i32 %40, ptr getelementptr inbounds (%struct.cyclecounter, ptr @cyclecounter, i32 0, i32 2), align 8
  %41 = load i32, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_counter, i32 0, i32 3), align 4
  store i32 %41, ptr getelementptr inbounds (%struct.cyclecounter, ptr @cyclecounter, i32 0, i32 3), align 4
  tail call void @timecounter_init(ptr noundef nonnull @arch_timer_kvm_info, ptr noundef nonnull @cyclecounter, i64 noundef %37) #15
  %42 = load ptr, ptr @arch_timer_read_counter, align 4
  %43 = load i32, ptr @arch_timer_rate, align 4
  tail call void @sched_clock_register(ptr noundef %42, i32 noundef %36, i32 noundef %43) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_timer_arch_init() local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @arch_counter_get_cntpct() #1 {
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !34
  %1 = tail call i64 asm sideeffect "mrrc p15, 0, ${0:Q}, ${0:R}, c14", "=r"() #15, !srcloc !35
  ret i64 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @arch_counter_get_cntvct_mem() #1 {
  %1 = load ptr, ptr @arch_timer_mem, align 4
  br label %2

2:                                                ; preds = %2, %0
  %3 = load ptr, ptr %1, align 64
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #15, !srcloc !37
  %6 = load ptr, ptr %1, align 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #15, !srcloc !37
  %8 = load ptr, ptr %1, align 64
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #15, !srcloc !37
  %11 = icmp eq i32 %5, %10
  br i1 %11, label %12, label %2

12:                                               ; preds = %2
  %13 = zext i32 %5 to i64
  %14 = shl nuw i64 %13, 32
  %15 = zext i32 %7 to i64
  %16 = or i64 %14, %15
  ret i64 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @arch_counter_read_cc(ptr nocapture noundef readnone %0) #1 {
  %2 = load ptr, ptr @arch_timer_read_counter, align 4
  %3 = tail call i64 %2() #15
  ret i64 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @arch_timer_mem_find_best_frame(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds %struct.arch_timer_mem, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @ioremap(i32 noundef %2, i32 noundef %4) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %0) #16
  br label %40

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %5, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #15, !srcloc !37
  br label %12

12:                                               ; preds = %34, %9
  %13 = phi ptr [ null, %9 ], [ %35, %34 ]
  %14 = phi i32 [ 0, %9 ], [ %36, %34 ]
  %15 = getelementptr %struct.arch_timer_mem, ptr %0, i32 0, i32 2, i32 %14
  %16 = load i8, ptr %15, align 4, !range !13
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %12
  %19 = shl i32 %14, 2
  %20 = add nuw nsw i32 %19, 64
  %21 = getelementptr i8, ptr %5, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 63) #15, !srcloc !38
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #15, !srcloc !37
  %23 = shl i32 2, %19
  %24 = and i32 %23, %11
  %25 = icmp ne i32 %24, 0
  %26 = and i32 %22, 18
  %27 = icmp eq i32 %26, 18
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i1 true, ptr @arch_timer_mem_use_virtual, align 1
  br label %38

30:                                               ; preds = %18
  %31 = and i32 %22, 33
  %32 = icmp eq i32 %31, 33
  %33 = select i1 %32, ptr %15, ptr %13
  br label %34

34:                                               ; preds = %30, %12
  %35 = phi ptr [ %33, %30 ], [ %13, %12 ]
  %36 = add nuw nsw i32 %14, 1
  %37 = icmp eq i32 %36, 8
  br i1 %37, label %38, label %12

38:                                               ; preds = %34, %29
  %39 = phi ptr [ %15, %29 ], [ %35, %34 ]
  tail call void @iounmap(ptr noundef nonnull %5) #15
  br label %40

40:                                               ; preds = %38, %7
  %41 = phi ptr [ %39, %38 ], [ null, %7 ]
  ret ptr %41
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @arch_timer_mem_frame_get_cntfrq(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.arch_timer_mem_frame, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.arch_timer_mem_frame, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @ioremap(i32 noundef %3, i32 noundef %5) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %2) #16
  br label %13

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %6, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #15, !srcloc !37
  tail call void @iounmap(ptr noundef nonnull %6) #15
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i32 [ %12, %10 ], [ 0, %8 ]
  ret i32 %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @arch_timer_mem_frame_register(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = load i1, ptr @arch_timer_mem_use_virtual, align 1
  %3 = getelementptr inbounds %struct.arch_timer_mem_frame, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.arch_timer_mem_frame, ptr %0, i32 0, i32 3
  %5 = select i1 %2, ptr %3, ptr %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = select i1 %2, ptr @.str.8, ptr @.str.7
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull %9) #16
  br label %32

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.arch_timer_mem_frame, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.arch_timer_mem_frame, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %13, i32 noundef %15, ptr noundef nonnull @.str.20, i32 noundef 0) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %11
  %19 = load i32, ptr %12, align 4
  %20 = load i32, ptr %14, align 4
  %21 = tail call ptr @ioremap(i32 noundef %19, i32 noundef %20) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #16
  br label %32

25:                                               ; preds = %18
  %26 = tail call fastcc i32 @arch_timer_mem_register(ptr noundef nonnull %21, i32 noundef %6) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @iounmap(ptr noundef nonnull %21) #15
  br label %32

29:                                               ; preds = %25
  %30 = load i32, ptr @arch_timers_present, align 4
  %31 = or i32 %30, 2
  store i32 %31, ptr @arch_timers_present, align 4
  br label %32

32:                                               ; preds = %29, %28, %23, %11, %8
  %33 = phi i32 [ %26, %28 ], [ 0, %29 ], [ -6, %23 ], [ -22, %8 ], [ -16, %11 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @arch_timer_mem_register(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 256) #18
  store ptr %4, ptr @arch_timer_mem, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  store ptr %0, ptr %4, align 64
  %7 = getelementptr inbounds %struct.arch_timer, ptr %4, i32 0, i32 2, i32 23
  store i32 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.arch_timer, ptr %4, i32 0, i32 2
  tail call fastcc void @__arch_timer_setup(i32 noundef 2, ptr noundef %8)
  %9 = load i1, ptr @arch_timer_mem_use_virtual, align 1
  %10 = select i1 %9, ptr @arch_timer_handler_virt_mem, ptr @arch_timer_handler_phys_mem
  %11 = load ptr, ptr @arch_timer_mem, align 4
  %12 = getelementptr inbounds %struct.arch_timer, ptr %11, i32 0, i32 2
  %13 = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull %10, ptr noundef null, i32 noundef 82432, ptr noundef nonnull @.str.20, ptr noundef %12) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %6
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #16
  %17 = load ptr, ptr @arch_timer_mem, align 4
  tail call void @kfree(ptr noundef %17) #15
  store ptr null, ptr @arch_timer_mem, align 4
  br label %18

18:                                               ; preds = %15, %6, %2
  %19 = phi i32 [ -12, %2 ], [ %13, %15 ], [ 0, %6 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arch_timer_handler_virt_mem(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %1, i32 -64
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %4, i32 60
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #15, !srcloc !37
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = or i32 %6, 2
  %11 = load ptr, ptr %3, align 64
  %12 = getelementptr i8, ptr %11, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #15, !srcloc !38
  %13 = load ptr, ptr %1, align 64
  tail call void %13(ptr noundef %1) #15
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i32 [ 1, %9 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arch_timer_handler_phys_mem(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %1, i32 -64
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %4, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #15, !srcloc !37
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = or i32 %6, 2
  %11 = load ptr, ptr %3, align 64
  %12 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #15, !srcloc !38
  %13 = load ptr, ptr %1, align 64
  tail call void %13(ptr noundef %1) #15
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i32 [ 1, %9 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @arch_counter_read(ptr nocapture noundef readnone %0) #1 {
  %2 = load ptr, ptr @arch_timer_read_counter, align 4
  %3 = tail call i64 %2() #15
  ret i64 %3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { cold }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 2152281634}
!10 = !{i64 4776600}
!11 = !{i64 4776207}
!12 = !{!"auto-init"}
!13 = !{i8 0, i8 2}
!14 = !{i64 2153717045, i64 2153717128}
!15 = !{i64 2153719940, i64 2153720003}
!16 = !{i64 2153721392}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2153697136, i64 2153697638, i64 2153697173, i64 2153697229, i64 2153697263, i64 2153697287, i64 2153697328, i64 2153697349, i64 2153697377, i64 2153697411}
!19 = !{i64 4776005}
!20 = !{i64 4775372}
!21 = !{i64 2152276286}
!22 = !{i64 4775811}
!23 = !{i64 4775063}
!24 = !{i64 2152275359}
!25 = !{i64 381520}
!26 = !{i64 4776838}
!27 = !{i64 4776977}
!28 = !{i64 2152282197}
!29 = !{i32 0, i32 33}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2153659955, i64 2153660456, i64 2153659992, i64 2153660048, i64 2153660082, i64 2153660106, i64 2153660147, i64 2153660168, i64 2153660196, i64 2153660230}
!32 = !{i32 0, i32 23}
!33 = !{i64 4775486}
!34 = !{i64 2152281240}
!35 = !{i64 4776353}
!36 = !{i64 4775177}
!37 = !{i64 3815714}
!38 = !{i64 3815296}
