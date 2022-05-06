; ModuleID = '/llk/IR/sound/core/jack.c_pt.bc'
source_filename = "../sound/core/jack.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_jack_add_new_kctl:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_jack_add_new_kctl\22\09\09\09\09\09"
module asm "__kstrtabns_snd_jack_add_new_kctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_jack_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_jack_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_jack_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_jack_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_jack_set_parent\22\09\09\09\09\09"
module asm "__kstrtabns_snd_jack_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_jack_set_key:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_jack_set_key\22\09\09\09\09\09"
module asm "__kstrtabns_snd_jack_set_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_jack_report:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_jack_report\22\09\09\09\09\09"
module asm "__kstrtabns_snd_jack_report:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.snd_jack = type { %struct.list_head, ptr, ptr, ptr, i32, i32, [100 x i8], [6 x i32], i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_jack_kctl = type { ptr, %struct.list_head, i32, ptr, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.75, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.75 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }

@__kstrtab_snd_jack_add_new_kctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_jack_add_new_kctl = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_jack_add_new_kctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_jack_add_new_kctl to i32), ptr @__kstrtab_snd_jack_add_new_kctl, ptr @__kstrtabns_snd_jack_add_new_kctl }, section "___ksymtab+snd_jack_add_new_kctl", align 4
@snd_jack_new.ops = internal constant %struct.snd_device_ops { ptr @snd_jack_dev_free, ptr @snd_jack_dev_register, ptr @snd_jack_dev_disconnect }, align 4
@.str = private unnamed_addr constant [5 x i8] c"ALSA\00", align 1
@__kstrtab_snd_jack_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_jack_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_jack_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_jack_new to i32), ptr @__kstrtab_snd_jack_new, ptr @__kstrtabns_snd_jack_new }, section "___ksymtab+snd_jack_new", align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"sound/core/jack.c\00", align 1
@__kstrtab_snd_jack_set_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_jack_set_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_jack_set_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_jack_set_parent to i32), ptr @__kstrtab_snd_jack_set_parent, ptr @__kstrtabns_snd_jack_set_parent }, section "___ksymtab+snd_jack_set_parent", align 4
@__kstrtab_snd_jack_set_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_jack_set_key = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_jack_set_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_jack_set_key to i32), ptr @__kstrtab_snd_jack_set_key, ptr @__kstrtabns_snd_jack_set_key }, section "___ksymtab+snd_jack_set_key", align 4
@__kstrtab_snd_jack_report = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_jack_report = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_jack_report = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_jack_report to i32), ptr @__kstrtab_snd_jack_report, ptr @__kstrtabns_snd_jack_report }, section "___ksymtab+snd_jack_report", align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_snd_jack_add_new_kctl, ptr @__ksymtab_snd_jack_new, ptr @__ksymtab_snd_jack_report, ptr @__ksymtab_snd_jack_set_key, ptr @__ksymtab_snd_jack_set_parent], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_jack_add_new_kctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_jack, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @snd_kctl_jack_new(ptr noundef %1, ptr noundef %5) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef nonnull %6) #5
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 24) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @snd_ctl_free_one(ptr noundef nonnull %6) #5
  br label %25

16:                                               ; preds = %11
  store ptr %6, ptr %13, align 8
  %17 = getelementptr inbounds %struct.snd_jack_kctl, ptr %13, i32 0, i32 2
  store i32 %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.snd_kcontrol, ptr %6, i32 0, i32 8
  store ptr %13, ptr %18, align 4
  %19 = getelementptr inbounds %struct.snd_kcontrol, ptr %6, i32 0, i32 9
  store ptr @snd_jack_kctl_private_free, ptr %19, align 4
  %20 = getelementptr inbounds %struct.snd_jack_kctl, ptr %13, i32 0, i32 3
  store ptr %0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.snd_jack_kctl, ptr %13, i32 0, i32 1
  %22 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %21, ptr %22, align 4
  store ptr %0, ptr %21, align 4
  %24 = getelementptr inbounds %struct.snd_jack_kctl, ptr %13, i32 0, i32 1, i32 1
  store ptr %23, ptr %24, align 8
  store volatile ptr %21, ptr %23, align 4
  br label %25

25:                                               ; preds = %16, %15, %8, %3
  %26 = phi i32 [ 0, %16 ], [ -12, %15 ], [ -12, %3 ], [ -12, %8 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_jack_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #0 {
  br i1 %4, label %7, label %22

7:                                                ; preds = %6
  %8 = tail call ptr @snd_kctl_jack_new(ptr noundef %1, ptr noundef %0) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %87, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @snd_ctl_add(ptr noundef %0, ptr noundef nonnull %8) #5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %87, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 24) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @snd_ctl_free_one(ptr noundef nonnull %8) #5
  br label %87

18:                                               ; preds = %13
  store ptr %8, ptr %15, align 8
  %19 = getelementptr inbounds %struct.snd_jack_kctl, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.snd_kcontrol, ptr %8, i32 0, i32 8
  store ptr %15, ptr %20, align 4
  %21 = getelementptr inbounds %struct.snd_kcontrol, ptr %8, i32 0, i32 9
  store ptr @snd_jack_kctl_private_free, ptr %21, align 4
  br label %22

22:                                               ; preds = %18, %6
  %23 = phi ptr [ %15, %18 ], [ null, %6 ]
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 164) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %87, label %27

27:                                               ; preds = %22
  %28 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #5
  %29 = getelementptr inbounds %struct.snd_jack, ptr %25, i32 0, i32 2
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void @kfree(ptr noundef nonnull %25) #5
  br label %87

32:                                               ; preds = %27
  br i1 %5, label %69, label %33

33:                                               ; preds = %32
  %34 = tail call ptr @input_allocate_device() #5
  %35 = getelementptr inbounds %struct.snd_jack, ptr %25, i32 0, i32 3
  store ptr %34, ptr %35, align 8
  %36 = icmp eq ptr %34, null
  br i1 %36, label %83, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 1
  store ptr @.str, ptr %38, align 4
  %39 = getelementptr inbounds %struct.snd_jack, ptr %25, i32 0, i32 5
  store i32 %2, ptr %39, align 8
  %40 = and i32 %2, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %35, align 8
  tail call void @input_set_capability(ptr noundef %43, i32 noundef 5, i32 noundef 2) #5
  br label %44

44:                                               ; preds = %42, %37
  %45 = and i32 %2, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %35, align 8
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 5, i32 noundef 4) #5
  br label %49

49:                                               ; preds = %47, %44
  %50 = and i32 %2, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %35, align 8
  tail call void @input_set_capability(ptr noundef %53, i32 noundef 5, i32 noundef 6) #5
  br label %54

54:                                               ; preds = %52, %49
  %55 = and i32 %2, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %35, align 8
  tail call void @input_set_capability(ptr noundef %58, i32 noundef 5, i32 noundef 7) #5
  br label %59

59:                                               ; preds = %57, %54
  %60 = and i32 %2, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %35, align 8
  tail call void @input_set_capability(ptr noundef %63, i32 noundef 5, i32 noundef 8) #5
  br label %64

64:                                               ; preds = %62, %59
  %65 = and i32 %2, 32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %35, align 8
  tail call void @input_set_capability(ptr noundef %68, i32 noundef 5, i32 noundef 13) #5
  br label %69

69:                                               ; preds = %67, %64, %32
  %70 = tail call i32 @snd_device_new(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %25, ptr noundef nonnull @snd_jack_new.ops) #5
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.snd_jack, ptr %25, i32 0, i32 3
  %74 = load ptr, ptr %73, align 8
  br label %83

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.snd_jack, ptr %25, i32 0, i32 1
  store ptr %0, ptr %76, align 8
  store volatile ptr %25, ptr %25, align 8
  %77 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %25, ptr %77, align 4
  br i1 %4, label %78, label %82

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.snd_jack_kctl, ptr %23, i32 0, i32 3
  store ptr %25, ptr %79, align 8
  %80 = getelementptr inbounds %struct.snd_jack_kctl, ptr %23, i32 0, i32 1
  store ptr %80, ptr %77, align 4
  store ptr %25, ptr %80, align 4
  %81 = getelementptr inbounds %struct.snd_jack_kctl, ptr %23, i32 0, i32 1, i32 1
  store ptr %25, ptr %81, align 8
  store volatile ptr %80, ptr %25, align 8
  br label %82

82:                                               ; preds = %78, %75
  store ptr %25, ptr %3, align 4
  br label %87

83:                                               ; preds = %72, %33
  %84 = phi ptr [ %74, %72 ], [ null, %33 ]
  %85 = phi i32 [ %70, %72 ], [ -12, %33 ]
  tail call void @input_free_device(ptr noundef %84) #5
  %86 = load ptr, ptr %29, align 4
  tail call void @kfree(ptr noundef %86) #5
  tail call void @kfree(ptr noundef nonnull %25) #5
  br label %87

87:                                               ; preds = %83, %82, %31, %22, %17, %10, %7
  %88 = phi i32 [ -12, %31 ], [ %85, %83 ], [ 0, %82 ], [ -12, %22 ], [ -12, %17 ], [ -12, %7 ], [ -12, %10 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_jack_dev_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 14
  tail call void @down_write(ptr noundef %6) #5
  %7 = load ptr, ptr %3, align 4
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %19, label %9

9:                                                ; preds = %9, %1
  %10 = phi ptr [ %12, %9 ], [ %7, %1 ]
  %11 = getelementptr i8, ptr %10, i32 -4
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %12, ptr %14, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %13, align 4
  %16 = load ptr, ptr %11, align 4
  %17 = tail call i32 @snd_ctl_remove(ptr noundef %5, ptr noundef %16) #5
  %18 = icmp eq ptr %12, %3
  br i1 %18, label %19, label %9

19:                                               ; preds = %9, %1
  tail call void @up_write(ptr noundef %6) #5
  %20 = getelementptr inbounds %struct.snd_jack, ptr %3, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void %21(ptr noundef %3) #5
  br label %24

24:                                               ; preds = %23, %19
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds %struct.snd_jack, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.snd_jack, ptr %25, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @input_unregister_device(ptr noundef nonnull %27) #5
  br label %35

34:                                               ; preds = %29
  tail call void @input_free_device(ptr noundef nonnull %27) #5
  br label %35

35:                                               ; preds = %34, %33
  store ptr null, ptr %26, align 4
  br label %36

36:                                               ; preds = %35, %24
  %37 = getelementptr inbounds %struct.snd_jack, ptr %3, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  tail call void @kfree(ptr noundef %38) #5
  tail call void @kfree(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_jack_dev_register(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_jack, ptr %3, i32 0, i32 6
  %7 = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 3
  %8 = getelementptr inbounds %struct.snd_jack, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %6, i32 noundef 100, ptr noundef nonnull @.str.2, ptr noundef %7, ptr noundef %9)
  %11 = getelementptr inbounds %struct.snd_jack, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %107, label %14

14:                                               ; preds = %1
  store ptr %6, ptr %12, align 8
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr inbounds %struct.input_dev, ptr %15, i32 0, i32 40, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = icmp eq ptr %5, null
  %21 = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 28
  %22 = select i1 %20, ptr null, ptr %21
  store ptr %22, ptr %16, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = getelementptr inbounds %struct.snd_jack, ptr %3, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 16384
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = getelementptr %struct.snd_jack, ptr %3, i32 0, i32 7, i32 0
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 256, ptr %29, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ 256, %32 ], [ %30, %28 ]
  %35 = load ptr, ptr %11, align 4
  tail call void @input_set_capability(ptr noundef %35, i32 noundef 1, i32 noundef %34) #5
  %36 = load i32, ptr %24, align 4
  br label %37

37:                                               ; preds = %33, %23
  %38 = phi i32 [ %25, %23 ], [ %36, %33 ]
  %39 = and i32 %38, 8192
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = getelementptr %struct.snd_jack, ptr %3, i32 0, i32 7, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 257, ptr %42, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ 257, %45 ], [ %43, %41 ]
  %48 = load ptr, ptr %11, align 4
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 1, i32 noundef %47) #5
  %49 = load i32, ptr %24, align 4
  br label %50

50:                                               ; preds = %46, %37
  %51 = phi i32 [ %49, %46 ], [ %38, %37 ]
  %52 = and i32 %51, 4096
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %50
  %55 = getelementptr %struct.snd_jack, ptr %3, i32 0, i32 7, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 258, ptr %55, align 4
  br label %59

59:                                               ; preds = %58, %54
  %60 = phi i32 [ 258, %58 ], [ %56, %54 ]
  %61 = load ptr, ptr %11, align 4
  tail call void @input_set_capability(ptr noundef %61, i32 noundef 1, i32 noundef %60) #5
  %62 = load i32, ptr %24, align 4
  br label %63

63:                                               ; preds = %59, %50
  %64 = phi i32 [ %62, %59 ], [ %51, %50 ]
  %65 = and i32 %64, 2048
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = getelementptr %struct.snd_jack, ptr %3, i32 0, i32 7, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 259, ptr %68, align 4
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ 259, %71 ], [ %69, %67 ]
  %74 = load ptr, ptr %11, align 4
  tail call void @input_set_capability(ptr noundef %74, i32 noundef 1, i32 noundef %73) #5
  %75 = load i32, ptr %24, align 4
  br label %76

76:                                               ; preds = %72, %63
  %77 = phi i32 [ %75, %72 ], [ %64, %63 ]
  %78 = and i32 %77, 1024
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %76
  %81 = getelementptr %struct.snd_jack, ptr %3, i32 0, i32 7, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 260, ptr %81, align 4
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi i32 [ 260, %84 ], [ %82, %80 ]
  %87 = load ptr, ptr %11, align 4
  tail call void @input_set_capability(ptr noundef %87, i32 noundef 1, i32 noundef %86) #5
  %88 = load i32, ptr %24, align 4
  br label %89

89:                                               ; preds = %85, %76
  %90 = phi i32 [ %88, %85 ], [ %77, %76 ]
  %91 = and i32 %90, 512
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = getelementptr %struct.snd_jack, ptr %3, i32 0, i32 7, i32 5
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 261, ptr %94, align 4
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i32 [ 261, %97 ], [ %95, %93 ]
  %100 = load ptr, ptr %11, align 4
  tail call void @input_set_capability(ptr noundef %100, i32 noundef 1, i32 noundef %99) #5
  br label %101

101:                                              ; preds = %98, %89
  %102 = load ptr, ptr %11, align 4
  %103 = tail call i32 @input_register_device(ptr noundef %102) #5
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.snd_jack, ptr %3, i32 0, i32 4
  store i32 1, ptr %106, align 4
  br label %107

107:                                              ; preds = %105, %101, %1
  %108 = phi i32 [ 0, %1 ], [ 0, %105 ], [ %103, %101 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_jack_dev_disconnect(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_jack, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.snd_jack, ptr %3, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @input_unregister_device(ptr noundef nonnull %5) #5
  br label %13

12:                                               ; preds = %7
  tail call void @input_free_device(ptr noundef nonnull %5) #5
  br label %13

13:                                               ; preds = %12, %11
  store ptr null, ptr %4, align 4
  br label %14

14:                                               ; preds = %13, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_jack_set_parent(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_jack, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 580, i32 noundef 9, ptr noundef null) #5
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.snd_jack, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 40, i32 1
  store ptr %1, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_jack_set_key(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %1, 0
  %5 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 false) #5, !range !9
  %6 = add nsw i32 %5, -17
  %7 = select i1 %4, i32 15, i32 %6
  %8 = getelementptr inbounds %struct.snd_jack, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !8

11:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 618, i32 noundef 9, ptr noundef null) #5
  br label %12

12:                                               ; preds = %11, %3
  %13 = icmp eq i32 %2, 0
  %14 = icmp ugt i32 %7, 5
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.snd_jack, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %1
  store i32 %19, ptr %17, align 4
  %20 = getelementptr %struct.snd_jack, ptr %0, i32 0, i32 7, i32 %7
  store i32 %2, ptr %20, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = phi i32 [ 0, %16 ], [ -22, %12 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_jack_report(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %170, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.snd_jack, ptr %0, i32 0, i32 8
  store i32 %1, ptr %5, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.snd_jack, ptr %0, i32 0, i32 1
  br label %10

10:                                               ; preds = %28, %8
  %11 = phi ptr [ %6, %8 ], [ %30, %28 ]
  %12 = phi i32 [ 0, %8 ], [ %29, %28 ]
  %13 = getelementptr i8, ptr %11, i32 16
  %14 = load i8, ptr %13, align 4, !range !10
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %11, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %12
  br label %28

20:                                               ; preds = %10
  %21 = getelementptr i8, ptr %11, i32 -4
  %22 = load ptr, ptr %9, align 4
  %23 = load ptr, ptr %21, align 4
  %24 = getelementptr i8, ptr %11, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %1
  %27 = icmp ne i32 %26, 0
  tail call void @snd_kctl_jack_report(ptr noundef %22, ptr noundef %23, i1 noundef zeroext %27) #5
  br label %28

28:                                               ; preds = %20, %16
  %29 = phi i32 [ %19, %16 ], [ %12, %20 ]
  %30 = load ptr, ptr %11, align 4
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %32, label %10

32:                                               ; preds = %28, %4
  %33 = phi i32 [ 0, %4 ], [ %29, %28 ]
  %34 = getelementptr inbounds %struct.snd_jack, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %170, label %37

37:                                               ; preds = %32
  %38 = xor i32 %33, -1
  %39 = getelementptr inbounds %struct.snd_jack, ptr %0, i32 0, i32 5
  %40 = and i32 %38, 16384
  %41 = load i32, ptr %39, align 4
  %42 = and i32 %41, %40
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = getelementptr %struct.snd_jack, ptr %0, i32 0, i32 7, i32 0
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %40, %1
  %48 = lshr exact i32 %47, 14
  tail call void @input_event(ptr noundef nonnull %35, i32 noundef 1, i32 noundef %46, i32 noundef %48) #5
  %49 = load i32, ptr %39, align 4
  br label %50

50:                                               ; preds = %44, %37
  %51 = phi i32 [ %49, %44 ], [ %41, %37 ]
  %52 = and i32 %38, 8192
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %34, align 4
  %57 = getelementptr %struct.snd_jack, ptr %0, i32 0, i32 7, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %52, %1
  %60 = lshr exact i32 %59, 13
  tail call void @input_event(ptr noundef %56, i32 noundef 1, i32 noundef %58, i32 noundef %60) #5
  %61 = load i32, ptr %39, align 4
  br label %62

62:                                               ; preds = %55, %50
  %63 = phi i32 [ %61, %55 ], [ %51, %50 ]
  %64 = and i32 %38, 4096
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %34, align 4
  %69 = getelementptr %struct.snd_jack, ptr %0, i32 0, i32 7, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %64, %1
  %72 = lshr exact i32 %71, 12
  tail call void @input_event(ptr noundef %68, i32 noundef 1, i32 noundef %70, i32 noundef %72) #5
  %73 = load i32, ptr %39, align 4
  br label %74

74:                                               ; preds = %67, %62
  %75 = phi i32 [ %73, %67 ], [ %63, %62 ]
  %76 = and i32 %38, 2048
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr %34, align 4
  %81 = getelementptr %struct.snd_jack, ptr %0, i32 0, i32 7, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %76, %1
  %84 = lshr exact i32 %83, 11
  tail call void @input_event(ptr noundef %80, i32 noundef 1, i32 noundef %82, i32 noundef %84) #5
  %85 = load i32, ptr %39, align 4
  br label %86

86:                                               ; preds = %79, %74
  %87 = phi i32 [ %85, %79 ], [ %75, %74 ]
  %88 = and i32 %38, 1024
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %34, align 4
  %93 = getelementptr %struct.snd_jack, ptr %0, i32 0, i32 7, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %88, %1
  %96 = lshr exact i32 %95, 10
  tail call void @input_event(ptr noundef %92, i32 noundef 1, i32 noundef %94, i32 noundef %96) #5
  %97 = load i32, ptr %39, align 4
  br label %98

98:                                               ; preds = %91, %86
  %99 = phi i32 [ %97, %91 ], [ %87, %86 ]
  %100 = and i32 %38, 512
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %98
  %104 = load ptr, ptr %34, align 4
  %105 = getelementptr %struct.snd_jack, ptr %0, i32 0, i32 7, i32 5
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %100, %1
  %108 = lshr exact i32 %107, 9
  tail call void @input_event(ptr noundef %104, i32 noundef 1, i32 noundef %106, i32 noundef %108) #5
  %109 = load i32, ptr %39, align 4
  br label %110

110:                                              ; preds = %103, %98
  %111 = phi i32 [ %109, %103 ], [ %99, %98 ]
  %112 = and i32 %38, 1
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = load ptr, ptr %34, align 4
  %117 = and i32 %112, %1
  tail call void @input_event(ptr noundef %116, i32 noundef 5, i32 noundef 2, i32 noundef %117) #5
  %118 = load i32, ptr %39, align 4
  br label %119

119:                                              ; preds = %115, %110
  %120 = phi i32 [ %118, %115 ], [ %111, %110 ]
  %121 = and i32 %38, 2
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %34, align 4
  %126 = and i32 %121, %1
  %127 = lshr exact i32 %126, 1
  tail call void @input_event(ptr noundef %125, i32 noundef 5, i32 noundef 4, i32 noundef %127) #5
  %128 = load i32, ptr %39, align 4
  br label %129

129:                                              ; preds = %124, %119
  %130 = phi i32 [ %128, %124 ], [ %120, %119 ]
  %131 = and i32 %38, 4
  %132 = and i32 %130, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load ptr, ptr %34, align 4
  %136 = and i32 %131, %1
  %137 = lshr exact i32 %136, 2
  tail call void @input_event(ptr noundef %135, i32 noundef 5, i32 noundef 6, i32 noundef %137) #5
  %138 = load i32, ptr %39, align 4
  br label %139

139:                                              ; preds = %134, %129
  %140 = phi i32 [ %138, %134 ], [ %130, %129 ]
  %141 = and i32 %38, 8
  %142 = and i32 %140, %141
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = load ptr, ptr %34, align 4
  %146 = and i32 %141, %1
  %147 = lshr exact i32 %146, 3
  tail call void @input_event(ptr noundef %145, i32 noundef 5, i32 noundef 7, i32 noundef %147) #5
  %148 = load i32, ptr %39, align 4
  br label %149

149:                                              ; preds = %144, %139
  %150 = phi i32 [ %148, %144 ], [ %140, %139 ]
  %151 = and i32 %38, 16
  %152 = and i32 %150, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load ptr, ptr %34, align 4
  %156 = and i32 %151, %1
  %157 = lshr exact i32 %156, 4
  tail call void @input_event(ptr noundef %155, i32 noundef 5, i32 noundef 8, i32 noundef %157) #5
  %158 = load i32, ptr %39, align 4
  br label %159

159:                                              ; preds = %154, %149
  %160 = phi i32 [ %158, %154 ], [ %150, %149 ]
  %161 = and i32 %38, 32
  %162 = and i32 %160, %161
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %159
  %165 = load ptr, ptr %34, align 4
  %166 = and i32 %161, %1
  %167 = lshr exact i32 %166, 5
  tail call void @input_event(ptr noundef %165, i32 noundef 5, i32 noundef 13, i32 noundef %167) #5
  br label %168

168:                                              ; preds = %164, %159
  %169 = load ptr, ptr %34, align 4
  tail call void @input_event(ptr noundef %169, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %170

170:                                              ; preds = %168, %32, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_kctl_jack_report(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_kctl_jack_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_jack_kctl_private_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_jack_kctl, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.snd_jack_kctl, ptr %3, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void @kfree(ptr noundef nonnull %3) #5
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_free_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!9 = !{i32 0, i32 33}
!10 = !{i8 0, i8 2}
