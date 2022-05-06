; ModuleID = '/llk/IR/drivers/scsi/scsi_proc.c_pt.bc'
source_filename = "../drivers/scsi/scsi_proc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.file = type { %union.anon.8, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }

@global_host_template_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @global_host_template_mutex, i64 12), ptr getelementptr (i8, ptr @global_host_template_mutex, i64 12) } }, align 4
@proc_scsi = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [32 x i8] c"\013%s: proc_mkdir failed for %s\0A\00", align 1
@__func__.scsi_proc_hostdir_add = private unnamed_addr constant [22 x i8] c"scsi_proc_hostdir_add\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@proc_scsi_ops = internal constant %struct.proc_ops { i32 0, ptr @proc_scsi_host_open, ptr @seq_read, ptr null, ptr @proc_scsi_host_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"\013%s: Failed to register host %d in%s\0A\00", align 1
@__func__.scsi_proc_host_add = private unnamed_addr constant [19 x i8] c"scsi_proc_host_add\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"scsi\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"scsi/scsi\00", align 1
@scsi_scsi_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @proc_scsi_open, ptr @seq_read, ptr null, ptr @proc_scsi_write, ptr @seq_lseek, ptr @seq_release, ptr null, ptr null, ptr null, ptr null }, align 4
@scsi_seq_ops = internal constant %struct.seq_operations { ptr @scsi_seq_start, ptr @scsi_seq_stop, ptr @scsi_seq_next, ptr @scsi_seq_show }, align 4
@scsi_bus_type = external dso_local global %struct.bus_type, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"Attached devices:\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Host: scsi%d Channel: %02d Id: %02d Lun: %02llu\0A  Vendor: \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c" Model: \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" Rev: \00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"  Type:   %s \00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"               ANSI  SCSI revision: %02x\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c" CCS\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"scsi add-single-device\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"scsi remove-single-device\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_proc_hostdir_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @global_host_template_mutex) #10
  %6 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 43
  %7 = load i8, ptr %6, align 2
  %8 = add i8 %7, 1
  store i8 %8, ptr %6, align 2
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 32
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr @proc_scsi, align 4
  %14 = tail call ptr @proc_mkdir(ptr noundef %12, ptr noundef %13) #10
  %15 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 33
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr %11, align 8
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.scsi_proc_hostdir_add, ptr noundef %18) #11
  br label %20

20:                                               ; preds = %17, %10, %5
  tail call void @mutex_unlock(ptr noundef nonnull @global_host_template_mutex) #10
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_proc_hostdir_rm(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @global_host_template_mutex) #10
  %6 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 43
  %7 = load i8, ptr %6, align 2
  %8 = add i8 %7, -1
  store i8 %8, ptr %6, align 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 33
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 32
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr @proc_scsi, align 4
  tail call void @remove_proc_entry(ptr noundef %16, ptr noundef %17) #10
  store ptr null, ptr %11, align 4
  br label %18

18:                                               ; preds = %14, %10, %5
  tail call void @mutex_unlock(ptr noundef nonnull @global_host_template_mutex) #10
  br label %19

19:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_proc_host_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [10 x i8], align 1
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %2, i8 0, i32 10, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.scsi_host_template, ptr %4, i32 0, i32 33
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, i32 noundef %10)
  %12 = load ptr, ptr %5, align 4
  %13 = call ptr @proc_create_data(ptr noundef nonnull %2, i16 noundef zeroext 420, ptr noundef %12, ptr noundef nonnull @proc_scsi_ops, ptr noundef %0) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load i32, ptr %9, align 4
  %17 = getelementptr inbounds %struct.scsi_host_template, ptr %4, i32 0, i32 32
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.scsi_proc_host_add, i32 noundef %16, ptr noundef %18) #11
  br label %20

20:                                               ; preds = %15, %8, %1
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_proc_host_rm(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %2, i8 0, i32 10, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.scsi_host_template, ptr %4, i32 0, i32 33
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, i32 noundef %10)
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.scsi_host_template, ptr %12, i32 0, i32 33
  %14 = load ptr, ptr %13, align 4
  call void @remove_proc_entry(ptr noundef nonnull %2, ptr noundef %14) #10
  br label %15

15:                                               ; preds = %8, %1
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @scsi_init_procfs() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.3, ptr noundef null) #10
  store ptr %1, ptr @proc_scsi, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @proc_create(ptr noundef nonnull @.str.4, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @scsi_scsi_proc_ops) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef null) #10
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ 0, %3 ], [ -12, %0 ], [ -12, %6 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_exit_procfs() local_unnamed_addr #0 {
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.4, ptr noundef null) #10
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef null) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_scsi_host_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open_size(ptr noundef %1, ptr noundef nonnull @proc_scsi_show, ptr noundef %4, i32 noundef 16384) #10
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_scsi_host_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ugt i32 %2, 3072
  br i1 %9, label %44, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 11
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.scsi_host_template, ptr %12, i32 0, i32 28
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %10
  %17 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %18 = inttoptr i32 %17 to ptr
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %16
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #12, !srcloc !9
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31, !prof !10

24:                                               ; preds = %20
  %25 = tail call ptr @llvm.thread.pointer() #10
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #13, !srcloc !11
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #10, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %30 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %18, ptr noundef %1, i32 noundef %2) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #10, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  br label %31

31:                                               ; preds = %24, %20
  %32 = phi i32 [ %30, %24 ], [ %2, %20 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34, !prof !10

34:                                               ; preds = %31
  %35 = sub i32 %2, %32
  %36 = getelementptr i8, ptr %18, i32 %35
  tail call void @llvm.memset.p0.i32(ptr align 1 %36, i8 0, i32 %32, i1 false) #10
  br label %42

37:                                               ; preds = %31
  %38 = load ptr, ptr %11, align 8
  %39 = getelementptr inbounds %struct.scsi_host_template, ptr %38, i32 0, i32 28
  %40 = load ptr, ptr %39, align 8
  %41 = tail call i32 %40(ptr noundef %8, ptr noundef nonnull %18, i32 noundef %2) #10
  br label %42

42:                                               ; preds = %37, %34, %16
  %43 = phi i32 [ %41, %37 ], [ -12, %16 ], [ -14, %34 ]
  tail call void @free_pages(i32 noundef %17, i32 noundef 0) #10
  br label %44

44:                                               ; preds = %42, %10, %4
  %45 = phi i32 [ %43, %42 ], [ -75, %4 ], [ -22, %10 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open_size(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_scsi_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.scsi_host_template, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0, ptr noundef %4) #10
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_scsi_open(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @scsi_seq_ops) #10
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_scsi_write(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = icmp eq ptr %1, null
  %7 = icmp ugt i32 %2, 4096
  %8 = or i1 %6, %7
  br i1 %8, label %91, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %11 = inttoptr i32 %10 to ptr
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %91, label %13

13:                                               ; preds = %9
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 %2, i32 -1090519040) #12, !srcloc !9
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24, !prof !10

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #10
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #13, !srcloc !11
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #10, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %23 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %11, ptr noundef nonnull %1, i32 noundef %2) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #10, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  br label %24

24:                                               ; preds = %17, %13
  %25 = phi i32 [ %23, %17 ], [ %2, %13 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27, !prof !10

27:                                               ; preds = %24
  %28 = sub i32 %2, %25
  %29 = getelementptr i8, ptr %11, i32 %28
  tail call void @llvm.memset.p0.i32(ptr align 1 %29, i8 0, i32 %25, i1 false) #10
  br label %89

30:                                               ; preds = %24
  %31 = icmp ult i32 %2, 4096
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = getelementptr i8, ptr %11, i32 %2
  store i8 0, ptr %33, align 1
  br label %38

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %11, i32 4095
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %89

38:                                               ; preds = %34, %32
  %39 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(23) @.str.14, ptr noundef nonnull %11, i32 noundef 22)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %11, i32 23
  store ptr %42, ptr %5, align 4
  %43 = call i32 @simple_strtoul(ptr noundef %42, ptr noundef nonnull %5, i32 noundef 0) #10
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr i8, ptr %44, i32 1
  %46 = call i32 @simple_strtoul(ptr noundef %45, ptr noundef nonnull %5, i32 noundef 0) #10
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr i8, ptr %47, i32 1
  %49 = call i32 @simple_strtoul(ptr noundef %48, ptr noundef nonnull %5, i32 noundef 0) #10
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr i8, ptr %50, i32 1
  %52 = call i32 @simple_strtoul(ptr noundef %51, ptr noundef nonnull %5, i32 noundef 0) #10
  %53 = trunc i32 %43 to i16
  %54 = call ptr @scsi_host_lookup(i16 noundef zeroext %53) #10
  %55 = icmp eq ptr %54, null
  br i1 %55, label %89, label %56

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.Scsi_Host, ptr %54, i32 0, i32 12
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.scsi_transport_template, ptr %58, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  %62 = zext i32 %52 to i64
  br i1 %61, label %65, label %63

63:                                               ; preds = %56
  %64 = call i32 %60(ptr noundef nonnull %54, i32 noundef %46, i32 noundef %49, i64 noundef %62) #10
  br label %67

65:                                               ; preds = %56
  %66 = call i32 @scsi_scan_host_selected(ptr noundef nonnull %54, i32 noundef %46, i32 noundef %49, i64 noundef %62, i32 noundef 2) #10
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  call void @scsi_host_put(ptr noundef nonnull %54) #10
  br label %85

69:                                               ; preds = %38
  %70 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(26) @.str.15, ptr noundef nonnull %11, i32 noundef 25)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = getelementptr i8, ptr %11, i32 26
  store ptr %73, ptr %5, align 4
  %74 = call i32 @simple_strtoul(ptr noundef %73, ptr noundef nonnull %5, i32 noundef 0) #10
  %75 = load ptr, ptr %5, align 4
  %76 = getelementptr i8, ptr %75, i32 1
  %77 = call i32 @simple_strtoul(ptr noundef %76, ptr noundef nonnull %5, i32 noundef 0) #10
  %78 = load ptr, ptr %5, align 4
  %79 = getelementptr i8, ptr %78, i32 1
  %80 = call i32 @simple_strtoul(ptr noundef %79, ptr noundef nonnull %5, i32 noundef 0) #10
  %81 = load ptr, ptr %5, align 4
  %82 = getelementptr i8, ptr %81, i32 1
  %83 = call i32 @simple_strtoul(ptr noundef %82, ptr noundef nonnull %5, i32 noundef 0) #10
  %84 = call fastcc i32 @scsi_remove_single_device(i32 noundef %74, i32 noundef %77, i32 noundef %80, i32 noundef %83)
  br label %85

85:                                               ; preds = %72, %67
  %86 = phi i32 [ %84, %72 ], [ %68, %67 ]
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 %2, i32 %86
  br label %89

89:                                               ; preds = %85, %69, %41, %34, %27
  %90 = phi i32 [ -22, %34 ], [ -14, %27 ], [ -6, %41 ], [ -22, %69 ], [ %88, %85 ]
  call void @free_pages(i32 noundef %10, i32 noundef 0) #10
  br label %91

91:                                               ; preds = %89, %9, %4
  %92 = phi i32 [ %90, %89 ], [ -22, %4 ], [ -12, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @scsi_seq_start(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %1, align 8
  %4 = tail call ptr @bus_find_device(ptr noundef nonnull @scsi_bus_type, ptr noundef null, ptr noundef null, ptr noundef nonnull @device_match_any) #10
  tail call void @put_device(ptr noundef null) #10
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i64 %3, 0
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi ptr [ %4, %8 ], [ %16, %10 ]
  %12 = phi i64 [ %3, %8 ], [ %13, %10 ]
  %13 = add i64 %12, -1
  %14 = load ptr, ptr %9, align 8
  %15 = getelementptr i8, ptr %14, i32 1
  store ptr %15, ptr %9, align 8
  %16 = tail call ptr @bus_find_device(ptr noundef nonnull @scsi_bus_type, ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull @device_match_any) #10
  tail call void @put_device(ptr noundef nonnull %11) #10
  %17 = icmp eq ptr %16, null
  %18 = icmp eq i64 %13, 0
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %20, label %10

20:                                               ; preds = %10, %2
  %21 = phi ptr [ %4, %2 ], [ %16, %10 ]
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scsi_seq_stop(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @put_device(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @scsi_seq_next(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 1
  store ptr %8, ptr %6, align 8
  %9 = tail call ptr @bus_find_device(ptr noundef nonnull @scsi_bus_type, ptr noundef %1, ptr noundef null, ptr noundef nonnull @device_match_any) #10
  tail call void @put_device(ptr noundef %1) #10
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.7) #10
  br label %7

7:                                                ; preds = %6, %2
  %8 = tail call i32 @scsi_is_sdev_device(ptr noundef %1) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %147, label %10

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %1, i32 -264
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %1, i32 -172
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %1, i32 -176
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr i8, ptr %1, i32 -168
  %20 = load i64, ptr %19, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %14, i32 noundef %16, i32 noundef %18, i64 noundef %20) #10
  %21 = getelementptr i8, ptr %1, i32 -116
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 1
  %24 = tail call i8 @llvm.umax.i8(i8 %23, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %24) #10
  %25 = load ptr, ptr %21, align 4
  %26 = getelementptr i8, ptr %25, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = tail call i8 @llvm.umax.i8(i8 %27, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %28) #10
  %29 = load ptr, ptr %21, align 4
  %30 = getelementptr i8, ptr %29, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = tail call i8 @llvm.umax.i8(i8 %31, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %32) #10
  %33 = load ptr, ptr %21, align 4
  %34 = getelementptr i8, ptr %33, i32 3
  %35 = load i8, ptr %34, align 1
  %36 = tail call i8 @llvm.umax.i8(i8 %35, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %36) #10
  %37 = load ptr, ptr %21, align 4
  %38 = getelementptr i8, ptr %37, i32 4
  %39 = load i8, ptr %38, align 1
  %40 = tail call i8 @llvm.umax.i8(i8 %39, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %40) #10
  %41 = load ptr, ptr %21, align 4
  %42 = getelementptr i8, ptr %41, i32 5
  %43 = load i8, ptr %42, align 1
  %44 = tail call i8 @llvm.umax.i8(i8 %43, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %44) #10
  %45 = load ptr, ptr %21, align 4
  %46 = getelementptr i8, ptr %45, i32 6
  %47 = load i8, ptr %46, align 1
  %48 = tail call i8 @llvm.umax.i8(i8 %47, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %48) #10
  %49 = load ptr, ptr %21, align 4
  %50 = getelementptr i8, ptr %49, i32 7
  %51 = load i8, ptr %50, align 1
  %52 = tail call i8 @llvm.umax.i8(i8 %51, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %52) #10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.9) #10
  %53 = getelementptr i8, ptr %1, i32 -112
  %54 = load ptr, ptr %53, align 8
  %55 = load i8, ptr %54, align 1
  %56 = tail call i8 @llvm.umax.i8(i8 %55, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %56) #10
  %57 = load ptr, ptr %53, align 8
  %58 = getelementptr i8, ptr %57, i32 1
  %59 = load i8, ptr %58, align 1
  %60 = tail call i8 @llvm.umax.i8(i8 %59, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %60) #10
  %61 = load ptr, ptr %53, align 8
  %62 = getelementptr i8, ptr %61, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = tail call i8 @llvm.umax.i8(i8 %63, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %64) #10
  %65 = load ptr, ptr %53, align 8
  %66 = getelementptr i8, ptr %65, i32 3
  %67 = load i8, ptr %66, align 1
  %68 = tail call i8 @llvm.umax.i8(i8 %67, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %68) #10
  %69 = load ptr, ptr %53, align 8
  %70 = getelementptr i8, ptr %69, i32 4
  %71 = load i8, ptr %70, align 1
  %72 = tail call i8 @llvm.umax.i8(i8 %71, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %72) #10
  %73 = load ptr, ptr %53, align 8
  %74 = getelementptr i8, ptr %73, i32 5
  %75 = load i8, ptr %74, align 1
  %76 = tail call i8 @llvm.umax.i8(i8 %75, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %76) #10
  %77 = load ptr, ptr %53, align 8
  %78 = getelementptr i8, ptr %77, i32 6
  %79 = load i8, ptr %78, align 1
  %80 = tail call i8 @llvm.umax.i8(i8 %79, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %80) #10
  %81 = load ptr, ptr %53, align 8
  %82 = getelementptr i8, ptr %81, i32 7
  %83 = load i8, ptr %82, align 1
  %84 = tail call i8 @llvm.umax.i8(i8 %83, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %84) #10
  %85 = load ptr, ptr %53, align 8
  %86 = getelementptr i8, ptr %85, i32 8
  %87 = load i8, ptr %86, align 1
  %88 = tail call i8 @llvm.umax.i8(i8 %87, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %88) #10
  %89 = load ptr, ptr %53, align 8
  %90 = getelementptr i8, ptr %89, i32 9
  %91 = load i8, ptr %90, align 1
  %92 = tail call i8 @llvm.umax.i8(i8 %91, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %92) #10
  %93 = load ptr, ptr %53, align 8
  %94 = getelementptr i8, ptr %93, i32 10
  %95 = load i8, ptr %94, align 1
  %96 = tail call i8 @llvm.umax.i8(i8 %95, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %96) #10
  %97 = load ptr, ptr %53, align 8
  %98 = getelementptr i8, ptr %97, i32 11
  %99 = load i8, ptr %98, align 1
  %100 = tail call i8 @llvm.umax.i8(i8 %99, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %100) #10
  %101 = load ptr, ptr %53, align 8
  %102 = getelementptr i8, ptr %101, i32 12
  %103 = load i8, ptr %102, align 1
  %104 = tail call i8 @llvm.umax.i8(i8 %103, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %104) #10
  %105 = load ptr, ptr %53, align 8
  %106 = getelementptr i8, ptr %105, i32 13
  %107 = load i8, ptr %106, align 1
  %108 = tail call i8 @llvm.umax.i8(i8 %107, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %108) #10
  %109 = load ptr, ptr %53, align 8
  %110 = getelementptr i8, ptr %109, i32 14
  %111 = load i8, ptr %110, align 1
  %112 = tail call i8 @llvm.umax.i8(i8 %111, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %112) #10
  %113 = load ptr, ptr %53, align 8
  %114 = getelementptr i8, ptr %113, i32 15
  %115 = load i8, ptr %114, align 1
  %116 = tail call i8 @llvm.umax.i8(i8 %115, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %116) #10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.10) #10
  %117 = getelementptr i8, ptr %1, i32 -108
  %118 = load ptr, ptr %117, align 4
  %119 = load i8, ptr %118, align 1
  %120 = tail call i8 @llvm.umax.i8(i8 %119, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %120) #10
  %121 = load ptr, ptr %117, align 4
  %122 = getelementptr i8, ptr %121, i32 1
  %123 = load i8, ptr %122, align 1
  %124 = tail call i8 @llvm.umax.i8(i8 %123, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %124) #10
  %125 = load ptr, ptr %117, align 4
  %126 = getelementptr i8, ptr %125, i32 2
  %127 = load i8, ptr %126, align 1
  %128 = tail call i8 @llvm.umax.i8(i8 %127, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %128) #10
  %129 = load ptr, ptr %117, align 4
  %130 = getelementptr i8, ptr %129, i32 3
  %131 = load i8, ptr %130, align 1
  %132 = tail call i8 @llvm.umax.i8(i8 %131, i8 32) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %132) #10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #10
  %133 = getelementptr i8, ptr %1, i32 -148
  %134 = load i8, ptr %133, align 4
  %135 = zext i8 %134 to i32
  %136 = tail call ptr @scsi_device_type(i32 noundef %135) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef %136) #10
  %137 = getelementptr i8, ptr %1, i32 -147
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp ugt i8 %138, 1
  %141 = sext i1 %140 to i32
  %142 = add nsw i32 %141, %139
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %142) #10
  %143 = load i8, ptr %137, align 1
  %144 = icmp eq i8 %143, 2
  br i1 %144, label %145, label %146

145:                                              ; preds = %10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.13) #10
  br label %147

146:                                              ; preds = %10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #10
  br label %147

147:                                              ; preds = %146, %145, %7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_any(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_sdev_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scsi_remove_single_device(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = trunc i32 %0 to i16
  %6 = tail call ptr @scsi_host_lookup(i16 noundef zeroext %5) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = zext i32 %3 to i64
  %10 = tail call ptr @scsi_device_lookup(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2, i64 noundef %9) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @scsi_remove_device(ptr noundef nonnull %10) #10
  tail call void @scsi_device_put(ptr noundef nonnull %10) #10
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i32 [ 0, %12 ], [ -6, %8 ]
  tail call void @scsi_host_put(ptr noundef nonnull %6) #10
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi i32 [ %14, %13 ], [ -6, %4 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_lookup(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_scan_host_selected(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_lookup(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly }

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
!9 = !{i64 2151753063, i64 2151753088}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 4245114}
!12 = !{i64 4245311}
!13 = !{i64 2151730590}
