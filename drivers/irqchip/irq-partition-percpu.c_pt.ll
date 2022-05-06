; ModuleID = '/llk/IR/drivers/irqchip/irq-partition-percpu.c_pt.bc'
source_filename = "../drivers/irqchip/irq-partition-percpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.partition_desc = type { i32, ptr, ptr, ptr, ptr, %struct.irq_domain_ops }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.partition_affinity = type { %struct.cpumask, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"drivers/irqchip/irq-partition-percpu.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"\013Failed to find partition\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@partition_irq_chip = internal global %struct.irq_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @partition_irq_mask, ptr null, ptr @partition_irq_unmask, ptr null, ptr null, ptr null, ptr @partition_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @partition_irq_print_chip, ptr null, ptr null, ptr null, ptr null, ptr @partition_irq_get_irqchip_state, ptr @partition_irq_set_irqchip_state, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" %5s-%lu\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @partition_translate_id(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.partition_desc, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %16, %5
  %9 = phi i32 [ 0, %5 ], [ %17, %16 ]
  %10 = getelementptr %struct.partition_affinity, ptr %7, i32 %9, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr %struct.partition_affinity, ptr %7, i32 %9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %21, !prof !8

16:                                               ; preds = %8
  %17 = add nuw nsw i32 %9, 1
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %19, label %8

19:                                               ; preds = %16, %13, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 186, i32 noundef 9, ptr noundef null) #8
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i32 [ -22, %19 ], [ %9, %13 ]
  ret i32 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @partition_create_desc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.irq_domain_ops, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !8

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.irq_domain_ops, ptr %4, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %9, %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-partition-percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

14:                                               ; preds = %9
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 60) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.partition_desc, ptr %16, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %19, ptr noundef align 4 dereferenceable(40) %4, i32 40, i1 false)
  %20 = getelementptr inbounds %struct.partition_desc, ptr %16, i32 0, i32 5, i32 6
  store ptr @partition_domain_free, ptr %20, align 4
  %21 = getelementptr inbounds %struct.partition_desc, ptr %16, i32 0, i32 5, i32 5
  store ptr @partition_domain_alloc, ptr %21, align 8
  %22 = tail call ptr @__irq_domain_add(ptr noundef %0, i32 noundef %2, i32 noundef %2, i32 noundef 0, ptr noundef %19, ptr noundef nonnull %16) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.partition_desc, ptr %16, i32 0, i32 2
  store ptr %22, ptr %25, align 8
  %26 = tail call ptr @bitmap_zalloc(i32 noundef %2, i32 noundef 3264) #8
  %27 = getelementptr inbounds %struct.partition_desc, ptr %16, i32 0, i32 4
  store ptr %26, ptr %27, align 8
  %28 = icmp eq ptr %26, null
  br i1 %28, label %29, label %30, !prof !8

29:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 9, ptr noundef null) #8
  tail call void @irq_domain_remove(ptr noundef nonnull %22) #8
  br label %34

30:                                               ; preds = %24
  %31 = tail call ptr @irq_to_desc(i32 noundef %3) #8
  %32 = getelementptr inbounds %struct.partition_desc, ptr %16, i32 0, i32 3
  store ptr %31, ptr %32, align 4
  store i32 %2, ptr %16, align 8
  %33 = getelementptr inbounds %struct.partition_desc, ptr %16, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  br label %35

34:                                               ; preds = %29, %18
  tail call void @kfree(ptr noundef nonnull %16) #8
  br label %35

35:                                               ; preds = %34, %30, %14
  %36 = phi ptr [ null, %34 ], [ %16, %30 ], [ null, %14 ]
  ret ptr %36
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @partition_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-partition-percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 167, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

6:                                                ; preds = %3
  %7 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #8
  tail call void @__irq_set_handler(i32 noundef %1, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  tail call void @irq_domain_reset_irq_data(ptr noundef %7) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @partition_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !12
  %7 = icmp eq i32 %2, 1
  br i1 %7, label %9, label %8, !prof !10

8:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-partition-percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !13
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.irq_domain_ops, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %5, align 4
  %20 = getelementptr inbounds %struct.partition_desc, ptr %18, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  call void @_set_bit(i32 noundef %19, ptr noundef %21) #8
  %22 = getelementptr inbounds %struct.partition_desc, ptr %18, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.irq_desc, ptr %23, i32 0, i32 1, i32 1
  %25 = load i32, ptr %24, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %25, ptr noundef nonnull @partition_handle_irq, ptr noundef %18) #8
  %26 = getelementptr inbounds %struct.partition_desc, ptr %18, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %5, align 4
  %29 = getelementptr %struct.partition_affinity, ptr %27, i32 %28
  %30 = call i32 @irq_set_percpu_devid_partition(i32 noundef %1, ptr noundef %29) #8
  %31 = load i32, ptr %5, align 4
  call void @irq_domain_set_info(ptr noundef %0, i32 noundef %1, i32 noundef %31, ptr noundef nonnull @partition_irq_chip, ptr noundef %18, ptr noundef nonnull @handle_percpu_devid_irq, ptr noundef null, ptr noundef null) #8
  call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 4096) #8
  br label %32

32:                                               ; preds = %16, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @partition_get_domain(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.partition_desc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_reset_irq_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @partition_handle_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @llvm.thread.pointer() #8
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %14(ptr noundef %17) #8
  br label %26

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %20(ptr noundef %21) #8
  %22 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void %23(ptr noundef %21) #8
  br label %26

26:                                               ; preds = %25, %18, %16, %1
  %27 = getelementptr inbounds %struct.partition_desc, ptr %3, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %3, align 4
  %30 = tail call i32 @_find_next_bit_le(ptr noundef %28, i32 noundef %29, i32 noundef 0) #8
  %31 = getelementptr inbounds %struct.partition_desc, ptr %3, i32 0, i32 1
  %32 = load i32, ptr %3, align 4
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %26
  %35 = lshr i32 %8, 5
  %36 = and i32 %8, 31
  %37 = shl nuw i32 1, %36
  br label %38

38:                                               ; preds = %47, %34
  %39 = phi i32 [ %32, %34 ], [ %51, %47 ]
  %40 = phi i32 [ %30, %34 ], [ %50, %47 ]
  %41 = load ptr, ptr %31, align 4
  %42 = getelementptr %struct.partition_affinity, ptr %41, i32 %40
  %43 = getelementptr i32, ptr %42, i32 %35
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, %37
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load ptr, ptr %27, align 4
  %49 = add nsw i32 %40, 1
  %50 = tail call i32 @_find_next_bit_le(ptr noundef %48, i32 noundef %39, i32 noundef %49) #8
  %51 = load i32, ptr %3, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %38, label %53

53:                                               ; preds = %47, %38, %26
  %54 = phi i32 [ %30, %26 ], [ %40, %38 ], [ %50, %47 ]
  %55 = phi i32 [ %32, %26 ], [ %39, %38 ], [ %51, %47 ]
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58, !prof !8

57:                                               ; preds = %53
  tail call void @handle_bad_irq(ptr noundef %0) #8
  br label %62

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.partition_desc, ptr %3, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @generic_handle_domain_irq(ptr noundef %60, i32 noundef %54) #8
  br label %62

62:                                               ; preds = %58, %57
  %63 = load ptr, ptr %9, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %67 = load ptr, ptr %66, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi ptr [ %67, %65 ], [ %63, %62 ]
  %70 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %69(ptr noundef %70) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_percpu_devid_partition(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_percpu_devid_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @partition_irq_mask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.partition_desc, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 1, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 1
  %9 = tail call ptr @llvm.thread.pointer() #8
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.partition_desc, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.partition_affinity, ptr %15, i32 %13
  %17 = lshr i32 %11, 5
  %18 = getelementptr i32, ptr %16, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %11, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void %26(ptr noundef %8) #8
  br label %29

29:                                               ; preds = %28, %24, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @partition_irq_unmask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.partition_desc, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 1, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 1
  %9 = tail call ptr @llvm.thread.pointer() #8
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.partition_desc, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.partition_affinity, ptr %15, i32 %13
  %17 = lshr i32 %11, 5
  %18 = getelementptr i32, ptr %16, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %11, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void %26(ptr noundef %8) #8
  br label %29

29:                                               ; preds = %28, %24, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @partition_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.partition_desc, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1
  %14 = tail call i32 %10(ptr noundef %13, i32 noundef %1) #8
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i32 [ %14, %12 ], [ -22, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @partition_irq_print_chip(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.partition_desc, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 2
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef %10, i32 noundef %12) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @partition_irq_get_irqchip_state(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.partition_desc, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1
  %11 = tail call ptr @llvm.thread.pointer() #8
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.partition_desc, ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.partition_affinity, ptr %17, i32 %15
  %19 = lshr i32 %13, 5
  %20 = getelementptr i32, ptr %18, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %13, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 %28(ptr noundef %10, i32 noundef %1, ptr noundef %2) #8
  br label %32

32:                                               ; preds = %30, %26, %3
  %33 = phi i32 [ %31, %30 ], [ -22, %26 ], [ -22, %3 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @partition_irq_set_irqchip_state(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.partition_desc, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1
  %11 = tail call ptr @llvm.thread.pointer() #8
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.partition_desc, ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.partition_affinity, ptr %17, i32 %15
  %19 = lshr i32 %13, 5
  %20 = getelementptr i32, ptr %18, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %13, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 27
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 %28(ptr noundef %10, i32 noundef %1, i1 noundef zeroext %2) #8
  br label %32

32:                                               ; preds = %30, %26, %3
  %33 = phi i32 [ %31, %30 ], [ -22, %26 ], [ -22, %3 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{i64 2152857556, i64 2152858059, i64 2152857593, i64 2152857649, i64 2152857683, i64 2152857707, i64 2152857748, i64 2152857769, i64 2152857797, i64 2152857831}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152855496, i64 2152855999, i64 2152855533, i64 2152855589, i64 2152855623, i64 2152855647, i64 2152855688, i64 2152855709, i64 2152855737, i64 2152855771}
!12 = !{!"auto-init"}
!13 = !{i64 2152854303, i64 2152854806, i64 2152854340, i64 2152854396, i64 2152854430, i64 2152854454, i64 2152854495, i64 2152854516, i64 2152854544, i64 2152854578}
