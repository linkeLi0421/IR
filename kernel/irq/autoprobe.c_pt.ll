; ModuleID = '/llk/IR/kernel/irq/autoprobe.c_pt.bc'
source_filename = "../kernel/irq/autoprobe.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_probe_irq_on:\09\09\09\09\09"
module asm "\09.asciz \09\22probe_irq_on\22\09\09\09\09\09"
module asm "__kstrtabns_probe_irq_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_probe_irq_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22probe_irq_mask\22\09\09\09\09\09"
module asm "__kstrtabns_probe_irq_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_probe_irq_off:\09\09\09\09\09"
module asm "\09.asciz \09\22probe_irq_off\22\09\09\09\09\09"
module asm "__kstrtabns_probe_irq_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@probing_active = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @probing_active, i64 12), ptr getelementptr (i8, ptr @probing_active, i64 12) } }, align 4
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_probe_irq_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_probe_irq_on = external dso_local constant [0 x i8], align 1
@__ksymtab_probe_irq_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @probe_irq_on to i32), ptr @__kstrtab_probe_irq_on, ptr @__kstrtabns_probe_irq_on }, section "___ksymtab+probe_irq_on", align 4
@__kstrtab_probe_irq_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_probe_irq_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_probe_irq_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @probe_irq_mask to i32), ptr @__kstrtab_probe_irq_mask, ptr @__kstrtabns_probe_irq_mask }, section "___ksymtab+probe_irq_mask", align 4
@__kstrtab_probe_irq_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_probe_irq_off = external dso_local constant [0 x i8], align 1
@__ksymtab_probe_irq_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @probe_irq_off to i32), ptr @__kstrtab_probe_irq_off, ptr @__kstrtabns_probe_irq_off }, section "___ksymtab+probe_irq_off", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_probe_irq_mask, ptr @__ksymtab_probe_irq_off, ptr @__ksymtab_probe_irq_on], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @probe_irq_on() #0 {
  tail call void @async_synchronize_full() #2
  tail call void @mutex_lock(ptr noundef nonnull @probing_active) #2
  %1 = load i32, ptr @nr_irqs, align 4
  %2 = add i32 %1, -1
  %3 = tail call ptr @irq_to_desc(i32 noundef %2) #2
  %4 = icmp sgt i32 %2, -1
  br i1 %4, label %5, label %37

5:                                                ; preds = %33, %0
  %6 = phi i32 [ %34, %33 ], [ %2, %0 ]
  %7 = phi ptr [ %35, %33 ], [ %3, %0 ]
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #2
  %11 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 4
  %12 = load ptr, ptr %11, align 64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1024
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.irq_chip, ptr %21, i32 0, i32 13
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1
  %27 = tail call i32 %23(ptr noundef %26, i32 noundef 16) #2
  br label %28

28:                                               ; preds = %25, %19
  %29 = tail call i32 @irq_activate_and_startup(ptr noundef nonnull %7, i1 noundef zeroext false) #2
  br label %30

30:                                               ; preds = %28, %14, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !8
  %31 = load i16, ptr %10, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #2, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !12
  br label %33

33:                                               ; preds = %30, %5
  %34 = add nsw i32 %6, -1
  %35 = tail call ptr @irq_to_desc(i32 noundef %34) #2
  %36 = icmp sgt i32 %6, 0
  br i1 %36, label %5, label %37

37:                                               ; preds = %33, %0
  tail call void @msleep(i32 noundef 20) #2
  %38 = load i32, ptr @nr_irqs, align 4
  %39 = add i32 %38, -1
  %40 = tail call ptr @irq_to_desc(i32 noundef %39) #2
  %41 = icmp sgt i32 %39, -1
  br i1 %41, label %42, label %72

42:                                               ; preds = %68, %37
  %43 = phi i32 [ %69, %68 ], [ %39, %37 ]
  %44 = phi ptr [ %70, %68 ], [ %40, %37 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %68, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.irq_desc, ptr %44, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %47) #2
  %48 = getelementptr inbounds %struct.irq_desc, ptr %44, i32 0, i32 4
  %49 = load ptr, ptr %48, align 64
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.irq_desc, ptr %44, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 1024
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.irq_desc, ptr %44, i32 0, i32 6
  %58 = load i32, ptr %57, align 8
  %59 = or i32 %58, 129
  store i32 %59, ptr %57, align 8
  %60 = tail call i32 @irq_activate_and_startup(ptr noundef nonnull %44, i1 noundef zeroext false) #2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, ptr %57, align 8
  %64 = or i32 %63, 512
  store i32 %64, ptr %57, align 8
  br label %65

65:                                               ; preds = %62, %56, %51, %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !8
  %66 = load i16, ptr %47, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %47, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #2, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !12
  br label %68

68:                                               ; preds = %65, %42
  %69 = add nsw i32 %43, -1
  %70 = tail call ptr @irq_to_desc(i32 noundef %69) #2
  %71 = icmp sgt i32 %43, 0
  br i1 %71, label %42, label %72

72:                                               ; preds = %68, %37
  tail call void @msleep(i32 noundef 100) #2
  %73 = tail call ptr @irq_to_desc(i32 noundef 0) #2
  %74 = load i32, ptr @nr_irqs, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %101, %72
  %77 = phi i32 [ %103, %101 ], [ 0, %72 ]
  %78 = phi i32 [ %102, %101 ], [ 0, %72 ]
  %79 = phi ptr [ %104, %101 ], [ %73, %72 ]
  %80 = icmp eq ptr %79, null
  br i1 %80, label %101, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.irq_desc, ptr %79, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %82) #2
  %83 = getelementptr inbounds %struct.irq_desc, ptr %79, i32 0, i32 6
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %81
  %88 = and i32 %84, 128
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = and i32 %84, -2
  store i32 %91, ptr %83, align 8
  tail call void @irq_shutdown_and_deactivate(ptr noundef nonnull %79) #2
  br label %97

92:                                               ; preds = %87
  %93 = icmp ult i32 %77, 32
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = shl nuw i32 1, %77
  %96 = or i32 %95, %78
  br label %97

97:                                               ; preds = %94, %92, %90, %81
  %98 = phi i32 [ %96, %94 ], [ %78, %92 ], [ %78, %90 ], [ %78, %81 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !8
  %99 = load i16, ptr %82, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %82, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #2, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !12
  br label %101

101:                                              ; preds = %97, %76
  %102 = phi i32 [ %98, %97 ], [ %78, %76 ]
  %103 = add nuw nsw i32 %77, 1
  %104 = tail call ptr @irq_to_desc(i32 noundef %103) #2
  %105 = load i32, ptr @nr_irqs, align 4
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %76, label %107

107:                                              ; preds = %101, %72
  %108 = phi i32 [ 0, %72 ], [ %102, %101 ]
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_activate_and_startup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_shutdown_and_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @probe_irq_mask(i32 noundef %0) #0 {
  %2 = tail call ptr @irq_to_desc(i32 noundef 0) #2
  %3 = load i32, ptr @nr_irqs, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %29, %1
  %6 = phi i32 [ %31, %29 ], [ 0, %1 ]
  %7 = phi ptr [ %32, %29 ], [ %2, %1 ]
  %8 = phi i32 [ %30, %29 ], [ 0, %1 ]
  %9 = icmp eq ptr %7, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #2
  %12 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = icmp ult i32 %6, 16
  %18 = and i32 %13, 128
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  %21 = shl nuw i32 1, %6
  %22 = select i1 %20, i32 %21, i32 0
  %23 = or i32 %22, %8
  %24 = and i32 %13, -2
  store i32 %24, ptr %12, align 8
  tail call void @irq_shutdown_and_deactivate(ptr noundef nonnull %7) #2
  br label %25

25:                                               ; preds = %16, %10
  %26 = phi i32 [ %23, %16 ], [ %8, %10 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !8
  %27 = load i16, ptr %11, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #2, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !12
  br label %29

29:                                               ; preds = %25, %5
  %30 = phi i32 [ %26, %25 ], [ %8, %5 ]
  %31 = add nuw nsw i32 %6, 1
  %32 = tail call ptr @irq_to_desc(i32 noundef %31) #2
  %33 = load i32, ptr @nr_irqs, align 4
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %5, label %35

35:                                               ; preds = %29, %1
  %36 = phi i32 [ 0, %1 ], [ %30, %29 ]
  tail call void @mutex_unlock(ptr noundef nonnull @probing_active) #2
  %37 = and i32 %36, %0
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @probe_irq_off(i32 %0) #0 {
  %2 = tail call ptr @irq_to_desc(i32 noundef 0) #2
  %3 = load i32, ptr @nr_irqs, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef nonnull @probing_active) #2
  br label %44

6:                                                ; preds = %33, %1
  %7 = phi ptr [ %37, %33 ], [ %2, %1 ]
  %8 = phi i32 [ %35, %33 ], [ 0, %1 ]
  %9 = phi i32 [ %34, %33 ], [ 0, %1 ]
  %10 = phi i32 [ %36, %33 ], [ 0, %1 ]
  %11 = icmp eq ptr %7, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %13) #2
  %14 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %12
  %19 = and i32 %15, 128
  %20 = icmp eq i32 %19, 0
  %21 = icmp eq i32 %8, 0
  %22 = select i1 %20, i1 %21, i1 false
  %23 = select i1 %22, i32 %10, i32 %9
  %24 = lshr exact i32 %19, 7
  %25 = xor i32 %24, 1
  %26 = add i32 %25, %8
  %27 = and i32 %15, -2
  store i32 %27, ptr %14, align 8
  tail call void @irq_shutdown_and_deactivate(ptr noundef nonnull %7) #2
  br label %28

28:                                               ; preds = %18, %12
  %29 = phi i32 [ %23, %18 ], [ %9, %12 ]
  %30 = phi i32 [ %26, %18 ], [ %8, %12 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !8
  %31 = load i16, ptr %13, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #2, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !12
  br label %33

33:                                               ; preds = %28, %6
  %34 = phi i32 [ %29, %28 ], [ %9, %6 ]
  %35 = phi i32 [ %30, %28 ], [ %8, %6 ]
  %36 = add nuw nsw i32 %10, 1
  %37 = tail call ptr @irq_to_desc(i32 noundef %36) #2
  %38 = load i32, ptr @nr_irqs, align 4
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %6, label %40

40:                                               ; preds = %33
  tail call void @mutex_unlock(ptr noundef nonnull @probing_active) #2
  %41 = icmp sgt i32 %35, 1
  %42 = sub i32 0, %34
  %43 = select i1 %41, i32 %42, i32 %34
  br label %44

44:                                               ; preds = %40, %5
  %45 = phi i32 [ 0, %5 ], [ %43, %40 ]
  ret i32 %45
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2148866601}
!9 = !{i64 2148862425}
!10 = !{i64 2148862500, i64 2148862527, i64 2148862574, i64 2148862596, i64 2148862624, i64 2148862644}
!11 = !{i64 603920}
!12 = !{i64 2148890745}
