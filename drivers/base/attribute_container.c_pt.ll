; ModuleID = '/llk/IR/drivers/base/attribute_container.c_pt.bc'
source_filename = "../drivers/base/attribute_container.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_attribute_container_classdev_to_container:\09\09\09\09\09"
module asm "\09.asciz \09\22attribute_container_classdev_to_container\22\09\09\09\09\09"
module asm "__kstrtabns_attribute_container_classdev_to_container:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_attribute_container_register:\09\09\09\09\09"
module asm "\09.asciz \09\22attribute_container_register\22\09\09\09\09\09"
module asm "__kstrtabns_attribute_container_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_attribute_container_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22attribute_container_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_attribute_container_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_attribute_container_find_class_device:\09\09\09\09\09"
module asm "\09.asciz \09\22attribute_container_find_class_device\22\09\09\09\09\09"
module asm "__kstrtabns_attribute_container_find_class_device:\09\09\09\09\09"
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
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.internal_container = type { %struct.klist_node, ptr, %struct.device }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.klist_iter = type { ptr, ptr }

@__kstrtab_attribute_container_classdev_to_container = external dso_local constant [0 x i8], align 1
@__kstrtabns_attribute_container_classdev_to_container = external dso_local constant [0 x i8], align 1
@__ksymtab_attribute_container_classdev_to_container = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @attribute_container_classdev_to_container to i32), ptr @__kstrtab_attribute_container_classdev_to_container, ptr @__kstrtabns_attribute_container_classdev_to_container }, section "___ksymtab_gpl+attribute_container_classdev_to_container", align 4
@attribute_container_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @attribute_container_mutex, i64 12), ptr getelementptr (i8, ptr @attribute_container_mutex, i64 12) } }, align 4
@attribute_container_list = internal global %struct.list_head { ptr @attribute_container_list, ptr @attribute_container_list }, align 4
@__kstrtab_attribute_container_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_attribute_container_register = external dso_local constant [0 x i8], align 1
@__ksymtab_attribute_container_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @attribute_container_register to i32), ptr @__kstrtab_attribute_container_register, ptr @__kstrtabns_attribute_container_register }, section "___ksymtab_gpl+attribute_container_register", align 4
@__kstrtab_attribute_container_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_attribute_container_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_attribute_container_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @attribute_container_unregister to i32), ptr @__kstrtab_attribute_container_unregister, ptr @__kstrtabns_attribute_container_unregister }, section "___ksymtab_gpl+attribute_container_unregister", align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to allocate class container\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"drivers/base/attribute_container.c\00", align 1
@__kstrtab_attribute_container_find_class_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_attribute_container_find_class_device = external dso_local constant [0 x i8], align 1
@__ksymtab_attribute_container_find_class_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @attribute_container_find_class_device to i32), ptr @__kstrtab_attribute_container_find_class_device, ptr @__kstrtabns_attribute_container_find_class_device }, section "___ksymtab_gpl+attribute_container_find_class_device", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_attribute_container_classdev_to_container, ptr @__ksymtab_attribute_container_find_class_device, ptr @__ksymtab_attribute_container_register, ptr @__ksymtab_attribute_container_unregister], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @attribute_container_classdev_to_container(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @attribute_container_register(ptr noundef %0) #2 {
  store volatile ptr %0, ptr %0, align 4
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 1
  tail call void @klist_init(ptr noundef %3, ptr noundef nonnull @internal_container_klist_get, ptr noundef nonnull @internal_container_klist_put) #6
  tail call void @mutex_lock(ptr noundef nonnull @attribute_container_mutex) #6
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @attribute_container_list, i32 0, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @attribute_container_list, i32 0, i32 1), align 4
  store ptr @attribute_container_list, ptr %0, align 4
  store ptr %4, ptr %2, align 4
  store volatile ptr %0, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @attribute_container_mutex) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @internal_container_klist_get(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.internal_container, ptr %0, i32 0, i32 2
  %3 = tail call ptr @get_device(ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @internal_container_klist_put(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.internal_container, ptr %0, i32 0, i32 2
  tail call void @put_device(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @attribute_container_unregister(ptr noundef %0) #2 {
  tail call void @mutex_lock(ptr noundef nonnull @attribute_container_mutex) #6
  %2 = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %2) #6
  %3 = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 1, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ 0, %6 ], [ -16, %1 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %13 = load i16, ptr %2, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  tail call void @mutex_unlock(ptr noundef nonnull @attribute_container_mutex) #6
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @attribute_container_add_device(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  tail call void @mutex_lock(ptr noundef nonnull @attribute_container_mutex) #6
  %3 = load ptr, ptr @attribute_container_list, align 4
  %4 = icmp eq ptr %3, @attribute_container_list
  br i1 %4, label %77, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %7 = icmp eq ptr %1, null
  br label %8

8:                                                ; preds = %74, %5
  %9 = phi ptr [ %3, %5 ], [ %75, %74 ]
  %10 = getelementptr inbounds %struct.attribute_container, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %74

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.attribute_container, ptr %9, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %9, ptr noundef %0) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %74, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 496) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str) #8
  br label %74

24:                                               ; preds = %19
  %25 = getelementptr %struct.internal_container, ptr %21, i32 0, i32 1
  store ptr %9, ptr %25, align 8
  %26 = getelementptr inbounds %struct.internal_container, ptr %21, i32 0, i32 2
  tail call void @device_initialize(ptr noundef %26) #6
  %27 = tail call ptr @get_device(ptr noundef %0) #6
  %28 = getelementptr inbounds %struct.internal_container, ptr %21, i32 0, i32 2, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.attribute_container, ptr %9, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.internal_container, ptr %21, i32 0, i32 2, i32 31
  store ptr %30, ptr %31, align 4
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr inbounds %struct.class, ptr %32, i32 0, i32 8
  store ptr @attribute_container_release, ptr %33, align 4
  %34 = load ptr, ptr %6, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load ptr, ptr %0, align 4
  br label %38

38:                                               ; preds = %36, %24
  %39 = phi ptr [ %37, %36 ], [ %34, %24 ]
  %40 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %26, ptr noundef nonnull @.str.1, ptr noundef %39) #6
  br i1 %7, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call i32 %1(ptr noundef %9, ptr noundef %0, ptr noundef %26) #6
  br label %72

43:                                               ; preds = %38
  %44 = tail call i32 @device_add(ptr noundef %26) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  %47 = load ptr, ptr %25, align 8
  %48 = getelementptr inbounds %struct.attribute_container, ptr %47, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  %51 = getelementptr inbounds %struct.attribute_container, ptr %47, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %50, label %56, label %54

54:                                               ; preds = %46
  br i1 %53, label %57, label %55, !prof !12

55:                                               ; preds = %54
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/attribute_container.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

56:                                               ; preds = %46
  br i1 %53, label %72, label %60

57:                                               ; preds = %54
  %58 = load ptr, ptr %49, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %67

60:                                               ; preds = %56
  %61 = tail call i32 @sysfs_create_group(ptr noundef %26, ptr noundef nonnull %52) #6
  br label %72

62:                                               ; preds = %67
  %63 = add i32 %69, 1
  %64 = getelementptr ptr, ptr %49, i32 %63
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %62, %57
  %68 = phi ptr [ %65, %62 ], [ %58, %57 ]
  %69 = phi i32 [ %63, %62 ], [ 0, %57 ]
  %70 = tail call i32 @device_create_file(ptr noundef %26, ptr noundef nonnull %68) #6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %62, label %72

72:                                               ; preds = %67, %62, %60, %57, %56, %43, %41
  %73 = getelementptr inbounds %struct.attribute_container, ptr %9, i32 0, i32 1
  tail call void @klist_add_tail(ptr noundef nonnull %21, ptr noundef %73) #6
  br label %74

74:                                               ; preds = %72, %23, %14, %8
  %75 = load ptr, ptr %9, align 4
  %76 = icmp eq ptr %75, @attribute_container_list
  br i1 %76, label %77, label %8

77:                                               ; preds = %74, %2
  tail call void @mutex_unlock(ptr noundef nonnull @attribute_container_mutex) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @attribute_container_release(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %2) #6
  tail call void @put_device(ptr noundef %4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @attribute_container_add_class_device(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @device_add(ptr noundef %0) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %31

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.attribute_container, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.attribute_container, ptr %6, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %9, label %15, label %13

13:                                               ; preds = %4
  br i1 %12, label %16, label %14, !prof !12

14:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/attribute_container.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

15:                                               ; preds = %4
  br i1 %12, label %31, label %19

16:                                               ; preds = %13
  %17 = load ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %26

19:                                               ; preds = %15
  %20 = tail call i32 @sysfs_create_group(ptr noundef %0, ptr noundef nonnull %11) #6
  br label %31

21:                                               ; preds = %26
  %22 = add i32 %28, 1
  %23 = getelementptr ptr, ptr %8, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21, %16
  %27 = phi ptr [ %24, %21 ], [ %17, %16 ]
  %28 = phi i32 [ %22, %21 ], [ 0, %16 ]
  %29 = tail call i32 @device_create_file(ptr noundef %0, ptr noundef nonnull %27) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %21, label %31

31:                                               ; preds = %26, %21, %19, %16, %15, %1
  %32 = phi i32 [ %2, %1 ], [ %20, %19 ], [ 0, %15 ], [ 0, %16 ], [ 0, %21 ], [ %29, %26 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_add_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @attribute_container_remove_device(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca %struct.klist_iter, align 8
  tail call void @mutex_lock(ptr noundef nonnull @attribute_container_mutex) #6
  %4 = load ptr, ptr @attribute_container_list, align 4
  %5 = icmp eq ptr %4, @attribute_container_list
  br i1 %5, label %61, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br label %8

8:                                                ; preds = %58, %6
  %9 = phi ptr [ %4, %6 ], [ %59, %58 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8, !annotation !14
  %10 = getelementptr inbounds %struct.attribute_container, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.attribute_container, ptr %9, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %9, ptr noundef %0) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %58, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.attribute_container, ptr %9, i32 0, i32 1
  call void @klist_iter_init(ptr noundef %20, ptr noundef nonnull %3) #6
  %21 = call ptr @klist_next(ptr noundef nonnull %3) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %55, %19
  call void @klist_iter_exit(ptr noundef nonnull %3) #6
  br label %58

24:                                               ; preds = %55, %19
  %25 = phi ptr [ %56, %55 ], [ %21, %19 ]
  %26 = getelementptr inbounds %struct.internal_container, ptr %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.internal_container, ptr %25, i32 0, i32 2, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  call void @klist_del(ptr noundef nonnull %25) #6
  br i1 %7, label %32, label %31

31:                                               ; preds = %30
  call void %1(ptr noundef %9, ptr noundef %0, ptr noundef %26) #6
  br label %55

32:                                               ; preds = %30
  %33 = getelementptr %struct.internal_container, ptr %25, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.attribute_container, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds %struct.attribute_container, ptr %34, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %37, label %41, label %42

41:                                               ; preds = %32
  br i1 %40, label %54, label %46

42:                                               ; preds = %32
  br i1 %40, label %43, label %46

43:                                               ; preds = %42
  %44 = load ptr, ptr %36, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %47

46:                                               ; preds = %42, %41
  call void @sysfs_remove_group(ptr noundef %26, ptr noundef nonnull %39) #6
  br label %54

47:                                               ; preds = %47, %43
  %48 = phi ptr [ %52, %47 ], [ %44, %43 ]
  %49 = phi i32 [ %50, %47 ], [ 0, %43 ]
  call void @device_remove_file(ptr noundef %26, ptr noundef nonnull %48) #6
  %50 = add i32 %49, 1
  %51 = getelementptr ptr, ptr %36, i32 %50
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %47

54:                                               ; preds = %47, %46, %43, %41
  call void @device_unregister(ptr noundef %26) #6
  br label %55

55:                                               ; preds = %54, %31, %24
  %56 = call ptr @klist_next(ptr noundef nonnull %3) #6
  %57 = icmp eq ptr %56, null
  br i1 %57, label %23, label %24

58:                                               ; preds = %23, %14, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %59 = load ptr, ptr %9, align 4
  %60 = icmp eq ptr %59, @attribute_container_list
  br i1 %60, label %61, label %8

61:                                               ; preds = %58, %2
  call void @mutex_unlock(ptr noundef nonnull @attribute_container_mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @klist_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @attribute_container_remove_attrs(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.attribute_container, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.attribute_container, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %6, label %10, label %11

10:                                               ; preds = %1
  br i1 %9, label %23, label %15

11:                                               ; preds = %1
  br i1 %9, label %12, label %15

12:                                               ; preds = %11
  %13 = load ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %16

15:                                               ; preds = %11, %10
  tail call void @sysfs_remove_group(ptr noundef %0, ptr noundef nonnull %8) #6
  br label %23

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %21, %16 ], [ %13, %12 ]
  %18 = phi i32 [ %19, %16 ], [ 0, %12 ]
  tail call void @device_remove_file(ptr noundef %0, ptr noundef nonnull %17) #6
  %19 = add i32 %18, 1
  %20 = getelementptr ptr, ptr %5, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %16

23:                                               ; preds = %16, %15, %12, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @attribute_container_device_trigger_safe(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 {
  tail call void @mutex_lock(ptr noundef nonnull @attribute_container_mutex) #6
  %4 = load ptr, ptr @attribute_container_list, align 4
  %5 = icmp eq ptr %4, @attribute_container_list
  br i1 %5, label %39, label %6

6:                                                ; preds = %15, %3
  %7 = phi ptr [ %16, %15 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.attribute_container, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %7, ptr noundef %0) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = tail call fastcc i32 @do_attribute_container_device_trigger_safe(ptr noundef %0, ptr noundef %7, ptr noundef %1, ptr noundef %2)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %6
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, @attribute_container_list
  br i1 %17, label %39, label %6

18:                                               ; preds = %12
  %19 = icmp eq ptr %2, null
  br i1 %19, label %25, label %20, !prof !15

20:                                               ; preds = %18
  %21 = load ptr, ptr @attribute_container_list, align 4
  %22 = icmp eq ptr %21, @attribute_container_list
  %23 = icmp eq ptr %7, %21
  %24 = or i1 %22, %23
  br i1 %24, label %39, label %26

25:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 323, i32 noundef 9, ptr noundef null) #6
  br label %39

26:                                               ; preds = %34, %20
  %27 = phi ptr [ %35, %34 ], [ %21, %20 ]
  %28 = getelementptr inbounds %struct.attribute_container, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %27, ptr noundef %0) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @do_attribute_container_device_trigger_safe(ptr noundef %0, ptr noundef %27, ptr noundef nonnull %2, ptr noundef null)
  br label %34

34:                                               ; preds = %32, %26
  %35 = load ptr, ptr %27, align 4
  %36 = icmp eq ptr %35, @attribute_container_list
  %37 = icmp eq ptr %7, %35
  %38 = or i1 %36, %37
  br i1 %38, label %39, label %26

39:                                               ; preds = %34, %25, %20, %15, %3
  %40 = phi i32 [ %13, %25 ], [ %13, %20 ], [ 0, %3 ], [ %13, %34 ], [ 0, %15 ]
  tail call void @mutex_unlock(ptr noundef nonnull @attribute_container_mutex) #6
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_attribute_container_device_trigger_safe(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3) unnamed_addr #2 {
  %5 = alloca %struct.klist_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 0, ptr %5, align 8, !annotation !14
  %6 = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 %2(ptr noundef %1, ptr noundef %0, ptr noundef null) #6
  br label %49

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 1
  call void @klist_iter_init(ptr noundef %13, ptr noundef nonnull %5) #6
  %14 = call ptr @klist_next(ptr noundef nonnull %5) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %28, %12
  call void @klist_iter_exit(ptr noundef nonnull %5) #6
  br label %49

17:                                               ; preds = %28, %12
  %18 = phi ptr [ %29, %28 ], [ %14, %12 ]
  %19 = getelementptr inbounds %struct.internal_container, ptr %18, i32 0, i32 2, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.internal_container, ptr %18, i32 0, i32 2
  %24 = call i32 %2(ptr noundef %1, ptr noundef %0, ptr noundef %23) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  call void @klist_iter_exit(ptr noundef nonnull %5) #6
  %27 = icmp eq ptr %3, null
  br i1 %27, label %49, label %31

28:                                               ; preds = %22, %17
  %29 = call ptr @klist_next(ptr noundef nonnull %5) #6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %16, label %17

31:                                               ; preds = %26
  call void @klist_iter_init(ptr noundef %13, ptr noundef nonnull %5) #6
  %32 = call ptr @klist_next(ptr noundef nonnull %5) #6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %46, %31
  call void @klist_iter_exit(ptr noundef nonnull %5) #6
  br label %49

35:                                               ; preds = %46, %31
  %36 = phi ptr [ %47, %46 ], [ %32, %31 ]
  %37 = icmp eq ptr %36, %18
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  call void @klist_iter_exit(ptr noundef nonnull %5) #6
  br label %49

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.internal_container, ptr %36, i32 0, i32 2, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.internal_container, ptr %36, i32 0, i32 2
  %45 = call i32 %3(ptr noundef %1, ptr noundef %0, ptr noundef %44) #6
  br label %46

46:                                               ; preds = %43, %39
  %47 = call ptr @klist_next(ptr noundef nonnull %5) #6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %34, label %35

49:                                               ; preds = %38, %34, %26, %16, %10
  %50 = phi i32 [ %11, %10 ], [ %24, %26 ], [ %24, %38 ], [ 0, %16 ], [ %24, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @attribute_container_device_trigger(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca %struct.klist_iter, align 8
  tail call void @mutex_lock(ptr noundef nonnull @attribute_container_mutex) #6
  %4 = load ptr, ptr @attribute_container_list, align 4
  %5 = icmp eq ptr %4, @attribute_container_list
  br i1 %5, label %38, label %6

6:                                                ; preds = %35, %2
  %7 = phi ptr [ %36, %35 ], [ %4, %2 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8, !annotation !14
  %8 = getelementptr inbounds %struct.attribute_container, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %7, ptr noundef %0) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.attribute_container, ptr %7, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 %1(ptr noundef %7, ptr noundef %0, ptr noundef null) #6
  br label %35

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.attribute_container, ptr %7, i32 0, i32 1
  call void @klist_iter_init(ptr noundef %20, ptr noundef nonnull %3) #6
  %21 = call ptr @klist_next(ptr noundef nonnull %3) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %32, %19
  call void @klist_iter_exit(ptr noundef nonnull %3) #6
  br label %35

24:                                               ; preds = %32, %19
  %25 = phi ptr [ %33, %32 ], [ %21, %19 ]
  %26 = getelementptr inbounds %struct.internal_container, ptr %25, i32 0, i32 2, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.internal_container, ptr %25, i32 0, i32 2
  %31 = call i32 %1(ptr noundef %7, ptr noundef %0, ptr noundef %30) #6
  br label %32

32:                                               ; preds = %29, %24
  %33 = call ptr @klist_next(ptr noundef nonnull %3) #6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %23, label %24

35:                                               ; preds = %23, %17, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %36 = load ptr, ptr %7, align 4
  %37 = icmp eq ptr %36, @attribute_container_list
  br i1 %37, label %38, label %6

38:                                               ; preds = %35, %2
  call void @mutex_unlock(ptr noundef nonnull @attribute_container_mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @attribute_container_trigger(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  tail call void @mutex_lock(ptr noundef nonnull @attribute_container_mutex) #6
  %3 = load ptr, ptr @attribute_container_list, align 4
  %4 = icmp eq ptr %3, @attribute_container_list
  br i1 %4, label %16, label %5

5:                                                ; preds = %13, %2
  %6 = phi ptr [ %14, %13 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.attribute_container, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %6, ptr noundef %0) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 %1(ptr noundef %6, ptr noundef %0) #6
  br label %13

13:                                               ; preds = %11, %5
  %14 = load ptr, ptr %6, align 4
  %15 = icmp eq ptr %14, @attribute_container_list
  br i1 %15, label %16, label %5

16:                                               ; preds = %13, %2
  tail call void @mutex_unlock(ptr noundef nonnull @attribute_container_mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @attribute_container_add_attrs(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.attribute_container, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.attribute_container, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %6, label %12, label %10

10:                                               ; preds = %1
  br i1 %9, label %13, label %11, !prof !12

11:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/attribute_container.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

12:                                               ; preds = %1
  br i1 %9, label %28, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %23

16:                                               ; preds = %12
  %17 = tail call i32 @sysfs_create_group(ptr noundef %0, ptr noundef nonnull %8) #6
  br label %28

18:                                               ; preds = %23
  %19 = add i32 %25, 1
  %20 = getelementptr ptr, ptr %5, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18, %13
  %24 = phi ptr [ %21, %18 ], [ %14, %13 ]
  %25 = phi i32 [ %19, %18 ], [ 0, %13 ]
  %26 = tail call i32 @device_create_file(ptr noundef %0, ptr noundef nonnull %24) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %18, label %28

28:                                               ; preds = %23, %18, %16, %13, %12
  %29 = phi i32 [ %17, %16 ], [ 0, %12 ], [ 0, %13 ], [ %26, %23 ], [ 0, %18 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @attribute_container_add_class_device_adapter(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call i32 @device_add(ptr noundef %2) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %2, i32 -8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.attribute_container, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.attribute_container, ptr %8, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %11, label %17, label %15

15:                                               ; preds = %6
  br i1 %14, label %18, label %16, !prof !12

16:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/attribute_container.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

17:                                               ; preds = %6
  br i1 %14, label %33, label %21

18:                                               ; preds = %15
  %19 = load ptr, ptr %10, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %28

21:                                               ; preds = %17
  %22 = tail call i32 @sysfs_create_group(ptr noundef %2, ptr noundef nonnull %13) #6
  br label %33

23:                                               ; preds = %28
  %24 = add i32 %30, 1
  %25 = getelementptr ptr, ptr %10, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23, %18
  %29 = phi ptr [ %26, %23 ], [ %19, %18 ]
  %30 = phi i32 [ %24, %23 ], [ 0, %18 ]
  %31 = tail call i32 @device_create_file(ptr noundef %2, ptr noundef nonnull %29) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %23, label %33

33:                                               ; preds = %28, %23, %21, %18, %17, %3
  %34 = phi i32 [ %4, %3 ], [ %22, %21 ], [ 0, %17 ], [ 0, %18 ], [ %31, %28 ], [ 0, %23 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @attribute_container_class_device_del(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.attribute_container, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.attribute_container, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %6, label %10, label %11

10:                                               ; preds = %1
  br i1 %9, label %23, label %15

11:                                               ; preds = %1
  br i1 %9, label %12, label %15

12:                                               ; preds = %11
  %13 = load ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %16

15:                                               ; preds = %11, %10
  tail call void @sysfs_remove_group(ptr noundef %0, ptr noundef nonnull %8) #6
  br label %23

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %21, %16 ], [ %13, %12 ]
  %18 = phi i32 [ %19, %16 ], [ 0, %12 ]
  tail call void @device_remove_file(ptr noundef %0, ptr noundef nonnull %17) #6
  %19 = add i32 %18, 1
  %20 = getelementptr ptr, ptr %5, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %16

23:                                               ; preds = %16, %15, %12, %10
  tail call void @device_del(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @attribute_container_find_class_device(ptr noundef %0, ptr noundef readnone %1) #2 {
  %3 = alloca %struct.klist_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8, !annotation !14
  %4 = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 1
  call void @klist_iter_init(ptr noundef %4, ptr noundef nonnull %3) #6
  br label %5

5:                                                ; preds = %8, %2
  %6 = call ptr @klist_next(ptr noundef nonnull %3) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.internal_container, ptr %6, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %5

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.internal_container, ptr %6, i32 0, i32 2
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi ptr [ %13, %12 ], [ null, %5 ]
  call void @klist_iter_exit(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
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
!8 = !{i64 2148838811}
!9 = !{i64 2148834635}
!10 = !{i64 2148834710, i64 2148834737, i64 2148834784, i64 2148834806, i64 2148834834, i64 2148834854}
!11 = !{i64 2148861814}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2151261339, i64 2151261838, i64 2151261376, i64 2151261432, i64 2151261466, i64 2151261490, i64 2151261531, i64 2151261552, i64 2151261580, i64 2151261614}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 1, i32 2000}
