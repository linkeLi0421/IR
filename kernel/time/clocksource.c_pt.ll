; ModuleID = '/llk/IR/kernel/time/clocksource.c_pt.bc'
source_filename = "../kernel/time/clocksource.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clocks_calc_mult_shift:\09\09\09\09\09"
module asm "\09.asciz \09\22clocks_calc_mult_shift\22\09\09\09\09\09"
module asm "__kstrtabns_clocks_calc_mult_shift:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clocksource_update_freq_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22__clocksource_update_freq_scale\22\09\09\09\09\09"
module asm "__kstrtabns___clocksource_update_freq_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clocksource_register_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22__clocksource_register_scale\22\09\09\09\09\09"
module asm "__kstrtabns___clocksource_register_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clocksource_change_rating:\09\09\09\09\09"
module asm "\09.asciz \09\22clocksource_change_rating\22\09\09\09\09\09"
module asm "__kstrtabns_clocksource_change_rating:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clocksource_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22clocksource_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_clocksource_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_clocks_calc_mult_shift = external dso_local constant [0 x i8], align 1
@__kstrtabns_clocks_calc_mult_shift = external dso_local constant [0 x i8], align 1
@__ksymtab_clocks_calc_mult_shift = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clocks_calc_mult_shift to i32), ptr @__kstrtab_clocks_calc_mult_shift, ptr @__kstrtabns_clocks_calc_mult_shift }, section "___ksymtab_gpl+clocks_calc_mult_shift", align 4
@suspend_clocksource = internal unnamed_addr global ptr null, align 4
@suspend_start = internal unnamed_addr global i64 0, align 8
@clocksource_start_suspend_timing.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [67 x i8] c"\014clocksource: Failed to enable the non-suspend-able clocksource.\0A\00", align 1
@clocksource_list = internal global %struct.list_head { ptr @clocksource_list, ptr @clocksource_list }, align 4
@__initcall__kmod_clocksource__164_1032_clocksource_done_booting5 = internal global ptr @clocksource_done_booting, section ".initcall5.init", align 4
@__clocksource_update_freq_scale.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"kernel/time/clocksource.c\00", align 1
@__clocksource_update_freq_scale.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"timekeeping: Clocksource %s might overflow on 11%% adjustment\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"\016clocksource: %s: mask: 0x%llx max_cycles: 0x%llx, max_idle_ns: %lld ns\0A\00", align 1
@__kstrtab___clocksource_update_freq_scale = external dso_local constant [0 x i8], align 1
@__kstrtabns___clocksource_update_freq_scale = external dso_local constant [0 x i8], align 1
@__ksymtab___clocksource_update_freq_scale = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clocksource_update_freq_scale to i32), ptr @__kstrtab___clocksource_update_freq_scale, ptr @__kstrtabns___clocksource_update_freq_scale }, section "___ksymtab_gpl+__clocksource_update_freq_scale", align 4
@__clocksource_register_scale.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [93 x i8] c"\014clocksource: clocksource %s registered with invalid VDSO mode %d. Disabling VDSO support.\0A\00", align 1
@clocksource_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @clocksource_mutex, i64 12), ptr getelementptr (i8, ptr @clocksource_mutex, i64 12) } }, align 4
@__kstrtab___clocksource_register_scale = external dso_local constant [0 x i8], align 1
@__kstrtabns___clocksource_register_scale = external dso_local constant [0 x i8], align 1
@__ksymtab___clocksource_register_scale = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clocksource_register_scale to i32), ptr @__kstrtab___clocksource_register_scale, ptr @__kstrtabns___clocksource_register_scale }, section "___ksymtab_gpl+__clocksource_register_scale", align 4
@__kstrtab_clocksource_change_rating = external dso_local constant [0 x i8], align 1
@__kstrtabns_clocksource_change_rating = external dso_local constant [0 x i8], align 1
@__ksymtab_clocksource_change_rating = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clocksource_change_rating to i32), ptr @__kstrtab_clocksource_change_rating, ptr @__kstrtabns_clocksource_change_rating }, section "___ksymtab+clocksource_change_rating", align 4
@__kstrtab_clocksource_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_clocksource_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_clocksource_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clocksource_unregister to i32), ptr @__kstrtab_clocksource_unregister, ptr @__kstrtabns_clocksource_unregister }, section "___ksymtab+clocksource_unregister", align 4
@__initcall__kmod_clocksource__169_1433_init_clocksource_sysfs6 = internal global ptr @init_clocksource_sysfs, section ".initcall6.init", align 4
@__setup_str_boot_override_clocksource = internal constant [13 x i8] c"clocksource=\00", section ".init.rodata", align 1
@__setup_boot_override_clocksource = internal global %struct.obs_kernel_param { ptr @__setup_str_boot_override_clocksource, ptr @boot_override_clocksource, i32 0 }, section ".init.setup", align 4
@__setup_str_boot_override_clock = internal constant [7 x i8] c"clock=\00", section ".init.rodata", align 1
@__setup_boot_override_clock = internal global %struct.obs_kernel_param { ptr @__setup_str_boot_override_clock, ptr @boot_override_clock, i32 0 }, section ".init.setup", align 4
@curr_clocksource = internal unnamed_addr global ptr null, align 4
@finished_booting = internal unnamed_addr global i1 false, align 4
@override_name = internal global [32 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [114 x i8] c"\014clocksource: Override clocksource %s is unstable and not HRT compatible - cannot switch while in HRT/NOHZ mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [84 x i8] c"\016clocksource: Override clocksource %s is not currently HRT compatible - deferring\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"\016clocksource: Switched to clocksource %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [83 x i8] c"\014clocksource: Nonstop clocksource %s should not supply suspend/resume interfaces\0A\00", align 1
@clocksource_subsys = internal global %struct.bus_type { ptr @.str.10, ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@device_clocksource = internal global %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @clocksource_subsys, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @clocksource_groups, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"clocksource\00", align 1
@clocksource_groups = internal global [2 x ptr] [ptr @clocksource_group, ptr null], align 4
@clocksource_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @clocksource_attrs, ptr null }, align 4
@clocksource_attrs = internal global [4 x ptr] [ptr @dev_attr_current_clocksource, ptr @dev_attr_unbind_clocksource, ptr @dev_attr_available_clocksource, ptr null], align 4
@dev_attr_current_clocksource = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420 }, ptr @current_clocksource_show, ptr @current_clocksource_store }, align 4
@dev_attr_unbind_clocksource = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 128 }, ptr null, ptr @unbind_clocksource_store }, align 4
@dev_attr_available_clocksource = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @available_clocksource_show, ptr null }, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"current_clocksource\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"unbind_clocksource\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"available_clocksource\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"pmtmr\00", align 1
@.str.18 = private unnamed_addr constant [68 x i8] c"\014clocksource: clock=pmtmr is deprecated - use clocksource=acpi_pm\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"acpi_pm\00", align 1
@.str.20 = private unnamed_addr constant [71 x i8] c"\014clocksource: clock= boot option is deprecated - use clocksource=xyz\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__initcall__kmod_clocksource__164_1032_clocksource_done_booting5, ptr @__initcall__kmod_clocksource__169_1433_init_clocksource_sysfs6, ptr @__ksymtab___clocksource_register_scale, ptr @__ksymtab___clocksource_update_freq_scale, ptr @__ksymtab_clocks_calc_mult_shift, ptr @__ksymtab_clocksource_change_rating, ptr @__ksymtab_clocksource_unregister, ptr @__setup_boot_override_clock, ptr @__setup_boot_override_clocksource], section "llvm.metadata"

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local void @clocks_calc_mult_shift(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = zext i32 %4 to i64
  %7 = zext i32 %2 to i64
  %8 = mul nuw i64 %6, %7
  %9 = icmp ult i64 %8, 4294967296
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = lshr i64 %8, 32
  br label %18

12:                                               ; preds = %18, %5
  %13 = phi i32 [ 32, %5 ], [ %22, %18 ]
  %14 = zext i32 %3 to i64
  %15 = lshr i32 %2, 1
  %16 = zext i32 %15 to i64
  %17 = zext i32 %13 to i64
  br label %24

18:                                               ; preds = %18, %10
  %19 = phi i32 [ %22, %18 ], [ 32, %10 ]
  %20 = phi i64 [ %21, %18 ], [ %11, %10 ]
  %21 = lshr i64 %20, 1
  %22 = add nsw i32 %19, -1
  %23 = icmp ult i64 %20, 2
  br i1 %23, label %12, label %18

24:                                               ; preds = %41, %12
  %25 = phi i32 [ 32, %12 ], [ %42, %41 ]
  %26 = zext i32 %25 to i64
  %27 = shl i64 %14, %26
  %28 = add i64 %27, %16
  %29 = icmp ult i64 %28, 4294967296
  br i1 %29, label %30, label %34, !prof !8

30:                                               ; preds = %24
  %31 = trunc i64 %28 to i32
  %32 = udiv i32 %31, %2
  %33 = zext i32 %32 to i64
  br label %37

34:                                               ; preds = %24
  %35 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %28) #14, !srcloc !9
  %36 = extractvalue { i64, i64 } %35, 1
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i64 [ %33, %30 ], [ %36, %34 ]
  %39 = lshr i64 %38, %17
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = add nsw i32 %25, -1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %24

44:                                               ; preds = %41, %37
  %45 = phi i32 [ %25, %37 ], [ 0, %41 ]
  %46 = trunc i64 %38 to i32
  store i32 %46, ptr %0, align 4
  store i32 %45, ptr %1, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @clocksource_mark_unstable(ptr nocapture noundef %0) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clocksource_start_suspend_timing(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @suspend_clocksource, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %3, %0
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  store i64 %1, ptr @suspend_start, align 8
  br label %25

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.clocksource, ptr %3, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef nonnull %3) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load ptr, ptr @suspend_clocksource, align 4
  br label %21

17:                                               ; preds = %12
  %18 = load i1, ptr @clocksource_start_suspend_timing.__already_done, align 1
  br i1 %18, label %25, label %19, !prof !8

19:                                               ; preds = %17
  store i1 true, ptr @clocksource_start_suspend_timing.__already_done, align 1
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  br label %25

21:                                               ; preds = %15, %8
  %22 = phi ptr [ %16, %15 ], [ %3, %8 ]
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i64 %23(ptr noundef %22) #15
  store i64 %24, ptr @suspend_start, align 8
  br label %25

25:                                               ; preds = %21, %19, %17, %7, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @clocksource_stop_suspend_timing(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @suspend_clocksource, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %3, %0
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %3, align 8
  %9 = tail call i64 %8(ptr noundef nonnull %3) #15
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i64 [ %9, %7 ], [ %1, %5 ]
  %12 = load i64, ptr @suspend_start, align 8
  %13 = icmp ugt i64 %11, %12
  %14 = load ptr, ptr @suspend_clocksource, align 4
  br i1 %13, label %15, label %37

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.clocksource, ptr %14, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = sub i64 %11, %12
  %19 = and i64 %17, %18
  %20 = getelementptr inbounds %struct.clocksource, ptr %14, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.clocksource, ptr %14, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = and i64 %19, 4294967295
  %25 = zext i32 %21 to i64
  %26 = mul nuw i64 %24, %25
  %27 = zext i32 %23 to i64
  %28 = lshr i64 %26, %27
  %29 = icmp ult i64 %19, 4294967296
  br i1 %29, label %37, label %30

30:                                               ; preds = %15
  %31 = lshr i64 %19, 32
  %32 = mul nuw i64 %31, %25
  %33 = sub i32 32, %23
  %34 = zext i32 %33 to i64
  %35 = shl i64 %32, %34
  %36 = add i64 %35, %28
  br label %37

37:                                               ; preds = %30, %15, %10
  %38 = phi i64 [ %36, %30 ], [ %28, %15 ], [ 0, %10 ]
  %39 = icmp eq ptr %14, %0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.clocksource, ptr %14, i32 0, i32 15
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void %42(ptr noundef %14) #15
  br label %45

45:                                               ; preds = %44, %40, %37, %2
  %46 = phi i64 [ 0, %2 ], [ %38, %44 ], [ %38, %40 ], [ %38, %37 ]
  ret i64 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clocksource_suspend() local_unnamed_addr #3 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @clocksource_list, i32 0, i32 1), align 4
  %2 = icmp eq ptr %1, @clocksource_list
  br i1 %2, label %14, label %3

3:                                                ; preds = %10, %0
  %4 = phi ptr [ %12, %10 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 32
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %4, i32 -52
  tail call void %6(ptr noundef %9) #15
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @clocksource_list
  br i1 %13, label %14, label %3

14:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clocksource_resume() local_unnamed_addr #3 {
  %1 = load ptr, ptr @clocksource_list, align 4
  %2 = icmp eq ptr %1, @clocksource_list
  br i1 %2, label %13, label %3

3:                                                ; preds = %10, %0
  %4 = phi ptr [ %11, %10 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 36
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %4, i32 -52
  tail call void %6(ptr noundef %9) #15
  br label %10

10:                                               ; preds = %8, %3
  %11 = load ptr, ptr %4, align 4
  %12 = icmp eq ptr %11, @clocksource_list
  br i1 %12, label %13, label %3

13:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @clocksource_touch_watchdog() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local i64 @clocks_calc_max_nsecs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = add i32 %2, %0
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 -1) #14, !srcloc !9
  %8 = extractvalue { i64, i64 } %7, 1
  %9 = tail call i64 @llvm.umin.i64(i64 %8, i64 %3)
  %10 = icmp eq ptr %4, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  store i64 %9, ptr %4, align 8
  br label %12

12:                                               ; preds = %11, %5
  %13 = sub i32 %0, %2
  %14 = zext i32 %13 to i64
  %15 = mul i64 %9, %14
  %16 = zext i32 %1 to i64
  %17 = lshr i64 %15, %16
  %18 = lshr i64 %17, 1
  ret i64 %18
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @clocksource_done_booting() #5 section ".init.text" {
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #15
  %1 = tail call ptr @clocksource_default_clock() #16
  store ptr %1, ptr @curr_clocksource, align 4
  store i1 true, ptr @finished_booting, align 4
  tail call fastcc void @__clocksource_select(i1 noundef zeroext false) #15
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__clocksource_update_freq_scale(ptr noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %90, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = icmp ult i64 %7, 4294967296
  br i1 %8, label %9, label %13, !prof !8

9:                                                ; preds = %5
  %10 = trunc i64 %7 to i32
  %11 = udiv i32 %10, %2
  %12 = zext i32 %11 to i64
  br label %16

13:                                               ; preds = %5
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %7) #14, !srcloc !9
  %15 = extractvalue { i64, i64 } %14, 1
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i64 [ %12, %9 ], [ %15, %13 ]
  %18 = icmp eq i32 %1, 0
  %19 = icmp ult i64 %17, 4294967296
  br i1 %19, label %20, label %24, !prof !8

20:                                               ; preds = %16
  %21 = trunc i64 %17 to i32
  %22 = udiv i32 %21, %1
  %23 = zext i32 %22 to i64
  br label %27

24:                                               ; preds = %16
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %17) #14, !srcloc !9
  %26 = extractvalue { i64, i64 } %25, 1
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i64 [ %23, %20 ], [ %26, %24 ]
  %29 = icmp eq i64 %28, 0
  %30 = icmp ugt i64 %28, 600
  %31 = icmp ugt i64 %7, 4294967295
  %32 = select i1 %30, i1 %31, i1 false
  %33 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 2
  %34 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 3
  %35 = udiv i32 1000000000, %1
  %36 = trunc i64 %28 to i32
  %37 = select i1 %32, i32 600, i32 %36
  %38 = select i1 %29, i32 1, i32 %37
  %39 = mul i32 %38, %1
  %40 = zext i32 %39 to i64
  %41 = zext i32 %2 to i64
  %42 = mul nuw i64 %40, %41
  %43 = icmp ult i64 %42, 4294967296
  br i1 %43, label %46, label %44

44:                                               ; preds = %27
  %45 = lshr i64 %42, 32
  br label %52

46:                                               ; preds = %52, %27
  %47 = phi i32 [ 32, %27 ], [ %56, %52 ]
  %48 = zext i32 %35 to i64
  %49 = lshr i32 %2, 1
  %50 = zext i32 %49 to i64
  %51 = zext i32 %47 to i64
  br label %58

52:                                               ; preds = %52, %44
  %53 = phi i32 [ %56, %52 ], [ 32, %44 ]
  %54 = phi i64 [ %55, %52 ], [ %45, %44 ]
  %55 = lshr i64 %54, 1
  %56 = add nsw i32 %53, -1
  %57 = icmp ult i64 %54, 2
  br i1 %57, label %46, label %52

58:                                               ; preds = %75, %46
  %59 = phi i32 [ 32, %46 ], [ %76, %75 ]
  %60 = zext i32 %59 to i64
  %61 = shl i64 %48, %60
  %62 = add i64 %61, %50
  %63 = icmp ult i64 %62, 4294967296
  br i1 %63, label %64, label %68, !prof !8

64:                                               ; preds = %58
  %65 = trunc i64 %62 to i32
  %66 = udiv i32 %65, %2
  %67 = zext i32 %66 to i64
  br label %71

68:                                               ; preds = %58
  %69 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %62) #14, !srcloc !9
  %70 = extractvalue { i64, i64 } %69, 1
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi i64 [ %67, %64 ], [ %70, %68 ]
  %73 = lshr i64 %72, %51
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = add nsw i32 %59, -1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %58

78:                                               ; preds = %75, %71
  %79 = phi i32 [ %59, %71 ], [ 0, %75 ]
  %80 = trunc i64 %72 to i32
  store i32 %80, ptr %33, align 4
  store i32 %79, ptr %34, align 4
  br i1 %18, label %90, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = mul i32 %2, %1
  %87 = udiv i32 1000000000, %86
  %88 = icmp ugt i32 %86, 5000
  %89 = select i1 %88, i32 200000, i32 %87
  store i32 %89, ptr %82, align 4
  br label %95

90:                                               ; preds = %81, %78, %3
  %91 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 31250000, ptr %91, align 4
  br label %102

95:                                               ; preds = %90, %85
  %96 = phi i32 [ %89, %85 ], [ %92, %90 ]
  %97 = icmp ult i32 %96, 200000
  %98 = load i1, ptr @__clocksource_update_freq_scale.__already_done, align 1
  %99 = xor i1 %98, true
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %102, !prof !10

101:                                              ; preds = %95
  store i1 true, ptr @__clocksource_update_freq_scale.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1110, i32 noundef 9, ptr noundef null) #15
  br label %102

102:                                              ; preds = %101, %95, %94
  %103 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 2
  %104 = load i32, ptr %103, align 8
  %105 = zext i32 %104 to i64
  %106 = mul nuw nsw i64 %105, 11
  %107 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %106, i32 0) #14, !srcloc !11
  %108 = extractvalue { i64, i32 } %107, 0
  %109 = extractvalue { i64, i32 } %107, 1
  %110 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %106, i64 %108, i32 %109) #14, !srcloc !12
  %111 = extractvalue { i64, i32 } %110, 0
  %112 = lshr i64 %111, 6
  %113 = trunc i64 %112 to i32
  %114 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 5
  store i32 %113, ptr %114, align 8
  %115 = xor i32 %104, -1
  br i1 %4, label %143, label %116

116:                                              ; preds = %102
  %117 = icmp ugt i32 %113, %115
  %118 = icmp ult i32 %104, %113
  %119 = or i1 %117, %118
  br i1 %119, label %120, label %143

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 3
  %122 = load i32, ptr %121, align 4
  br label %123

123:                                              ; preds = %123, %120
  %124 = phi i32 [ %122, %120 ], [ %127, %123 ]
  %125 = phi i32 [ %104, %120 ], [ %126, %123 ]
  %126 = lshr i32 %125, 1
  store i32 %126, ptr %103, align 8
  %127 = add i32 %124, -1
  store i32 %127, ptr %121, align 4
  %128 = zext i32 %126 to i64
  %129 = mul nuw nsw i64 %128, 11
  %130 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %129, i32 0) #14, !srcloc !11
  %131 = extractvalue { i64, i32 } %130, 0
  %132 = extractvalue { i64, i32 } %130, 1
  %133 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %129, i64 %131, i32 %132) #14, !srcloc !12
  %134 = extractvalue { i64, i32 } %133, 0
  %135 = lshr i64 %134, 6
  %136 = trunc i64 %135 to i32
  store i32 %136, ptr %114, align 8
  %137 = xor i32 %126, -1
  %138 = icmp ugt i32 %136, %137
  %139 = icmp ult i32 %126, %136
  %140 = or i1 %138, %139
  br i1 %140, label %123, label %141

141:                                              ; preds = %123
  %142 = trunc i64 %135 to i32
  br label %143

143:                                              ; preds = %141, %116, %102
  %144 = phi i32 [ %115, %116 ], [ %137, %141 ], [ %115, %102 ]
  %145 = phi i32 [ %113, %116 ], [ %142, %141 ], [ %113, %102 ]
  %146 = phi i32 [ %104, %116 ], [ %126, %141 ], [ %104, %102 ]
  %147 = icmp ugt i32 %145, %144
  %148 = load i1, ptr @__clocksource_update_freq_scale.__already_done.2, align 1
  %149 = xor i1 %148, true
  %150 = select i1 %147, i1 %149, i1 false
  br i1 %150, label %151, label %156, !prof !10

151:                                              ; preds = %143
  store i1 true, ptr @__clocksource_update_freq_scale.__already_done.2, align 1
  %152 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 8
  %153 = load ptr, ptr %152, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1130, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %153) #15
  %154 = load i32, ptr %103, align 8
  %155 = load i32, ptr %114, align 8
  br label %156

156:                                              ; preds = %151, %143
  %157 = phi i32 [ %155, %151 ], [ %145, %143 ]
  %158 = phi i32 [ %154, %151 ], [ %146, %143 ]
  %159 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 3
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 1
  %162 = load i64, ptr %161, align 8
  %163 = add i32 %157, %158
  %164 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %163, i64 -1) #14, !srcloc !9
  %165 = extractvalue { i64, i64 } %164, 1
  %166 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 7
  %167 = tail call i64 @llvm.umin.i64(i64 %165, i64 %162) #15
  store i64 %167, ptr %166, align 8
  %168 = sub i32 %158, %157
  %169 = zext i32 %168 to i64
  %170 = mul i64 %167, %169
  %171 = zext i32 %160 to i64
  %172 = lshr i64 %170, %171
  %173 = lshr i64 %172, 1
  %174 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 4
  store i64 %173, ptr %174, align 8
  %175 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 8
  %176 = load ptr, ptr %175, align 8
  %177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %176, i64 noundef %162, i64 noundef %167, i64 noundef %173) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__clocksource_register_scale(ptr noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 11
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 1
  %7 = load i1, ptr @__clocksource_register_scale.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %3
  store i1 true, ptr @__clocksource_register_scale.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1156, i32 noundef 9, ptr noundef null) #15
  br label %11

11:                                               ; preds = %10, %3
  br i1 %6, label %12, label %13

12:                                               ; preds = %11
  store i32 0, ptr %4, align 8
  br label %13

13:                                               ; preds = %12, %11
  %14 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 12
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %19, i32 noundef %15) #16
  store i32 0, ptr %14, align 4
  br label %21

21:                                               ; preds = %17, %13
  tail call void @__clocksource_update_freq_scale(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #15
  %22 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 10
  br label %23

23:                                               ; preds = %27, %21
  %24 = phi ptr [ @clocksource_list, %21 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, @clocksource_list
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %25, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %22, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %23

32:                                               ; preds = %27, %23
  %33 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 9
  %34 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  store ptr %25, ptr %33, align 4
  %35 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 9, i32 1
  store ptr %24, ptr %35, align 4
  store volatile ptr %33, ptr %24, align 4
  %36 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 13
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %32
  %41 = or i32 %37, 32
  store i32 %41, ptr %36, align 8
  br label %42

42:                                               ; preds = %40, %32
  tail call fastcc void @__clocksource_select(i1 noundef zeroext false) #15
  %43 = load i32, ptr %36, align 8
  %44 = and i32 %43, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 16
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 17
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %50, %46
  %55 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 8
  %56 = load ptr, ptr %55, align 8
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %56) #16
  br label %58

58:                                               ; preds = %54, %50
  %59 = load ptr, ptr @suspend_clocksource, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load i32, ptr %22, align 4
  %63 = getelementptr inbounds %struct.clocksource, ptr %59, i32 0, i32 10
  %64 = load i32, ptr %63, align 4
  %65 = icmp sgt i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %58
  store ptr %0, ptr @suspend_clocksource, align 4
  br label %67

67:                                               ; preds = %66, %61, %42
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clocksource_change_rating(ptr noundef %0, i32 noundef %1) #3 {
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #15
  %3 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 9
  %4 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 9, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  %8 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 10
  store i32 %1, ptr %8, align 4
  br label %9

9:                                                ; preds = %13, %2
  %10 = phi ptr [ @clocksource_list, %2 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @clocksource_list
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = icmp slt i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %3, ptr %18, align 4
  store ptr %11, ptr %3, align 4
  store ptr %10, ptr %4, align 4
  store volatile ptr %3, ptr %10, align 4
  tail call fastcc void @__clocksource_select(i1 noundef zeroext false) #15
  %19 = load ptr, ptr @clocksource_list, align 4
  %20 = icmp eq ptr %19, @clocksource_list
  br i1 %20, label %58, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @suspend_clocksource, align 4
  br label %23

23:                                               ; preds = %54, %21
  %24 = phi ptr [ %55, %54 ], [ %22, %21 ]
  %25 = phi ptr [ %56, %54 ], [ %19, %21 ]
  %26 = getelementptr i8, ptr %25, i32 -52
  %27 = getelementptr i8, ptr %25, i32 20
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 128
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %23
  %32 = getelementptr i8, ptr %25, i32 32
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %25, i32 36
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr i8, ptr %25, i32 -4
  %41 = load ptr, ptr %40, align 8
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %41) #16
  %43 = load ptr, ptr @suspend_clocksource, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi ptr [ %43, %39 ], [ %24, %35 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = getelementptr i8, ptr %25, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.clocksource, ptr %45, i32 0, i32 10
  %51 = load i32, ptr %50, align 4
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %44
  store ptr %26, ptr @suspend_clocksource, align 4
  br label %54

54:                                               ; preds = %53, %47, %23
  %55 = phi ptr [ %26, %53 ], [ %45, %47 ], [ %24, %23 ]
  %56 = load ptr, ptr %25, align 4
  %57 = icmp eq ptr %56, @clocksource_list
  br i1 %57, label %58, label %23

58:                                               ; preds = %54, %17
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clocksource_unregister(ptr noundef %0) #3 {
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #15
  %2 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 9
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @clocksource_unbind(ptr noundef %0)
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ 0, %1 ], [ %6, %5 ]
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #15
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clocksource_unbind(ptr noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @curr_clocksource, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  tail call fastcc void @__clocksource_select(i1 noundef zeroext true) #15
  %5 = load ptr, ptr @curr_clocksource, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %56, label %7

7:                                                ; preds = %4, %1
  %8 = load ptr, ptr @suspend_clocksource, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %50

10:                                               ; preds = %7
  store ptr null, ptr @suspend_clocksource, align 4
  %11 = load ptr, ptr @clocksource_list, align 4
  %12 = icmp eq ptr %11, @clocksource_list
  br i1 %12, label %50, label %13

13:                                               ; preds = %46, %10
  %14 = phi ptr [ %47, %46 ], [ null, %10 ]
  %15 = phi ptr [ %48, %46 ], [ %11, %10 ]
  %16 = getelementptr i8, ptr %15, i32 -52
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %46, label %18

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %15, i32 20
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %15, i32 32
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %15, i32 36
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27, %23
  %32 = getelementptr i8, ptr %15, i32 -4
  %33 = load ptr, ptr %32, align 8
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %33) #16
  %35 = load ptr, ptr @suspend_clocksource, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi ptr [ %35, %31 ], [ %14, %27 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr %15, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.clocksource, ptr %37, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %36
  store ptr %16, ptr @suspend_clocksource, align 4
  br label %46

46:                                               ; preds = %45, %39, %18, %13
  %47 = phi ptr [ %16, %45 ], [ %37, %39 ], [ %14, %18 ], [ %14, %13 ]
  %48 = load ptr, ptr %15, align 4
  %49 = icmp eq ptr %48, @clocksource_list
  br i1 %49, label %50, label %13

50:                                               ; preds = %46, %10, %7
  %51 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 9
  %52 = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 9, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %51, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 4
  store volatile ptr %54, ptr %53, align 4
  store volatile ptr %51, ptr %51, align 4
  store ptr %51, ptr %52, align 4
  br label %56

56:                                               ; preds = %50, %4
  %57 = phi i32 [ 0, %50 ], [ -16, %4 ]
  ret i32 %57
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @sysfs_get_uname(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = add i32 %2, -32
  %5 = icmp ult i32 %4, -31
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = add nsw i32 %2, -1
  %8 = getelementptr i8, ptr %0, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 10
  %11 = select i1 %10, i32 %7, i32 %2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %0, i32 %11, i1 false)
  br label %14

14:                                               ; preds = %13, %6
  %15 = getelementptr i8, ptr %1, i32 %11
  store i8 0, ptr %15, align 1
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i32 [ %2, %14 ], [ -22, %3 ]
  ret i32 %17
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_clocksource_sysfs() #5 section ".init.text" {
  %1 = tail call i32 @subsys_system_register(ptr noundef nonnull @clocksource_subsys, ptr noundef null) #15
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 @device_register(ptr noundef nonnull @device_clocksource) #15
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %1, %0 ], [ %4, %3 ]
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @boot_override_clocksource(ptr noundef %0) #5 section ".init.text" {
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #15
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @strlcpy(ptr noundef nonnull @override_name, ptr noundef nonnull %0, i32 noundef 32) #15
  br label %5

5:                                                ; preds = %3, %1
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #15
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @boot_override_clock(ptr noundef %0) #5 section ".init.text" {
  %2 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(6) @.str.17)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #16
  %6 = tail call i32 @boot_override_clocksource(ptr noundef nonnull @.str.19) #17
  br label %10

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #16
  %9 = tail call i32 @boot_override_clocksource(ptr noundef %0) #17
  br label %10

10:                                               ; preds = %7, %4
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @clocksource_default_clock() local_unnamed_addr #4 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__clocksource_select(i1 noundef zeroext %0) unnamed_addr #3 {
  %2 = tail call i32 @tick_oneshot_mode_active() #15
  %3 = icmp eq i32 %2, 0
  %4 = load i1, ptr @finished_booting, align 4
  br i1 %4, label %5, label %66

5:                                                ; preds = %1
  %6 = load volatile ptr, ptr @clocksource_list, align 4
  %7 = icmp eq ptr %6, @clocksource_list
  br i1 %7, label %66, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @curr_clocksource, align 4
  br label %10

10:                                               ; preds = %21, %8
  %11 = phi ptr [ %6, %8 ], [ %22, %21 ]
  %12 = getelementptr i8, ptr %11, i32 -52
  %13 = icmp eq ptr %12, %9
  %14 = select i1 %0, i1 %13, i1 false
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  br i1 %3, label %24, label %16

16:                                               ; preds = %15
  %17 = getelementptr i8, ptr %11, i32 20
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %10
  %22 = load ptr, ptr %11, align 4
  %23 = icmp eq ptr %22, @clocksource_list
  br i1 %23, label %66, label %10

24:                                               ; preds = %16, %15
  %25 = icmp eq ptr %12, null
  br i1 %25, label %66, label %26

26:                                               ; preds = %24
  %27 = load i8, ptr @override_name, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %52, %26
  %30 = phi ptr [ %53, %52 ], [ %6, %26 ]
  %31 = getelementptr i8, ptr %30, i32 -52
  %32 = icmp eq ptr %31, %9
  %33 = select i1 %0, i1 %32, i1 false
  br i1 %33, label %52, label %34

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %30, i32 -4
  %36 = load ptr, ptr %35, align 8
  %37 = tail call i32 @strcmp(ptr noundef %36, ptr noundef nonnull @override_name)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = getelementptr i8, ptr %30, i32 20
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 32
  %43 = icmp ne i32 %42, 0
  %44 = or i1 %3, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %39
  %46 = and i32 %41, 64
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %36) #16
  store i8 0, ptr @override_name, align 1
  br label %55

50:                                               ; preds = %45
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %36) #16
  br label %55

52:                                               ; preds = %34, %29
  %53 = load ptr, ptr %30, align 4
  %54 = icmp eq ptr %53, @clocksource_list
  br i1 %54, label %55, label %29

55:                                               ; preds = %52, %50, %48, %39, %26
  %56 = phi ptr [ %12, %48 ], [ %12, %50 ], [ %12, %26 ], [ %31, %39 ], [ %12, %52 ]
  %57 = load ptr, ptr @curr_clocksource, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @timekeeping_notify(ptr noundef %56) #15
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.clocksource, ptr %56, i32 0, i32 8
  %64 = load ptr, ptr %63, align 8
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %64) #16
  store ptr %56, ptr @curr_clocksource, align 4
  br label %66

66:                                               ; preds = %62, %59, %55, %24, %21, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_oneshot_mode_active() local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timekeeping_notify(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subsys_system_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @current_clocksource_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #15
  %4 = load ptr, ptr @curr_clocksource, align 4
  %5 = getelementptr inbounds %struct.clocksource, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef %6)
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #15
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @current_clocksource_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #15
  %5 = add i32 %3, -32
  %6 = icmp ult i32 %5, -31
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = add nsw i32 %3, -1
  %9 = getelementptr i8, ptr %2, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 10
  %12 = select i1 %11, i32 %8, i32 %3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 @override_name, ptr align 1 %2, i32 %12, i1 false) #15
  br label %15

15:                                               ; preds = %14, %7
  %16 = getelementptr i8, ptr @override_name, i32 %12
  store i8 0, ptr %16, align 1
  tail call fastcc void @__clocksource_select(i1 noundef zeroext false) #15
  br label %17

17:                                               ; preds = %15, %4
  %18 = phi i32 [ %3, %15 ], [ -22, %4 ]
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #15
  ret i32 %18
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unbind_clocksource_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !13
  %6 = add i32 %3, -32
  %7 = icmp ult i32 %6, -31
  br i1 %7, label %33, label %8

8:                                                ; preds = %4
  %9 = add nsw i32 %3, -1
  %10 = getelementptr i8, ptr %2, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 10
  %13 = select i1 %12, i32 %9, i32 %3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %5, ptr align 1 %2, i32 %13, i1 false) #15
  br label %16

16:                                               ; preds = %15, %8
  %17 = getelementptr i8, ptr %5, i32 %13
  store i8 0, ptr %17, align 1
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #15
  br label %18

18:                                               ; preds = %23, %16
  %19 = phi ptr [ @clocksource_list, %16 ], [ %20, %23 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, @clocksource_list
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #15
  br label %33

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %20, i32 -4
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @strcmp(ptr noundef %25, ptr noundef nonnull %5)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %18

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %20, i32 -52
  %30 = tail call fastcc i32 @clocksource_unbind(ptr noundef %29)
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #15
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 %3, i32 %30
  br label %33

33:                                               ; preds = %28, %22, %4
  %34 = phi i32 [ -19, %22 ], [ -22, %4 ], [ %32, %28 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  ret i32 %34
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @available_clocksource_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #15
  %4 = load ptr, ptr @clocksource_list, align 4
  %5 = icmp eq ptr %4, @clocksource_list
  br i1 %5, label %28, label %6

6:                                                ; preds = %24, %3
  %7 = phi ptr [ %26, %24 ], [ %4, %3 ]
  %8 = phi i32 [ %25, %24 ], [ 0, %3 ]
  %9 = tail call i32 @tick_oneshot_mode_active() #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 20
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11, %6
  %17 = getelementptr i8, ptr %2, i32 %8
  %18 = sub i32 4096, %8
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 0)
  %20 = getelementptr i8, ptr %7, i32 -4
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %17, i32 noundef %19, ptr noundef nonnull @.str.15, ptr noundef %21)
  %23 = add i32 %22, %8
  br label %24

24:                                               ; preds = %16, %11
  %25 = phi i32 [ %23, %16 ], [ %8, %11 ]
  %26 = load ptr, ptr %7, align 4
  %27 = icmp eq ptr %26, @clocksource_list
  br i1 %27, label %28, label %6

28:                                               ; preds = %24, %3
  %29 = phi i32 [ 0, %3 ], [ %25, %24 ]
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #15
  %30 = getelementptr i8, ptr %2, i32 %29
  %31 = sub i32 4096, %29
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 0)
  %33 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %30, i32 noundef %32, ptr noundef nonnull @.str.16)
  %34 = add i32 %33, %29
  ret i32 %34
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { cold }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148658041, i64 2148658321, i64 2148658655, i64 2148658989}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 1172497, i64 1172524, i64 1172546, i64 1172574}
!12 = !{i64 1172905, i64 1172932, i64 1172965, i64 1172986, i64 1173013, i64 1173039}
!13 = !{!"auto-init"}
