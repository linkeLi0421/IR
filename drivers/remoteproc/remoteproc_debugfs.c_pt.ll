; ModuleID = '/llk/IR/drivers/remoteproc/remoteproc_debugfs.c_pt.bc'
source_filename = "../drivers/remoteproc/remoteproc_debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.rproc_debug_trace = type { ptr, ptr, %struct.list_head, %struct.rproc_mem_entry }
%struct.rproc_mem_entry = type { ptr, i8, i32, i32, i32, ptr, [32 x i8], %struct.list_head, i32, i32, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.57, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.58, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.59, ptr, %struct.address_space, %struct.list_head, %union.anon.60, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.57 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.58 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.59 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.60 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.resource_table = type { i32, i32, [2 x i32], [0 x i32] }
%struct.fw_rsc_carveout = type { i32, i32, i32, i32, i32, [32 x i8] }
%struct.fw_rsc_devmem = type { i32, i32, i32, i32, i32, [32 x i8] }
%struct.fw_rsc_trace = type { i32, i32, i32, [32 x i8] }
%struct.fw_rsc_vdev = type { i32, i32, i32, i32, i32, i8, i8, [2 x i8], [0 x %struct.fw_rsc_vdev_vring] }
%struct.fw_rsc_vdev_vring = type { i32, i32, i32, i32, i32 }

@trace_rproc_ops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rproc_trace_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to create debugfs trace entry\0A\00", align 1
@rproc_dbg = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@rproc_name_ops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rproc_name_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"recovery\00", align 1
@rproc_recovery_ops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rproc_recovery_read, ptr @rproc_recovery_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"crash\00", align 1
@rproc_crash_ops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @rproc_crash_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"resource_table\00", align 1
@rproc_rsc_table_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rproc_rsc_table_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"carveout_memories\00", align 1
@rproc_carveouts_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rproc_carveouts_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"coredump\00", align 1
@rproc_coredump_fops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rproc_coredump_read, ptr @rproc_coredump_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"remoteproc\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"\013%s: can't create debugfs dir\0A\00", align 1
@__func__.rproc_init_debugfs = private unnamed_addr constant [19 x i8] c"rproc_init_debugfs\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Trace %s not available\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%.98s\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"enabled\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"recover\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"carveout\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"devmem\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"vdev\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"No resource table found\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Entry %d is of type %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"  Device Address 0x%x\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"  Physical Address 0x%x\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"  Length 0x%x Bytes\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"  Flags 0x%x\0A\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"  Reserved (should be zero) [%d]\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"  Name %s\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"  ID %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"  Notify ID %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"  Device features 0x%x\0A\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"  Guest features 0x%x\0A\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"  Config length 0x%x\0A\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"  Status 0x%x\0A\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"  Number of vrings %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"  Reserved (should be zero) [%d][%d]\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"  Vring %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"    Device Address 0x%x\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"    Alignment %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"    Number of buffers %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"    Notify ID %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"    Physical Address 0x%x\0A\0A\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"Unknown resource type found: %d [hdr: %pK]\0A\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"Carveout memory entry:\0A\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"\09Name: %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"\09Virtual address: %pK\0A\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"\09DMA address: %pad\0A\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"\09Device address: 0x%x\0A\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"\09Length: 0x%zx Bytes\0A\0A\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@rproc_coredump_str = internal unnamed_addr constant [3 x ptr] [ptr @.str.14, ptr @.str.13, ptr @.str.52], align 4
@.str.52 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"can't change coredump configuration\0A\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"Invalid coredump configuration\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @rproc_exit_debugfs], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rproc_remove_trace_file(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @debugfs_remove(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rproc_create_trace_file(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @debugfs_create_file(ptr noundef %0, i16 noundef zeroext 256, ptr noundef %5, ptr noundef %2, ptr noundef nonnull @trace_rproc_ops) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str) #9
  br label %10

10:                                               ; preds = %8, %3
  ret ptr %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rproc_delete_debug_dir(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  tail call void @debugfs_remove(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rproc_create_debug_dir(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @rproc_dbg, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %13 = tail call ptr @debugfs_create_dir(ptr noundef %12, ptr noundef nonnull %2) #8
  %14 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 11
  store ptr %13, ptr %14, align 8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 256, ptr noundef nonnull %13, ptr noundef %0, ptr noundef nonnull @rproc_name_ops) #8
  %18 = load ptr, ptr %14, align 8
  %19 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 384, ptr noundef %18, ptr noundef %0, ptr noundef nonnull @rproc_recovery_ops) #8
  %20 = load ptr, ptr %14, align 8
  %21 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 128, ptr noundef %20, ptr noundef %0, ptr noundef nonnull @rproc_crash_ops) #8
  %22 = load ptr, ptr %14, align 8
  %23 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef %22, ptr noundef %0, ptr noundef nonnull @rproc_rsc_table_fops) #8
  %24 = load ptr, ptr %14, align 8
  %25 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %24, ptr noundef %0, ptr noundef nonnull @rproc_carveouts_fops) #8
  %26 = load ptr, ptr %14, align 8
  %27 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 384, ptr noundef %26, ptr noundef %0, ptr noundef nonnull @rproc_coredump_fops) #8
  br label %28

28:                                               ; preds = %16, %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @rproc_init_debugfs() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call zeroext i1 @debugfs_initialized() #8
  br i1 %1, label %2, label %7

2:                                                ; preds = %0
  %3 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.7, ptr noundef null) #8
  store ptr %3, ptr @rproc_dbg, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.rproc_init_debugfs) #9
  br label %7

7:                                                ; preds = %5, %2, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @rproc_exit_debugfs() #4 section ".exit.text" {
  %1 = load ptr, ptr @rproc_dbg, align 4
  tail call void @debugfs_remove(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_trace_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [100 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %5, i8 0, i32 100, i1 false), !annotation !8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rproc_debug_trace, ptr %7, i32 0, i32 3, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.rproc_debug_trace, ptr %7, i32 0, i32 3, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = tail call ptr @rproc_da_to_va(ptr noundef %8, i64 noundef %11, i32 noundef %13, ptr noundef null) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.rproc_debug_trace, ptr %7, i32 0, i32 3, i32 6
  %18 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %5, i32 noundef 100, ptr noundef nonnull @.str.9, ptr noundef %17) #8
  br label %22

19:                                               ; preds = %4
  %20 = load i32, ptr %12, align 4
  %21 = tail call i32 @strnlen(ptr noundef nonnull %14, i32 noundef %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi ptr [ %14, %19 ], [ %5, %16 ]
  %24 = phi i32 [ %21, %19 ], [ %18, %16 ]
  %25 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %23, i32 noundef %24) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %5) #8
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_da_to_va(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_name_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [100 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %5, i8 0, i32 100, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.rproc, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %5, i32 noundef 100, ptr noundef nonnull @.str.10, ptr noundef %9) #8
  %11 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %10) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %5) #8
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_recovery_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rproc, ptr %6, i32 0, i32 23
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @.str.12, ptr @.str.11
  %11 = select i1 %9, i32 8, i32 9
  %12 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %10, i32 noundef %11) #8
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_recovery_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [10 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %5, i8 0, i32 10, i1 false), !annotation !8
  %8 = add i32 %2, -11
  %9 = icmp ult i32 %8, -10
  br i1 %9, label %48, label %10

10:                                               ; preds = %4
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #10, !srcloc !10
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22, !prof !11

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #8
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #11, !srcloc !12
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  %20 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #8, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !11

22:                                               ; preds = %14, %10
  %23 = phi i32 [ %20, %14 ], [ %2, %10 ]
  %24 = sub i32 %2, %23
  %25 = getelementptr i8, ptr %5, i32 %24
  call void @llvm.memset.p0.i32(ptr align 1 %25, i8 0, i32 %23, i1 false) #8
  br label %48

26:                                               ; preds = %14
  %27 = add nsw i32 %2, -1
  %28 = getelementptr [10 x i8], ptr %5, i32 0, i32 %27
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 10
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i8 0, ptr %28, align 1
  br label %32

32:                                               ; preds = %31, %26
  %33 = call i32 @strncmp(ptr noundef nonnull %5, ptr noundef nonnull @.str.13, i32 noundef %2)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.rproc, ptr %7, i32 0, i32 23
  store i8 0, ptr %36, align 4
  %37 = call i32 @rproc_trigger_recovery(ptr noundef %7) #8
  br label %48

38:                                               ; preds = %32
  %39 = call i32 @strncmp(ptr noundef nonnull %5, ptr noundef nonnull @.str.14, i32 noundef %2)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.rproc, ptr %7, i32 0, i32 23
  store i8 1, ptr %42, align 4
  br label %48

43:                                               ; preds = %38
  %44 = call i32 @strncmp(ptr noundef nonnull %5, ptr noundef nonnull @.str.15, i32 noundef %2)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @rproc_trigger_recovery(ptr noundef %7) #8
  br label %48

48:                                               ; preds = %46, %43, %41, %35, %22, %4
  %49 = phi i32 [ -22, %4 ], [ -22, %43 ], [ %2, %41 ], [ %2, %46 ], [ %2, %35 ], [ -14, %22 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #8
  ret i32 %49
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_trigger_recovery(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_crash_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @kstrtouint_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %5) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  call void @rproc_report_crash(ptr noundef %7, i32 noundef %11) #8
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %2, %10 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_report_crash(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_rsc_table_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @rproc_rsc_table_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_rsc_table_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.resource_table, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %96, label %13

12:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.22) #8
  br label %96

13:                                               ; preds = %92, %8
  %14 = phi i32 [ %93, %92 ], [ 0, %8 ]
  %15 = getelementptr %struct.resource_table, ptr %6, i32 0, i32 3, i32 %14
  %16 = load i32, ptr %15, align 1
  %17 = getelementptr i8, ptr %6, i32 %16
  %18 = getelementptr i8, ptr %17, i32 4
  %19 = load i32, ptr %17, align 1
  switch i32 %19, label %91 [
    i32 0, label %20
    i32 1, label %31
    i32 2, label %42
    i32 3, label %49
  ]

20:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %14, ptr noundef nonnull @.str.18) #8
  %21 = load i32, ptr %18, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %21) #8
  %22 = getelementptr inbounds %struct.fw_rsc_carveout, ptr %18, i32 0, i32 1
  %23 = load i32, ptr %22, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %23) #8
  %24 = getelementptr inbounds %struct.fw_rsc_carveout, ptr %18, i32 0, i32 2
  %25 = load i32, ptr %24, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %25) #8
  %26 = getelementptr inbounds %struct.fw_rsc_carveout, ptr %18, i32 0, i32 3
  %27 = load i32, ptr %26, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %27) #8
  %28 = getelementptr inbounds %struct.fw_rsc_carveout, ptr %18, i32 0, i32 4
  %29 = load i32, ptr %28, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %29) #8
  %30 = getelementptr inbounds %struct.fw_rsc_carveout, ptr %18, i32 0, i32 5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %30) #8
  br label %92

31:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %14, ptr noundef nonnull @.str.19) #8
  %32 = load i32, ptr %18, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %32) #8
  %33 = getelementptr inbounds %struct.fw_rsc_devmem, ptr %18, i32 0, i32 1
  %34 = load i32, ptr %33, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %34) #8
  %35 = getelementptr inbounds %struct.fw_rsc_devmem, ptr %18, i32 0, i32 2
  %36 = load i32, ptr %35, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %36) #8
  %37 = getelementptr inbounds %struct.fw_rsc_devmem, ptr %18, i32 0, i32 3
  %38 = load i32, ptr %37, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %38) #8
  %39 = getelementptr inbounds %struct.fw_rsc_devmem, ptr %18, i32 0, i32 4
  %40 = load i32, ptr %39, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %40) #8
  %41 = getelementptr inbounds %struct.fw_rsc_devmem, ptr %18, i32 0, i32 5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %41) #8
  br label %92

42:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %14, ptr noundef nonnull @.str.20) #8
  %43 = load i32, ptr %18, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %43) #8
  %44 = getelementptr inbounds %struct.fw_rsc_trace, ptr %18, i32 0, i32 1
  %45 = load i32, ptr %44, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %45) #8
  %46 = getelementptr inbounds %struct.fw_rsc_trace, ptr %18, i32 0, i32 2
  %47 = load i32, ptr %46, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %47) #8
  %48 = getelementptr inbounds %struct.fw_rsc_trace, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %48) #8
  br label %92

49:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %14, ptr noundef nonnull @.str.21) #8
  %50 = load i32, ptr %18, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %50) #8
  %51 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %18, i32 0, i32 1
  %52 = load i32, ptr %51, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %52) #8
  %53 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %18, i32 0, i32 2
  %54 = load i32, ptr %53, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %54) #8
  %55 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %18, i32 0, i32 3
  %56 = load i32, ptr %55, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %56) #8
  %57 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %18, i32 0, i32 4
  %58 = load i32, ptr %57, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %58) #8
  %59 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %18, i32 0, i32 5
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %61) #8
  %62 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %18, i32 0, i32 6
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %64) #8
  %65 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %18, i32 0, i32 7
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr [2 x i8], ptr %65, i32 0, i32 1
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %67, i32 noundef %70) #8
  %71 = load i8, ptr %62, align 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %49
  %74 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %18, i32 0, i32 8
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i32 [ 0, %73 ], [ %87, %75 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %76) #8
  %77 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %74, i32 0, i32 %76
  %78 = load i32, ptr %77, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %78) #8
  %79 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %74, i32 0, i32 %76, i32 1
  %80 = load i32, ptr %79, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %80) #8
  %81 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %74, i32 0, i32 %76, i32 2
  %82 = load i32, ptr %81, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %82) #8
  %83 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %74, i32 0, i32 %76, i32 3
  %84 = load i32, ptr %83, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %84) #8
  %85 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %74, i32 0, i32 %76, i32 4
  %86 = load i32, ptr %85, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %86) #8
  %87 = add nuw nsw i32 %76, 1
  %88 = load i8, ptr %62, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ult i32 %87, %89
  br i1 %90, label %75, label %92

91:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %19, ptr noundef %17) #8
  br label %92

92:                                               ; preds = %91, %75, %49, %42, %31, %20
  %93 = add nuw i32 %14, 1
  %94 = load i32, ptr %9, align 1
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %13, label %96

96:                                               ; preds = %92, %12, %8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_carveouts_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @rproc_carveouts_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_carveouts_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %20, label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %18, %8 ], [ %6, %2 ]
  %10 = getelementptr i8, ptr %9, i32 -56
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.45) #8
  %11 = getelementptr i8, ptr %9, i32 -32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef %11) #8
  %12 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef %12) #8
  %13 = getelementptr i8, ptr %9, i32 -48
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.48, ptr noundef %13) #8
  %14 = getelementptr i8, ptr %9, i32 -40
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %15) #8
  %16 = getelementptr i8, ptr %9, i32 -44
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, i32 noundef %17) #8
  %18 = load ptr, ptr %9, align 4
  %19 = icmp eq ptr %18, %5
  br i1 %19, label %20, label %8

20:                                               ; preds = %8, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_coredump_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [20 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.rproc, ptr %7, i32 0, i32 9
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr [3 x ptr], ptr @rproc_coredump_str, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %5, i32 noundef 20, ptr noundef nonnull @.str.51, ptr noundef %11) #8
  %13 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %12) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #8
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_coredump_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [20 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  %8 = icmp ugt i32 %2, 20
  br i1 %8, label %55, label %9

9:                                                ; preds = %4
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #10, !srcloc !10
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20, !prof !11

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #11, !srcloc !12
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #8, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  br label %20

20:                                               ; preds = %13, %9
  %21 = phi i32 [ %19, %13 ], [ %2, %9 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !11

23:                                               ; preds = %20
  %24 = sub i32 %2, %21
  %25 = getelementptr i8, ptr %5, i32 %24
  call void @llvm.memset.p0.i32(ptr align 1 %25, i8 0, i32 %21, i1 false) #8
  br label %55

26:                                               ; preds = %20
  %27 = add nsw i32 %2, -1
  %28 = getelementptr [20 x i8], ptr %5, i32 0, i32 %27
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 10
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i8 0, ptr %28, align 1
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr inbounds %struct.rproc, ptr %7, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.rproc, ptr %7, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.53) #9
  br label %55

38:                                               ; preds = %32
  %39 = call i32 @strncmp(ptr noundef nonnull %5, ptr noundef nonnull @.str.14, i32 noundef %2)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.rproc, ptr %7, i32 0, i32 9
  store i32 0, ptr %42, align 8
  br label %55

43:                                               ; preds = %38
  %44 = call i32 @strncmp(ptr noundef nonnull %5, ptr noundef nonnull @.str.13, i32 noundef %2)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rproc, ptr %7, i32 0, i32 9
  store i32 1, ptr %47, align 8
  br label %55

48:                                               ; preds = %43
  %49 = call i32 @strncmp(ptr noundef nonnull %5, ptr noundef nonnull @.str.52, i32 noundef %2)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.rproc, ptr %7, i32 0, i32 9
  store i32 2, ptr %52, align 8
  br label %55

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.rproc, ptr %7, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.54) #9
  br label %55

55:                                               ; preds = %53, %51, %46, %41, %36, %23, %4
  %56 = phi i32 [ -22, %4 ], [ %2, %41 ], [ %2, %51 ], [ -22, %53 ], [ %2, %46 ], [ -16, %36 ], [ -14, %23 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #8
  ret i32 %56
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2150983870, i64 2150983895}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 3479982}
!13 = !{i64 3480179}
!14 = !{i64 2150965458}
