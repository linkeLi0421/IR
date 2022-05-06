; ModuleID = '/llk/IR/drivers/bluetooth/btmrvl_debugfs.c_pt.bc'
source_filename = "../drivers/bluetooth/btmrvl_debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.0, i32, %struct.spinlock }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.btmrvl_private = type { %struct.btmrvl_device, ptr, %struct.btmrvl_thread, ptr, ptr, ptr, %struct.spinlock, ptr, i8 }
%struct.btmrvl_device = type { ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i8, i8 }
%struct.btmrvl_thread = type { ptr, %struct.wait_queue_head, ptr }
%struct.btmrvl_debugfs_data = type { ptr, ptr }
%struct.btmrvl_adapter = type { ptr, ptr, i32, %struct.sk_buff_head, i8, i8, i8, i8, %struct.wait_queue_head, %struct.wait_queue_head, i8, i8, i8 }
%struct.file = type { %union.anon.24, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.24 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [50 x i8] c"Can not allocate memory for btmrvl_debugfs_data.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"psmode\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"pscmd\00", align 1
@btmrvl_pscmd_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @btmrvl_pscmd_read, ptr @btmrvl_pscmd_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"gpiogap\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"hsmode\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"hscmd\00", align 1
@btmrvl_hscmd_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @btmrvl_hscmd_read, ptr @btmrvl_hscmd_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"hscfgcmd\00", align 1
@btmrvl_hscfgcmd_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @btmrvl_hscfgcmd_read, ptr @btmrvl_hscfgcmd_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"curpsmode\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"psstate\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"hsstate\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"txdnldready\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @btmrvl_debugfs_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 203
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 8) #6
  %10 = getelementptr inbounds %struct.btmrvl_private, ptr %3, i32 0, i32 7
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str) #7
  br label %41

13:                                               ; preds = %7
  %14 = load ptr, ptr %4, align 8
  %15 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef %14) #7
  store ptr %15, ptr %9, align 8
  %16 = getelementptr inbounds %struct.btmrvl_device, ptr %3, i32 0, i32 4
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.2, i16 noundef zeroext 420, ptr noundef %15, ptr noundef %16) #7
  %17 = load ptr, ptr %9, align 8
  %18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 420, ptr noundef %17, ptr noundef %3, ptr noundef nonnull @btmrvl_pscmd_fops) #7
  %19 = load ptr, ptr %9, align 8
  %20 = getelementptr inbounds %struct.btmrvl_device, ptr %3, i32 0, i32 8
  tail call void @debugfs_create_x16(ptr noundef nonnull @.str.4, i16 noundef zeroext 420, ptr noundef %19, ptr noundef %20) #7
  %21 = load ptr, ptr %9, align 8
  %22 = getelementptr inbounds %struct.btmrvl_device, ptr %3, i32 0, i32 6
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.5, i16 noundef zeroext 420, ptr noundef %21, ptr noundef %22) #7
  %23 = load ptr, ptr %9, align 8
  %24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 420, ptr noundef %23, ptr noundef %3, ptr noundef nonnull @btmrvl_hscmd_fops) #7
  %25 = load ptr, ptr %9, align 8
  %26 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 420, ptr noundef %25, ptr noundef %3, ptr noundef nonnull @btmrvl_hscfgcmd_fops) #7
  %27 = load ptr, ptr %4, align 8
  %28 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.8, ptr noundef %27) #7
  %29 = getelementptr inbounds %struct.btmrvl_debugfs_data, ptr %9, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.btmrvl_private, ptr %3, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.btmrvl_adapter, ptr %31, i32 0, i32 4
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.9, i16 noundef zeroext 292, ptr noundef %28, ptr noundef %32) #7
  %33 = load ptr, ptr %29, align 4
  %34 = load ptr, ptr %30, align 4
  %35 = getelementptr inbounds %struct.btmrvl_adapter, ptr %34, i32 0, i32 5
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.10, i16 noundef zeroext 292, ptr noundef %33, ptr noundef %35) #7
  %36 = load ptr, ptr %29, align 4
  %37 = load ptr, ptr %30, align 4
  %38 = getelementptr inbounds %struct.btmrvl_adapter, ptr %37, i32 0, i32 6
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.11, i16 noundef zeroext 292, ptr noundef %36, ptr noundef %38) #7
  %39 = load ptr, ptr %29, align 4
  %40 = getelementptr inbounds %struct.btmrvl_device, ptr %3, i32 0, i32 3
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.12, i16 noundef zeroext 292, ptr noundef %39, ptr noundef %40) #7
  br label %41

41:                                               ; preds = %13, %12, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x16(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @btmrvl_debugfs_remove(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.btmrvl_private, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 4
  tail call void @debugfs_remove(ptr noundef %8) #7
  %9 = getelementptr inbounds %struct.btmrvl_debugfs_data, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @debugfs_remove(ptr noundef %10) #7
  tail call void @kfree(ptr noundef nonnull %5) #7
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_pscmd_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [16 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.btmrvl_device, ptr %7, i32 0, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 15, ptr noundef nonnull @.str.13, i32 noundef %10)
  %12 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %11) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_pscmd_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @kstrtol_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 10, ptr noundef nonnull %5) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds %struct.btmrvl_device, ptr %7, i32 0, i32 5
  store i8 %12, ptr %13, align 1
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = call i32 @btmrvl_prepare_command(ptr noundef %7) #7
  %17 = getelementptr inbounds %struct.btmrvl_private, ptr %7, i32 0, i32 2, i32 1
  call void @__wake_up(ptr noundef %17, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %18

18:                                               ; preds = %15, %10, %4
  %19 = phi i32 [ %8, %4 ], [ %2, %15 ], [ %2, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtol_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmrvl_prepare_command(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_hscmd_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [16 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.btmrvl_device, ptr %7, i32 0, i32 7
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 15, ptr noundef nonnull @.str.13, i32 noundef %10)
  %12 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %11) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_hscmd_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @kstrtol_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 10, ptr noundef nonnull %5) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds %struct.btmrvl_device, ptr %7, i32 0, i32 7
  store i8 %12, ptr %13, align 1
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = call i32 @btmrvl_prepare_command(ptr noundef %7) #7
  %17 = getelementptr inbounds %struct.btmrvl_private, ptr %7, i32 0, i32 2, i32 1
  call void @__wake_up(ptr noundef %17, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %18

18:                                               ; preds = %15, %10, %4
  %19 = phi i32 [ %8, %4 ], [ %2, %15 ], [ %2, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_hscfgcmd_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [16 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.btmrvl_device, ptr %7, i32 0, i32 9
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 15, ptr noundef nonnull @.str.13, i32 noundef %10)
  %12 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %11) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_hscfgcmd_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @kstrtol_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 10, ptr noundef nonnull %5) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds %struct.btmrvl_device, ptr %7, i32 0, i32 9
  store i8 %12, ptr %13, align 4
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = call i32 @btmrvl_prepare_command(ptr noundef %7) #7
  %17 = getelementptr inbounds %struct.btmrvl_private, ptr %7, i32 0, i32 2, i32 1
  call void @__wake_up(ptr noundef %17, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %18

18:                                               ; preds = %15, %10, %4
  %19 = phi i32 [ %8, %4 ], [ %2, %15 ], [ %2, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %19
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }

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
