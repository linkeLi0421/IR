; ModuleID = '/llk/IR/drivers/cpuidle/cpuidle.c_pt.bc'
source_filename = "../drivers/cpuidle/cpuidle.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuidle_pause_and_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuidle_pause_and_lock\22\09\09\09\09\09"
module asm "__kstrtabns_cpuidle_pause_and_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuidle_resume_and_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuidle_resume_and_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_cpuidle_resume_and_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuidle_enable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuidle_enable_device\22\09\09\09\09\09"
module asm "__kstrtabns_cpuidle_enable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuidle_disable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuidle_disable_device\22\09\09\09\09\09"
module asm "__kstrtabns_cpuidle_disable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuidle_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuidle_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_cpuidle_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuidle_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuidle_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_cpuidle_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuidle_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuidle_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_cpuidle_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuidle_register:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuidle_register\22\09\09\09\09\09"
module asm "__kstrtabns_cpuidle_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpumask = type { [1 x i32] }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cpuidle_governor = type { [16 x i8], %struct.list_head, i32, ptr, ptr, ptr, ptr }

@cpuidle_lock = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cpuidle_lock, i64 12), ptr getelementptr (i8, ptr @cpuidle_lock, i64 12) } }, align 4
@cpuidle_detected_devices = dso_local global %struct.list_head { ptr @cpuidle_detected_devices, ptr @cpuidle_detected_devices }, align 4
@off = internal global i32 0, section ".data..read_mostly", align 4
@initialized = internal unnamed_addr global i1 false, section ".data..read_mostly", align 4
@cpuidle_devices = dso_local global ptr null, section ".data..percpu", align 4
@cpuidle_enter_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"drivers/cpuidle/cpuidle.c\00", align 1
@cpuidle_curr_governor = external dso_local local_unnamed_addr global ptr, align 4
@enabled_devices = internal unnamed_addr global i32 0, align 4
@__kstrtab_cpuidle_pause_and_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuidle_pause_and_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuidle_pause_and_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuidle_pause_and_lock to i32), ptr @__kstrtab_cpuidle_pause_and_lock, ptr @__kstrtabns_cpuidle_pause_and_lock }, section "___ksymtab_gpl+cpuidle_pause_and_lock", align 4
@__kstrtab_cpuidle_resume_and_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuidle_resume_and_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuidle_resume_and_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuidle_resume_and_unlock to i32), ptr @__kstrtab_cpuidle_resume_and_unlock, ptr @__kstrtabns_cpuidle_resume_and_unlock }, section "___ksymtab_gpl+cpuidle_resume_and_unlock", align 4
@__kstrtab_cpuidle_enable_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuidle_enable_device = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuidle_enable_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuidle_enable_device to i32), ptr @__kstrtab_cpuidle_enable_device, ptr @__kstrtabns_cpuidle_enable_device }, section "___ksymtab_gpl+cpuidle_enable_device", align 4
@__kstrtab_cpuidle_disable_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuidle_disable_device = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuidle_disable_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuidle_disable_device to i32), ptr @__kstrtab_cpuidle_disable_device, ptr @__kstrtabns_cpuidle_disable_device }, section "___ksymtab_gpl+cpuidle_disable_device", align 4
@__kstrtab_cpuidle_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuidle_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuidle_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuidle_register_device to i32), ptr @__kstrtab_cpuidle_register_device, ptr @__kstrtabns_cpuidle_register_device }, section "___ksymtab_gpl+cpuidle_register_device", align 4
@__kstrtab_cpuidle_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuidle_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuidle_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuidle_unregister_device to i32), ptr @__kstrtab_cpuidle_unregister_device, ptr @__kstrtabns_cpuidle_unregister_device }, section "___ksymtab_gpl+cpuidle_unregister_device", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpuidle_dev = dso_local global %struct.cpuidle_device zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_cpuidle_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuidle_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuidle_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuidle_unregister to i32), ptr @__kstrtab_cpuidle_unregister, ptr @__kstrtabns_cpuidle_unregister }, section "___ksymtab_gpl+cpuidle_unregister", align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"\013failed to register cpuidle driver\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\013Failed to register cpuidle device for cpu%d\0A\00", align 1
@__kstrtab_cpuidle_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuidle_register = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuidle_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuidle_register to i32), ptr @__kstrtab_cpuidle_register, ptr @__kstrtabns_cpuidle_register }, section "___ksymtab_gpl+cpuidle_register", align 4
@__param_str_off = internal constant [12 x i8] c"cpuidle.off\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_off = internal constant %struct.kernel_param { ptr @__param_str_off, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @off } }, section "__param", align 4
@__UNIQUE_ID_offtype317 = internal constant [25 x i8] c"cpuidle.parmtype=off:int\00", section ".modinfo", align 1
@__param_str_governor = internal constant [17 x i8] c"cpuidle.governor\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_governor = internal constant %struct.kparam_string { i32 16, ptr @param_governor }, align 4
@__param_governor = internal constant %struct.kernel_param { ptr @__param_str_governor, ptr null, ptr @param_ops_string, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_string_governor } }, section "__param", align 4
@__UNIQUE_ID_governortype318 = internal constant [33 x i8] c"cpuidle.parmtype=governor:string\00", section ".modinfo", align 1
@__initcall__kmod_cpuidle__319_779_cpuidle_init1 = internal global ptr @cpuidle_init, section ".initcall1.init", align 4
@enter_s2idle_proper.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_cpu_idle = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@param_governor = external dso_local global [0 x i8], align 1
@cpu_subsys = external dso_local local_unnamed_addr global %struct.bus_type, align 4
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_governortype318, ptr @__UNIQUE_ID_offtype317, ptr @__initcall__kmod_cpuidle__319_779_cpuidle_init1, ptr @__ksymtab_cpuidle_disable_device, ptr @__ksymtab_cpuidle_enable_device, ptr @__ksymtab_cpuidle_pause_and_lock, ptr @__ksymtab_cpuidle_register, ptr @__ksymtab_cpuidle_register_device, ptr @__ksymtab_cpuidle_resume_and_unlock, ptr @__ksymtab_cpuidle_unregister, ptr @__ksymtab_cpuidle_unregister_device, ptr @__param_governor, ptr @__param_off], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cpuidle_disabled() local_unnamed_addr #0 {
  %1 = load i32, ptr @off, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @disable_cpuidle() local_unnamed_addr #1 {
  store i32 1, ptr @off, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpuidle_not_available(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @off, align 4
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @initialized, align 4
  %6 = select i1 %4, i1 %5, i1 false
  %7 = icmp ne ptr %0, null
  %8 = and i1 %7, %6
  %9 = icmp ne ptr %1, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8, ptr %1, align 8
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ true, %2 ], [ %14, %11 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuidle_play_dead() local_unnamed_addr #2 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #9, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @cpuidle_devices to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @cpuidle_get_cpu_driver(ptr noundef %6) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.cpuidle_driver, ptr %7, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi i32 [ %11, %9 ], [ %14, %16 ]
  %14 = add i32 %13, -1
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = getelementptr %struct.cpuidle_driver, ptr %7, i32 0, i32 3, i32 %14, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %12, label %20

20:                                               ; preds = %16
  %21 = tail call i32 %18(ptr noundef %6, i32 noundef %14) #13
  br label %22

22:                                               ; preds = %20, %12, %0
  %23 = phi i32 [ %21, %20 ], [ -19, %0 ], [ -19, %12 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpuidle_get_cpu_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_use_deepest_state(i64 noundef %0) local_unnamed_addr #2 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #9, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @cpuidle_devices to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.cpuidle_device, ptr %7, i32 0, i32 6
  store i64 %0, ptr %10, align 8
  br label %11

11:                                               ; preds = %9, %1
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @cpuidle_find_deepest_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %27

7:                                                ; preds = %22, %3
  %8 = phi i32 [ %24, %22 ], [ 0, %3 ]
  %9 = phi i32 [ %25, %22 ], [ 1, %3 ]
  %10 = phi i64 [ %23, %22 ], [ 0, %3 ]
  %11 = getelementptr %struct.cpuidle_device, ptr %1, i32 0, i32 7, i32 %9
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %9, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = icmp ule i64 %16, %10
  %18 = icmp ugt i64 %16, %2
  %19 = or i1 %17, %18
  %20 = select i1 %19, i64 %10, i64 %16
  %21 = select i1 %19, i32 %8, i32 %9
  br label %22

22:                                               ; preds = %14, %7
  %23 = phi i64 [ %10, %7 ], [ %20, %14 ]
  %24 = phi i32 [ %8, %7 ], [ %21, %14 ]
  %25 = add nuw nsw i32 %9, 1
  %26 = icmp eq i32 %25, %5
  br i1 %26, label %27, label %7

27:                                               ; preds = %22, %3
  %28 = phi i32 [ 0, %3 ], [ %24, %22 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuidle_enter_s2idle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %74

6:                                                ; preds = %23, %2
  %7 = phi i32 [ %25, %23 ], [ 0, %2 ]
  %8 = phi i32 [ %26, %23 ], [ 1, %2 ]
  %9 = phi i64 [ %24, %23 ], [ 0, %2 ]
  %10 = getelementptr %struct.cpuidle_device, ptr %1, i32 0, i32 7, i32 %8
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %6
  %14 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %8, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = icmp ugt i64 %15, %9
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %8, i32 10
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, i64 %9, i64 %15
  %22 = select i1 %20, i32 %7, i32 %8
  br label %23

23:                                               ; preds = %17, %13, %6
  %24 = phi i64 [ %9, %13 ], [ %9, %6 ], [ %21, %17 ]
  %25 = phi i32 [ %7, %13 ], [ %7, %6 ], [ %22, %17 ]
  %26 = add nuw nsw i32 %8, 1
  %27 = icmp eq i32 %26, %4
  br i1 %27, label %28, label %6

28:                                               ; preds = %23
  %29 = icmp sgt i32 %25, 0
  br i1 %29, label %30, label %74

30:                                               ; preds = %28
  %31 = tail call i64 @sched_clock() #13
  tail call void @tick_freeze() #13
  %32 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %25, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call void @rcu_idle_enter() #13
  br label %37

37:                                               ; preds = %36, %30
  %38 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %25, i32 10
  %39 = load ptr, ptr %38, align 8
  %40 = tail call i32 %39(ptr noundef %1, ptr noundef %0, i32 noundef %25) #13
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !12
  %42 = and i32 %41, 128
  %43 = icmp eq i32 %42, 0
  %44 = load i1, ptr @enter_s2idle_proper.__already_done, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %48, !prof !13

47:                                               ; preds = %37
  store i1 true, ptr @enter_s2idle_proper.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 155, i32 noundef 9, ptr noundef null) #13
  br label %48

48:                                               ; preds = %47, %37
  br i1 %43, label %49, label %50

49:                                               ; preds = %48
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !14
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i32, ptr %32, align 8
  %52 = and i32 %51, 64
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  tail call void @rcu_idle_exit() #13
  br label %55

55:                                               ; preds = %54, %50
  tail call void @tick_unfreeze() #13
  %56 = tail call i64 @sched_clock() #13
  %57 = sub i64 %56, %31
  %58 = tail call i64 @llvm.abs.i64(i64 %57, i1 false) #13
  %59 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %58, i32 0) #14, !srcloc !15
  %60 = extractvalue { i64, i32 } %59, 0
  %61 = extractvalue { i64, i32 } %59, 1
  %62 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %58, i64 %60, i32 %61) #14, !srcloc !16
  %63 = extractvalue { i64, i32 } %62, 0
  %64 = icmp slt i64 %57, 0
  %65 = lshr i64 %63, 9
  %66 = sub nsw i64 0, %65
  %67 = select i1 %64, i64 %66, i64 %65
  %68 = getelementptr %struct.cpuidle_device, ptr %1, i32 0, i32 7, i32 %25, i32 7
  %69 = load i64, ptr %68, align 8
  %70 = add i64 %67, %69
  store i64 %70, ptr %68, align 8
  %71 = getelementptr %struct.cpuidle_device, ptr %1, i32 0, i32 7, i32 %25, i32 6
  %72 = load i64, ptr %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, ptr %71, align 8
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !17
  br label %74

74:                                               ; preds = %55, %28, %2
  %75 = phi i32 [ %25, %55 ], [ %25, %28 ], [ 0, %2 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuidle_enter_state(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr %struct.cpuidle_driver, ptr %1, i32 0, i32 3, i32 %2
  %5 = getelementptr %struct.cpuidle_driver, ptr %1, i32 0, i32 3, i32 %2, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %49, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @tick_broadcast_oneshot_control(i32 noundef 1) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %9
  %13 = getelementptr %struct.cpuidle_driver, ptr %1, i32 0, i32 3, i32 %2, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.cpuidle_driver, ptr %1, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %46

18:                                               ; preds = %38, %12
  %19 = phi i32 [ %40, %38 ], [ 0, %12 ]
  %20 = phi i32 [ %41, %38 ], [ 1, %12 ]
  %21 = phi i64 [ %39, %38 ], [ 0, %12 ]
  %22 = getelementptr %struct.cpuidle_device, ptr %0, i32 0, i32 7, i32 %20
  %23 = load i64, ptr %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = getelementptr %struct.cpuidle_driver, ptr %1, i32 0, i32 3, i32 %20, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = icmp ule i64 %27, %21
  %29 = icmp ugt i64 %27, %14
  %30 = or i1 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = getelementptr %struct.cpuidle_driver, ptr %1, i32 0, i32 3, i32 %20, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i64 %27, i64 %21
  %37 = select i1 %35, i32 %20, i32 %19
  br label %38

38:                                               ; preds = %31, %25, %18
  %39 = phi i64 [ %21, %25 ], [ %21, %18 ], [ %36, %31 ]
  %40 = phi i32 [ %19, %25 ], [ %19, %18 ], [ %37, %31 ]
  %41 = add nuw nsw i32 %20, 1
  %42 = icmp eq i32 %41, %16
  br i1 %42, label %43, label %18

43:                                               ; preds = %38
  %44 = icmp slt i32 %40, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  tail call void @default_idle_call() #13
  br label %174

46:                                               ; preds = %43, %12
  %47 = phi i32 [ %40, %43 ], [ 0, %12 ]
  %48 = getelementptr %struct.cpuidle_driver, ptr %1, i32 0, i32 3, i32 %47
  br label %49

49:                                               ; preds = %46, %9, %3
  %50 = phi i1 [ false, %46 ], [ true, %9 ], [ false, %3 ]
  %51 = phi ptr [ %48, %46 ], [ %4, %9 ], [ %4, %3 ]
  %52 = phi i32 [ %47, %46 ], [ %2, %9 ], [ %2, %3 ]
  %53 = getelementptr inbounds %struct.cpuidle_state, ptr %51, i32 0, i32 4
  tail call void @sched_idle_set_state(ptr noundef %51) #13
  %54 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpu_idle, i32 0, i32 1), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %49
  %59 = tail call ptr @llvm.thread.pointer() #13
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = lshr i32 %61, 5
  %63 = getelementptr i32, ptr @__cpu_online_mask, i32 %62
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %61, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %58
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %70 = tail call i32 @__traceiter_cpu_idle(ptr noundef null, i32 noundef %52, i32 noundef %55) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  br label %71

71:                                               ; preds = %69, %58, %49
  %72 = tail call i64 @sched_clock() #13
  %73 = load i32, ptr %53, align 8
  %74 = and i32 %73, 64
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  tail call void @rcu_idle_enter() #13
  br label %77

77:                                               ; preds = %76, %71
  %78 = getelementptr inbounds %struct.cpuidle_state, ptr %51, i32 0, i32 8
  %79 = load ptr, ptr %78, align 8
  %80 = tail call i32 %79(ptr noundef %0, ptr noundef %1, i32 noundef %52) #13
  %81 = load i32, ptr %53, align 8
  %82 = and i32 %81, 64
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  tail call void @rcu_idle_exit() #13
  br label %85

85:                                               ; preds = %84, %77
  %86 = tail call i64 @sched_clock() #13
  %87 = load i32, ptr %54, align 4
  %88 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpu_idle, i32 0, i32 1), align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = tail call ptr @llvm.thread.pointer() #13
  %92 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %93 = load i32, ptr %92, align 8
  %94 = lshr i32 %93, 5
  %95 = getelementptr i32, ptr @__cpu_online_mask, i32 %94
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %93, 31
  %98 = shl nuw i32 1, %97
  %99 = and i32 %98, %96
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %90
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %102 = tail call i32 @__traceiter_cpu_idle(ptr noundef null, i32 noundef -1, i32 noundef %87) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  br label %103

103:                                              ; preds = %101, %90, %85
  tail call void @sched_idle_set_state(ptr noundef null) #13
  br i1 %50, label %104, label %116

104:                                              ; preds = %103
  %105 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !12
  %106 = and i32 %105, 128
  %107 = icmp eq i32 %106, 0
  %108 = load i1, ptr @cpuidle_enter_state.__already_done, align 1
  %109 = xor i1 %108, true
  %110 = select i1 %107, i1 %109, i1 false
  br i1 %110, label %111, label %112, !prof !13

111:                                              ; preds = %104
  store i1 true, ptr @cpuidle_enter_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 250, i32 noundef 9, ptr noundef null) #13
  br label %112

112:                                              ; preds = %111, %104
  br i1 %107, label %113, label %114

113:                                              ; preds = %112
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !14
  br label %114

114:                                              ; preds = %113, %112
  %115 = tail call i32 @tick_broadcast_oneshot_control(i32 noundef 0) #13
  br label %116

116:                                              ; preds = %114, %103
  %117 = tail call zeroext i1 @cpuidle_state_is_coupled(ptr noundef %1, i32 noundef %52) #13
  br i1 %117, label %119, label %118

118:                                              ; preds = %116
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !17
  br label %119

119:                                              ; preds = %118, %116
  %120 = icmp sgt i32 %80, -1
  br i1 %120, label %121, label %169

121:                                              ; preds = %119
  %122 = getelementptr %struct.cpuidle_driver, ptr %1, i32 0, i32 3, i32 %80, i32 2
  %123 = load i64, ptr %122, align 8
  %124 = sub i64 %86, %72
  %125 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 4
  store i64 %124, ptr %125, align 8
  %126 = getelementptr %struct.cpuidle_device, ptr %0, i32 0, i32 7, i32 %80, i32 2
  %127 = load i64, ptr %126, align 8
  %128 = add i64 %127, %124
  store i64 %128, ptr %126, align 8
  %129 = getelementptr %struct.cpuidle_device, ptr %0, i32 0, i32 7, i32 %80, i32 1
  %130 = load i64, ptr %129, align 8
  %131 = add i64 %130, 1
  store i64 %131, ptr %129, align 8
  %132 = getelementptr %struct.cpuidle_driver, ptr %1, i32 0, i32 3, i32 %80, i32 3
  %133 = load i64, ptr %132, align 8
  %134 = icmp slt i64 %124, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %138, %121
  %136 = phi i32 [ %139, %138 ], [ %80, %121 ]
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %174

138:                                              ; preds = %135
  %139 = add nsw i32 %136, -1
  %140 = getelementptr %struct.cpuidle_device, ptr %0, i32 0, i32 7, i32 %139
  %141 = load i64, ptr %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %135

143:                                              ; preds = %138
  %144 = getelementptr %struct.cpuidle_device, ptr %0, i32 0, i32 7, i32 %80, i32 3
  %145 = load i64, ptr %144, align 8
  %146 = add i64 %145, 1
  store i64 %146, ptr %144, align 8
  br label %174

147:                                              ; preds = %121
  %148 = icmp sgt i64 %124, %123
  br i1 %148, label %149, label %174

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.cpuidle_driver, ptr %1, i32 0, i32 4
  %151 = load i32, ptr %150, align 8
  br label %152

152:                                              ; preds = %156, %149
  %153 = phi i32 [ %154, %156 ], [ %80, %149 ]
  %154 = add i32 %153, 1
  %155 = icmp slt i32 %154, %151
  br i1 %155, label %156, label %174

156:                                              ; preds = %152
  %157 = getelementptr %struct.cpuidle_device, ptr %0, i32 0, i32 7, i32 %154
  %158 = load i64, ptr %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %152

160:                                              ; preds = %156
  %161 = sub i64 %124, %123
  %162 = getelementptr %struct.cpuidle_driver, ptr %1, i32 0, i32 3, i32 %154, i32 3
  %163 = load i64, ptr %162, align 8
  %164 = icmp slt i64 %161, %163
  br i1 %164, label %174, label %165

165:                                              ; preds = %160
  %166 = getelementptr %struct.cpuidle_device, ptr %0, i32 0, i32 7, i32 %80, i32 4
  %167 = load i64, ptr %166, align 8
  %168 = add i64 %167, 1
  store i64 %168, ptr %166, align 8
  br label %174

169:                                              ; preds = %119
  %170 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 4
  store i64 0, ptr %170, align 8
  %171 = getelementptr %struct.cpuidle_device, ptr %0, i32 0, i32 7, i32 %52, i32 5
  %172 = load i64, ptr %171, align 8
  %173 = add i64 %172, 1
  store i64 %173, ptr %171, align 8
  br label %174

174:                                              ; preds = %169, %165, %160, %152, %147, %143, %135, %45
  %175 = phi i32 [ -16, %45 ], [ %80, %143 ], [ %80, %165 ], [ %80, %160 ], [ %80, %147 ], [ %80, %169 ], [ %80, %135 ], [ %80, %152 ]
  ret i32 %175
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @default_idle_call() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_idle_set_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_idle_enter() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_idle_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpuidle_state_is_coupled(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuidle_select(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr @cpuidle_curr_governor, align 4
  %5 = getelementptr inbounds %struct.cpuidle_governor, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuidle_enter(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call i64 @tick_nohz_get_next_hrtimer() #13
  %5 = getelementptr inbounds %struct.cpuidle_device, ptr %1, i32 0, i32 2
  store volatile i64 %4, ptr %5, align 8
  %6 = tail call zeroext i1 @cpuidle_state_is_coupled(ptr noundef %0, i32 noundef %2) #13
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 @cpuidle_enter_state_coupled(ptr noundef %1, ptr noundef %0, i32 noundef %2) #13
  br label %11

9:                                                ; preds = %3
  %10 = tail call i32 @cpuidle_enter_state(ptr noundef %1, ptr noundef %0, i32 noundef %2)
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  store volatile i64 0, ptr %5, align 8
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @tick_nohz_get_next_hrtimer() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_enter_state_coupled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_reflect(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @cpuidle_curr_governor, align 4
  %4 = getelementptr inbounds %struct.cpuidle_governor, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ne ptr %5, null
  %7 = icmp sgt i32 %1, -1
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void %5(ptr noundef %0, i32 noundef %1) #13
  br label %10

10:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @cpuidle_poll_time(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.cpuidle_device, ptr %1, i32 0, i32 5
  %4 = load i64, ptr %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %24

10:                                               ; preds = %19, %6
  %11 = phi i32 [ %20, %19 ], [ 1, %6 ]
  %12 = getelementptr %struct.cpuidle_device, ptr %1, i32 0, i32 7, i32 %11
  %13 = load i64, ptr %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %11, i32 3
  %17 = load i64, ptr %16, align 8
  %18 = icmp ult i64 %17, 10000
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %10
  %20 = add nuw nsw i32 %11, 1
  %21 = icmp eq i32 %20, %8
  br i1 %21, label %24, label %10

22:                                               ; preds = %15
  %23 = tail call i64 @llvm.umin.i64(i64 %17, i64 625000)
  br label %24

24:                                               ; preds = %22, %19, %6
  %25 = phi i64 [ 625000, %6 ], [ %23, %22 ], [ 625000, %19 ]
  store i64 %25, ptr %3, align 8
  br label %26

26:                                               ; preds = %24, %2
  %27 = phi i64 [ %25, %24 ], [ %4, %2 ]
  ret i64 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_install_idle_handler() local_unnamed_addr #2 {
  %1 = load i32, ptr @enabled_devices, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !20
  store i1 true, ptr @initialized, align 4
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_uninstall_idle_handler() local_unnamed_addr #2 {
  %1 = load i32, ptr @enabled_devices, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  store i1 false, ptr @initialized, align 4
  tail call void @wake_up_all_idle_cpus() #13
  br label %4

4:                                                ; preds = %3, %0
  tail call void @synchronize_rcu() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_all_idle_cpus() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_pause_and_lock() #2 {
  tail call void @mutex_lock(ptr noundef nonnull @cpuidle_lock) #13
  %1 = load i32, ptr @enabled_devices, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  store i1 false, ptr @initialized, align 4
  tail call void @wake_up_all_idle_cpus() #13
  br label %4

4:                                                ; preds = %3, %0
  tail call void @synchronize_rcu() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_resume_and_unlock() #2 {
  %1 = load i32, ptr @enabled_devices, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !20
  store i1 true, ptr @initialized, align 4
  br label %4

4:                                                ; preds = %3, %0
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_pause() local_unnamed_addr #2 {
  tail call void @mutex_lock(ptr noundef nonnull @cpuidle_lock) #13
  %1 = load i32, ptr @enabled_devices, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  store i1 false, ptr @initialized, align 4
  tail call void @wake_up_all_idle_cpus() #13
  br label %4

4:                                                ; preds = %3, %0
  tail call void @synchronize_rcu() #13
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_resume() local_unnamed_addr #2 {
  tail call void @mutex_lock(ptr noundef nonnull @cpuidle_lock) #13
  %1 = load i32, ptr @enabled_devices, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !20
  store i1 true, ptr @initialized, align 4
  br label %4

4:                                                ; preds = %3, %0
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuidle_enable_device(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 8
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = load ptr, ptr @cpuidle_curr_governor, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @cpuidle_get_cpu_driver(ptr noundef nonnull %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %10
  %14 = load i8, ptr %0, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @cpuidle_add_device_sysfs(ptr noundef nonnull %0) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load ptr, ptr @cpuidle_curr_governor, align 4
  %22 = getelementptr inbounds %struct.cpuidle_governor, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = tail call i32 %23(ptr noundef nonnull %11, ptr noundef nonnull %0) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25, %20
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !21
  %29 = load i8, ptr %0, align 8
  %30 = or i8 %29, 2
  store i8 %30, ptr %0, align 8
  %31 = load i32, ptr @enabled_devices, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr @enabled_devices, align 4
  br label %34

33:                                               ; preds = %25
  tail call void @cpuidle_remove_device_sysfs(ptr noundef nonnull %0) #13
  br label %34

34:                                               ; preds = %33, %28, %17, %13, %10, %7, %3, %1
  %35 = phi i32 [ %26, %33 ], [ 0, %28 ], [ -22, %1 ], [ 0, %3 ], [ -5, %7 ], [ -5, %10 ], [ -22, %13 ], [ %18, %17 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_add_device_sysfs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_remove_device_sysfs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_disable_device(ptr noundef %0) #2 {
  %2 = tail call ptr @cpuidle_get_cpu_driver(ptr noundef %0) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 8
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = icmp ne ptr %2, null
  %10 = load ptr, ptr @cpuidle_curr_governor, align 4
  %11 = icmp ne ptr %10, null
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = and i8 %5, -3
  store i8 %14, ptr %0, align 8
  %15 = load ptr, ptr @cpuidle_curr_governor, align 4
  %16 = getelementptr inbounds %struct.cpuidle_governor, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void %17(ptr noundef nonnull %2, ptr noundef nonnull %0) #13
  br label %20

20:                                               ; preds = %19, %13
  tail call void @cpuidle_remove_device_sysfs(ptr noundef nonnull %0) #13
  %21 = load i32, ptr @enabled_devices, align 4
  %22 = add i32 %21, -1
  store i32 %22, ptr @enabled_devices, align 4
  br label %23

23:                                               ; preds = %20, %8, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuidle_register_device(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %99, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @cpuidle_lock) #13
  %4 = load i8, ptr %0, align 8
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %81

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 7
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(640) %8, i8 0, i32 640, i1 false) #13
  %9 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 4
  store i64 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 2
  store i64 0, ptr %10, align 8
  %11 = tail call ptr @cpuidle_get_cpu_driver(ptr noundef nonnull %0) #13
  %12 = getelementptr inbounds %struct.cpuidle_driver, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call zeroext i1 @try_module_get(ptr noundef %13) #13
  br i1 %14, label %15, label %81

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.cpuidle_driver, ptr %11, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %38, %15
  %20 = phi i32 [ %39, %38 ], [ 0, %15 ]
  %21 = getelementptr %struct.cpuidle_driver, ptr %11, i32 0, i32 3, i32 %20, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = getelementptr %struct.cpuidle_device, ptr %0, i32 0, i32 7, i32 %20
  %27 = load i64, ptr %26, align 8
  %28 = or i64 %27, 2
  store i64 %28, ptr %26, align 8
  %29 = load i32, ptr %21, align 8
  br label %30

30:                                               ; preds = %25, %19
  %31 = phi i32 [ %29, %25 ], [ %22, %19 ]
  %32 = and i32 %31, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr %struct.cpuidle_device, ptr %0, i32 0, i32 7, i32 %20
  %36 = load i64, ptr %35, align 8
  %37 = or i64 %36, 1
  store i64 %37, ptr %35, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = add nuw nsw i32 %20, 1
  %40 = load i32, ptr %16, align 8
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %19, label %42

42:                                               ; preds = %38, %15
  %43 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, ptrtoint (ptr @cpuidle_devices to i32)
  %48 = inttoptr i32 %47 to ptr
  store ptr %0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 11
  %50 = load ptr, ptr @cpuidle_detected_devices, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store ptr %50, ptr %49, align 4
  %52 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 11, i32 1
  store ptr @cpuidle_detected_devices, ptr %52, align 4
  store volatile ptr %49, ptr @cpuidle_detected_devices, align 4
  %53 = tail call i32 @cpuidle_coupled_register_device(ptr noundef %0) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %42
  %56 = tail call ptr @cpuidle_get_cpu_driver(ptr noundef %0) #13
  %57 = load ptr, ptr %52, align 4
  %58 = load ptr, ptr %49, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  store volatile ptr %58, ptr %57, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %49, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  %60 = load i32, ptr %43, align 4
  %61 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, ptrtoint (ptr @cpuidle_devices to i32)
  %64 = inttoptr i32 %63 to ptr
  store ptr null, ptr %64, align 4
  %65 = getelementptr inbounds %struct.cpuidle_driver, ptr %56, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  tail call void @module_put(ptr noundef %66) #13
  %67 = load i8, ptr %0, align 8
  %68 = and i8 %67, -2
  store i8 %68, ptr %0, align 8
  br label %81

69:                                               ; preds = %42
  %70 = load i8, ptr %0, align 8
  %71 = or i8 %70, 1
  store i8 %71, ptr %0, align 8
  %72 = tail call i32 @cpuidle_add_sysfs(ptr noundef nonnull %0) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = tail call i32 @cpuidle_enable_device(ptr noundef nonnull %0)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, ptr @enabled_devices, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !20
  store i1 true, ptr @initialized, align 4
  br label %81

81:                                               ; preds = %84, %80, %77, %55, %7, %3
  %82 = phi i32 [ -16, %3 ], [ %53, %55 ], [ %85, %84 ], [ 0, %77 ], [ 0, %80 ], [ -22, %7 ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #13
  br label %99

83:                                               ; preds = %74
  tail call void @cpuidle_remove_sysfs(ptr noundef nonnull %0) #13
  br label %84

84:                                               ; preds = %83, %69
  %85 = phi i32 [ %72, %69 ], [ %75, %83 ]
  %86 = tail call ptr @cpuidle_get_cpu_driver(ptr noundef %0) #13
  %87 = load ptr, ptr %52, align 4
  %88 = load ptr, ptr %49, align 4
  %89 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  store ptr %87, ptr %89, align 4
  store volatile ptr %88, ptr %87, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %49, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  %90 = load i32, ptr %43, align 4
  %91 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %90
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, ptrtoint (ptr @cpuidle_devices to i32)
  %94 = inttoptr i32 %93 to ptr
  store ptr null, ptr %94, align 4
  %95 = getelementptr inbounds %struct.cpuidle_driver, ptr %86, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  tail call void @module_put(ptr noundef %96) #13
  %97 = load i8, ptr %0, align 8
  %98 = and i8 %97, -2
  store i8 %98, ptr %0, align 8
  br label %81

99:                                               ; preds = %81, %1
  %100 = phi i32 [ %82, %81 ], [ -22, %1 ]
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_add_sysfs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_remove_sysfs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_unregister_device(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 8
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %52, label %7

7:                                                ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull @cpuidle_lock) #13
  %8 = load i32, ptr @enabled_devices, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  store i1 false, ptr @initialized, align 4
  tail call void @wake_up_all_idle_cpus() #13
  br label %11

11:                                               ; preds = %10, %7
  tail call void @synchronize_rcu() #13
  %12 = tail call ptr @cpuidle_get_cpu_driver(ptr noundef nonnull %0) #13
  %13 = load i8, ptr %0, align 8
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = icmp ne ptr %12, null
  %18 = load ptr, ptr @cpuidle_curr_governor, align 4
  %19 = icmp ne ptr %18, null
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = and i8 %13, -3
  store i8 %22, ptr %0, align 8
  %23 = load ptr, ptr @cpuidle_curr_governor, align 4
  %24 = getelementptr inbounds %struct.cpuidle_governor, ptr %23, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  tail call void %25(ptr noundef nonnull %12, ptr noundef nonnull %0) #13
  br label %28

28:                                               ; preds = %27, %21
  tail call void @cpuidle_remove_device_sysfs(ptr noundef nonnull %0) #13
  %29 = load i32, ptr @enabled_devices, align 4
  %30 = add i32 %29, -1
  store i32 %30, ptr @enabled_devices, align 4
  br label %31

31:                                               ; preds = %28, %16, %11
  tail call void @cpuidle_remove_sysfs(ptr noundef nonnull %0) #13
  %32 = tail call ptr @cpuidle_get_cpu_driver(ptr noundef nonnull %0) #13
  %33 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 11
  %34 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 11, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %33, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %35, ptr %37, align 4
  store volatile ptr %36, ptr %35, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %33, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %34, align 4
  %38 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, ptrtoint (ptr @cpuidle_devices to i32)
  %43 = inttoptr i32 %42 to ptr
  store ptr null, ptr %43, align 4
  %44 = getelementptr inbounds %struct.cpuidle_driver, ptr %32, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void @module_put(ptr noundef %45) #13
  %46 = load i8, ptr %0, align 8
  %47 = and i8 %46, -2
  store i8 %47, ptr %0, align 8
  tail call void @cpuidle_coupled_unregister_device(ptr noundef nonnull %0) #13
  %48 = load i32, ptr @enabled_devices, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %31
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !20
  store i1 true, ptr @initialized, align 4
  br label %51

51:                                               ; preds = %50, %31
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #13
  br label %52

52:                                               ; preds = %51, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_coupled_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_unregister(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %3) #15
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %14, %7 ], [ %4, %1 ]
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, ptrtoint (ptr @cpuidle_dev to i32)
  %12 = inttoptr i32 %11 to ptr
  tail call void @cpuidle_unregister_device(ptr noundef %12)
  %13 = load ptr, ptr %2, align 8
  %14 = tail call i32 @cpumask_next(i32 noundef %8, ptr noundef %13) #15
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %7, label %17

17:                                               ; preds = %7, %1
  tail call void @cpuidle_unregister_driver(ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuidle_register(ptr noundef %0, ptr noundef readonly %1) #2 {
  %3 = tail call i32 @cpuidle_register_driver(ptr noundef %0) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 6
  %7 = icmp eq ptr %1, null
  br label %10

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #16
  br label %45

10:                                               ; preds = %25, %5
  %11 = phi i32 [ %13, %25 ], [ -1, %5 ]
  %12 = load ptr, ptr %6, align 8
  %13 = tail call i32 @cpumask_next(i32 noundef %11, ptr noundef %12) #15
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %10
  %17 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, ptrtoint (ptr @cpuidle_dev to i32)
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.cpuidle_device, ptr %20, i32 0, i32 1
  store i32 %13, ptr %21, align 4
  br i1 %7, label %25, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.cpuidle_device, ptr %20, i32 0, i32 12
  %24 = load i32, ptr %1, align 4
  store i32 %24, ptr %23, align 8
  br label %25

25:                                               ; preds = %22, %16
  %26 = tail call i32 @cpuidle_register_device(ptr noundef %20)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %10, label %28

28:                                               ; preds = %25
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %13) #16
  %30 = load ptr, ptr %6, align 8
  %31 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %30) #15
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %34, %28
  %35 = phi i32 [ %41, %34 ], [ %31, %28 ]
  %36 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, ptrtoint (ptr @cpuidle_dev to i32)
  %39 = inttoptr i32 %38 to ptr
  tail call void @cpuidle_unregister_device(ptr noundef %39) #13
  %40 = load ptr, ptr %6, align 8
  %41 = tail call i32 @cpumask_next(i32 noundef %35, ptr noundef %40) #15
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %34, label %44

44:                                               ; preds = %34, %28
  tail call void @cpuidle_unregister_driver(ptr noundef %0) #13
  br label %45

45:                                               ; preds = %44, %10, %8
  %46 = phi i32 [ %3, %8 ], [ %26, %44 ], [ 0, %10 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cpuidle_init() #8 section ".init.text" {
  %1 = load i32, ptr @off, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.bus_type, ptr @cpu_subsys, i32 0, i32 2), align 4
  %5 = tail call i32 @cpuidle_add_interface(ptr noundef %4) #13
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ -19, %0 ]
  ret i32 %7
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_freeze() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_unfreeze() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_broadcast_oneshot_control(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cpu_idle(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_coupled_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_add_interface(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { cold nounwind }

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
!9 = !{i64 363959}
!10 = !{i64 2154659647}
!11 = !{i64 2154659695}
!12 = !{i64 347991}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 345694}
!15 = !{i64 262704, i64 262731, i64 262753, i64 262781}
!16 = !{i64 263112, i64 263139, i64 263172, i64 263193, i64 263220, i64 263246}
!17 = !{i64 345504}
!18 = !{i64 2154259294}
!19 = !{i64 2154259448}
!20 = !{i64 2154673654}
!21 = !{i64 2154676620}
