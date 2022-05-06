; ModuleID = '/llk/IR/drivers/counter/counter-chrdev.c_pt.bc'
source_filename = "../drivers/counter/counter-chrdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_counter_push_event:\09\09\09\09\09"
module asm "\09.asciz \09\22counter_push_event\22\09\09\09\09\09"
module asm "__kstrtabns_counter_push_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.counter_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.device, %struct.cdev, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.anon.63, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, %struct.mutex }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.anon.63 = type { %union.anon.64, [0 x %struct.counter_event] }
%union.anon.64 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.counter_event = type { i64, i64, %struct.counter_watch, i8 }
%struct.counter_watch = type { %struct.counter_component, i8, i8 }
%struct.counter_component = type { i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.counter_event_node = type { %struct.list_head, i8, i8, %struct.list_head }
%struct.counter_comp_node = type { %struct.list_head, %struct.counter_component, %struct.counter_comp, ptr }
%struct.counter_comp = type { i32, ptr, ptr, %union.anon.61, %union.anon.62 }
%union.anon.61 = type { ptr }
%union.anon.62 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.counter_signal = type { i32, ptr, ptr, i32 }
%struct.counter_count = type { i32, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.counter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.counter_synapse = type { ptr, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }

@counter_chrdev_add.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [29 x i8] c"&counter->n_events_list_lock\00", align 1
@counter_chrdev_add.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"&counter->events_wait\00", align 1
@counter_chrdev_add.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"&counter->events_out_lock\00", align 1
@counter_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @counter_chrdev_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @counter_chrdev_poll, ptr @counter_chrdev_ioctl, ptr null, ptr null, i32 0, ptr @counter_chrdev_open, ptr null, ptr @counter_chrdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_counter_push_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_counter_push_event = external dso_local constant [0 x i8], align 1
@__ksymtab_counter_push_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @counter_push_event to i32), ptr @__kstrtab_counter_push_event, ptr @__kstrtabns_counter_push_event }, section "___ksymtab_gpl+counter_push_event", align 4
@__this_module = external dso_local global %struct.module, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_counter_push_event], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @counter_chrdev_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 11
  store volatile ptr %2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 11, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 13
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 13, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 12
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @counter_chrdev_add.__key) #6
  %8 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @counter_chrdev_add.__key.1) #6
  %9 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 17
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef nonnull @counter_chrdev_add.__key.3) #6
  %11 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 10
  tail call void @cdev_init(ptr noundef %11, ptr noundef nonnull @counter_fops) #6
  %12 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 15
  %13 = tail call i32 @__kfifo_alloc(ptr noundef %12, i32 noundef 64, i32 noundef 24, i32 noundef 3264) #6
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @counter_chrdev_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 15
  tail call void @__kfifo_free(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @counter_push_event(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.counter_event, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  %7 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !8
  %8 = tail call i64 @ktime_get() #6
  store i64 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.counter_event, ptr %6, i32 0, i32 2
  %10 = getelementptr inbounds %struct.counter_event, ptr %6, i32 0, i32 2, i32 1
  store i8 %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.counter_event, ptr %6, i32 0, i32 2, i32 2
  store i8 %2, ptr %11, align 1
  %12 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 12
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #6
  %14 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %17, label %18

17:                                               ; preds = %27, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #6
  br label %127

18:                                               ; preds = %27, %3
  %19 = phi ptr [ %28, %27 ], [ %15, %3 ]
  %20 = getelementptr inbounds %struct.counter_event_node, ptr %19, i32 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, %1
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.counter_event_node, ptr %19, i32 0, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, %2
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %18
  %28 = load ptr, ptr %19, align 4
  %29 = icmp eq ptr %28, %14
  br i1 %29, label %17, label %18

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.counter_event_node, ptr %19, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #6
  br label %127

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.counter_event, ptr %6, i32 0, i32 1
  %37 = getelementptr inbounds %struct.counter_event, ptr %6, i32 0, i32 3
  %38 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 17
  %39 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 15
  br label %40

40:                                               ; preds = %113, %35
  %41 = phi ptr [ %32, %35 ], [ %121, %113 ]
  %42 = phi i32 [ 0, %35 ], [ %120, %113 ]
  %43 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %9, align 8
  %45 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4
  %47 = load i8, ptr %43, align 4
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %113, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  switch i32 %51, label %113 [
    i32 0, label %52
    i32 2, label %52
    i32 3, label %71
    i32 4, label %71
    i32 6, label %71
    i32 7, label %71
    i32 8, label %71
    i32 1, label %90
    i32 5, label %105
  ]

52:                                               ; preds = %49, %49
  %53 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 1, i32 1
  %54 = load i8, ptr %53, align 1
  switch i8 %54, label %67 [
    i8 0, label %55
    i8 1, label %59
    i8 2, label %63
  ]

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 2, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 %57(ptr noundef %0, ptr noundef nonnull %4) #6
  br label %67

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 2, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef %0, ptr noundef %46, ptr noundef nonnull %4) #6
  br label %67

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 2, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = call i32 %65(ptr noundef %0, ptr noundef %46, ptr noundef nonnull %4) #6
  br label %67

67:                                               ; preds = %63, %59, %55, %52
  %68 = phi i32 [ 0, %52 ], [ %66, %63 ], [ %62, %59 ], [ %58, %55 ]
  %69 = load i8, ptr %4, align 1
  %70 = zext i8 %69 to i64
  store i64 %70, ptr %36, align 8
  br label %113

71:                                               ; preds = %49, %49, %49, %49, %49
  %72 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 1, i32 1
  %73 = load i8, ptr %72, align 1
  switch i8 %73, label %86 [
    i8 0, label %74
    i8 1, label %78
    i8 2, label %82
  ]

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 2, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 %76(ptr noundef %0, ptr noundef nonnull %5) #6
  br label %86

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 2, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = call i32 %80(ptr noundef %0, ptr noundef %46, ptr noundef nonnull %5) #6
  br label %86

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 2, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = call i32 %84(ptr noundef %0, ptr noundef %46, ptr noundef nonnull %5) #6
  br label %86

86:                                               ; preds = %82, %78, %74, %71
  %87 = phi i32 [ 0, %71 ], [ %85, %82 ], [ %81, %78 ], [ %77, %74 ]
  %88 = load i32, ptr %5, align 4
  %89 = zext i32 %88 to i64
  store i64 %89, ptr %36, align 8
  br label %113

90:                                               ; preds = %49
  %91 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 1, i32 1
  %92 = load i8, ptr %91, align 1
  switch i8 %92, label %113 [
    i8 0, label %93
    i8 1, label %97
    i8 2, label %101
  ]

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 2, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = call i32 %95(ptr noundef %0, ptr noundef %36) #6
  br label %113

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 2, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = call i32 %99(ptr noundef %0, ptr noundef %46, ptr noundef %36) #6
  br label %113

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 2, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = call i32 %103(ptr noundef %0, ptr noundef %46, ptr noundef %36) #6
  br label %113

105:                                              ; preds = %49
  %106 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 2, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.counter_comp_node, ptr %41, i32 0, i32 2, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = call i32 %107(ptr noundef %0, ptr noundef %46, ptr noundef %109, ptr noundef nonnull %5) #6
  %111 = load i32, ptr %5, align 4
  %112 = zext i32 %111 to i64
  store i64 %112, ptr %36, align 8
  br label %113

113:                                              ; preds = %105, %101, %97, %93, %90, %86, %67, %49, %40
  %114 = phi i32 [ %110, %105 ], [ %104, %101 ], [ %100, %97 ], [ %96, %93 ], [ %87, %86 ], [ %68, %67 ], [ 0, %40 ], [ -22, %90 ], [ -22, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  %115 = trunc i32 %114 to i8
  %116 = sub i8 0, %115
  store i8 %116, ptr %37, align 2
  call void @_raw_spin_lock(ptr noundef %38) #6
  %117 = call i32 @__kfifo_in(ptr noundef %39, ptr noundef nonnull %6, i32 noundef 1) #6
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %118 = load i16, ptr %38, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %38, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %120 = add i32 %117, %42
  %121 = load ptr, ptr %41, align 4
  %122 = icmp eq ptr %121, %31
  br i1 %122, label %123, label %40

123:                                              ; preds = %113
  %124 = icmp eq i32 %120, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #6
  br i1 %124, label %127, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 16
  call void @__wake_up(ptr noundef %126, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #6
  br label %127

127:                                              ; preds = %125, %123, %34, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @counter_chrdev_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.counter_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %62, label %12

12:                                               ; preds = %4
  %13 = icmp ult i32 %2, 24
  br i1 %13, label %62, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %16 = getelementptr inbounds %struct.counter_device, ptr %8, i32 0, i32 15
  %17 = getelementptr inbounds %struct.counter_device, ptr %8, i32 0, i32 15, i32 0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.counter_device, ptr %8, i32 0, i32 16
  %19 = getelementptr inbounds %struct.counter_device, ptr %8, i32 0, i32 18
  br label %20

20:                                               ; preds = %59, %14
  %21 = load i32, ptr %16, align 8
  %22 = load i32, ptr %17, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load i32, ptr %15, align 4
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %24
  %29 = load ptr, ptr %9, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %62, label %31

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #6
  %32 = call i32 @prepare_to_wait_event(ptr noundef %18, ptr noundef nonnull %6, i32 noundef 1) #6
  %33 = load i32, ptr %16, align 8
  %34 = load i32, ptr %17, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %42, %31
  %37 = phi i32 [ %43, %42 ], [ %32, %31 ]
  %38 = load ptr, ptr %9, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = icmp eq i32 %37, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %40
  call void @schedule() #6
  %43 = call i32 @prepare_to_wait_event(ptr noundef %18, ptr noundef nonnull %6, i32 noundef 1) #6
  %44 = load i32, ptr %16, align 8
  %45 = load i32, ptr %17, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %36, label %47

47:                                               ; preds = %42, %36, %31
  call void @finish_wait(ptr noundef %18, ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #6
  br label %50

48:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #6
  %49 = icmp slt i32 %37, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %48, %47
  %51 = load ptr, ptr %9, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %50, %20
  %54 = call i32 @mutex_lock_interruptible(ptr noundef %19) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = call i32 @__kfifo_to_user(ptr noundef %16, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #6
  call void @mutex_unlock(ptr noundef %19) #6
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %5, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %20, label %62

62:                                               ; preds = %59, %56, %53, %50, %48, %28, %24, %12, %4
  %63 = phi i32 [ -19, %4 ], [ -22, %12 ], [ -19, %28 ], [ %60, %59 ], [ %57, %56 ], [ -512, %53 ], [ -19, %50 ], [ %37, %48 ], [ -11, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @counter_chrdev_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.counter_device, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.counter_device, ptr %4, i32 0, i32 16
  %10 = icmp eq ptr %1, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %1, align 4
  %13 = icmp ne ptr %12, null
  %14 = icmp ne ptr %9, null
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void %12(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %1) #6
  br label %17

17:                                               ; preds = %16, %11, %8
  %18 = getelementptr inbounds %struct.counter_device, ptr %4, i32 0, i32 15
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.counter_device, ptr %4, i32 0, i32 15, i32 0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %19, %21
  %23 = select i1 %22, i32 0, i32 65
  br label %24

24:                                               ; preds = %17, %2
  %25 = phi i32 [ %23, %17 ], [ 0, %2 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @counter_chrdev_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.counter_watch, align 4
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %276, label %11

11:                                               ; preds = %3
  switch i32 %1, label %276 [
    i32 1074150912, label %12
    i32 15873, label %231
    i32 15874, label %274
  ]

12:                                               ; preds = %11
  %13 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %4, i8 0, i32 6, i1 false) #6, !annotation !8
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 6, i32 -1090519040) #7, !srcloc !13
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25, !prof !14

17:                                               ; preds = %12
  %18 = tail call ptr @llvm.thread.pointer() #6
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #8, !srcloc !15
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #6, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !17
  %23 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %13, i32 noundef 6) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #6, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !14

25:                                               ; preds = %17, %12
  %26 = phi i32 [ %23, %17 ], [ 6, %12 ]
  %27 = sub i32 6, %26
  %28 = getelementptr i8, ptr %4, i32 %27
  call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %26, i1 false) #6
  br label %229

29:                                               ; preds = %17
  %30 = load i8, ptr %4, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %133, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.counter_component, ptr %4, i32 0, i32 2
  %34 = load i8, ptr %33, align 2
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.counter_component, ptr %4, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  switch i8 %37, label %229 [
    i8 0, label %38
    i8 1, label %41
    i8 2, label %53
  ]

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 7
  %40 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 8
  br label %65

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = icmp ugt i32 %43, %35
  br i1 %44, label %45, label %229

45:                                               ; preds = %41
  %46 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %35, i32 %43) #6, !srcloc !18
  %47 = and i32 %46, %35
  %48 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr %struct.counter_signal, ptr %49, i32 %47
  %51 = getelementptr %struct.counter_signal, ptr %49, i32 %47, i32 2
  %52 = getelementptr %struct.counter_signal, ptr %49, i32 %47, i32 3
  br label %65

53:                                               ; preds = %32
  %54 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 6
  %55 = load i32, ptr %54, align 8
  %56 = icmp ugt i32 %55, %35
  br i1 %56, label %57, label %229

57:                                               ; preds = %53
  %58 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %35, i32 %55) #6, !srcloc !18
  %59 = and i32 %58, %35
  %60 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr %struct.counter_count, ptr %61, i32 %59
  %63 = getelementptr %struct.counter_count, ptr %61, i32 %59, i32 6
  %64 = getelementptr %struct.counter_count, ptr %61, i32 %59, i32 7
  br label %65

65:                                               ; preds = %57, %45, %38
  %66 = phi ptr [ %62, %57 ], [ %50, %45 ], [ null, %38 ]
  %67 = phi ptr [ %64, %57 ], [ %52, %45 ], [ %40, %38 ]
  %68 = phi ptr [ %63, %57 ], [ %51, %45 ], [ %39, %38 ]
  %69 = phi i32 [ %59, %57 ], [ %47, %45 ], [ %35, %38 ]
  %70 = load ptr, ptr %68, align 4
  %71 = load i32, ptr %67, align 4
  %72 = getelementptr inbounds %struct.counter_component, ptr %4, i32 0, i32 3
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, ptr %4, align 4
  switch i8 %75, label %229 [
    i8 1, label %76
    i8 2, label %81
    i8 3, label %87
    i8 4, label %93
    i8 5, label %111
  ]

76:                                               ; preds = %65
  %77 = load i8, ptr %36, align 1
  %78 = icmp eq i8 %77, 1
  br i1 %78, label %79, label %229

79:                                               ; preds = %76
  %80 = load ptr, ptr %8, align 8
  br label %125

81:                                               ; preds = %65
  %82 = load i8, ptr %36, align 1
  %83 = icmp eq i8 %82, 2
  br i1 %83, label %84, label %229

84:                                               ; preds = %81
  %85 = load ptr, ptr %8, align 8
  %86 = getelementptr inbounds %struct.counter_ops, ptr %85, i32 0, i32 1
  br label %125

87:                                               ; preds = %65
  %88 = load i8, ptr %36, align 1
  %89 = icmp eq i8 %88, 2
  br i1 %89, label %90, label %229

90:                                               ; preds = %87
  %91 = load ptr, ptr %8, align 8
  %92 = getelementptr inbounds %struct.counter_ops, ptr %91, i32 0, i32 3
  br label %125

93:                                               ; preds = %65
  %94 = load i8, ptr %36, align 1
  %95 = icmp eq i8 %94, 2
  br i1 %95, label %96, label %229

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 5
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr %struct.counter_count, ptr %98, i32 %69, i32 5
  %100 = load i32, ptr %99, align 4
  %101 = icmp ugt i32 %100, %74
  br i1 %101, label %102, label %229

102:                                              ; preds = %96
  %103 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %74, i32 %100) #6, !srcloc !18
  %104 = and i32 %103, %74
  %105 = load ptr, ptr %8, align 8
  %106 = getelementptr inbounds %struct.counter_ops, ptr %105, i32 0, i32 5
  %107 = load ptr, ptr %97, align 4
  %108 = getelementptr %struct.counter_count, ptr %107, i32 %69, i32 4
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr %struct.counter_synapse, ptr %109, i32 %104
  br label %125

111:                                              ; preds = %65
  %112 = icmp ugt i32 %71, %74
  br i1 %112, label %113, label %229

113:                                              ; preds = %111
  %114 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %74, i32 %71) #6, !srcloc !18
  %115 = and i32 %114, %74
  %116 = getelementptr %struct.counter_comp, ptr %70, i32 %115
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds i8, ptr %116, i32 4
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds i8, ptr %116, i32 8
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds i8, ptr %116, i32 12
  %123 = getelementptr inbounds i8, ptr %116, i32 16
  %124 = load ptr, ptr %123, align 4
  br label %125

125:                                              ; preds = %113, %102, %90, %84, %79
  %126 = phi i32 [ %117, %113 ], [ 5, %102 ], [ 4, %90 ], [ 1, %84 ], [ 3, %79 ]
  %127 = phi ptr [ %119, %113 ], [ null, %102 ], [ null, %90 ], [ null, %84 ], [ null, %79 ]
  %128 = phi ptr [ %121, %113 ], [ %110, %102 ], [ null, %90 ], [ null, %84 ], [ null, %79 ]
  %129 = phi ptr [ %122, %113 ], [ %106, %102 ], [ %92, %90 ], [ %86, %84 ], [ %80, %79 ]
  %130 = phi ptr [ %124, %113 ], [ null, %102 ], [ null, %90 ], [ null, %84 ], [ null, %79 ]
  %131 = load ptr, ptr %129, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %229, label %133

133:                                              ; preds = %125, %29
  %134 = phi i32 [ 0, %29 ], [ %126, %125 ]
  %135 = phi ptr [ null, %29 ], [ %127, %125 ]
  %136 = phi ptr [ null, %29 ], [ %128, %125 ]
  %137 = phi ptr [ null, %29 ], [ %131, %125 ]
  %138 = phi ptr [ null, %29 ], [ %130, %125 ]
  %139 = phi ptr [ null, %29 ], [ %66, %125 ]
  %140 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 14
  call void @mutex_lock(ptr noundef %140) #6
  %141 = load ptr, ptr %8, align 8
  %142 = getelementptr inbounds %struct.counter_ops, ptr %141, i32 0, i32 8
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %133
  %146 = call i32 %143(ptr noundef %6, ptr noundef nonnull %4) #6
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %227, label %148

148:                                              ; preds = %145, %133
  %149 = load i32, ptr %4, align 4
  %150 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 13
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, %150
  br i1 %152, label %170, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.counter_watch, ptr %4, i32 0, i32 1
  %155 = load i8, ptr %154, align 4
  %156 = getelementptr inbounds %struct.counter_watch, ptr %4, i32 0, i32 2
  %157 = load i8, ptr %156, align 1
  br label %158

158:                                              ; preds = %167, %153
  %159 = phi ptr [ %151, %153 ], [ %168, %167 ]
  %160 = getelementptr inbounds %struct.counter_event_node, ptr %159, i32 0, i32 1
  %161 = load i8, ptr %160, align 4
  %162 = icmp eq i8 %161, %155
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.counter_event_node, ptr %159, i32 0, i32 2
  %165 = load i8, ptr %164, align 1
  %166 = icmp eq i8 %165, %157
  br i1 %166, label %186, label %167

167:                                              ; preds = %163, %158
  %168 = load ptr, ptr %159, align 4
  %169 = icmp eq ptr %168, %150
  br i1 %169, label %170, label %158

170:                                              ; preds = %167, %148
  %171 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %172 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %171, i32 noundef 3264, i32 noundef 20) #9
  %173 = icmp eq ptr %172, null
  br i1 %173, label %227, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.counter_watch, ptr %4, i32 0, i32 1
  %176 = load i8, ptr %175, align 4
  %177 = getelementptr inbounds %struct.counter_event_node, ptr %172, i32 0, i32 1
  store i8 %176, ptr %177, align 8
  %178 = getelementptr inbounds %struct.counter_watch, ptr %4, i32 0, i32 2
  %179 = load i8, ptr %178, align 1
  %180 = getelementptr inbounds %struct.counter_event_node, ptr %172, i32 0, i32 2
  store i8 %179, ptr %180, align 1
  %181 = getelementptr inbounds %struct.counter_event_node, ptr %172, i32 0, i32 3
  store volatile ptr %181, ptr %181, align 4
  %182 = getelementptr inbounds %struct.counter_event_node, ptr %172, i32 0, i32 3, i32 1
  store ptr %181, ptr %182, align 8
  %183 = load ptr, ptr %150, align 4
  %184 = getelementptr inbounds %struct.list_head, ptr %183, i32 0, i32 1
  store ptr %172, ptr %184, align 4
  store ptr %183, ptr %172, align 8
  %185 = getelementptr inbounds %struct.list_head, ptr %172, i32 0, i32 1
  store ptr %150, ptr %185, align 4
  store volatile ptr %172, ptr %150, align 4
  br label %186

186:                                              ; preds = %174, %163
  %187 = phi ptr [ %172, %174 ], [ %159, %163 ]
  %188 = getelementptr inbounds %struct.counter_event_node, ptr %187, i32 0, i32 3
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, %188
  br i1 %190, label %203, label %191

191:                                              ; preds = %200, %186
  %192 = phi ptr [ %201, %200 ], [ %189, %186 ]
  %193 = getelementptr inbounds %struct.counter_comp_node, ptr %192, i32 0, i32 3
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, %139
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.counter_comp_node, ptr %192, i32 0, i32 2, i32 3
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, %137
  br i1 %199, label %218, label %200

200:                                              ; preds = %196, %191
  %201 = load ptr, ptr %192, align 4
  %202 = icmp eq ptr %201, %188
  br i1 %202, label %203, label %191

203:                                              ; preds = %200, %186
  %204 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %205 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %204, i32 noundef 3264, i32 noundef 36) #9
  %206 = icmp eq ptr %205, null
  br i1 %206, label %218, label %207

207:                                              ; preds = %203
  store i64 0, ptr %205, align 8
  %208 = getelementptr inbounds i8, ptr %205, i32 8
  store i32 %149, ptr %208, align 8
  %209 = getelementptr inbounds i8, ptr %205, i32 12
  store i32 %134, ptr %209, align 4
  %210 = getelementptr inbounds i8, ptr %205, i32 16
  store ptr %135, ptr %210, align 8
  %211 = getelementptr inbounds i8, ptr %205, i32 20
  store ptr %136, ptr %211, align 4
  %212 = getelementptr inbounds i8, ptr %205, i32 24
  store ptr %137, ptr %212, align 8
  %213 = getelementptr inbounds i8, ptr %205, i32 28
  store ptr %138, ptr %213, align 4
  %214 = getelementptr inbounds i8, ptr %205, i32 32
  store ptr %139, ptr %214, align 8
  %215 = getelementptr inbounds %struct.counter_event_node, ptr %187, i32 0, i32 3, i32 1
  %216 = load ptr, ptr %215, align 4
  store ptr %205, ptr %215, align 4
  store ptr %188, ptr %205, align 8
  %217 = getelementptr inbounds %struct.list_head, ptr %205, i32 0, i32 1
  store ptr %216, ptr %217, align 4
  store volatile ptr %205, ptr %216, align 4
  br label %218

218:                                              ; preds = %207, %203, %196
  %219 = phi i32 [ 0, %207 ], [ -12, %203 ], [ -22, %196 ]
  %220 = load volatile ptr, ptr %188, align 4
  %221 = icmp eq ptr %220, %188
  br i1 %221, label %222, label %227

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.list_head, ptr %187, i32 0, i32 1
  %224 = load ptr, ptr %223, align 4
  %225 = load ptr, ptr %187, align 4
  %226 = getelementptr inbounds %struct.list_head, ptr %225, i32 0, i32 1
  store ptr %224, ptr %226, align 4
  store volatile ptr %225, ptr %224, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %187, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %223, align 4
  call void @kfree(ptr noundef %187) #6
  br label %227

227:                                              ; preds = %222, %218, %170, %145
  %228 = phi i32 [ %146, %145 ], [ -12, %170 ], [ %219, %222 ], [ %219, %218 ]
  call void @mutex_unlock(ptr noundef %140) #6
  br label %229

229:                                              ; preds = %227, %125, %111, %96, %93, %87, %81, %76, %65, %53, %41, %32, %25
  %230 = phi i32 [ %228, %227 ], [ -22, %41 ], [ -22, %53 ], [ -22, %32 ], [ -22, %76 ], [ -22, %81 ], [ -22, %87 ], [ -22, %93 ], [ -22, %96 ], [ -22, %111 ], [ -22, %65 ], [ -95, %125 ], [ -14, %25 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #6
  br label %276

231:                                              ; preds = %11
  %232 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %232) #6
  %233 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 12
  %234 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %233) #6
  %235 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 11
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, %235
  br i1 %237, label %259, label %238

238:                                              ; preds = %253, %231
  %239 = phi ptr [ %240, %253 ], [ %236, %231 ]
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr inbounds %struct.counter_event_node, ptr %239, i32 0, i32 3
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, %241
  br i1 %243, label %253, label %244

244:                                              ; preds = %244, %238
  %245 = phi ptr [ %246, %244 ], [ %242, %238 ]
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr inbounds %struct.list_head, ptr %245, i32 0, i32 1
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr inbounds %struct.list_head, ptr %246, i32 0, i32 1
  store ptr %248, ptr %249, align 4
  store volatile ptr %246, ptr %248, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %245, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %247, align 4
  tail call void @kfree(ptr noundef %245) #6
  %250 = icmp eq ptr %246, %241
  br i1 %250, label %251, label %244

251:                                              ; preds = %244
  %252 = load ptr, ptr %239, align 4
  br label %253

253:                                              ; preds = %251, %238
  %254 = phi ptr [ %252, %251 ], [ %240, %238 ]
  %255 = getelementptr inbounds %struct.list_head, ptr %239, i32 0, i32 1
  %256 = load ptr, ptr %255, align 4
  %257 = getelementptr inbounds %struct.list_head, ptr %254, i32 0, i32 1
  store ptr %256, ptr %257, align 4
  store volatile ptr %254, ptr %256, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %239, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %255, align 4
  tail call void @kfree(ptr noundef %239) #6
  %258 = icmp eq ptr %240, %235
  br i1 %258, label %259, label %238

259:                                              ; preds = %253, %231
  %260 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 13
  %261 = load ptr, ptr %260, align 4
  store ptr %261, ptr %235, align 4
  %262 = getelementptr inbounds %struct.list_head, ptr %261, i32 0, i32 1
  store ptr %235, ptr %262, align 4
  %263 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 13, i32 1
  %264 = load ptr, ptr %263, align 4
  %265 = getelementptr inbounds %struct.counter_device, ptr %6, i32 0, i32 11, i32 1
  store ptr %264, ptr %265, align 4
  store ptr %235, ptr %264, align 4
  store volatile ptr %260, ptr %260, align 4
  store ptr %260, ptr %263, align 4
  %266 = load ptr, ptr %8, align 8
  %267 = getelementptr inbounds %struct.counter_ops, ptr %266, i32 0, i32 7
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %272, label %270

270:                                              ; preds = %259
  %271 = tail call i32 %268(ptr noundef %6) #6
  br label %272

272:                                              ; preds = %270, %259
  %273 = phi i32 [ %271, %270 ], [ 0, %259 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %233, i32 noundef %234) #6
  tail call void @mutex_unlock(ptr noundef %232) #6
  br label %276

274:                                              ; preds = %11
  %275 = tail call fastcc i32 @counter_disable_events(ptr noundef %6)
  br label %276

276:                                              ; preds = %274, %272, %229, %11, %3
  %277 = phi i32 [ %275, %274 ], [ %273, %272 ], [ %230, %229 ], [ -19, %3 ], [ -515, %11 ]
  call void @mutex_unlock(ptr noundef %7) #6
  ret i32 %277
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @counter_chrdev_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -512
  %6 = getelementptr i8, ptr %4, i32 -472
  %7 = tail call ptr @get_device(ptr noundef %6) #6
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %5, ptr %8, align 8
  %9 = tail call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #6
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @counter_chrdev_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.counter_device, ptr %4, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.counter_device, ptr %4, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %59

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.counter_device, ptr %4, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %34, label %13

13:                                               ; preds = %28, %9
  %14 = phi ptr [ %15, %28 ], [ %11, %9 ]
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.counter_event_node, ptr %14, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %28, label %19

19:                                               ; preds = %19, %13
  %20 = phi ptr [ %21, %19 ], [ %17, %13 ]
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %21, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void @kfree(ptr noundef %20) #6
  %25 = icmp eq ptr %21, %16
  br i1 %25, label %26, label %19

26:                                               ; preds = %19
  %27 = load ptr, ptr %14, align 4
  br label %28

28:                                               ; preds = %26, %13
  %29 = phi ptr [ %27, %26 ], [ %15, %13 ]
  %30 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %29, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  tail call void @kfree(ptr noundef %14) #6
  %33 = icmp eq ptr %15, %10
  br i1 %33, label %34, label %13

34:                                               ; preds = %28, %9
  %35 = getelementptr inbounds %struct.counter_device, ptr %4, i32 0, i32 13
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %63, label %38

38:                                               ; preds = %53, %34
  %39 = phi ptr [ %40, %53 ], [ %36, %34 ]
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.counter_event_node, ptr %39, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %53, label %44

44:                                               ; preds = %44, %38
  %45 = phi ptr [ %46, %44 ], [ %42, %38 ]
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %48, ptr %49, align 4
  store volatile ptr %46, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %45, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  tail call void @kfree(ptr noundef %45) #6
  %50 = icmp eq ptr %46, %41
  br i1 %50, label %51, label %44

51:                                               ; preds = %44
  %52 = load ptr, ptr %39, align 4
  br label %53

53:                                               ; preds = %51, %38
  %54 = phi ptr [ %52, %51 ], [ %40, %38 ]
  %55 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %56, ptr %57, align 4
  store volatile ptr %54, ptr %56, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %39, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %55, align 4
  tail call void @kfree(ptr noundef %39) #6
  %58 = icmp eq ptr %40, %35
  br i1 %58, label %63, label %38

59:                                               ; preds = %2
  %60 = tail call fastcc i32 @counter_disable_events(ptr noundef %4)
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  tail call void @mutex_unlock(ptr noundef %5) #6
  br label %66

63:                                               ; preds = %59, %53, %34
  %64 = phi i32 [ %60, %59 ], [ -19, %34 ], [ -19, %53 ]
  tail call void @mutex_unlock(ptr noundef %5) #6
  %65 = getelementptr inbounds %struct.counter_device, ptr %4, i32 0, i32 9
  tail call void @put_device(ptr noundef %65) #6
  br label %66

66:                                               ; preds = %63, %62
  %67 = phi i32 [ %60, %62 ], [ %64, %63 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_to_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @counter_disable_events(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 12
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #6
  %4 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %28, label %7

7:                                                ; preds = %22, %1
  %8 = phi ptr [ %9, %22 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.counter_event_node, ptr %8, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %22, label %13

13:                                               ; preds = %13, %7
  %14 = phi ptr [ %15, %13 ], [ %11, %7 ]
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %15, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void @kfree(ptr noundef %14) #6
  %19 = icmp eq ptr %15, %10
  br i1 %19, label %20, label %13

20:                                               ; preds = %13
  %21 = load ptr, ptr %8, align 4
  br label %22

22:                                               ; preds = %20, %7
  %23 = phi ptr [ %21, %20 ], [ %9, %7 ]
  %24 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  store volatile ptr %23, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  tail call void @kfree(ptr noundef %8) #6
  %27 = icmp eq ptr %9, %4
  br i1 %27, label %28, label %7

28:                                               ; preds = %22, %1
  %29 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.counter_ops, ptr %30, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = tail call i32 %32(ptr noundef %0) #6
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi i32 [ %35, %34 ], [ 0, %28 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #6
  %38 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %38) #6
  %39 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 13
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %63, label %42

42:                                               ; preds = %57, %36
  %43 = phi ptr [ %44, %57 ], [ %40, %36 ]
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.counter_event_node, ptr %43, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %57, label %48

48:                                               ; preds = %48, %42
  %49 = phi ptr [ %50, %48 ], [ %46, %42 ]
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %52, ptr %53, align 4
  store volatile ptr %50, ptr %52, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %49, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %51, align 4
  tail call void @kfree(ptr noundef %49) #6
  %54 = icmp eq ptr %50, %45
  br i1 %54, label %55, label %48

55:                                               ; preds = %48
  %56 = load ptr, ptr %43, align 4
  br label %57

57:                                               ; preds = %55, %42
  %58 = phi ptr [ %56, %55 ], [ %44, %42 ]
  %59 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %60, ptr %61, align 4
  store volatile ptr %58, ptr %60, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %43, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %59, align 4
  tail call void @kfree(ptr noundef %43) #6
  %62 = icmp eq ptr %44, %39
  br i1 %62, label %63, label %42

63:                                               ; preds = %57, %36
  tail call void @mutex_unlock(ptr noundef %38) #6
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{!"auto-init"}
!9 = !{i64 2148995051}
!10 = !{i64 2148990875}
!11 = !{i64 2148990950, i64 2148990977, i64 2148991024, i64 2148991046, i64 2148991074, i64 2148991094}
!12 = !{i64 2149018054}
!13 = !{i64 2152025801, i64 2152025826}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 4521913}
!16 = !{i64 4522110}
!17 = !{i64 2152007389}
!18 = !{i64 300040, i64 300057, i64 2147784127}
