; ModuleID = '/llk/IR/kernel/time/clockevents.c_pt.bc'
source_filename = "../kernel/time/clockevents.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clockevent_delta2ns:\09\09\09\09\09"
module asm "\09.asciz \09\22clockevent_delta2ns\22\09\09\09\09\09"
module asm "__kstrtabns_clockevent_delta2ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clockevents_unbind_device:\09\09\09\09\09"
module asm "\09.asciz \09\22clockevents_unbind_device\22\09\09\09\09\09"
module asm "__kstrtabns_clockevents_unbind_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clockevents_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22clockevents_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_clockevents_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clockevents_config_and_register:\09\09\09\09\09"
module asm "\09.asciz \09\22clockevents_config_and_register\22\09\09\09\09\09"
module asm "__kstrtabns_clockevents_config_and_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tick_device = type { ptr, i32 }
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
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.ce_unbind = type { ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_clockevent_delta2ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_clockevent_delta2ns = external dso_local constant [0 x i8], align 1
@__ksymtab_clockevent_delta2ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clockevent_delta2ns to i32), ptr @__kstrtab_clockevent_delta2ns, ptr @__kstrtabns_clockevent_delta2ns }, section "___ksymtab_gpl+clockevent_delta2ns", align 4
@.str = private unnamed_addr constant [26 x i8] c"kernel/time/clockevents.c\00", align 1
@clockevents_program_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@clockevents_program_event.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Current state: %d\0A\00", align 1
@clockevents_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @clockevents_mutex, i64 12), ptr getelementptr (i8, ptr @clockevents_mutex, i64 12) } }, align 4
@__kstrtab_clockevents_unbind_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_clockevents_unbind_device = external dso_local constant [0 x i8], align 1
@__ksymtab_clockevents_unbind_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clockevents_unbind_device to i32), ptr @__kstrtab_clockevents_unbind_device, ptr @__kstrtabns_clockevents_unbind_device }, section "___ksymtab_gpl+clockevents_unbind_device", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@cpu_all_bits = external dso_local constant [1 x i32], align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"%s cpumask == cpu_all_mask, using cpu_possible_mask instead\0A\00", align 1
@clockevents_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@clockevent_devices = internal global %struct.list_head { ptr @clockevent_devices, ptr @clockevent_devices }, align 4
@__kstrtab_clockevents_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_clockevents_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_clockevents_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clockevents_register_device to i32), ptr @__kstrtab_clockevents_register_device, ptr @__kstrtabns_clockevents_register_device }, section "___ksymtab_gpl+clockevents_register_device", align 4
@__kstrtab_clockevents_config_and_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_clockevents_config_and_register = external dso_local constant [0 x i8], align 1
@__ksymtab_clockevents_config_and_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clockevents_config_and_register to i32), ptr @__kstrtab_clockevents_config_and_register, ptr @__kstrtabns_clockevents_config_and_register }, section "___ksymtab_gpl+clockevents_config_and_register", align 4
@clockevents_released = internal global %struct.list_head { ptr @clockevents_released, ptr @clockevents_released }, align 4
@__initcall__kmod_clockevents__166_776_clockevents_init_sysfs6 = internal global ptr @clockevents_init_sysfs, section ".initcall6.init", align 4
@__clockevents_switch_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tick_cpu_device = external dso_local global %struct.tick_device, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@clockevents_subsys = internal global %struct.bus_type { ptr @.str.4, ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"clockevents\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"clockevent\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@tick_percpu_dev = internal global %struct.device zeroinitializer, section ".data..percpu", align 8
@dev_attr_current_device = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @current_device_show, ptr null }, align 4
@dev_attr_unbind_device = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 128 }, ptr null, ptr @unbind_device_store }, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"current_device\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@tick_bc_dev = internal global %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr @.str.8, ptr null, ptr @clockevents_subsys, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"broadcast\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"unbind_device\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__initcall__kmod_clockevents__166_776_clockevents_init_sysfs6, ptr @__ksymtab_clockevent_delta2ns, ptr @__ksymtab_clockevents_config_and_register, ptr @__ksymtab_clockevents_register_device, ptr @__ksymtab_clockevents_unbind_device], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @clockevent_delta2ns(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = shl i64 %3, %6
  %8 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14, !prof !8

11:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef null) #11
  store i32 1, ptr %8, align 8
  %12 = load i32, ptr %4, align 4
  %13 = zext i32 %12 to i64
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i64 [ %6, %2 ], [ %13, %11 ]
  %16 = phi i32 [ %9, %2 ], [ 1, %11 ]
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %17, -1
  %19 = lshr i64 %7, %15
  %20 = icmp eq i64 %19, %3
  %21 = select i1 %20, i64 %7, i64 -1
  %22 = xor i64 %21, -1
  %23 = icmp ult i64 %18, %22
  %24 = select i1 %23, i64 %18, i64 0
  %25 = add i64 %21, %24
  %26 = icmp ult i64 %25, 4294967296
  br i1 %26, label %27, label %31, !prof !9

27:                                               ; preds = %14
  %28 = trunc i64 %25 to i32
  %29 = udiv i32 %28, %16
  %30 = zext i32 %29 to i64
  br label %34

31:                                               ; preds = %14
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %25) #12, !srcloc !10
  %33 = extractvalue { i64, i64 } %32, 1
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i64 [ %30, %27 ], [ %33, %31 ]
  %36 = tail call i64 @llvm.umax.i64(i64 %35, i64 1000) #11
  ret i64 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clockevents_switch_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 16
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %53, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %6
  switch i32 %1, label %53 [
    i32 0, label %12
    i32 1, label %12
    i32 2, label %16
    i32 3, label %23
    i32 4, label %31
  ]

12:                                               ; preds = %11, %11
  %13 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 14
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %41

16:                                               ; preds = %11
  %17 = and i32 %8, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %41

23:                                               ; preds = %11
  %24 = and i32 %8, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 12
  %28 = load ptr, ptr %27, align 64
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  store i32 3, ptr %3, align 16
  br label %48

31:                                               ; preds = %11
  %32 = icmp eq i32 %4, 3
  %33 = load i1, ptr @__clockevents_switch_state.__already_done, align 1
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %36, label %35, !prof !9

35:                                               ; preds = %31
  store i1 true, ptr @__clockevents_switch_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 127, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %4) #11
  br label %36

36:                                               ; preds = %35, %31
  br i1 %32, label %37, label %53

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 13
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %37, %26, %19, %12
  %42 = phi ptr [ %14, %12 ], [ %21, %19 ], [ %28, %26 ], [ %39, %37 ]
  %43 = tail call i32 %42(ptr noundef %0) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %53

45:                                               ; preds = %19, %12
  store i32 %1, ptr %3, align 16
  br label %53

46:                                               ; preds = %41, %6
  store i32 %1, ptr %3, align 16
  %47 = icmp eq i32 %1, 3
  br i1 %47, label %48, label %53

48:                                               ; preds = %46, %30
  %49 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 6
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53, !prof !8

52:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 161, i32 noundef 9, ptr noundef null) #11
  store i32 1, ptr %49, align 8
  br label %53

53:                                               ; preds = %52, %48, %46, %45, %41, %37, %36, %23, %16, %11, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clockevents_shutdown(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 16
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef %0) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %10, %5
  store i32 1, ptr %2, align 16
  br label %18

18:                                               ; preds = %17, %14, %1
  %19 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 3
  store i64 9223372036854775807, ptr %19, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clockevents_tick_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3(ptr noundef %0) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clockevents_program_event(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp slt i64 %1, 0
  %5 = load i1, ptr @clockevents_program_event.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %3
  store i1 true, ptr @clockevents_program_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 310, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %3
  br i1 %4, label %113, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 3
  store i64 %1, ptr %11, align 16
  %12 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 16
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %113, label %15

15:                                               ; preds = %10
  %16 = icmp eq i32 %13, 3
  %17 = load i1, ptr @clockevents_program_event.__already_done.1, align 1
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %20, label %19, !prof !9

19:                                               ; preds = %15
  store i1 true, ptr @clockevents_program_event.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 320, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %13) #11
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 %27(i64 noundef %1, ptr noundef %0) #11
  br label %113

29:                                               ; preds = %20
  %30 = tail call i64 @ktime_get() #11
  %31 = sub i64 %1, %30
  %32 = icmp slt i64 %31, 1
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  br i1 %2, label %34, label %113

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 5
  %36 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 10
  %37 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 6
  %38 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 7
  %39 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 1
  br label %43

40:                                               ; preds = %52
  %41 = add nuw nsw i32 %44, 1
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %113, label %43

43:                                               ; preds = %40, %34
  %44 = phi i32 [ 0, %34 ], [ %41, %40 ]
  %45 = phi i64 [ 0, %34 ], [ %47, %40 ]
  %46 = load i64, ptr %35, align 32
  %47 = add i64 %46, %45
  %48 = tail call i64 @ktime_get() #11
  %49 = add i64 %48, %47
  store i64 %49, ptr %11, align 16
  %50 = load i32, ptr %12, align 16
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %113, label %52

52:                                               ; preds = %43
  %53 = load i32, ptr %36, align 8
  %54 = add i32 %53, 1
  store i32 %54, ptr %36, align 8
  %55 = load i32, ptr %37, align 8
  %56 = zext i32 %55 to i64
  %57 = mul i64 %47, %56
  %58 = load i32, ptr %38, align 4
  %59 = zext i32 %58 to i64
  %60 = lshr i64 %57, %59
  %61 = load ptr, ptr %39, align 4
  %62 = trunc i64 %60 to i32
  %63 = tail call i32 %61(i32 noundef %62, ptr noundef %0) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %113, label %40

65:                                               ; preds = %29
  %66 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 4
  %67 = load i64, ptr %66, align 8
  %68 = tail call i64 @llvm.smin.i64(i64 %31, i64 %67)
  %69 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 5
  %70 = load i64, ptr %69, align 32
  %71 = tail call i64 @llvm.smax.i64(i64 %68, i64 %70)
  %72 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 6
  %73 = load i32, ptr %72, align 8
  %74 = zext i32 %73 to i64
  %75 = mul i64 %71, %74
  %76 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 7
  %77 = load i32, ptr %76, align 4
  %78 = zext i32 %77 to i64
  %79 = lshr i64 %75, %78
  %80 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = trunc i64 %79 to i32
  %83 = tail call i32 %81(i32 noundef %82, ptr noundef %0) #11
  %84 = icmp ne i32 %83, 0
  %85 = and i1 %84, %2
  br i1 %85, label %86, label %113

86:                                               ; preds = %65
  %87 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 10
  br label %91

88:                                               ; preds = %100
  %89 = add nuw nsw i32 %92, 1
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %113, label %91

91:                                               ; preds = %88, %86
  %92 = phi i32 [ 0, %86 ], [ %89, %88 ]
  %93 = phi i64 [ 0, %86 ], [ %95, %88 ]
  %94 = load i64, ptr %69, align 32
  %95 = add i64 %94, %93
  %96 = tail call i64 @ktime_get() #11
  %97 = add i64 %96, %95
  store i64 %97, ptr %11, align 16
  %98 = load i32, ptr %12, align 16
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %113, label %100

100:                                              ; preds = %91
  %101 = load i32, ptr %87, align 8
  %102 = add i32 %101, 1
  store i32 %102, ptr %87, align 8
  %103 = load i32, ptr %72, align 8
  %104 = zext i32 %103 to i64
  %105 = mul i64 %95, %104
  %106 = load i32, ptr %76, align 4
  %107 = zext i32 %106 to i64
  %108 = lshr i64 %105, %107
  %109 = load ptr, ptr %80, align 4
  %110 = trunc i64 %108 to i32
  %111 = tail call i32 %109(i32 noundef %110, ptr noundef %0) #11
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %88

113:                                              ; preds = %100, %91, %88, %65, %52, %43, %40, %33, %25, %10, %9
  %114 = phi i32 [ %28, %25 ], [ -62, %9 ], [ 0, %10 ], [ -62, %33 ], [ %83, %65 ], [ -62, %40 ], [ 0, %52 ], [ 0, %43 ], [ -62, %88 ], [ 0, %100 ], [ 0, %91 ]
  ret i32 %114
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clockevents_unbind_device(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.ce_unbind, align 8
  tail call void @mutex_lock(ptr noundef nonnull @clockevents_mutex) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.ce_unbind, ptr %3, i32 0, i32 1
  store i32 -19, ptr %4, align 4
  %5 = call i32 @smp_call_function_single(i32 noundef %1, ptr noundef nonnull @__clockevents_unbind, ptr noundef nonnull %3, i32 noundef 1) #11
  %6 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @mutex_unlock(ptr noundef nonnull @clockevents_mutex) #11
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clockevents_register_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  store i32 0, ptr %2, align 16
  %3 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load i32, ptr @__cpu_possible_mask, align 4
  %8 = and i32 %7, 65535
  %9 = tail call i32 @__sw_hweight32(i32 noundef %8) #11
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 451, i32 noundef 9, ptr noundef null) #11
  br label %12

12:                                               ; preds = %11, %6
  %13 = tail call ptr @llvm.thread.pointer() #11
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 31
  %17 = add nuw nsw i32 %16, 1
  %18 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %17
  %19 = lshr i32 %15, 5
  %20 = sub nsw i32 0, %19
  %21 = getelementptr i32, ptr %18, i32 %20
  store ptr %21, ptr %3, align 4
  br label %22

22:                                               ; preds = %12, %1
  %23 = phi ptr [ %21, %12 ], [ %4, %1 ]
  %24 = icmp eq ptr %23, @cpu_all_bits
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 21
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 457, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %27) #11
  store ptr @__cpu_possible_mask, ptr %3, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @clockevents_lock) #11
  %30 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 26
  %31 = load ptr, ptr @clockevent_devices, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store ptr %31, ptr %30, align 4
  %33 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 26, i32 1
  store ptr @clockevent_devices, ptr %33, align 4
  store volatile ptr %30, ptr @clockevent_devices, align 4
  tail call void @tick_check_new_device(ptr noundef %0) #11
  %34 = load volatile ptr, ptr @clockevents_released, align 4
  %35 = icmp eq ptr %34, @clockevents_released
  br i1 %35, label %47, label %36

36:                                               ; preds = %36, %28
  %37 = phi ptr [ %45, %36 ], [ %34, %28 ]
  %38 = getelementptr i8, ptr %37, i32 -120
  %39 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %37, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  %43 = load ptr, ptr @clockevent_devices, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %37, ptr %44, align 4
  store ptr %43, ptr %37, align 4
  store ptr @clockevent_devices, ptr %39, align 4
  store volatile ptr %37, ptr @clockevent_devices, align 4
  tail call void @tick_check_new_device(ptr noundef %38) #11
  %45 = load volatile ptr, ptr @clockevents_released, align 4
  %46 = icmp eq ptr %45, @clockevents_released
  br i1 %46, label %47, label %36

47:                                               ; preds = %36, %28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @clockevents_lock, i32 noundef %29) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_check_new_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clockevents_config_and_register(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 19
  store i32 %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 20
  store i32 %3, ptr %6, align 32
  tail call fastcc void @clockevents_config(ptr noundef %0, i32 noundef %1)
  tail call void @clockevents_register_device(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clockevents_config(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %81, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 20
  %9 = load i32, ptr %8, align 32
  %10 = udiv i32 %9, %1
  %11 = icmp ult i32 %9, %1
  %12 = select i1 %11, i32 1, i32 %10
  %13 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 7
  tail call void @clocks_calc_mult_shift(ptr noundef %13, ptr noundef %14, i32 noundef 1000000000, i32 noundef %1, i32 noundef %12) #11
  %15 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 19
  %16 = load i32, ptr %15, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, ptr %14, align 4
  %19 = zext i32 %18 to i64
  %20 = shl i64 %17, %19
  %21 = load i32, ptr %13, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26, !prof !8

23:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef null) #11
  store i32 1, ptr %13, align 8
  %24 = load i32, ptr %14, align 4
  %25 = zext i32 %24 to i64
  br label %26

26:                                               ; preds = %23, %7
  %27 = phi i32 [ %18, %7 ], [ %24, %23 ]
  %28 = phi i64 [ %19, %7 ], [ %25, %23 ]
  %29 = phi i32 [ %21, %7 ], [ 1, %23 ]
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %30, -1
  %32 = lshr i64 %20, %28
  %33 = icmp eq i64 %32, %17
  %34 = select i1 %33, i64 %20, i64 -1
  %35 = xor i64 %34, -1
  %36 = icmp ult i64 %31, %35
  %37 = select i1 %36, i64 %31, i64 0
  %38 = add i64 %34, %37
  %39 = icmp ult i64 %38, 4294967296
  br i1 %39, label %40, label %44, !prof !9

40:                                               ; preds = %26
  %41 = trunc i64 %38 to i32
  %42 = udiv i32 %41, %29
  %43 = zext i32 %42 to i64
  br label %47

44:                                               ; preds = %26
  %45 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %38) #12, !srcloc !10
  %46 = extractvalue { i64, i64 } %45, 1
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i64 [ %43, %40 ], [ %46, %44 ]
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1000) #11
  %50 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 5
  store i64 %49, ptr %50, align 32
  %51 = load i32, ptr %8, align 32
  %52 = zext i32 %51 to i64
  %53 = zext i32 %27 to i64
  %54 = shl i64 %52, %53
  %55 = zext i32 %29 to i64
  %56 = add nsw i64 %55, -1
  %57 = lshr i64 %54, %53
  %58 = icmp eq i64 %57, %52
  %59 = select i1 %58, i64 %54, i64 -1
  %60 = xor i64 %59, -1
  %61 = icmp ult i64 %56, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %47
  %63 = shl nuw i64 1, %53
  %64 = icmp ult i64 %63, %55
  %65 = select i1 %64, i64 0, i64 %56
  %66 = add i64 %65, %59
  br label %67

67:                                               ; preds = %62, %47
  %68 = phi i64 [ %59, %47 ], [ %66, %62 ]
  %69 = icmp ult i64 %68, 4294967296
  br i1 %69, label %70, label %74, !prof !9

70:                                               ; preds = %67
  %71 = trunc i64 %68 to i32
  %72 = udiv i32 %71, %29
  %73 = zext i32 %72 to i64
  br label %77

74:                                               ; preds = %67
  %75 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %68) #12, !srcloc !10
  %76 = extractvalue { i64, i64 } %75, 1
  br label %77

77:                                               ; preds = %74, %70
  %78 = phi i64 [ %73, %70 ], [ %76, %74 ]
  %79 = tail call i64 @llvm.umax.i64(i64 %78, i64 1000) #11
  %80 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 4
  store i64 %79, ptr %80, align 8
  br label %81

81:                                               ; preds = %77, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__clockevents_update_freq(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @clockevents_config(ptr noundef %0, i32 noundef %1)
  %3 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 16
  switch i32 %4, label %23 [
    i32 3, label %5
    i32 2, label %9
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 3
  %7 = load i64, ptr %6, align 16
  %8 = tail call i32 @clockevents_program_event(ptr noundef %0, i64 noundef %7, i1 noundef zeroext false)
  br label %23

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = and i32 %11, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i32 %19(ptr noundef %0) #11
  br label %23

23:                                               ; preds = %21, %17, %14, %9, %5, %2
  %24 = phi i32 [ %8, %5 ], [ 0, %9 ], [ -38, %14 ], [ 0, %17 ], [ %22, %21 ], [ 0, %2 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clockevents_update_freq(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %4 = tail call i32 @tick_broadcast_update_freq(ptr noundef %0, i32 noundef %1) #11
  %5 = icmp eq i32 %4, -19
  br i1 %5, label %6, label %27

6:                                                ; preds = %2
  tail call fastcc void @clockevents_config(ptr noundef %0, i32 noundef %1) #11
  %7 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 16
  switch i32 %8, label %27 [
    i32 3, label %9
    i32 2, label %13
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 3
  %11 = load i64, ptr %10, align 16
  %12 = tail call i32 @clockevents_program_event(ptr noundef %0, i64 noundef %11, i1 noundef zeroext false) #11
  br label %27

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = and i32 %15, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 %23(ptr noundef %0) #11
  br label %27

27:                                               ; preds = %25, %21, %18, %13, %9, %6, %2
  %28 = phi i32 [ %4, %2 ], [ %12, %9 ], [ 0, %13 ], [ -38, %18 ], [ 0, %21 ], [ %26, %25 ], [ 0, %6 ]
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #11, !srcloc !12
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_broadcast_update_freq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @clockevents_handle_noop(ptr nocapture noundef %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clockevents_exchange_device(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 64
  tail call void @module_put(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 14
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef nonnull %0) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %15, %10
  store i32 0, ptr %7, align 16
  br label %23

23:                                               ; preds = %22, %19, %4
  %24 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 26
  %25 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 26, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  %29 = load ptr, ptr @clockevents_released, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %24, ptr %30, align 4
  store ptr %29, ptr %24, align 4
  store ptr @clockevents_released, ptr %25, align 4
  store volatile ptr %24, ptr @clockevents_released, align 4
  br label %31

31:                                               ; preds = %23, %2
  %32 = icmp eq ptr %1, null
  br i1 %32, label %53, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 8
  %35 = load i32, ptr %34, align 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37, !prof !9

37:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/clockevents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 582, 0\0A.popsection", ""() #11, !srcloc !13
  unreachable

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 14
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = tail call i32 %45(ptr noundef nonnull %1) #11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %43, %38
  store i32 1, ptr %34, align 16
  br label %51

51:                                               ; preds = %50, %47
  %52 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 3
  store i64 9223372036854775807, ptr %52, align 16
  br label %53

53:                                               ; preds = %51, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clockevents_suspend() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @clockevent_devices, i32 0, i32 1), align 4
  %2 = icmp eq ptr %1, @clockevent_devices
  br i1 %2, label %18, label %3

3:                                                ; preds = %14, %0
  %4 = phi ptr [ %16, %14 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -120
  %6 = getelementptr i8, ptr %4, i32 -36
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %4, i32 -72
  %11 = load i32, ptr %10, align 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void %7(ptr noundef %5) #11
  br label %14

14:                                               ; preds = %13, %9, %3
  %15 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, @clockevent_devices
  br i1 %17, label %18, label %3

18:                                               ; preds = %14, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clockevents_resume() local_unnamed_addr #0 {
  %1 = load ptr, ptr @clockevent_devices, align 4
  %2 = icmp eq ptr %1, @clockevent_devices
  br i1 %2, label %17, label %3

3:                                                ; preds = %14, %0
  %4 = phi ptr [ %15, %14 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -120
  %6 = getelementptr i8, ptr %4, i32 -32
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %4, i32 -72
  %11 = load i32, ptr %10, align 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void %7(ptr noundef %5) #11
  br label %14

14:                                               ; preds = %13, %9, %3
  %15 = load ptr, ptr %4, align 4
  %16 = icmp eq ptr %15, @clockevent_devices
  br i1 %16, label %17, label %3

17:                                               ; preds = %14, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_offline_cpu(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @clockevents_lock) #11
  tail call void @tick_broadcast_offline(i32 noundef %0) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %2 = load i16, ptr @clockevents_lock, align 4
  %3 = add i16 %2, 1
  store i16 %3, ptr @clockevents_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_broadcast_offline(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_cleanup_dead_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @clockevents_lock) #11
  tail call void @tick_shutdown(i32 noundef %0) #11
  %3 = load ptr, ptr @clockevents_released, align 4
  %4 = icmp eq ptr %3, @clockevents_released
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %11 = icmp eq ptr %7, @clockevents_released
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  %13 = load ptr, ptr @clockevent_devices, align 4
  %14 = icmp eq ptr %13, @clockevent_devices
  br i1 %14, label %49, label %15

15:                                               ; preds = %12
  %16 = lshr i32 %0, 5
  %17 = and i32 %0, 31
  %18 = shl nuw i32 1, %17
  br label %19

19:                                               ; preds = %47, %15
  %20 = phi ptr [ %13, %15 ], [ %22, %47 ]
  %21 = getelementptr i8, ptr %20, i32 -120
  %22 = load ptr, ptr %20, align 8
  %23 = getelementptr i8, ptr %20, i32 -4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i32, ptr %24, i32 %16
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, %18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %19
  %30 = load i32, ptr %24, align 4
  %31 = and i32 %30, 65535
  %32 = tail call i32 @__sw_hweight32(i32 noundef %31) #11
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = tail call i32 @tick_is_broadcast_device(ptr noundef %21) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = getelementptr i8, ptr %20, i32 -72
  %39 = load i32, ptr %38, align 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41, !prof !9

41:                                               ; preds = %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/clockevents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 653, 0\0A.popsection", ""() #11, !srcloc !18
  unreachable

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %20, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %43, align 4
  br label %47

47:                                               ; preds = %42, %34, %29, %19
  %48 = icmp eq ptr %22, @clockevent_devices
  br i1 %48, label %49, label %19

49:                                               ; preds = %47, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @clockevents_lock, i32 noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_shutdown(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_is_broadcast_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @clockevents_init_sysfs() #4 section ".init.text" {
  %1 = tail call i32 @subsys_system_register(ptr noundef nonnull @clockevents_subsys, ptr noundef null) #11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call fastcc i32 @tick_init_sysfs() #13
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %1, %0 ], [ %4, %3 ]
  ret i32 %6
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__clockevents_unbind(ptr nocapture noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @clockevents_lock) #11
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 8
  %4 = load i32, ptr %3, align 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 26
  %8 = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 26, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %8, align 4
  br label %57

12:                                               ; preds = %1
  %13 = tail call ptr @llvm.thread.pointer() #11
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, ptrtoint (ptr @tick_cpu_device to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ne ptr %20, %2
  %22 = load ptr, ptr @clockevent_devices, align 4
  %23 = icmp eq ptr %22, @clockevent_devices
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %57, label %25

25:                                               ; preds = %45, %12
  %26 = phi ptr [ %47, %45 ], [ %22, %12 ]
  %27 = phi ptr [ %46, %45 ], [ null, %12 ]
  %28 = getelementptr i8, ptr %26, i32 -120
  %29 = icmp eq ptr %28, %2
  br i1 %29, label %45, label %30

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %26, i32 -72
  %32 = load i32, ptr %31, align 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = tail call zeroext i1 @tick_check_replacement(ptr noundef %27, ptr noundef %28) #11
  br i1 %35, label %36, label %45

36:                                               ; preds = %34
  %37 = getelementptr i8, ptr %26, i32 8
  %38 = load ptr, ptr %37, align 64
  %39 = tail call zeroext i1 @try_module_get(ptr noundef %38) #11
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = icmp eq ptr %27, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.clock_event_device, ptr %27, i32 0, i32 27
  %44 = load ptr, ptr %43, align 64
  tail call void @module_put(ptr noundef %44) #11
  br label %45

45:                                               ; preds = %42, %40, %36, %34, %30, %25
  %46 = phi ptr [ %27, %25 ], [ %27, %36 ], [ %27, %34 ], [ %27, %30 ], [ %28, %42 ], [ %28, %40 ]
  %47 = load ptr, ptr %26, align 4
  %48 = icmp eq ptr %47, @clockevent_devices
  br i1 %48, label %49, label %25

49:                                               ; preds = %45
  %50 = icmp eq ptr %46, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %49
  tail call void @tick_install_replacement(ptr noundef nonnull %46) #11
  %52 = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 26
  %53 = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 26, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %52, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %55, ptr %54, align 4
  store volatile ptr %52, ptr %52, align 4
  store ptr %52, ptr %53, align 4
  br label %57

57:                                               ; preds = %51, %49, %12, %6
  %58 = phi i32 [ 0, %51 ], [ -16, %49 ], [ -16, %12 ], [ 0, %6 ]
  %59 = getelementptr inbounds %struct.ce_unbind, ptr %0, i32 0, i32 1
  store i32 %58, ptr %59, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %60 = load i16, ptr @clockevents_lock, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr @clockevents_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tick_check_replacement(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_install_replacement(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocks_calc_mult_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subsys_system_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @tick_init_sysfs() unnamed_addr #4 section ".init.text" {
  br label %1

1:                                                ; preds = %18, %0
  %2 = phi i32 [ -1, %0 ], [ %3, %18 ]
  %3 = tail call i32 @cpumask_next(i32 noundef %2, ptr noundef nonnull @__cpu_possible_mask) #14
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, ptrtoint (ptr @tick_percpu_dev to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 28
  store i32 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 5
  store ptr @clockevents_subsys, ptr %12, align 4
  %13 = tail call i32 @device_register(ptr noundef %10) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %6
  %16 = tail call i32 @device_create_file(ptr noundef %10, ptr noundef nonnull @dev_attr_current_device) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = tail call i32 @device_create_file(ptr noundef %10, ptr noundef nonnull @dev_attr_unbind_device) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %1, label %23

21:                                               ; preds = %1
  %22 = tail call fastcc i32 @tick_broadcast_init_sysfs() #13
  br label %23

23:                                               ; preds = %21, %18, %15, %6
  %24 = phi i32 [ %22, %21 ], [ %13, %6 ], [ %16, %15 ], [ %19, %18 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @tick_broadcast_init_sysfs() unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @device_register(ptr noundef nonnull @tick_bc_dev) #11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 @device_create_file(ptr noundef nonnull @tick_bc_dev, ptr noundef nonnull @dev_attr_current_device) #11
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %1, %0 ], [ %4, %3 ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @current_device_show(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @clockevents_lock) #11
  %4 = icmp eq ptr %0, @tick_bc_dev
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call ptr @tick_get_broadcast_device() #11
  br label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @tick_cpu_device to i32)
  %13 = inttoptr i32 %12 to ptr
  br label %14

14:                                               ; preds = %7, %5
  %15 = phi ptr [ %6, %5 ], [ %13, %7 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %15, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.clock_event_device, ptr %18, i32 0, i32 21
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.7, ptr noundef %22)
  br label %24

24:                                               ; preds = %20, %17, %14
  %25 = phi i32 [ %23, %20 ], [ 0, %17 ], [ 0, %14 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %26 = load i16, ptr @clockevents_lock, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr @clockevents_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tick_get_broadcast_device() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unbind_device_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.ce_unbind, align 8
  %6 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !21
  %7 = call i32 @sysfs_get_uname(ptr noundef %2, ptr noundef nonnull %6, i32 noundef %3) #11
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %4
  call void @mutex_lock(ptr noundef nonnull @clockevents_mutex) #11
  call void @_raw_spin_lock_irq(ptr noundef nonnull @clockevents_lock) #11
  br label %10

10:                                               ; preds = %14, %9
  %11 = phi ptr [ @clockevent_devices, %9 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @clockevent_devices
  br i1 %13, label %39, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %12, i32 -20
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @strcmp(ptr noundef %16, ptr noundef nonnull %6)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %10

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %12, i32 -120
  %21 = getelementptr i8, ptr %12, i32 -72
  %22 = load i32, ptr %21, align 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %12, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %12, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %25, align 4
  br label %39

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, ptrtoint (ptr @tick_cpu_device to i32)
  %35 = inttoptr i32 %34 to ptr
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %20
  %38 = select i1 %37, i32 -11, i32 -16
  br label %39

39:                                               ; preds = %29, %24, %10
  %40 = phi ptr [ %20, %24 ], [ %20, %29 ], [ getelementptr (%struct.list_head, ptr @clockevent_devices, i32 -15, i32 0), %10 ]
  %41 = phi i32 [ 0, %24 ], [ %38, %29 ], [ -19, %10 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %42 = load i16, ptr @clockevents_lock, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr @clockevents_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !16
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %44 = icmp eq i32 %41, -11
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %47 = load i32, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store ptr %40, ptr %5, align 8
  %48 = getelementptr inbounds %struct.ce_unbind, ptr %5, i32 0, i32 1
  store i32 -19, ptr %48, align 4
  %49 = call i32 @smp_call_function_single(i32 noundef %47, ptr noundef nonnull @__clockevents_unbind, ptr noundef nonnull %5, i32 noundef 1) #11
  %50 = load i32, ptr %48, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %51

51:                                               ; preds = %45, %39
  %52 = phi i32 [ %50, %45 ], [ %41, %39 ]
  call void @mutex_unlock(ptr noundef nonnull @clockevents_mutex) #11
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 %3, i32 %52
  br label %55

55:                                               ; preds = %51, %4
  %56 = phi i32 [ %54, %51 ], [ %7, %4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #11
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_get_uname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { cold }
attributes #14 = { nounwind readonly willreturn }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2147749318, i64 2147749598, i64 2147749932, i64 2147750266}
!11 = !{i64 346329, i64 346390}
!12 = !{i64 349346}
!13 = !{i64 2151380386, i64 2151380876, i64 2151380423, i64 2151380479, i64 2151380513, i64 2151380537, i64 2151380578, i64 2151380599, i64 2151380627, i64 2151380661}
!14 = !{i64 2148944216}
!15 = !{i64 2148940040}
!16 = !{i64 2148940115, i64 2148940142, i64 2148940189, i64 2148940211, i64 2148940239, i64 2148940259}
!17 = !{i64 2148967219}
!18 = !{i64 2151402177, i64 2151402667, i64 2151402214, i64 2151402270, i64 2151402304, i64 2151402328, i64 2151402369, i64 2151402390, i64 2151402418, i64 2151402452}
!19 = !{i64 346574}
!20 = !{i64 2148968360}
!21 = !{!"auto-init"}
