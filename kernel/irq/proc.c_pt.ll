; ModuleID = '/llk/IR/kernel/irq/proc.c_pt.bc'
source_filename = "../kernel/irq/proc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [12 x i8] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.20, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.21, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.22, ptr, %struct.address_space, %struct.list_head, %union.anon.25, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.20 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.21 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.22 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.25 = type { ptr }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@register_irq_proc.register_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @register_irq_proc.register_lock, i64 12), ptr getelementptr (i8, ptr @register_irq_proc.register_lock, i64 12) } }, align 4
@root_irq_dir = internal unnamed_addr global ptr null, align 4
@no_irq_chip = external dso_local global %struct.irq_chip, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"smp_affinity\00", align 1
@irq_affinity_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @irq_affinity_proc_open, ptr @seq_read, ptr null, ptr @irq_affinity_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"affinity_hint\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"smp_affinity_list\00", align 1
@irq_affinity_list_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @irq_affinity_list_proc_open, ptr @seq_read, ptr null, ptr @irq_affinity_list_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"effective_affinity\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"effective_affinity_list\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"spurious\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@show_interrupts.prec = internal unnamed_addr global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"CPU%-8d\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"%*d: \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%10u \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" %8s\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" %*lu\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c" %*s\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c" %-8s\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Level\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"Edge\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"-%-8s\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@no_irq_affinity = dso_local local_unnamed_addr global i32 0, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"%*pbl\0A\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"count %u\0Aunhandled %u\0Alast_unhandled %u ms\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"irq/default_smp_affinity\00", align 1
@default_affinity_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @default_affinity_open, ptr @seq_read, ptr null, ptr @default_affinity_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, align 4
@irq_default_affinity = external dso_local global [1 x %struct.cpumask], align 4
@chained_action = external dso_local global %struct.irqaction, align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @register_handler_proc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !8
  %4 = tail call ptr @irq_to_desc(i32 noundef %0) #7
  %5 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 12
  %10 = load ptr, ptr %9, align 16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @irq_to_desc(i32 noundef %0) #7
  %18 = getelementptr inbounds %struct.irq_desc, ptr %17, i32 0, i32 15
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #7
  %20 = getelementptr inbounds %struct.irq_desc, ptr %17, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %34, %16
  %24 = phi ptr [ %36, %34 ], [ %21, %16 ]
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.irqaction, ptr %24, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %13, align 4
  %32 = tail call i32 @strcmp(ptr noundef %31, ptr noundef nonnull %28) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30, %26, %23
  %35 = getelementptr inbounds %struct.irqaction, ptr %24, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %23

38:                                               ; preds = %30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #7
  br label %44

39:                                               ; preds = %34, %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #7
  %40 = load ptr, ptr %13, align 4
  %41 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %40)
  %42 = load ptr, ptr %5, align 4
  %43 = call ptr @proc_mkdir(ptr noundef nonnull %3, ptr noundef %42) #7
  store ptr %43, ptr %9, align 16
  br label %44

44:                                               ; preds = %39, %38, %12, %8, %2
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @register_irq_proc(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [10 x i8], align 1
  %4 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %3, i8 0, i32 10, i1 false), !annotation !8
  %5 = load ptr, ptr @root_irq_dir, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 1, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, @no_irq_chip
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  tail call void @mutex_lock(ptr noundef nonnull @register_irq_proc.register_lock) #7
  %12 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i32 noundef %0)
  %17 = load ptr, ptr @root_irq_dir, align 4
  %18 = call ptr @proc_mkdir(ptr noundef nonnull %3, ptr noundef %17) #7
  store ptr %18, ptr %12, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = call ptr @proc_create_data(ptr noundef nonnull @.str.2, i16 noundef zeroext 420, ptr noundef nonnull %18, ptr noundef nonnull @irq_affinity_proc_ops, ptr noundef %4) #7
  %22 = load ptr, ptr %12, align 4
  %23 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %22, ptr noundef nonnull @irq_affinity_hint_proc_show, ptr noundef %4) #7
  %24 = load ptr, ptr %12, align 4
  %25 = call ptr @proc_create_data(ptr noundef nonnull @.str.4, i16 noundef zeroext 420, ptr noundef %24, ptr noundef nonnull @irq_affinity_list_proc_ops, ptr noundef %4) #7
  %26 = load ptr, ptr %12, align 4
  %27 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %26, ptr noundef nonnull @irq_node_proc_show, ptr noundef %4) #7
  %28 = load ptr, ptr %12, align 4
  %29 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %28, ptr noundef nonnull @irq_effective_aff_proc_show, ptr noundef %4) #7
  %30 = load ptr, ptr %12, align 4
  %31 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %30, ptr noundef nonnull @irq_effective_aff_list_proc_show, ptr noundef %4) #7
  %32 = load ptr, ptr %12, align 4
  %33 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef %32, ptr noundef nonnull @irq_spurious_proc_show, ptr noundef %4) #7
  br label %34

34:                                               ; preds = %20, %15, %11
  call void @mutex_unlock(ptr noundef nonnull @register_irq_proc.register_lock) #7
  br label %35

35:                                               ; preds = %34, %7, %2
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_affinity_hint_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca [1 x %struct.cpumask], align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call ptr @irq_to_desc(i32 noundef %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4
  %8 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 15
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 18
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, ptr %11, align 4
  store i32 %14, ptr %3, align 4
  br label %15

15:                                               ; preds = %13, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %16, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_node_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call ptr @irq_to_desc(i32 noundef %5) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_effective_aff_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call ptr @irq_to_desc(i32 noundef %5) #7
  %7 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_common_data, ptr %8, i32 0, i32 4
  %10 = load i32, ptr @nr_cpu_ids, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %10, ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_effective_aff_list_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call ptr @irq_to_desc(i32 noundef %5) #7
  %7 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_common_data, ptr %8, i32 0, i32 4
  %10 = load i32, ptr @nr_cpu_ids, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %10, ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_spurious_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call ptr @irq_to_desc(i32 noundef %5) #7
  %7 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 10
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 12
  %10 = load i32, ptr %9, align 32
  %11 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @jiffies_to_msecs(i32 noundef %12) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %8, i32 noundef %10, i32 noundef %13) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_irq_proc(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %3, i8 0, i32 10, i1 false), !annotation !8
  %4 = load ptr, ptr @root_irq_dir, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #7
  %11 = load ptr, ptr %7, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef %11) #7
  %12 = load ptr, ptr %7, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.4, ptr noundef %12) #7
  %13 = load ptr, ptr %7, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.5, ptr noundef %13) #7
  %14 = load ptr, ptr %7, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.6, ptr noundef %14) #7
  %15 = load ptr, ptr %7, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.7, ptr noundef %15) #7
  %16 = load ptr, ptr %7, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.8, ptr noundef %16) #7
  %17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.9, i32 noundef %0)
  %18 = load ptr, ptr @root_irq_dir, align 4
  call void @remove_proc_entry(ptr noundef nonnull %3, ptr noundef %18) #7
  br label %19

19:                                               ; preds = %10, %6, %2
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_handler_proc(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 12
  %4 = load ptr, ptr %3, align 16
  tail call void @proc_remove(ptr noundef %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @init_irq_proc() local_unnamed_addr #0 {
  %1 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.10, ptr noundef null) #7
  store ptr %1, ptr @root_irq_dir, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @proc_create(ptr noundef nonnull @.str.31, i16 noundef zeroext 420, ptr noundef null, ptr noundef nonnull @default_affinity_proc_ops) #7
  %5 = tail call ptr @irq_to_desc(i32 noundef 0) #7
  %6 = load i32, ptr @nr_irqs, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %13, %3
  %9 = phi ptr [ %15, %13 ], [ %5, %3 ]
  %10 = phi i32 [ %14, %13 ], [ 0, %3 ]
  %11 = icmp eq ptr %9, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @register_irq_proc(i32 noundef %10, ptr noundef nonnull %9)
  br label %13

13:                                               ; preds = %12, %8
  %14 = add nuw i32 %10, 1
  %15 = tail call ptr @irq_to_desc(i32 noundef %14) #7
  %16 = load i32, ptr @nr_irqs, align 4
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %8, label %18

18:                                               ; preds = %13, %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @arch_show_interrupts(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @show_interrupts(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = load i32, ptr @nr_irqs, align 4
  %6 = icmp slt i32 %5, %4
  br i1 %6, label %170, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %5, %4
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load i32, ptr @show_interrupts.prec, align 4
  %11 = tail call i32 @arch_show_interrupts(ptr noundef %0, i32 noundef %10)
  br label %170

12:                                               ; preds = %7
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %12
  %15 = icmp sgt i32 %5, 999
  br i1 %15, label %16, label %29

16:                                               ; preds = %14
  %17 = icmp sgt i32 %5, 9999
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = icmp sgt i32 %5, 99999
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  %21 = icmp sgt i32 %5, 999999
  br i1 %21, label %22, label %29

22:                                               ; preds = %20
  %23 = icmp sgt i32 %5, 9999999
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = icmp sgt i32 %5, 99999999
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = icmp sgt i32 %5, 999999999
  %28 = select i1 %27, i32 10, i32 9
  br label %29

29:                                               ; preds = %26, %24, %22, %20, %18, %16, %14
  %30 = phi i32 [ 3, %14 ], [ 4, %16 ], [ 5, %18 ], [ 6, %20 ], [ 7, %22 ], [ 8, %24 ], [ %28, %26 ]
  store i32 %30, ptr @show_interrupts.prec, align 4
  %31 = add nuw nsw i32 %30, 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %31, ptr noundef nonnull @.str.12) #7
  %32 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #8
  %33 = load i32, ptr @nr_cpu_ids, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %35, %29
  %36 = phi i32 [ %37, %35 ], [ %32, %29 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %36) #7
  %37 = tail call i32 @cpumask_next(i32 noundef %36, ptr noundef nonnull @__cpu_online_mask) #8
  %38 = load i32, ptr @nr_cpu_ids, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %35, label %40

40:                                               ; preds = %35, %29
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #7
  br label %41

41:                                               ; preds = %40, %12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  %42 = tail call ptr @irq_to_desc(i32 noundef %4) #7
  %43 = icmp eq ptr %42, null
  br i1 %43, label %169, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.irq_desc, ptr %42, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 1048576
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %169

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.irq_desc, ptr %42, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %78, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr @nr_cpu_ids, align 4
  %55 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #8
  %56 = icmp ult i32 %55, %54
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = ptrtoint ptr %51 to i32
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i32 [ %55, %57 ], [ %68, %59 ]
  %61 = phi i32 [ 0, %57 ], [ %67, %59 ]
  %62 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, %58
  %65 = inttoptr i32 %64 to ptr
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %66, %61
  %68 = tail call i32 @cpumask_next(i32 noundef %60, ptr noundef nonnull @__cpu_online_mask) #8
  %69 = icmp ult i32 %68, %54
  br i1 %69, label %59, label %70

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.irq_desc, ptr %42, i32 0, i32 4
  %72 = load ptr, ptr %71, align 64
  %73 = icmp eq ptr %72, null
  br i1 %73, label %89, label %82

74:                                               ; preds = %53
  %75 = getelementptr inbounds %struct.irq_desc, ptr %42, i32 0, i32 4
  %76 = load ptr, ptr %75, align 64
  %77 = icmp eq ptr %76, null
  br i1 %77, label %169, label %82

78:                                               ; preds = %49
  %79 = getelementptr inbounds %struct.irq_desc, ptr %42, i32 0, i32 4
  %80 = load ptr, ptr %79, align 64
  %81 = icmp eq ptr %80, null
  br i1 %81, label %169, label %82

82:                                               ; preds = %78, %74, %70
  %83 = phi ptr [ %80, %78 ], [ %72, %70 ], [ %76, %74 ]
  %84 = phi ptr [ %79, %78 ], [ %71, %70 ], [ %75, %74 ]
  %85 = phi i32 [ 0, %78 ], [ %67, %70 ], [ 0, %74 ]
  %86 = icmp ne ptr %83, @chained_action
  %87 = icmp ne i32 %85, 0
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %91, label %169

89:                                               ; preds = %70
  %90 = icmp eq i32 %67, 0
  br i1 %90, label %169, label %91

91:                                               ; preds = %89, %82
  %92 = phi ptr [ %71, %89 ], [ %84, %82 ]
  %93 = load i32, ptr @show_interrupts.prec, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %93, i32 noundef %4) #7
  %94 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #8
  %95 = load i32, ptr @nr_cpu_ids, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %108, %91
  %98 = phi i32 [ %110, %108 ], [ %94, %91 ]
  %99 = load ptr, ptr %50, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %97
  %102 = ptrtoint ptr %99 to i32
  %103 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %98
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %104, %102
  %106 = inttoptr i32 %105 to ptr
  %107 = load i32, ptr %106, align 4
  br label %108

108:                                              ; preds = %101, %97
  %109 = phi i32 [ %107, %101 ], [ 0, %97 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %109) #7
  %110 = tail call i32 @cpumask_next(i32 noundef %98, ptr noundef nonnull @__cpu_online_mask) #8
  %111 = load i32, ptr @nr_cpu_ids, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %97, label %113

113:                                              ; preds = %108, %91
  %114 = getelementptr inbounds %struct.irq_desc, ptr %42, i32 0, i32 15
  %115 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %114) #7
  %116 = getelementptr inbounds %struct.irq_desc, ptr %42, i32 0, i32 1
  %117 = getelementptr inbounds %struct.irq_desc, ptr %42, i32 0, i32 1, i32 4
  %118 = load ptr, ptr %117, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %131, label %120

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.irq_chip, ptr %118, i32 0, i32 21
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  tail call void %122(ptr noundef %116, ptr noundef %0) #7
  br label %132

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.irq_chip, ptr %118, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %127) #7
  br label %132

130:                                              ; preds = %125
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #7
  br label %132

131:                                              ; preds = %113
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18) #7
  br label %132

132:                                              ; preds = %131, %130, %129, %124
  %133 = getelementptr inbounds %struct.irq_desc, ptr %42, i32 0, i32 1, i32 5
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  %136 = load i32, ptr @show_interrupts.prec, align 4
  br i1 %135, label %140, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.irq_desc, ptr %42, i32 0, i32 1, i32 2
  %139 = load i32, ptr %138, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %136, i32 noundef %139) #7
  br label %141

140:                                              ; preds = %132
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %136, ptr noundef nonnull @.str.12) #7
  br label %141

141:                                              ; preds = %140, %137
  %142 = getelementptr inbounds %struct.irq_desc, ptr %42, i32 0, i32 1, i32 3
  %143 = load ptr, ptr %142, align 4
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, 8192
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull %147) #7
  %148 = getelementptr inbounds %struct.irq_desc, ptr %42, i32 0, i32 33
  %149 = load ptr, ptr %148, align 16
  %150 = icmp eq ptr %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %141
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %149) #7
  br label %152

152:                                              ; preds = %151, %141
  %153 = load ptr, ptr %92, align 64
  %154 = icmp eq ptr %153, null
  br i1 %154, label %168, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.irqaction, ptr %153, i32 0, i32 11
  %157 = load ptr, ptr %156, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %157) #7
  %158 = getelementptr inbounds %struct.irqaction, ptr %153, i32 0, i32 3
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %168, label %161

161:                                              ; preds = %161, %155
  %162 = phi ptr [ %166, %161 ], [ %159, %155 ]
  %163 = getelementptr inbounds %struct.irqaction, ptr %162, i32 0, i32 11
  %164 = load ptr, ptr %163, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef %164) #7
  %165 = getelementptr inbounds %struct.irqaction, ptr %162, i32 0, i32 3
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %161

168:                                              ; preds = %161, %155, %152
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %114, i32 noundef %115) #7
  br label %169

169:                                              ; preds = %168, %89, %82, %78, %74, %44, %41
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  br label %170

170:                                              ; preds = %169, %9, %2
  %171 = phi i32 [ %11, %9 ], [ 0, %169 ], [ 0, %2 ]
  ret i32 %171
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_affinity_proc_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @irq_affinity_proc_show, ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_affinity_proc_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [1 x %struct.cpumask], align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %11 = tail call zeroext i1 @irq_can_set_affinity_usr(i32 noundef %10) #7
  %12 = xor i1 %11, true
  %13 = load i32, ptr @no_irq_affinity, align 4
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %29, label %16

16:                                               ; preds = %4
  store i32 0, ptr %5, align 4
  %17 = call i32 @bitmap_parse_user(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5, i32 noundef 16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i32, ptr %5, align 4
  %21 = load i32, ptr @__cpu_online_mask, align 4
  %22 = and i32 %20, 65535
  %23 = and i32 %22, %21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = call i32 @irq_set_affinity(i32 noundef %10, ptr noundef nonnull %5) #7
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 %2, i32 %26
  br label %29

29:                                               ; preds = %25, %19, %16, %4
  %30 = phi i32 [ -5, %4 ], [ %17, %16 ], [ %28, %25 ], [ -22, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_affinity_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call ptr @irq_to_desc(i32 noundef %5) #7
  %7 = getelementptr inbounds %struct.irq_common_data, ptr %6, i32 0, i32 3
  %8 = load i32, ptr @nr_cpu_ids, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %8, ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_can_set_affinity_usr(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parselist_user(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse_user(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_affinity_list_proc_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @irq_affinity_list_proc_show, ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_affinity_list_proc_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [1 x %struct.cpumask], align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %11 = tail call zeroext i1 @irq_can_set_affinity_usr(i32 noundef %10) #7
  %12 = xor i1 %11, true
  %13 = load i32, ptr @no_irq_affinity, align 4
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %29, label %16

16:                                               ; preds = %4
  store i32 0, ptr %5, align 4
  %17 = call i32 @bitmap_parselist_user(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5, i32 noundef 16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i32, ptr %5, align 4
  %21 = load i32, ptr @__cpu_online_mask, align 4
  %22 = and i32 %20, 65535
  %23 = and i32 %22, %21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = call i32 @irq_set_affinity(i32 noundef %10, ptr noundef nonnull %5) #7
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 %2, i32 %26
  br label %29

29:                                               ; preds = %25, %19, %16, %4
  %30 = phi i32 [ -5, %4 ], [ %17, %16 ], [ %28, %25 ], [ -22, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_affinity_list_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call ptr @irq_to_desc(i32 noundef %5) #7
  %7 = getelementptr inbounds %struct.irq_common_data, ptr %6, i32 0, i32 3
  %8 = load i32, ptr @nr_cpu_ids, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %8, ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @default_affinity_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @default_affinity_show, ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @default_affinity_write(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [1 x %struct.cpumask], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4
  %6 = call i32 @bitmap_parse_user(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5, i32 noundef 16) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = load i32, ptr @__cpu_online_mask, align 4
  %11 = and i32 %9, 65535
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  store i32 %9, ptr @irq_default_affinity, align 4
  br label %15

15:                                               ; preds = %14, %8, %4
  %16 = phi i32 [ %6, %4 ], [ %2, %14 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @default_affinity_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load i32, ptr @nr_cpu_ids, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %3, ptr noundef nonnull @irq_default_affinity) #7
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

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
!9 = !{i64 2149346441}
!10 = !{i64 2149346658}
