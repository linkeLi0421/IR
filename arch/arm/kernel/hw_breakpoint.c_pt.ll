; ModuleID = '/llk/IR/arch/arm/kernel/hw_breakpoint.c_pt.bc'
source_filename = "../arch/arm/kernel/hw_breakpoint.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.undef_hook = type { %struct.list_head, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.66, i64, i64, i64, %union.anon.67, i32, %union.anon.68, %union.anon.69, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.66 = type { i64 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i64 }
%union.anon.69 = type { i64 }
%struct.hw_perf_event = type { %union.anon.70, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.77, i64, i64, i64, i64 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.atomic_t = type { i32 }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.arch_hw_breakpoint = type { i32, i32, %struct.arch_hw_breakpoint_ctrl, %struct.arch_hw_breakpoint_ctrl }
%struct.arch_hw_breakpoint_ctrl = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@debug_arch = internal unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@.str = private unnamed_addr constant [40 x i8] c"\014hw-breakpoint: unknown slot type: %d\0A\00", align 1
@max_watchpoint_len = internal unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@bp_on_reg = internal global [16 x ptr] zeroinitializer, section ".data..percpu", align 4
@core_num_brps = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@wp_on_reg = internal global [16 x ptr] zeroinitializer, section ".data..percpu", align 4
@core_num_wrps = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"\014hw-breakpoint: Can't find any breakpoint slot\0A\00", align 1
@__initcall__kmod_hw_breakpoint__236_1192_arch_hw_breakpoint_init3 = internal global ptr @arch_hw_breakpoint_init, section ".initcall3.init", align 4
@get_debug_arch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"\014hw-breakpoint: CPUID feature registers not supported. Assuming v6 debug is present.\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"\014hw-breakpoint: attempt to write to unknown breakpoint register %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"\016hw-breakpoint: debug architecture 0x%x unsupported.\0A\00", align 1
@.str.5 = private unnamed_addr constant [87 x i8] c"\016hw-breakpoint: Scorpion CPU detected. Hardware breakpoints and watchpoints disabled\0A\00", align 1
@has_ossr = internal unnamed_addr global i1 false, section ".data..ro_after_init", align 1
@debug_reg_hook = internal global %struct.undef_hook { %struct.list_head zeroinitializer, i32 266866448, i32 234884624, i32 0, i32 0, ptr @debug_reg_trap }, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"arm/hw_breakpoint:online\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"arch/arm/kernel/hw_breakpoint.c\00", align 1
@debug_err_mask = internal global %struct.cpumask zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [69 x i8] c"\016hw-breakpoint: found %d %sbreakpoint and %d watchpoint registers.\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"(+1 reserved) \00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"\016hw-breakpoint: maximum watchpoint size is %u bytes.\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"watchpoint debug exception\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"breakpoint debug exception\00", align 1
@.str.14 = private unnamed_addr constant [86 x i8] c"\014hw-breakpoint: Debug register access (0x%x) caused undefined instruction on CPU %d\0A\00", align 1
@reset_ctrl_regs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"\014hw-breakpoint: CPU %d debug is powered down!\0A\00", align 1
@reset_ctrl_regs.__already_done.16 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"\014hw-breakpoint: CPU %d failed to disable vector catch\0A\00", align 1
@reset_ctrl_regs.__already_done.18 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"\014hw-breakpoint: CPU %d failed to clear debug register pairs\0A\00", align 1
@cpu_bit_bitmap = external dso_local local_unnamed_addr constant [33 x [1 x i32]], align 4
@enable_monitor_mode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"\014hw-breakpoint: Failed to enable monitor mode on CPU %d.\0A\00", align 1
@.str.21 = private unnamed_addr constant [70 x i8] c"\014hw-breakpoint: attempt to read from unknown breakpoint register %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [78 x i8] c"Asynchronous watchpoint exception taken. Debugging results may be unreliable\0A\00", align 1
@dbg_cpu_pm_nb = internal global %struct.notifier_block { ptr @dbg_cpu_pm_notify, ptr null, i32 0 }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_hw_breakpoint__236_1192_arch_hw_breakpoint_init3], section "llvm.metadata"
@switch.table.arch_bp_generic_fields = private unnamed_addr constant [4 x i32] [i32 4, i32 1, i32 2, i32 3], align 4
@switch.table.arch_bp_generic_fields.23 = private unnamed_addr constant [9 x i32] [i32 8, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 4], align 4
@switch.table.hw_breakpoint_arch_parse.24 = private unnamed_addr constant [9 x i32] [i32 8, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @arch_get_debug_arch() local_unnamed_addr #0 {
  %1 = load i8, ptr @debug_arch, align 1
  ret i8 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hw_breakpoint_slots(i32 noundef %0) local_unnamed_addr #1 {
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #11, !srcloc !9
  %3 = and i32 %2, 983040
  %4 = icmp eq i32 %3, 983040
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %6, label %18, label %7, !prof !10

7:                                                ; preds = %5
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %18

9:                                                ; preds = %1
  %10 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !11
  %11 = lshr i32 %10, 16
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 15
  %14 = add nsw i8 %13, -4
  %15 = icmp ult i8 %14, -3
  %16 = icmp ult i8 %13, 5
  %17 = and i1 %16, %15
  br i1 %17, label %55, label %18

18:                                               ; preds = %9, %7, %5
  switch i32 %0, label %53 [
    i32 0, label %19
    i32 1, label %40
  ]

19:                                               ; preds = %18
  %20 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !12
  br i1 %4, label %25, label %21

21:                                               ; preds = %19
  %22 = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %22, label %34, label %23, !prof !10

23:                                               ; preds = %21
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %34

25:                                               ; preds = %19
  %26 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !11
  %27 = and i32 %26, 983040
  %28 = icmp ugt i32 %27, 131072
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !12
  %31 = and i32 %30, 251658240
  %32 = icmp ne i32 %31, 0
  %33 = sext i1 %32 to i32
  br label %34

34:                                               ; preds = %29, %25, %23, %21
  %35 = phi i32 [ 0, %25 ], [ %33, %29 ], [ 0, %23 ], [ 0, %21 ]
  %36 = lshr i32 %20, 24
  %37 = and i32 %36, 15
  %38 = add nuw nsw i32 %37, 1
  %39 = add nsw i32 %38, %35
  br label %55

40:                                               ; preds = %18
  br i1 %4, label %45, label %41

41:                                               ; preds = %40
  %42 = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %42, label %55, label %43, !prof !10

43:                                               ; preds = %41
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %55

45:                                               ; preds = %40
  %46 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !11
  %47 = and i32 %46, 983040
  %48 = icmp ult i32 %47, 327680
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !13
  %51 = lshr i32 %50, 28
  %52 = add nuw nsw i32 %51, 1
  br label %55

53:                                               ; preds = %18
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #12
  br label %55

55:                                               ; preds = %53, %49, %45, %43, %41, %34, %9
  %56 = phi i32 [ 0, %53 ], [ %39, %34 ], [ 0, %9 ], [ %52, %49 ], [ 1, %45 ], [ 1, %43 ], [ 1, %41 ]
  ret i32 %56
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @arch_get_max_wp_len() local_unnamed_addr #0 {
  %1 = load i8, ptr @max_watchpoint_len, align 1
  ret i8 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arch_install_hw_breakpoint(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %2, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 13
  %7 = and i32 %6, 4194304
  %8 = lshr i32 %5, 14
  %9 = and i32 %8, 8160
  %10 = lshr i32 %5, 24
  %11 = and i32 %10, 24
  %12 = lshr i32 %5, 28
  %13 = and i32 %12, 6
  %14 = or i32 %7, %9
  %15 = or i32 %14, %11
  %16 = or i32 %15, %13
  %17 = or i32 %16, 1
  %18 = and i32 %5, 402653184
  %19 = icmp eq i32 %18, 0
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #7
  %23 = select i1 %19, i32 ptrtoint (ptr @bp_on_reg to i32), i32 ptrtoint (ptr @wp_on_reg to i32)
  %24 = select i1 %19, i32 64, i32 96
  %25 = select i1 %19, i32 80, i32 112
  %26 = add i32 %22, %23
  %27 = inttoptr i32 %26 to ptr
  %28 = load i32, ptr @core_num_brps, align 4
  %29 = load i32, ptr @core_num_wrps, align 4
  %30 = select i1 %19, i32 %28, i32 %29
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %39, %1
  %33 = phi i32 [ %40, %39 ], [ 0, %1 ]
  %34 = getelementptr ptr, ptr %27, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = getelementptr ptr, ptr %27, i32 %33
  store ptr %0, ptr %38, align 4
  br label %42

39:                                               ; preds = %32
  %40 = add nuw nsw i32 %33, 1
  %41 = icmp eq i32 %40, %30
  br i1 %41, label %45, label %32

42:                                               ; preds = %37, %1
  %43 = phi i32 [ %33, %37 ], [ 0, %1 ]
  %44 = icmp eq i32 %43, %30
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %39
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %83

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %75, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %2, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, -4
  %55 = shl i32 %49, 13
  %56 = and i32 %55, 4194304
  %57 = lshr i32 %49, 14
  %58 = and i32 %57, 8160
  %59 = lshr i32 %49, 24
  %60 = and i32 %59, 24
  %61 = lshr i32 %49, 28
  %62 = and i32 %61, 6
  %63 = lshr i32 %49, 31
  %64 = or i32 %58, %63
  %65 = or i32 %64, %56
  %66 = or i32 %65, %60
  %67 = or i32 %66, %62
  %68 = load i32, ptr %4, align 4
  %69 = and i32 %68, 402653184
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %51
  %72 = load i32, ptr @core_num_brps, align 4
  %73 = add i32 %72, 80
  %74 = add i32 %72, 64
  br label %75

75:                                               ; preds = %71, %51, %47
  %76 = phi i32 [ %67, %71 ], [ %67, %51 ], [ %17, %47 ]
  %77 = phi i32 [ %54, %71 ], [ %54, %51 ], [ %3, %47 ]
  %78 = phi i32 [ %74, %71 ], [ %24, %51 ], [ %24, %47 ]
  %79 = phi i32 [ %73, %71 ], [ %25, %51 ], [ %25, %47 ]
  %80 = phi i32 [ 0, %71 ], [ %43, %51 ], [ %43, %47 ]
  %81 = add i32 %80, %78
  tail call fastcc void @write_wb_reg(i32 noundef %81, i32 noundef %77)
  %82 = add i32 %80, %79
  tail call fastcc void @write_wb_reg(i32 noundef %82, i32 noundef %76)
  br label %83

83:                                               ; preds = %75, %45
  %84 = phi i32 [ -16, %45 ], [ 0, %75 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @write_wb_reg(i32 noundef %0, i32 noundef %1) unnamed_addr #1 {
  switch i32 %0, label %67 [
    i32 64, label %3
    i32 65, label %4
    i32 66, label %5
    i32 67, label %6
    i32 68, label %7
    i32 69, label %8
    i32 70, label %9
    i32 71, label %10
    i32 72, label %11
    i32 73, label %12
    i32 74, label %13
    i32 75, label %14
    i32 76, label %15
    i32 77, label %16
    i32 78, label %17
    i32 79, label %18
    i32 80, label %19
    i32 81, label %20
    i32 82, label %21
    i32 83, label %22
    i32 84, label %23
    i32 85, label %24
    i32 86, label %25
    i32 87, label %26
    i32 88, label %27
    i32 89, label %28
    i32 90, label %29
    i32 91, label %30
    i32 92, label %31
    i32 93, label %32
    i32 94, label %33
    i32 95, label %34
    i32 96, label %35
    i32 97, label %36
    i32 98, label %37
    i32 99, label %38
    i32 100, label %39
    i32 101, label %40
    i32 102, label %41
    i32 103, label %42
    i32 104, label %43
    i32 105, label %44
    i32 106, label %45
    i32 107, label %46
    i32 108, label %47
    i32 109, label %48
    i32 110, label %49
    i32 111, label %50
    i32 112, label %51
    i32 113, label %52
    i32 114, label %53
    i32 115, label %54
    i32 116, label %55
    i32 117, label %56
    i32 118, label %57
    i32 119, label %58
    i32 120, label %59
    i32 121, label %60
    i32 122, label %61
    i32 123, label %62
    i32 124, label %63
    i32 125, label %64
    i32 126, label %65
    i32 127, label %66
  ]

3:                                                ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c0, 4", "r"(i32 %1) #13, !srcloc !14
  br label %69

4:                                                ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c1, 4", "r"(i32 %1) #13, !srcloc !15
  br label %69

5:                                                ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c2, 4", "r"(i32 %1) #13, !srcloc !16
  br label %69

6:                                                ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c3, 4", "r"(i32 %1) #13, !srcloc !17
  br label %69

7:                                                ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c4, 4", "r"(i32 %1) #13, !srcloc !18
  br label %69

8:                                                ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c5, 4", "r"(i32 %1) #13, !srcloc !19
  br label %69

9:                                                ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c6, 4", "r"(i32 %1) #13, !srcloc !20
  br label %69

10:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c7, 4", "r"(i32 %1) #13, !srcloc !21
  br label %69

11:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c8, 4", "r"(i32 %1) #13, !srcloc !22
  br label %69

12:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c9, 4", "r"(i32 %1) #13, !srcloc !23
  br label %69

13:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c10, 4", "r"(i32 %1) #13, !srcloc !24
  br label %69

14:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c11, 4", "r"(i32 %1) #13, !srcloc !25
  br label %69

15:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c12, 4", "r"(i32 %1) #13, !srcloc !26
  br label %69

16:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c13, 4", "r"(i32 %1) #13, !srcloc !27
  br label %69

17:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c14, 4", "r"(i32 %1) #13, !srcloc !28
  br label %69

18:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c15, 4", "r"(i32 %1) #13, !srcloc !29
  br label %69

19:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c0, 5", "r"(i32 %1) #13, !srcloc !30
  br label %69

20:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c1, 5", "r"(i32 %1) #13, !srcloc !31
  br label %69

21:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c2, 5", "r"(i32 %1) #13, !srcloc !32
  br label %69

22:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c3, 5", "r"(i32 %1) #13, !srcloc !33
  br label %69

23:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c4, 5", "r"(i32 %1) #13, !srcloc !34
  br label %69

24:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c5, 5", "r"(i32 %1) #13, !srcloc !35
  br label %69

25:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c6, 5", "r"(i32 %1) #13, !srcloc !36
  br label %69

26:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c7, 5", "r"(i32 %1) #13, !srcloc !37
  br label %69

27:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c8, 5", "r"(i32 %1) #13, !srcloc !38
  br label %69

28:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c9, 5", "r"(i32 %1) #13, !srcloc !39
  br label %69

29:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c10, 5", "r"(i32 %1) #13, !srcloc !40
  br label %69

30:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c11, 5", "r"(i32 %1) #13, !srcloc !41
  br label %69

31:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c12, 5", "r"(i32 %1) #13, !srcloc !42
  br label %69

32:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c13, 5", "r"(i32 %1) #13, !srcloc !43
  br label %69

33:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c14, 5", "r"(i32 %1) #13, !srcloc !44
  br label %69

34:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c15, 5", "r"(i32 %1) #13, !srcloc !45
  br label %69

35:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c0, 6", "r"(i32 %1) #13, !srcloc !46
  br label %69

36:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c1, 6", "r"(i32 %1) #13, !srcloc !47
  br label %69

37:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c2, 6", "r"(i32 %1) #13, !srcloc !48
  br label %69

38:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c3, 6", "r"(i32 %1) #13, !srcloc !49
  br label %69

39:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c4, 6", "r"(i32 %1) #13, !srcloc !50
  br label %69

40:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c5, 6", "r"(i32 %1) #13, !srcloc !51
  br label %69

41:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c6, 6", "r"(i32 %1) #13, !srcloc !52
  br label %69

42:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c7, 6", "r"(i32 %1) #13, !srcloc !53
  br label %69

43:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c8, 6", "r"(i32 %1) #13, !srcloc !54
  br label %69

44:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c9, 6", "r"(i32 %1) #13, !srcloc !55
  br label %69

45:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c10, 6", "r"(i32 %1) #13, !srcloc !56
  br label %69

46:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c11, 6", "r"(i32 %1) #13, !srcloc !57
  br label %69

47:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c12, 6", "r"(i32 %1) #13, !srcloc !58
  br label %69

48:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c13, 6", "r"(i32 %1) #13, !srcloc !59
  br label %69

49:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c14, 6", "r"(i32 %1) #13, !srcloc !60
  br label %69

50:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c15, 6", "r"(i32 %1) #13, !srcloc !61
  br label %69

51:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c0, 7", "r"(i32 %1) #13, !srcloc !62
  br label %69

52:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c1, 7", "r"(i32 %1) #13, !srcloc !63
  br label %69

53:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c2, 7", "r"(i32 %1) #13, !srcloc !64
  br label %69

54:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c3, 7", "r"(i32 %1) #13, !srcloc !65
  br label %69

55:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c4, 7", "r"(i32 %1) #13, !srcloc !66
  br label %69

56:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c5, 7", "r"(i32 %1) #13, !srcloc !67
  br label %69

57:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c6, 7", "r"(i32 %1) #13, !srcloc !68
  br label %69

58:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c7, 7", "r"(i32 %1) #13, !srcloc !69
  br label %69

59:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c8, 7", "r"(i32 %1) #13, !srcloc !70
  br label %69

60:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c9, 7", "r"(i32 %1) #13, !srcloc !71
  br label %69

61:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c10, 7", "r"(i32 %1) #13, !srcloc !72
  br label %69

62:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c11, 7", "r"(i32 %1) #13, !srcloc !73
  br label %69

63:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c12, 7", "r"(i32 %1) #13, !srcloc !74
  br label %69

64:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c13, 7", "r"(i32 %1) #13, !srcloc !75
  br label %69

65:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c14, 7", "r"(i32 %1) #13, !srcloc !76
  br label %69

66:                                               ; preds = %2
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c15, 7", "r"(i32 %1) #13, !srcloc !77
  br label %69

67:                                               ; preds = %2
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %0) #12
  br label %69

69:                                               ; preds = %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !78
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arch_uninstall_hw_breakpoint(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25
  %3 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %2, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 402653184
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #7
  %10 = select i1 %6, i32 ptrtoint (ptr @bp_on_reg to i32), i32 ptrtoint (ptr @wp_on_reg to i32)
  %11 = select i1 %6, i32 80, i32 112
  %12 = add i32 %9, %10
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr @core_num_brps, align 4
  %15 = load i32, ptr @core_num_wrps, align 4
  %16 = select i1 %6, i32 %14, i32 %15
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %25, %1
  %19 = phi i32 [ %26, %25 ], [ 0, %1 ]
  %20 = getelementptr ptr, ptr %13, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = getelementptr ptr, ptr %13, i32 %19
  store ptr null, ptr %24, align 4
  br label %28

25:                                               ; preds = %18
  %26 = add nuw nsw i32 %19, 1
  %27 = icmp eq i32 %26, %16
  br i1 %27, label %31, label %18

28:                                               ; preds = %23, %1
  %29 = phi i32 [ %19, %23 ], [ 0, %1 ]
  %30 = icmp eq i32 %29, %16
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %25
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %48

33:                                               ; preds = %28
  %34 = load i32, ptr %3, align 4
  %35 = and i32 %34, 402653184
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr @core_num_brps, align 4
  %43 = add i32 %42, 80
  br label %44

44:                                               ; preds = %41, %37, %33
  %45 = phi i32 [ %43, %41 ], [ %11, %37 ], [ %11, %33 ]
  %46 = phi i32 [ 0, %41 ], [ %29, %37 ], [ %29, %33 ]
  %47 = add i32 %46, %45
  tail call fastcc void @write_wb_reg(i32 noundef %47, i32 noundef 0)
  br label %48

48:                                               ; preds = %44, %31
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @arch_check_bp_in_kernelspace(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 19
  %6 = trunc i32 %5 to i8
  %7 = add i8 %6, 1
  %8 = tail call i8 @llvm.fshl.i8(i8 %7, i8 %7, i8 7) #13
  %9 = icmp ult i8 %8, 9
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = sext i8 %8 to i32
  %12 = getelementptr inbounds [9 x i32], ptr @switch.table.hw_breakpoint_arch_parse.24, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i32 [ 0, %1 ], [ %13, %10 ]
  %16 = icmp ugt i32 %2, -1090519041
  %17 = add i32 %2, 1090519039
  %18 = add i32 %17, %15
  %19 = icmp ult i32 %18, 1090519040
  %20 = select i1 %16, i1 %19, i1 false
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @arch_bp_generic_fields([1 x i32] %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = extractvalue [1 x i32] %0, 0
  %5 = lshr i32 %4, 27
  %6 = and i32 %5, 3
  %7 = getelementptr inbounds [4 x i32], ptr @switch.table.arch_bp_generic_fields, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %2, align 4
  %9 = lshr i32 %4, 19
  %10 = trunc i32 %9 to i8
  %11 = add i8 %10, 1
  %12 = tail call i8 @llvm.fshl.i8(i8 %11, i8 %11, i8 7)
  %13 = icmp ult i8 %12, 9
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = zext i8 %12 to i16
  %16 = lshr i16 263, %15
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = sext i8 %12 to i32
  %21 = getelementptr inbounds [9 x i32], ptr @switch.table.arch_bp_generic_fields.23, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %1, align 4
  br label %23

23:                                               ; preds = %19, %14, %3
  %24 = phi i32 [ -22, %3 ], [ 0, %19 ], [ -22, %14 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hw_breakpoint_arch_parse(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c1, 0", "=r"() #13, !srcloc !79
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %163, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.perf_event_attr, ptr %1, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %161 [
    i32 4, label %10
    i32 1, label %14
    i32 2, label %19
    i32 3, label %24
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %2, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -402653185
  store i32 %13, ptr %11, align 4
  br label %28

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %2, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, -402653185
  %18 = or i32 %17, 134217728
  store i32 %18, ptr %15, align 4
  br label %28

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %2, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, -402653185
  %23 = or i32 %22, 268435456
  store i32 %23, ptr %20, align 4
  br label %28

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %2, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 402653184
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %24, %19, %14, %10
  %29 = phi i32 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ]
  %30 = getelementptr inbounds %struct.perf_event_attr, ptr %1, i32 0, i32 10
  %31 = load i64, ptr %30, align 8
  switch i64 %31, label %161 [
    i64 1, label %32
    i64 2, label %36
    i64 4, label %40
    i64 8, label %44
  ]

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %2, i32 0, i32 3
  %34 = and i32 %29, -133693441
  %35 = or i32 %34, 524288
  store i32 %35, ptr %33, align 4
  br label %52

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %2, i32 0, i32 3
  %38 = and i32 %29, -133693441
  %39 = or i32 %38, 1572864
  store i32 %39, ptr %37, align 4
  br label %52

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %2, i32 0, i32 3
  %42 = and i32 %29, -133693441
  %43 = or i32 %42, 7864320
  store i32 %43, ptr %41, align 4
  br label %52

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %2, i32 0, i32 3
  %46 = or i32 %29, 133693440
  store i32 %46, ptr %45, align 4
  %47 = and i32 %29, 402653184
  %48 = icmp ne i32 %47, 0
  %49 = load i8, ptr @max_watchpoint_len, align 1
  %50 = icmp ugt i8 %49, 7
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %161

52:                                               ; preds = %44, %40, %36, %32
  %53 = phi i32 [ %46, %44 ], [ %43, %40 ], [ %39, %36 ], [ %35, %32 ]
  %54 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %2, i32 0, i32 3
  %55 = and i32 %53, 402653184
  %56 = icmp eq i32 %55, 0
  %57 = lshr i32 %53, 19
  %58 = trunc i32 %57 to i8
  br i1 %56, label %59, label %60

59:                                               ; preds = %52
  switch i8 %58, label %161 [
    i8 3, label %60
    i8 15, label %60
  ]

60:                                               ; preds = %59, %59, %52
  %61 = getelementptr inbounds %struct.perf_event_attr, ptr %1, i32 0, i32 9
  %62 = load i64, ptr %61, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, ptr %2, align 4
  %64 = and i32 %53, -1610612737
  %65 = or i32 %64, 1073741824
  store i32 %65, ptr %54, align 4
  %66 = add i8 %58, 1
  %67 = lshr exact i8 %66, 1
  %68 = trunc i8 %67 to i7
  %69 = icmp ult i7 %68, 9
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = sext i7 %68 to i32
  %72 = getelementptr inbounds [9 x i32], ptr @switch.table.hw_breakpoint_arch_parse.24, i32 0, i32 %71
  %73 = load i32, ptr %72, align 4
  br label %74

74:                                               ; preds = %70, %60
  %75 = phi i32 [ 0, %60 ], [ %73, %70 ]
  %76 = icmp ult i32 %63, -1090519040
  %77 = add i32 %63, 1090519039
  %78 = add i32 %77, %75
  %79 = icmp ugt i32 %78, 1090519039
  %80 = select i1 %76, i1 true, i1 %79
  br i1 %80, label %83, label %81

81:                                               ; preds = %74
  %82 = or i32 %53, 1610612736
  store i32 %82, ptr %54, align 4
  br label %83

83:                                               ; preds = %81, %74
  %84 = phi i32 [ %82, %81 ], [ %65, %74 ]
  %85 = getelementptr inbounds %struct.perf_event_attr, ptr %1, i32 0, i32 6
  %86 = load i64, ptr %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = xor i32 %87, -1
  %89 = shl i32 %88, 31
  %90 = and i32 %84, 2147483135
  %91 = or i32 %89, %90
  store i32 %91, ptr %54, align 4
  %92 = and i32 %84, 133693440
  %93 = icmp eq i32 %92, 133693440
  %94 = select i1 %93, i32 7, i32 3
  %95 = and i32 %94, %63
  switch i32 %95, label %161 [
    i32 0, label %99
    i32 1, label %96
    i32 2, label %96
    i32 3, label %97
  ]

96:                                               ; preds = %83, %83
  switch i32 %92, label %161 [
    i32 1572864, label %99
    i32 524288, label %99
  ]

97:                                               ; preds = %83
  %98 = icmp eq i32 %92, 524288
  br i1 %98, label %99, label %161

99:                                               ; preds = %97, %96, %96, %83
  %100 = xor i32 %94, -1
  %101 = and i32 %63, %100
  store i32 %101, ptr %2, align 4
  %102 = lshr i32 %84, 19
  %103 = shl nuw nsw i32 %102, %95
  %104 = shl i32 %103, 19
  %105 = and i32 %104, 133693440
  %106 = and i32 %91, -133693953
  %107 = or i32 %105, %106
  store i32 %107, ptr %54, align 4
  %108 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 60
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, @perf_event_output_forward
  br i1 %110, label %113, label %111, !prof !10

111:                                              ; preds = %99
  %112 = icmp eq ptr %109, @perf_event_output_backward
  br i1 %112, label %113, label %161

113:                                              ; preds = %111, %99
  %114 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #11, !srcloc !9
  %115 = and i32 %114, 983040
  %116 = icmp eq i32 %115, 983040
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %118, label %163, label %119, !prof !10

119:                                              ; preds = %117
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %163

121:                                              ; preds = %113
  %122 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !11
  %123 = and i32 %122, 983040
  %124 = icmp ugt i32 %123, 131072
  br i1 %124, label %125, label %163

125:                                              ; preds = %121
  %126 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !12
  %127 = and i32 %126, 251658240
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %163, label %129

129:                                              ; preds = %125
  %130 = load i32, ptr %2, align 4
  %131 = load i32, ptr %54, align 4
  %132 = lshr i32 %131, 19
  %133 = trunc i32 %132 to i8
  %134 = add i8 %133, 1
  %135 = tail call i8 @llvm.fshl.i8(i8 %134, i8 %134, i8 7) #13
  %136 = icmp ult i8 %135, 9
  br i1 %136, label %137, label %141

137:                                              ; preds = %129
  %138 = sext i8 %135 to i32
  %139 = getelementptr inbounds [9 x i32], ptr @switch.table.hw_breakpoint_arch_parse.24, i32 0, i32 %138
  %140 = load i32, ptr %139, align 4
  br label %141

141:                                              ; preds = %137, %129
  %142 = phi i32 [ 0, %129 ], [ %140, %137 ]
  %143 = icmp ult i32 %130, -1090519040
  %144 = add i32 %130, 1090519039
  %145 = add i32 %144, %142
  %146 = icmp ugt i32 %145, 1090519039
  %147 = select i1 %143, i1 true, i1 %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 1
  %150 = load ptr, ptr %149, align 8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %163, label %152

152:                                              ; preds = %148
  %153 = tail call fastcc i32 @debug_exception_updates_fsr()
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load i32, ptr %54, align 4
  %157 = lshr i32 %156, 27
  %158 = and i32 %157, 3
  %159 = add nsw i32 %158, -1
  %160 = icmp ult i32 %159, 2
  br i1 %160, label %163, label %161

161:                                              ; preds = %155, %152, %111, %97, %96, %83, %59, %44, %28, %7
  %162 = phi i32 [ 0, %152 ], [ 0, %111 ], [ -22, %97 ], [ -22, %83 ], [ 0, %155 ], [ -22, %7 ], [ -22, %44 ], [ -22, %28 ], [ -22, %59 ], [ -22, %96 ]
  br label %163

163:                                              ; preds = %161, %155, %148, %141, %125, %121, %119, %117, %3
  %164 = phi i32 [ %162, %161 ], [ -19, %3 ], [ -22, %125 ], [ -1, %141 ], [ -22, %148 ], [ -22, %155 ], [ -22, %121 ], [ -22, %119 ], [ -22, %117 ]
  ret i32 %164
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @debug_exception_updates_fsr() unnamed_addr #1 {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #11, !srcloc !9
  %2 = and i32 %1, 983040
  %3 = icmp eq i32 %2, 983040
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %5, label %13, label %6, !prof !10

6:                                                ; preds = %4
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %13

8:                                                ; preds = %0
  %9 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !11
  %10 = and i32 %9, 917504
  %11 = icmp ugt i32 %10, 327680
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %6, %4
  %14 = phi i32 [ %12, %8 ], [ 0, %6 ], [ 0, %4 ]
  ret i32 %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @arch_hw_breakpoint_init() #5 section ".init.text" {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #11, !srcloc !9
  %2 = and i32 %1, 983040
  %3 = icmp eq i32 %2, 983040
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  %5 = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %5, label %6, label %7, !prof !10

6:                                                ; preds = %4
  store i8 1, ptr @debug_arch, align 1
  br label %32

7:                                                ; preds = %4
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  %9 = load i1, ptr @get_debug_arch.__already_done, align 1
  store i8 1, ptr @debug_arch, align 1
  br i1 %9, label %32, label %10, !prof !10

10:                                               ; preds = %7
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %32

12:                                               ; preds = %0
  %13 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !11
  %14 = lshr i32 %13, 16
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 15
  store i8 %16, ptr @debug_arch, align 1
  %17 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !11
  %18 = lshr i32 %17, 16
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 15
  %21 = add nsw i8 %20, -4
  %22 = icmp ult i8 %21, -3
  %23 = icmp ult i8 %20, 5
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %29

25:                                               ; preds = %12
  %26 = load i8, ptr @debug_arch, align 1
  %27 = zext i8 %26 to i32
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %27) #12
  br label %135

29:                                               ; preds = %12
  %30 = and i32 %1, -16711696
  %31 = icmp eq i32 %30, 1358955216
  br i1 %31, label %35, label %41

32:                                               ; preds = %10, %7, %6
  %33 = and i32 %1, -16711696
  %34 = icmp eq i32 %33, 1358955216
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %29
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %135

37:                                               ; preds = %32
  %38 = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %38, label %53, label %39, !prof !10

39:                                               ; preds = %37
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %53

41:                                               ; preds = %29
  %42 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !11
  %43 = lshr i32 %42, 16
  %44 = trunc i32 %43 to i4
  switch i4 %44, label %51 [
    i4 5, label %49
    i4 3, label %45
  ]

45:                                               ; preds = %41
  %46 = tail call i32 asm sideeffect "mrc p14, 0, $0, c1,c1, 4", "=r"() #13, !srcloc !80
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45, %41
  store i1 true, ptr @has_ossr, align 1
  %50 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !12
  br label %60

51:                                               ; preds = %45, %41
  store i1 false, ptr @has_ossr, align 1
  %52 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !12
  br label %60

53:                                               ; preds = %39, %37
  store i1 false, ptr @has_ossr, align 1
  %54 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !12
  %55 = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %55, label %56, label %70, !prof !10

56:                                               ; preds = %53
  %57 = lshr i32 %54, 24
  %58 = and i32 %57, 15
  %59 = add nuw nsw i32 %58, 1
  store i32 %59, ptr @core_num_brps, align 4
  br label %91

60:                                               ; preds = %51, %49
  %61 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %62 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !11
  %63 = and i32 %62, 983040
  %64 = icmp ugt i32 %63, 131072
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !12
  %67 = and i32 %66, 251658240
  %68 = icmp ne i32 %67, 0
  %69 = sext i1 %68 to i32
  br label %78

70:                                               ; preds = %53
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  %72 = load i1, ptr @get_debug_arch.__already_done, align 1
  %73 = lshr i32 %54, 24
  %74 = and i32 %73, 15
  %75 = add nuw nsw i32 %74, 1
  store i32 %75, ptr @core_num_brps, align 4
  br i1 %72, label %91, label %76, !prof !10

76:                                               ; preds = %70
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %91

78:                                               ; preds = %65, %60
  %79 = phi i32 [ %69, %65 ], [ 0, %60 ]
  %80 = lshr i32 %61, 24
  %81 = and i32 %80, 15
  %82 = add nuw nsw i32 %81, 1
  %83 = add nsw i32 %82, %79
  store i32 %83, ptr @core_num_brps, align 4
  %84 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !11
  %85 = and i32 %84, 983040
  %86 = icmp ult i32 %85, 327680
  br i1 %86, label %91, label %87

87:                                               ; preds = %78
  %88 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !13
  %89 = lshr i32 %88, 28
  %90 = add nuw nsw i32 %89, 1
  br label %91

91:                                               ; preds = %87, %78, %76, %70, %56
  %92 = phi i32 [ %90, %87 ], [ 1, %78 ], [ 1, %76 ], [ 1, %70 ], [ 1, %56 ]
  store i32 %92, ptr @core_num_wrps, align 4
  tail call void @cpus_read_lock() #13
  tail call void @register_undef_hook(ptr noundef nonnull @debug_reg_hook) #13
  %93 = tail call i32 @__cpuhp_setup_state_cpuslocked(i32 noundef 194, ptr noundef nonnull @.str.6, i1 noundef zeroext true, ptr noundef nonnull @dbg_reset_online, ptr noundef null, i1 noundef zeroext false) #13
  tail call void @unregister_undef_hook(ptr noundef nonnull @debug_reg_hook) #13
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96, !prof !81

95:                                               ; preds = %91
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1163, i32 noundef 9, ptr noundef null) #13
  store i32 0, ptr @core_num_brps, align 4
  store i32 0, ptr @core_num_wrps, align 4
  br label %103

96:                                               ; preds = %91
  %97 = load i32, ptr @debug_err_mask, align 4
  %98 = and i32 %97, 65535
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  store i32 0, ptr @core_num_brps, align 4
  store i32 0, ptr @core_num_wrps, align 4
  %101 = icmp eq i32 %93, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %100
  tail call void @__cpuhp_remove_state_cpuslocked(i32 noundef %93, i1 noundef zeroext false) #13
  br label %103

103:                                              ; preds = %102, %100, %95
  tail call void @cpus_read_unlock() #13
  br label %135

104:                                              ; preds = %96
  %105 = load i32, ptr @core_num_brps, align 4
  br i1 %3, label %110, label %106

106:                                              ; preds = %104
  %107 = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %107, label %118, label %108, !prof !10

108:                                              ; preds = %106
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %118

110:                                              ; preds = %104
  %111 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !11
  %112 = and i32 %111, 983040
  %113 = icmp ugt i32 %112, 131072
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !12
  %116 = and i32 %115, 251658240
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114, %110, %108, %106
  br label %119

119:                                              ; preds = %118, %114
  %120 = phi ptr [ @.str.10, %118 ], [ @.str.9, %114 ]
  %121 = load i32, ptr @core_num_wrps, align 4
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %105, ptr noundef nonnull %120, i32 noundef %121) #12
  %123 = load i8, ptr @debug_arch, align 1
  %124 = icmp ult i8 %123, 3
  br i1 %124, label %130, label %125

125:                                              ; preds = %119
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c0, 6", "r"(i32 0) #13, !srcloc !46
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !78
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c0, 7", "r"(i32 8160) #13, !srcloc !62
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !78
  %126 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 7", "=r"() #13, !srcloc !82
  %127 = and i32 %126, 8160
  %128 = icmp eq i32 %127, 8160
  %129 = select i1 %128, i8 8, i8 4
  br label %130

130:                                              ; preds = %125, %119
  %131 = phi i8 [ 4, %119 ], [ %129, %125 ]
  store i8 %131, ptr @max_watchpoint_len, align 1
  %132 = zext i8 %131 to i32
  %133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %132) #12
  tail call void @hook_fault_code(i32 noundef 2, ptr noundef nonnull @hw_breakpoint_pending, i32 noundef 5, i32 noundef 4, ptr noundef nonnull @.str.12) #13
  tail call void @hook_ifault_code(i32 noundef 2, ptr noundef nonnull @hw_breakpoint_pending, i32 noundef 5, i32 noundef 4, ptr noundef nonnull @.str.13) #13
  tail call void @cpus_read_unlock() #13
  %134 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @dbg_cpu_pm_nb) #13
  br label %135

135:                                              ; preds = %130, %103, %35, %25
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @hw_breakpoint_pmu_read(ptr nocapture noundef %0) local_unnamed_addr #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @hw_breakpoint_exceptions_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #6 {
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_output_forward(ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_output_backward(ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_undef_hook(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dbg_reset_online(i32 noundef %0) #1 {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !83
  tail call fastcc void @reset_ctrl_regs(i32 noundef %0)
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !84
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_undef_hook(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @hook_fault_code(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hw_breakpoint_pending(i32 noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !85
  %4 = getelementptr [18 x i32], ptr %2, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 128
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !84
  br label %9

9:                                                ; preds = %8, %3
  %10 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c1, 0", "=r"() #13, !srcloc !86
  %11 = lshr i32 %10, 2
  %12 = and i32 %11, 15
  switch i32 %12, label %199 [
    i32 1, label %13
    i32 2, label %87
    i32 10, label %88
  ]

13:                                               ; preds = %9
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #7, !srcloc !87
  %17 = add i32 %16, ptrtoint (ptr @bp_on_reg to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr @core_num_brps, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %13
  %24 = and i32 %20, -4
  %25 = and i32 %20, 3
  %26 = shl nuw nsw i32 1, %25
  br label %27

27:                                               ; preds = %56, %23
  %28 = phi i32 [ 0, %23 ], [ %57, %56 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !88
  %29 = getelementptr ptr, ptr %18, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %56, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.perf_event, ptr %30, i32 0, i32 25
  %34 = add nuw i32 %28, 64
  %35 = tail call fastcc i32 @read_wb_reg(i32 noundef %34) #13
  %36 = icmp eq i32 %35, %24
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = add nuw i32 %28, 80
  %39 = tail call fastcc i32 @read_wb_reg(i32 noundef %38) #13
  %40 = lshr i32 %39, 5
  %41 = and i32 %26, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %33, i32 0, i32 1
  store i32 %20, ptr %44, align 4
  tail call void @perf_bp_event(ptr noundef nonnull %30, ptr noundef %2) #13
  %45 = getelementptr inbounds %struct.perf_event, ptr %30, i32 0, i32 60
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, @perf_event_output_forward
  br i1 %47, label %50, label %48, !prof !10

48:                                               ; preds = %43
  %49 = icmp eq ptr %46, @perf_event_output_backward
  br i1 %49, label %50, label %56

50:                                               ; preds = %48, %43
  tail call fastcc void @enable_single_step(ptr noundef nonnull %30, i32 noundef %20) #13
  br label %56

51:                                               ; preds = %37, %32
  %52 = getelementptr inbounds %struct.perf_event, ptr %30, i32 0, i32 25, i32 0, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call fastcc void @disable_single_step(ptr noundef nonnull %30) #13
  br label %56

56:                                               ; preds = %55, %51, %50, %48, %27
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !89
  %57 = add nuw nsw i32 %28, 1
  %58 = load i32, ptr @core_num_brps, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %27, label %60

60:                                               ; preds = %56, %13
  %61 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %62 = inttoptr i32 %61 to ptr
  %63 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %62) #7, !srcloc !87
  %64 = add i32 %63, ptrtoint (ptr @wp_on_reg to i32)
  %65 = inttoptr i32 %64 to ptr
  %66 = load i32, ptr @core_num_wrps, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %199

68:                                               ; preds = %83, %60
  %69 = phi i32 [ %84, %83 ], [ 0, %60 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !88
  %70 = getelementptr ptr, ptr %65, i32 %69
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.perf_event, ptr %71, i32 0, i32 25, i32 0, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.perf_event, ptr %71, i32 0, i32 25
  %79 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, %20
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  tail call fastcc void @disable_single_step(ptr noundef nonnull %71) #13
  br label %83

83:                                               ; preds = %82, %77, %73, %68
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !89
  %84 = add nuw nsw i32 %69, 1
  %85 = load i32, ptr @core_num_wrps, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %68, label %199

87:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 930, i32 noundef 9, ptr noundef nonnull @.str.22) #13
  br label %88

88:                                               ; preds = %87, %9
  %89 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %90 = inttoptr i32 %89 to ptr
  %91 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %90) #7, !srcloc !87
  %92 = add i32 %91, ptrtoint (ptr @wp_on_reg to i32)
  %93 = inttoptr i32 %92 to ptr
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !88
  %94 = load i32, ptr @core_num_wrps, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %198

96:                                               ; preds = %88
  %97 = and i32 %1, 2048
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 1, i32 2
  %100 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  br label %101

101:                                              ; preds = %177, %96
  %102 = phi i32 [ 0, %96 ], [ %180, %177 ]
  %103 = phi i32 [ 0, %96 ], [ %179, %177 ]
  %104 = phi i32 [ -1, %96 ], [ %178, %177 ]
  %105 = getelementptr ptr, ptr %93, i32 %102
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %177, label %108

108:                                              ; preds = %101
  %109 = load i8, ptr @debug_arch, align 1
  %110 = icmp ult i8 %109, 5
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = icmp eq i32 %102, 0
  br i1 %112, label %114, label %113, !prof !10

113:                                              ; preds = %111
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/hw_breakpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 755, 0\0A.popsection", ""() #13, !srcloc !90
  unreachable

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.perf_event, ptr %106, i32 0, i32 21, i32 9
  %116 = load i64, ptr %115, align 8
  %117 = trunc i64 %116 to i32
  br label %155

118:                                              ; preds = %108
  %119 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #11, !srcloc !9
  %120 = and i32 %119, 983040
  %121 = icmp eq i32 %120, 983040
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %123, label %135, label %124, !prof !10

124:                                              ; preds = %122
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %135

126:                                              ; preds = %118
  %127 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !11
  %128 = and i32 %127, 917504
  %129 = icmp ult i32 %128, 327681
  br i1 %129, label %135, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.perf_event, ptr %106, i32 0, i32 21, i32 8
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, %99
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %177, label %135

135:                                              ; preds = %130, %126, %124, %122
  %136 = add nuw i32 %102, 96
  %137 = tail call fastcc i32 @read_wb_reg(i32 noundef %136) #13
  %138 = add nuw i32 %102, 112
  %139 = tail call fastcc i32 @read_wb_reg(i32 noundef %138) #13
  %140 = lshr i32 %139, 5
  %141 = and i32 %140, 255
  %142 = tail call i32 @llvm.cttz.i32(i32 %141, i1 false) #13, !range !91
  %143 = tail call i32 @llvm.ctlz.i32(i32 %141, i1 false) #13, !range !91
  %144 = add i32 %142, %137
  %145 = add i32 %137, 31
  %146 = sub i32 %145, %143
  %147 = icmp ugt i32 %144, %0
  %148 = sub i32 %144, %0
  %149 = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 %146) #13
  %150 = select i1 %147, i32 %148, i32 %149
  %151 = icmp ult i32 %150, %104
  %152 = tail call i32 @llvm.umin.i32(i32 %150, i32 %104) #13
  %153 = select i1 %151, i32 %102, i32 %103
  %154 = icmp eq i32 %150, 0
  br i1 %154, label %155, label %177

155:                                              ; preds = %135, %114
  %156 = phi i32 [ %117, %114 ], [ %0, %135 ]
  %157 = phi i32 [ %104, %114 ], [ %152, %135 ]
  %158 = phi i32 [ %103, %114 ], [ %153, %135 ]
  %159 = getelementptr inbounds %struct.perf_event, ptr %106, i32 0, i32 25
  %160 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %159, i32 0, i32 1
  store i32 %156, ptr %160, align 4
  %161 = load i32, ptr %4, align 4
  %162 = and i32 %161, 15
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %155
  %165 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %159, i32 0, i32 3
  %166 = load i32, ptr %165, align 4
  %167 = and i32 %166, 1610612736
  %168 = icmp eq i32 %167, 1073741824
  br i1 %168, label %175, label %169

169:                                              ; preds = %164, %155
  tail call void @perf_bp_event(ptr noundef nonnull %106, ptr noundef %2) #13
  %170 = getelementptr inbounds %struct.perf_event, ptr %106, i32 0, i32 60
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, @perf_event_output_forward
  br i1 %172, label %175, label %173, !prof !10

173:                                              ; preds = %169
  %174 = icmp eq ptr %171, @perf_event_output_backward
  br i1 %174, label %175, label %177

175:                                              ; preds = %173, %169, %164
  %176 = load i32, ptr %100, align 4
  tail call fastcc void @enable_single_step(ptr noundef nonnull %106, i32 noundef %176) #13
  br label %177

177:                                              ; preds = %175, %173, %135, %130, %101
  %178 = phi i32 [ %104, %101 ], [ %157, %175 ], [ %157, %173 ], [ %152, %135 ], [ %104, %130 ]
  %179 = phi i32 [ %103, %101 ], [ %158, %175 ], [ %158, %173 ], [ %153, %135 ], [ %103, %130 ]
  %180 = add nuw nsw i32 %102, 1
  %181 = load i32, ptr @core_num_wrps, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %101, label %183

183:                                              ; preds = %177
  %184 = add i32 %178, -1
  %185 = icmp ult i32 %184, -2
  br i1 %185, label %186, label %198

186:                                              ; preds = %183
  %187 = getelementptr ptr, ptr %93, i32 %179
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.perf_event, ptr %188, i32 0, i32 25
  %190 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %189, i32 0, i32 1
  store i32 %0, ptr %190, align 4
  tail call void @perf_bp_event(ptr noundef %188, ptr noundef %2) #13
  %191 = getelementptr inbounds %struct.perf_event, ptr %188, i32 0, i32 60
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, @perf_event_output_forward
  br i1 %193, label %196, label %194, !prof !10

194:                                              ; preds = %186
  %195 = icmp eq ptr %192, @perf_event_output_backward
  br i1 %195, label %196, label %198

196:                                              ; preds = %194, %186
  %197 = load i32, ptr %100, align 4
  tail call fastcc void @enable_single_step(ptr noundef %188, i32 noundef %197) #13
  br label %198

198:                                              ; preds = %196, %194, %183, %88
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !89
  br label %199

199:                                              ; preds = %198, %83, %60, %9
  %200 = phi i32 [ 0, %198 ], [ 1, %9 ], [ 0, %60 ], [ 0, %83 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !92
  ret i32 %200
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hook_ifault_code(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debug_reg_trap(ptr nocapture noundef %0, i32 noundef %1) #1 {
  %3 = tail call ptr @llvm.thread.pointer() #13
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %1, i32 noundef %5) #12
  tail call void @_set_bit(i32 noundef %5, ptr noundef nonnull @debug_err_mask) #13
  %7 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 4
  store i32 %9, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state_cpuslocked(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reset_ctrl_regs(i32 noundef %0) unnamed_addr #1 {
  %2 = load i8, ptr @debug_arch, align 1
  switch i8 %2, label %27 [
    i8 1, label %72
    i8 2, label %72
    i8 3, label %3
    i8 5, label %6
  ]

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "mrc p14, 0, $0, c1,c5, 4", "=r"() #13, !srcloc !93
  %5 = load i1, ptr @has_ossr, align 1
  br i1 %5, label %10, label %28

6:                                                ; preds = %1
  %7 = tail call i32 asm sideeffect "mrc p14, 0, $0, c1,c3, 4", "=r"() #13, !srcloc !94
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %13

10:                                               ; preds = %3
  %11 = and i32 %4, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10, %6
  %14 = load i1, ptr @reset_ctrl_regs.__already_done, align 1
  br i1 %14, label %17, label %15, !prof !10

15:                                               ; preds = %13
  store i1 true, ptr @reset_ctrl_regs.__already_done, align 1
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %0) #12
  br label %17

17:                                               ; preds = %15, %13
  %18 = and i32 %0, 31
  %19 = add nuw nsw i32 %18, 1
  %20 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %19
  %21 = lshr i32 %0, 5
  %22 = sub nsw i32 0, %21
  %23 = getelementptr i32, ptr %20, i32 %22
  %24 = load i32, ptr @debug_err_mask, align 4
  %25 = load i32, ptr %23, align 4
  %26 = or i32 %25, %24
  store i32 %26, ptr @debug_err_mask, align 4
  br label %113

27:                                               ; preds = %10, %6, %1
  tail call void asm sideeffect "mcr p14, 0, $0, c1,c0, 4", "r"(i32 978530730) #13, !srcloc !95
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !96
  br label %28

28:                                               ; preds = %27, %3
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c7, 0", "r"(i32 0) #13, !srcloc !97
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !98
  %29 = and i32 %0, 31
  %30 = add nuw nsw i32 %29, 1
  %31 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %30
  %32 = lshr i32 %0, 5
  %33 = sub nsw i32 0, %32
  %34 = getelementptr i32, ptr %31, i32 %33
  %35 = load i32, ptr @debug_err_mask, align 4
  %36 = load i32, ptr %34, align 4
  %37 = and i32 %36, 65535
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %28
  %41 = load i1, ptr @reset_ctrl_regs.__already_done.16, align 1
  br i1 %41, label %113, label %42, !prof !10

42:                                               ; preds = %40
  store i1 true, ptr @reset_ctrl_regs.__already_done.16, align 1
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %0) #12
  br label %113

44:                                               ; preds = %28
  %45 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !12
  %46 = lshr i32 %45, 24
  %47 = and i32 %46, 15
  br label %51

48:                                               ; preds = %51
  %49 = load i32, ptr @core_num_wrps, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %57, label %64

51:                                               ; preds = %51, %44
  %52 = phi i32 [ 0, %44 ], [ %55, %51 ]
  %53 = add nuw nsw i32 %52, 80
  tail call fastcc void @write_wb_reg(i32 noundef %53, i32 noundef 0)
  %54 = add nuw nsw i32 %52, 64
  tail call fastcc void @write_wb_reg(i32 noundef %54, i32 noundef 0)
  %55 = add nuw nsw i32 %52, 1
  %56 = icmp eq i32 %52, %47
  br i1 %56, label %48, label %51

57:                                               ; preds = %57, %48
  %58 = phi i32 [ %61, %57 ], [ 0, %48 ]
  %59 = add nuw i32 %58, 112
  tail call fastcc void @write_wb_reg(i32 noundef %59, i32 noundef 0)
  %60 = add nuw i32 %58, 96
  tail call fastcc void @write_wb_reg(i32 noundef %60, i32 noundef 0)
  %61 = add nuw nsw i32 %58, 1
  %62 = load i32, ptr @core_num_wrps, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %57, label %64

64:                                               ; preds = %57, %48
  %65 = load i32, ptr @debug_err_mask, align 4
  %66 = and i32 %37, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i1, ptr @reset_ctrl_regs.__already_done.18, align 1
  br i1 %69, label %113, label %70, !prof !10

70:                                               ; preds = %68
  store i1 true, ptr @reset_ctrl_regs.__already_done.18, align 1
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %0) #12
  br label %113

72:                                               ; preds = %64, %1, %1
  %73 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c1, 0", "=r"() #13, !srcloc !99
  %74 = and i32 %73, 32768
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %113

76:                                               ; preds = %72
  %77 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #11, !srcloc !9
  %78 = and i32 %77, 983040
  %79 = icmp eq i32 %78, 983040
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %81, label %88, label %82, !prof !10

82:                                               ; preds = %80
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %88

84:                                               ; preds = %76
  %85 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #13, !srcloc !11
  %86 = lshr i32 %85, 16
  %87 = trunc i32 %86 to i4
  switch i4 %87, label %103 [
    i4 1, label %88
    i4 2, label %88
    i4 3, label %90
    i4 5, label %90
    i4 6, label %90
    i4 7, label %90
    i4 -8, label %90
    i4 -7, label %90
  ]

88:                                               ; preds = %84, %84, %82, %80
  %89 = or i32 %73, 32768
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c1, 0", "r"(i32 %89) #13, !srcloc !100
  br label %92

90:                                               ; preds = %84, %84, %84, %84, %84, %84
  %91 = or i32 %73, 32768
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c2, 2", "r"(i32 %91) #13, !srcloc !101
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !102
  br label %92

92:                                               ; preds = %90, %88
  %93 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c1, 0", "=r"() #13, !srcloc !103
  %94 = and i32 %93, 32768
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %92
  %97 = load i1, ptr @enable_monitor_mode.__already_done, align 1
  br i1 %97, label %103, label %98, !prof !10

98:                                               ; preds = %96
  store i1 true, ptr @enable_monitor_mode.__already_done, align 1
  %99 = tail call ptr @llvm.thread.pointer() #13
  %100 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %101 = load i32, ptr %100, align 8
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %101) #12
  br label %103

103:                                              ; preds = %98, %96, %84
  %104 = and i32 %0, 31
  %105 = add nuw nsw i32 %104, 1
  %106 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %105
  %107 = lshr i32 %0, 5
  %108 = sub nsw i32 0, %107
  %109 = getelementptr i32, ptr %106, i32 %108
  %110 = load i32, ptr @debug_err_mask, align 4
  %111 = load i32, ptr %109, align 4
  %112 = or i32 %111, %110
  store i32 %112, ptr @debug_err_mask, align 4
  br label %113

113:                                              ; preds = %103, %92, %72, %70, %68, %42, %40, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state_cpuslocked(i32 noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_wb_reg(i32 noundef %0) unnamed_addr #1 {
  switch i32 %0, label %130 [
    i32 64, label %2
    i32 65, label %4
    i32 66, label %6
    i32 67, label %8
    i32 68, label %10
    i32 69, label %12
    i32 70, label %14
    i32 71, label %16
    i32 72, label %18
    i32 73, label %20
    i32 74, label %22
    i32 75, label %24
    i32 76, label %26
    i32 77, label %28
    i32 78, label %30
    i32 79, label %32
    i32 80, label %34
    i32 81, label %36
    i32 82, label %38
    i32 83, label %40
    i32 84, label %42
    i32 85, label %44
    i32 86, label %46
    i32 87, label %48
    i32 88, label %50
    i32 89, label %52
    i32 90, label %54
    i32 91, label %56
    i32 92, label %58
    i32 93, label %60
    i32 94, label %62
    i32 95, label %64
    i32 96, label %66
    i32 97, label %68
    i32 98, label %70
    i32 99, label %72
    i32 100, label %74
    i32 101, label %76
    i32 102, label %78
    i32 103, label %80
    i32 104, label %82
    i32 105, label %84
    i32 106, label %86
    i32 107, label %88
    i32 108, label %90
    i32 109, label %92
    i32 110, label %94
    i32 111, label %96
    i32 112, label %98
    i32 113, label %100
    i32 114, label %102
    i32 115, label %104
    i32 116, label %106
    i32 117, label %108
    i32 118, label %110
    i32 119, label %112
    i32 120, label %114
    i32 121, label %116
    i32 122, label %118
    i32 123, label %120
    i32 124, label %122
    i32 125, label %124
    i32 126, label %126
    i32 127, label %128
  ]

2:                                                ; preds = %1
  %3 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 4", "=r"() #13, !srcloc !104
  br label %132

4:                                                ; preds = %1
  %5 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c1, 4", "=r"() #13, !srcloc !105
  br label %132

6:                                                ; preds = %1
  %7 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c2, 4", "=r"() #13, !srcloc !106
  br label %132

8:                                                ; preds = %1
  %9 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c3, 4", "=r"() #13, !srcloc !107
  br label %132

10:                                               ; preds = %1
  %11 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c4, 4", "=r"() #13, !srcloc !108
  br label %132

12:                                               ; preds = %1
  %13 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c5, 4", "=r"() #13, !srcloc !109
  br label %132

14:                                               ; preds = %1
  %15 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c6, 4", "=r"() #13, !srcloc !110
  br label %132

16:                                               ; preds = %1
  %17 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c7, 4", "=r"() #13, !srcloc !111
  br label %132

18:                                               ; preds = %1
  %19 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c8, 4", "=r"() #13, !srcloc !112
  br label %132

20:                                               ; preds = %1
  %21 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c9, 4", "=r"() #13, !srcloc !113
  br label %132

22:                                               ; preds = %1
  %23 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c10, 4", "=r"() #13, !srcloc !114
  br label %132

24:                                               ; preds = %1
  %25 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c11, 4", "=r"() #13, !srcloc !115
  br label %132

26:                                               ; preds = %1
  %27 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c12, 4", "=r"() #13, !srcloc !116
  br label %132

28:                                               ; preds = %1
  %29 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c13, 4", "=r"() #13, !srcloc !117
  br label %132

30:                                               ; preds = %1
  %31 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c14, 4", "=r"() #13, !srcloc !118
  br label %132

32:                                               ; preds = %1
  %33 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c15, 4", "=r"() #13, !srcloc !119
  br label %132

34:                                               ; preds = %1
  %35 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 5", "=r"() #13, !srcloc !120
  br label %132

36:                                               ; preds = %1
  %37 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c1, 5", "=r"() #13, !srcloc !121
  br label %132

38:                                               ; preds = %1
  %39 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c2, 5", "=r"() #13, !srcloc !122
  br label %132

40:                                               ; preds = %1
  %41 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c3, 5", "=r"() #13, !srcloc !123
  br label %132

42:                                               ; preds = %1
  %43 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c4, 5", "=r"() #13, !srcloc !124
  br label %132

44:                                               ; preds = %1
  %45 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c5, 5", "=r"() #13, !srcloc !125
  br label %132

46:                                               ; preds = %1
  %47 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c6, 5", "=r"() #13, !srcloc !126
  br label %132

48:                                               ; preds = %1
  %49 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c7, 5", "=r"() #13, !srcloc !127
  br label %132

50:                                               ; preds = %1
  %51 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c8, 5", "=r"() #13, !srcloc !128
  br label %132

52:                                               ; preds = %1
  %53 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c9, 5", "=r"() #13, !srcloc !129
  br label %132

54:                                               ; preds = %1
  %55 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c10, 5", "=r"() #13, !srcloc !130
  br label %132

56:                                               ; preds = %1
  %57 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c11, 5", "=r"() #13, !srcloc !131
  br label %132

58:                                               ; preds = %1
  %59 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c12, 5", "=r"() #13, !srcloc !132
  br label %132

60:                                               ; preds = %1
  %61 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c13, 5", "=r"() #13, !srcloc !133
  br label %132

62:                                               ; preds = %1
  %63 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c14, 5", "=r"() #13, !srcloc !134
  br label %132

64:                                               ; preds = %1
  %65 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c15, 5", "=r"() #13, !srcloc !135
  br label %132

66:                                               ; preds = %1
  %67 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 6", "=r"() #13, !srcloc !136
  br label %132

68:                                               ; preds = %1
  %69 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c1, 6", "=r"() #13, !srcloc !137
  br label %132

70:                                               ; preds = %1
  %71 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c2, 6", "=r"() #13, !srcloc !138
  br label %132

72:                                               ; preds = %1
  %73 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c3, 6", "=r"() #13, !srcloc !139
  br label %132

74:                                               ; preds = %1
  %75 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c4, 6", "=r"() #13, !srcloc !140
  br label %132

76:                                               ; preds = %1
  %77 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c5, 6", "=r"() #13, !srcloc !141
  br label %132

78:                                               ; preds = %1
  %79 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c6, 6", "=r"() #13, !srcloc !142
  br label %132

80:                                               ; preds = %1
  %81 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c7, 6", "=r"() #13, !srcloc !143
  br label %132

82:                                               ; preds = %1
  %83 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c8, 6", "=r"() #13, !srcloc !144
  br label %132

84:                                               ; preds = %1
  %85 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c9, 6", "=r"() #13, !srcloc !145
  br label %132

86:                                               ; preds = %1
  %87 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c10, 6", "=r"() #13, !srcloc !146
  br label %132

88:                                               ; preds = %1
  %89 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c11, 6", "=r"() #13, !srcloc !147
  br label %132

90:                                               ; preds = %1
  %91 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c12, 6", "=r"() #13, !srcloc !148
  br label %132

92:                                               ; preds = %1
  %93 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c13, 6", "=r"() #13, !srcloc !149
  br label %132

94:                                               ; preds = %1
  %95 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c14, 6", "=r"() #13, !srcloc !150
  br label %132

96:                                               ; preds = %1
  %97 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c15, 6", "=r"() #13, !srcloc !151
  br label %132

98:                                               ; preds = %1
  %99 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 7", "=r"() #13, !srcloc !82
  br label %132

100:                                              ; preds = %1
  %101 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c1, 7", "=r"() #13, !srcloc !152
  br label %132

102:                                              ; preds = %1
  %103 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c2, 7", "=r"() #13, !srcloc !153
  br label %132

104:                                              ; preds = %1
  %105 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c3, 7", "=r"() #13, !srcloc !154
  br label %132

106:                                              ; preds = %1
  %107 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c4, 7", "=r"() #13, !srcloc !155
  br label %132

108:                                              ; preds = %1
  %109 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c5, 7", "=r"() #13, !srcloc !156
  br label %132

110:                                              ; preds = %1
  %111 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c6, 7", "=r"() #13, !srcloc !157
  br label %132

112:                                              ; preds = %1
  %113 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c7, 7", "=r"() #13, !srcloc !158
  br label %132

114:                                              ; preds = %1
  %115 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c8, 7", "=r"() #13, !srcloc !159
  br label %132

116:                                              ; preds = %1
  %117 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c9, 7", "=r"() #13, !srcloc !160
  br label %132

118:                                              ; preds = %1
  %119 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c10, 7", "=r"() #13, !srcloc !161
  br label %132

120:                                              ; preds = %1
  %121 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c11, 7", "=r"() #13, !srcloc !162
  br label %132

122:                                              ; preds = %1
  %123 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c12, 7", "=r"() #13, !srcloc !163
  br label %132

124:                                              ; preds = %1
  %125 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c13, 7", "=r"() #13, !srcloc !164
  br label %132

126:                                              ; preds = %1
  %127 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c14, 7", "=r"() #13, !srcloc !165
  br label %132

128:                                              ; preds = %1
  %129 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c15, 7", "=r"() #13, !srcloc !166
  br label %132

130:                                              ; preds = %1
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %0) #12
  br label %132

132:                                              ; preds = %130, %128, %126, %124, %122, %120, %118, %116, %114, %112, %110, %108, %106, %104, %102, %100, %98, %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %4, %2
  %133 = phi i32 [ 0, %130 ], [ %129, %128 ], [ %127, %126 ], [ %125, %124 ], [ %123, %122 ], [ %121, %120 ], [ %119, %118 ], [ %117, %116 ], [ %115, %114 ], [ %113, %112 ], [ %111, %110 ], [ %109, %108 ], [ %107, %106 ], [ %105, %104 ], [ %103, %102 ], [ %101, %100 ], [ %99, %98 ], [ %97, %96 ], [ %95, %94 ], [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %87, %86 ], [ %85, %84 ], [ %83, %82 ], [ %81, %80 ], [ %79, %78 ], [ %77, %76 ], [ %75, %74 ], [ %73, %72 ], [ %71, %70 ], [ %69, %68 ], [ %67, %66 ], [ %65, %64 ], [ %63, %62 ], [ %61, %60 ], [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ %53, %52 ], [ %51, %50 ], [ %49, %48 ], [ %47, %46 ], [ %45, %44 ], [ %43, %42 ], [ %41, %40 ], [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ], [ %3, %2 ]
  ret i32 %133
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_bp_event(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @enable_single_step(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25
  %4 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 402653184
  %7 = icmp eq i32 %6, 0
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #7
  %11 = select i1 %7, i32 ptrtoint (ptr @bp_on_reg to i32), i32 ptrtoint (ptr @wp_on_reg to i32)
  %12 = select i1 %7, i32 80, i32 112
  %13 = add i32 %11, %10
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr @core_num_brps, align 4
  %16 = load i32, ptr @core_num_wrps, align 4
  %17 = select i1 %7, i32 %15, i32 %16
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %26, %2
  %20 = phi i32 [ %27, %26 ], [ 0, %2 ]
  %21 = getelementptr ptr, ptr %14, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = getelementptr ptr, ptr %14, i32 %20
  store ptr null, ptr %25, align 4
  br label %29

26:                                               ; preds = %19
  %27 = add nuw nsw i32 %20, 1
  %28 = icmp eq i32 %27, %17
  br i1 %28, label %32, label %19

29:                                               ; preds = %24, %2
  %30 = phi i32 [ %20, %24 ], [ 0, %2 ]
  %31 = icmp eq i32 %30, %17
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %49

34:                                               ; preds = %29
  %35 = load i32, ptr %4, align 4
  %36 = and i32 %35, 402653184
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr @core_num_brps, align 4
  %44 = add i32 %43, 80
  br label %45

45:                                               ; preds = %42, %38, %34
  %46 = phi i32 [ %44, %42 ], [ %12, %38 ], [ %12, %34 ]
  %47 = phi i32 [ 0, %42 ], [ %30, %38 ], [ %30, %34 ]
  %48 = add i32 %47, %46
  tail call fastcc void @write_wb_reg(i32 noundef %48, i32 noundef 0) #13
  br label %49

49:                                               ; preds = %45, %32
  %50 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = load i32, ptr %4, align 4
  %53 = and i32 %52, 1610612736
  %54 = and i32 %51, 523775
  %55 = or i32 %54, 7864832
  %56 = or i32 %53, %55
  %57 = or i32 %56, -2147483648
  store i32 %57, ptr %50, align 4
  %58 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %3, i32 0, i32 1
  store i32 %1, ptr %58, align 4
  %59 = tail call i32 @arch_install_hw_breakpoint(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @disable_single_step(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25
  %3 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %2, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 402653184
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #7
  %10 = select i1 %6, i32 ptrtoint (ptr @bp_on_reg to i32), i32 ptrtoint (ptr @wp_on_reg to i32)
  %11 = select i1 %6, i32 80, i32 112
  %12 = add i32 %10, %9
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr @core_num_brps, align 4
  %15 = load i32, ptr @core_num_wrps, align 4
  %16 = select i1 %6, i32 %14, i32 %15
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %25, %1
  %19 = phi i32 [ %26, %25 ], [ 0, %1 ]
  %20 = getelementptr ptr, ptr %13, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = getelementptr ptr, ptr %13, i32 %19
  store ptr null, ptr %24, align 4
  br label %28

25:                                               ; preds = %18
  %26 = add nuw nsw i32 %19, 1
  %27 = icmp eq i32 %26, %16
  br i1 %27, label %31, label %18

28:                                               ; preds = %23, %1
  %29 = phi i32 [ %19, %23 ], [ 0, %1 ]
  %30 = icmp eq i32 %29, %16
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %25
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %48

33:                                               ; preds = %28
  %34 = load i32, ptr %3, align 4
  %35 = and i32 %34, 402653184
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr @core_num_brps, align 4
  %43 = add i32 %42, 80
  br label %44

44:                                               ; preds = %41, %37, %33
  %45 = phi i32 [ %43, %41 ], [ %11, %37 ], [ %11, %33 ]
  %46 = phi i32 [ 0, %41 ], [ %29, %37 ], [ %29, %33 ]
  %47 = add i32 %46, %45
  tail call fastcc void @write_wb_reg(i32 noundef %47, i32 noundef 0) #13
  br label %48

48:                                               ; preds = %44, %31
  %49 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 2147483647
  store i32 %51, ptr %49, align 4
  %52 = tail call i32 @arch_install_hw_breakpoint(ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dbg_cpu_pm_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #1 {
  %4 = icmp eq i32 %1, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = tail call ptr @llvm.thread.pointer() #13
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  tail call fastcc void @reset_ctrl_regs(i32 noundef %8)
  br label %9

9:                                                ; preds = %5, %3
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind }

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
!9 = !{i64 2153022363}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2153510503}
!12 = !{i64 2153510723}
!13 = !{i64 2153510617}
!14 = !{i64 2153493486}
!15 = !{i64 2153493684}
!16 = !{i64 2153493882}
!17 = !{i64 2153494080}
!18 = !{i64 2153494278}
!19 = !{i64 2153494476}
!20 = !{i64 2153494674}
!21 = !{i64 2153494872}
!22 = !{i64 2153495070}
!23 = !{i64 2153495268}
!24 = !{i64 2153495469}
!25 = !{i64 2153495671}
!26 = !{i64 2153495873}
!27 = !{i64 2153496075}
!28 = !{i64 2153496277}
!29 = !{i64 2153496479}
!30 = !{i64 2153497348}
!31 = !{i64 2153497546}
!32 = !{i64 2153497744}
!33 = !{i64 2153497942}
!34 = !{i64 2153498140}
!35 = !{i64 2153498338}
!36 = !{i64 2153498536}
!37 = !{i64 2153498734}
!38 = !{i64 2153498932}
!39 = !{i64 2153499130}
!40 = !{i64 2153499331}
!41 = !{i64 2153499533}
!42 = !{i64 2153499735}
!43 = !{i64 2153499937}
!44 = !{i64 2153500139}
!45 = !{i64 2153500341}
!46 = !{i64 2153501210}
!47 = !{i64 2153501408}
!48 = !{i64 2153501606}
!49 = !{i64 2153501804}
!50 = !{i64 2153502002}
!51 = !{i64 2153502200}
!52 = !{i64 2153502398}
!53 = !{i64 2153502596}
!54 = !{i64 2153502794}
!55 = !{i64 2153502992}
!56 = !{i64 2153503193}
!57 = !{i64 2153503395}
!58 = !{i64 2153503597}
!59 = !{i64 2153503799}
!60 = !{i64 2153504001}
!61 = !{i64 2153504203}
!62 = !{i64 2153505072}
!63 = !{i64 2153505270}
!64 = !{i64 2153505468}
!65 = !{i64 2153505666}
!66 = !{i64 2153505864}
!67 = !{i64 2153506062}
!68 = !{i64 2153506260}
!69 = !{i64 2153506458}
!70 = !{i64 2153506656}
!71 = !{i64 2153506854}
!72 = !{i64 2153507055}
!73 = !{i64 2153507257}
!74 = !{i64 2153507459}
!75 = !{i64 2153507661}
!76 = !{i64 2153507863}
!77 = !{i64 2153508065}
!78 = !{i64 2153508801}
!79 = !{i64 2153510833}
!80 = !{i64 2153525659}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 2153489023}
!83 = !{i64 586314}
!84 = !{i64 586124}
!85 = !{i64 2153523738}
!86 = !{i64 2153523922}
!87 = !{i64 604579}
!88 = !{i64 2149006043}
!89 = !{i64 2149006260}
!90 = !{i64 2153519312, i64 2153519808, i64 2153519349, i64 2153519405, i64 2153519439, i64 2153519463, i64 2153519504, i64 2153519525, i64 2153519553, i64 2153519587}
!91 = !{i32 0, i32 33}
!92 = !{i64 2153524729}
!93 = !{i64 2153525814}
!94 = !{i64 2153525923}
!95 = !{i64 2153527328}
!96 = !{i64 2153527456}
!97 = !{i64 2153527510}
!98 = !{i64 2153527616}
!99 = !{i64 2153510949}
!100 = !{i64 2153511069}
!101 = !{i64 2153511213}
!102 = !{i64 2153511347}
!103 = !{i64 2153511404}
!104 = !{i64 2153473505}
!105 = !{i64 2153473701}
!106 = !{i64 2153473897}
!107 = !{i64 2153474093}
!108 = !{i64 2153474289}
!109 = !{i64 2153474485}
!110 = !{i64 2153474681}
!111 = !{i64 2153474877}
!112 = !{i64 2153475073}
!113 = !{i64 2153475269}
!114 = !{i64 2153475468}
!115 = !{i64 2153475668}
!116 = !{i64 2153475868}
!117 = !{i64 2153476068}
!118 = !{i64 2153476268}
!119 = !{i64 2153476468}
!120 = !{i64 2153477324}
!121 = !{i64 2153477520}
!122 = !{i64 2153477716}
!123 = !{i64 2153477912}
!124 = !{i64 2153478108}
!125 = !{i64 2153478304}
!126 = !{i64 2153478500}
!127 = !{i64 2153478696}
!128 = !{i64 2153478892}
!129 = !{i64 2153479088}
!130 = !{i64 2153479287}
!131 = !{i64 2153479487}
!132 = !{i64 2153479687}
!133 = !{i64 2153479887}
!134 = !{i64 2153480087}
!135 = !{i64 2153480287}
!136 = !{i64 2153481143}
!137 = !{i64 2153481339}
!138 = !{i64 2153481535}
!139 = !{i64 2153481731}
!140 = !{i64 2153481927}
!141 = !{i64 2153482123}
!142 = !{i64 2153482319}
!143 = !{i64 2153482515}
!144 = !{i64 2153482711}
!145 = !{i64 2153482907}
!146 = !{i64 2153487167}
!147 = !{i64 2153487367}
!148 = !{i64 2153487567}
!149 = !{i64 2153487767}
!150 = !{i64 2153487967}
!151 = !{i64 2153488167}
!152 = !{i64 2153489219}
!153 = !{i64 2153489415}
!154 = !{i64 2153489611}
!155 = !{i64 2153489807}
!156 = !{i64 2153490003}
!157 = !{i64 2153490199}
!158 = !{i64 2153490395}
!159 = !{i64 2153490591}
!160 = !{i64 2153490787}
!161 = !{i64 2153490986}
!162 = !{i64 2153491186}
!163 = !{i64 2153491386}
!164 = !{i64 2153491586}
!165 = !{i64 2153491786}
!166 = !{i64 2153491986}
