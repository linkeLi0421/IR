; ModuleID = '/llk/IR/drivers/cpuidle/driver.c_pt.bc'
source_filename = "../drivers/cpuidle/driver.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuidle_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuidle_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_cpuidle_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuidle_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuidle_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_cpuidle_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuidle_get_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuidle_get_driver\22\09\09\09\09\09"
module asm "__kstrtabns_cpuidle_get_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuidle_get_cpu_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuidle_get_cpu_driver\22\09\09\09\09\09"
module asm "__kstrtabns_cpuidle_get_cpu_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@cpuidle_driver_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@param_governor = external dso_local local_unnamed_addr global [0 x i8], align 1
@cpuidle_lock = external dso_local global %struct.mutex, align 4
@cpuidle_curr_governor = external dso_local local_unnamed_addr global ptr, align 4
@cpuidle_prev_governor = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_cpuidle_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuidle_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuidle_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuidle_register_driver to i32), ptr @__kstrtab_cpuidle_register_driver, ptr @__kstrtabns_cpuidle_register_driver }, section "___ksymtab_gpl+cpuidle_register_driver", align 4
@__kstrtab_cpuidle_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuidle_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuidle_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuidle_unregister_driver to i32), ptr @__kstrtab_cpuidle_unregister_driver, ptr @__kstrtabns_cpuidle_unregister_driver }, section "___ksymtab_gpl+cpuidle_unregister_driver", align 4
@__kstrtab_cpuidle_get_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuidle_get_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuidle_get_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuidle_get_driver to i32), ptr @__kstrtab_cpuidle_get_driver, ptr @__kstrtabns_cpuidle_get_driver }, section "___ksymtab_gpl+cpuidle_get_driver", align 4
@__kstrtab_cpuidle_get_cpu_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuidle_get_cpu_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuidle_get_cpu_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuidle_get_cpu_driver to i32), ptr @__kstrtab_cpuidle_get_cpu_driver, ptr @__kstrtabns_cpuidle_get_cpu_driver }, section "___ksymtab_gpl+cpuidle_get_cpu_driver", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpuidle_devices = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@cpuidle_drivers = internal global ptr null, section ".data..percpu", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_cpuidle_get_cpu_driver, ptr @__ksymtab_cpuidle_get_driver, ptr @__ksymtab_cpuidle_register_driver, ptr @__ksymtab_cpuidle_unregister_driver], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuidle_register_driver(ptr noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @cpuidle_driver_lock) #5
  %2 = icmp eq ptr %0, null
  br i1 %2, label %97, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %97, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @cpuidle_coupled_state_verify(ptr noundef nonnull %0) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %97

10:                                               ; preds = %7
  %11 = tail call i32 @cpuidle_disabled() #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %97

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store ptr @__cpu_possible_mask, ptr %14, align 8
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi ptr [ @__cpu_possible_mask, %17 ], [ %15, %13 ]
  %20 = load i32, ptr %4, align 8
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 2
  br label %24

24:                                               ; preds = %59, %22
  %25 = phi i32 [ 0, %22 ], [ %60, %59 ]
  %26 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %25, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i8, ptr %23, align 8
  %32 = or i8 %31, 1
  store i8 %32, ptr %23, align 8
  br label %33

33:                                               ; preds = %30, %24
  %34 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %25, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = mul i32 %35, 1000
  %39 = zext i32 %38 to i64
  %40 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %25, i32 3
  store i64 %39, ptr %40, align 8
  br label %46

41:                                               ; preds = %33
  %42 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %25, i32 3
  %43 = load i64, ptr %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i64 0, ptr %42, align 8
  br label %46

46:                                               ; preds = %45, %41, %37
  %47 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %25, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = mul i32 %48, 1000
  %52 = zext i32 %51 to i64
  %53 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %25, i32 2
  store i64 %52, ptr %53, align 8
  br label %59

54:                                               ; preds = %46
  %55 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %25, i32 2
  %56 = load i64, ptr %55, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i64 0, ptr %55, align 8
  br label %59

59:                                               ; preds = %58, %54, %50
  %60 = add nuw nsw i32 %25, 1
  %61 = icmp eq i32 %60, %20
  br i1 %61, label %62, label %24

62:                                               ; preds = %59, %18
  %63 = load i32, ptr @nr_cpu_ids, align 4
  br label %64

64:                                               ; preds = %71, %62
  %65 = phi i32 [ -1, %62 ], [ %66, %71 ]
  %66 = tail call i32 @cpumask_next(i32 noundef %65, ptr noundef %19) #6
  %67 = icmp ult i32 %66, %63
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %19) #6
  %70 = icmp ult i32 %69, %63
  br i1 %70, label %80, label %90

71:                                               ; preds = %64
  %72 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %66
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, ptrtoint (ptr @cpuidle_drivers to i32)
  %75 = inttoptr i32 %74 to ptr
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  %78 = icmp eq ptr %76, %0
  %79 = or i1 %77, %78
  br i1 %79, label %64, label %97

80:                                               ; preds = %80, %68
  %81 = phi i32 [ %87, %80 ], [ %69, %68 ]
  %82 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %81
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, ptrtoint (ptr @cpuidle_drivers to i32)
  %85 = inttoptr i32 %84 to ptr
  store ptr %0, ptr %85, align 4
  %86 = load ptr, ptr %14, align 8
  %87 = tail call i32 @cpumask_next(i32 noundef %81, ptr noundef %86) #6
  %88 = load i32, ptr @nr_cpu_ids, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %80, label %90

90:                                               ; preds = %80, %68
  %91 = phi ptr [ %19, %68 ], [ %86, %80 ]
  %92 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 2
  %93 = load i8, ptr %92, align 8
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @cpuidle_setup_broadcast_timer, ptr noundef nonnull inttoptr (i32 1 to ptr), i1 noundef zeroext true, ptr noundef %91) #5
  br label %97

97:                                               ; preds = %96, %90, %71, %10, %7, %3, %1
  %98 = phi i32 [ -22, %3 ], [ -22, %1 ], [ %8, %7 ], [ -19, %10 ], [ 0, %96 ], [ 0, %90 ], [ -16, %71 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %99 = load i16, ptr @cpuidle_driver_lock, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr @cpuidle_driver_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  %101 = icmp eq i32 %98, 0
  br i1 %101, label %102, label %129

102:                                              ; preds = %97
  %103 = load i8, ptr @param_governor, align 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %129

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 7
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %129, label %109

109:                                              ; preds = %105
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %110 = tail call ptr @llvm.thread.pointer() #5
  %111 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 2
  %112 = load i32, ptr %111, align 8
  %113 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %112
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, ptrtoint (ptr @cpuidle_drivers to i32)
  %116 = inttoptr i32 %115 to ptr
  %117 = load ptr, ptr %116, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %118 = icmp eq ptr %117, %0
  br i1 %118, label %119, label %129

119:                                              ; preds = %109
  tail call void @mutex_lock(ptr noundef nonnull @cpuidle_lock) #5
  %120 = load ptr, ptr %106, align 4
  %121 = tail call ptr @cpuidle_find_governor(ptr noundef %120) #5
  %122 = icmp eq ptr %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr @cpuidle_curr_governor, align 4
  store ptr %124, ptr @cpuidle_prev_governor, align 4
  %125 = tail call i32 @cpuidle_switch_governor(ptr noundef nonnull %121) #5
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store ptr null, ptr @cpuidle_prev_governor, align 4
  br label %128

128:                                              ; preds = %127, %123, %119
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #5
  br label %129

129:                                              ; preds = %128, %109, %105, %102, %97
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cpuidle_get_driver() #0 {
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %1 = tail call ptr @llvm.thread.pointer() #5
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @cpuidle_drivers to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpuidle_find_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_switch_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_unregister_driver(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %2 = tail call ptr @llvm.thread.pointer() #5
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, ptrtoint (ptr @cpuidle_drivers to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %10 = icmp eq ptr %9, %0
  tail call void @_raw_spin_lock(ptr noundef nonnull @cpuidle_driver_lock) #5
  %11 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = and i8 %12, -2
  store i8 %16, ptr %11, align 8
  %17 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 8
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @cpuidle_setup_broadcast_timer, ptr noundef null, i1 noundef zeroext true, ptr noundef %18) #5
  br label %19

19:                                               ; preds = %15, %1
  %20 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %21) #6
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %38, %19
  %26 = phi i32 [ %39, %38 ], [ %23, %19 ]
  %27 = phi ptr [ %40, %38 ], [ %21, %19 ]
  %28 = phi i32 [ %41, %38 ], [ %22, %19 ]
  %29 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, ptrtoint (ptr @cpuidle_drivers to i32)
  %32 = inttoptr i32 %31 to ptr
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  store ptr null, ptr %32, align 4
  %36 = load ptr, ptr %20, align 8
  %37 = load i32, ptr @nr_cpu_ids, align 4
  br label %38

38:                                               ; preds = %35, %25
  %39 = phi i32 [ %37, %35 ], [ %26, %25 ]
  %40 = phi ptr [ %36, %35 ], [ %27, %25 ]
  %41 = tail call i32 @cpumask_next(i32 noundef %28, ptr noundef %40) #6
  %42 = icmp ult i32 %41, %39
  br i1 %42, label %25, label %43

43:                                               ; preds = %38, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %44 = load i16, ptr @cpuidle_driver_lock, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr @cpuidle_driver_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  br i1 %10, label %46, label %54

46:                                               ; preds = %43
  tail call void @mutex_lock(ptr noundef nonnull @cpuidle_lock) #5
  %47 = load ptr, ptr @cpuidle_prev_governor, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @cpuidle_switch_governor(ptr noundef nonnull %47) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store ptr null, ptr @cpuidle_prev_governor, align 4
  br label %53

53:                                               ; preds = %52, %49, %46
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #5
  br label %54

54:                                               ; preds = %53, %43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @cpuidle_get_cpu_driver(ptr noundef readonly %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @cpuidle_drivers to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %3, %1
  %12 = phi ptr [ %10, %3 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_driver_state_disabled(ptr nocapture noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cpuidle_lock) #5
  tail call void @_raw_spin_lock(ptr noundef nonnull @cpuidle_driver_lock) #5
  %4 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %5) #6
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %15, label %34

11:                                               ; preds = %3
  %12 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %1, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = or i32 %13, 8
  store i32 %14, ptr %12, align 8
  br label %34

15:                                               ; preds = %29, %7
  %16 = phi i32 [ %31, %29 ], [ %8, %7 ]
  %17 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, ptrtoint (ptr @cpuidle_devices to i32)
  %20 = inttoptr i32 %19 to ptr
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %15
  %24 = getelementptr %struct.cpuidle_device, ptr %21, i32 0, i32 7, i32 %1
  %25 = load i64, ptr %24, align 8
  %26 = or i64 %25, 2
  %27 = and i64 %25, 4294967293
  %28 = select i1 %2, i64 %26, i64 %27
  store i64 %28, ptr %24, align 8
  br label %29

29:                                               ; preds = %23, %15
  %30 = load ptr, ptr %4, align 8
  %31 = tail call i32 @cpumask_next(i32 noundef %16, ptr noundef %30) #6
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %15, label %34

34:                                               ; preds = %29, %11, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %35 = load i16, ptr @cpuidle_driver_lock, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr @cpuidle_driver_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #5
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_coupled_state_verify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_disabled() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpuidle_setup_broadcast_timer(ptr noundef readnone %0) #0 {
  %2 = icmp ne ptr %0, null
  %3 = zext i1 %2 to i32
  tail call void @tick_broadcast_control(i32 noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_broadcast_control(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

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
!8 = !{i64 2148946391}
!9 = !{i64 2148942215}
!10 = !{i64 2148942290, i64 2148942317, i64 2148942364, i64 2148942386, i64 2148942414, i64 2148942434}
!11 = !{i64 2148969394}
!12 = !{i64 2151379554}
!13 = !{i64 2151379718}
