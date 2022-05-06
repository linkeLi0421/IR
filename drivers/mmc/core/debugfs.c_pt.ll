; ModuleID = '/llk/IR/drivers/mmc/core/debugfs.c_pt.bc'
source_filename = "../drivers/mmc/core/debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"ios\00", align 1
@mmc_ios_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mmc_ios_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"caps\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"caps2\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@mmc_clock_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mmc_clock_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@mmc_ios_show.vdd_str = internal unnamed_addr constant [25 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"2.1\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"2.2\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"2.4\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"2.5\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"2.6\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"2.7\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"2.8\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"2.9\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"3.0\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"3.1\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"3.2\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"3.3\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"3.4\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"3.5\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"3.6\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"clock:\09\09%u Hz\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"actual clock:\09%u Hz\0A\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"vdd:\09\09%u \00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"(1.65 - 1.95 V)\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"(%s ~ %s V)\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"(invalid)\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"open drain\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"push-pull\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"bus mode:\09%u (%s)\0A\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"don't care\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"active high\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"active low\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"chip select:\09%u (%s)\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"power mode:\09%u (%s)\0A\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"bus width:\09%u (%u bits)\0A\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"mmc high-speed\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"sd high-speed\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"sd uhs SDR12\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"sd uhs SDR25\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"sd uhs SDR50\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"sd uhs SDR104\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"sd uhs DDR50\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"mmc DDR52\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"mmc HS200\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"mmc HS400 enhanced strobe\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"mmc HS400\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"timing spec:\09%u (%s)\0A\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"3.30 V\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"1.80 V\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"1.20 V\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"signal voltage:\09%u (%s)\0A\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"driver type A\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"driver type B\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"driver type C\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"driver type D\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"driver type:\09%u (%s)\0A\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@switch.table.mmc_ios_show = private unnamed_addr constant [3 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34], align 4
@switch.table.mmc_ios_show.64 = private unnamed_addr constant [3 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38], align 4
@switch.table.mmc_ios_show.65 = private unnamed_addr constant [3 x ptr] [ptr @.str.54, ptr @.str.55, ptr @.str.56], align 4
@switch.table.mmc_ios_show.66 = private unnamed_addr constant [4 x ptr] [ptr @.str.59, ptr @.str.58, ptr @.str.60, ptr @.str.61], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_add_host_debugfs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %10 = tail call ptr @debugfs_create_dir(ptr noundef %9, ptr noundef null) #3
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 55
  store ptr %10, ptr %11, align 4
  %12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 256, ptr noundef %10, ptr noundef %0, ptr noundef nonnull @mmc_ios_fops) #3
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.1, i16 noundef zeroext 256, ptr noundef %10, ptr noundef %13) #3
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef %10, ptr noundef %14) #3
  %15 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.3, i16 noundef zeroext 384, ptr noundef %10, ptr noundef %0, ptr noundef nonnull @mmc_clock_fops) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_remove_host_debugfs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 55
  %3 = load ptr, ptr %2, align 4
  tail call void @debugfs_remove(ptr noundef %3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_add_card_debugfs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 55
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ %8, %6 ]
  %15 = tail call ptr @debugfs_create_dir(ptr noundef %14, ptr noundef nonnull %4) #3
  %16 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 41
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 5
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef %15, ptr noundef %17) #3
  br label %18

18:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_remove_card_debugfs(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 41
  %3 = load ptr, ptr %2, align 4
  tail call void @debugfs_remove(ptr noundef %3) #3
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_ios_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @mmc_ios_show, ptr noundef %4) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_ios_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28
  %6 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %6) #3
  %7 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 57
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %8) #3
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %14) #3
  %15 = load i16, ptr %12, align 4
  %16 = zext i16 %15 to i32
  %17 = icmp eq i16 %15, 7
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25) #3
  br label %29

19:                                               ; preds = %11
  %20 = add i16 %15, -24
  %21 = icmp ult i16 %20, -16
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = getelementptr [25 x ptr], ptr @mmc_ios_show.vdd_str, i32 0, i32 %16
  %24 = load ptr, ptr %23, align 4
  %25 = add nuw nsw i32 %16, 1
  %26 = getelementptr [25 x ptr], ptr @mmc_ios_show.vdd_str, i32 0, i32 %25
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef %24, ptr noundef %27) #3
  br label %29

28:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27) #3
  br label %29

29:                                               ; preds = %28, %22, %18
  %30 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 3
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, 2
  %33 = select i1 %32, ptr @.str.29, ptr @.str.30
  %34 = icmp eq i8 %31, 1
  %35 = select i1 %34, ptr @.str.28, ptr %33
  %36 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %36, ptr noundef nonnull %35) #3
  %37 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 4
  %38 = load i8, ptr %37, align 1
  %39 = icmp ult i8 %38, 3
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = sext i8 %38 to i32
  %42 = getelementptr inbounds [3 x ptr], ptr @switch.table.mmc_ios_show, i32 0, i32 %41
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %40, %29
  %45 = phi ptr [ %43, %40 ], [ @.str.30, %29 ]
  %46 = zext i8 %38 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %46, ptr noundef nonnull %45) #3
  %47 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 5
  %48 = load i8, ptr %47, align 2
  %49 = icmp ult i8 %48, 3
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = sext i8 %48 to i32
  %52 = getelementptr inbounds [3 x ptr], ptr @switch.table.mmc_ios_show.64, i32 0, i32 %51
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %50, %44
  %55 = phi ptr [ %53, %50 ], [ @.str.30, %44 ]
  %56 = zext i8 %48 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %56, ptr noundef nonnull %55) #3
  %57 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 6
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl nuw i32 1, %59
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %59, i32 noundef %60) #3
  %61 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 7
  %62 = load i8, ptr %61, align 4
  switch i8 %62, label %80 [
    i8 0, label %81
    i8 1, label %63
    i8 2, label %64
    i8 3, label %65
    i8 4, label %66
    i8 5, label %67
    i8 6, label %68
    i8 7, label %69
    i8 8, label %70
    i8 9, label %71
    i8 10, label %72
  ]

63:                                               ; preds = %54
  br label %81

64:                                               ; preds = %54
  br label %81

65:                                               ; preds = %54
  br label %81

66:                                               ; preds = %54
  br label %81

67:                                               ; preds = %54
  br label %81

68:                                               ; preds = %54
  br label %81

69:                                               ; preds = %54
  br label %81

70:                                               ; preds = %54
  br label %81

71:                                               ; preds = %54
  br label %81

72:                                               ; preds = %54
  %73 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 37
  %74 = load ptr, ptr %73, align 8
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.mmc_host, ptr %75, i32 0, i32 28, i32 10
  %77 = load i8, ptr %76, align 1, !range !8
  %78 = icmp eq i8 %77, 0
  %79 = select i1 %78, ptr @.str.52, ptr @.str.51
  br label %81

80:                                               ; preds = %54
  br label %81

81:                                               ; preds = %80, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %54
  %82 = phi ptr [ @.str.30, %80 ], [ %79, %72 ], [ @.str.50, %71 ], [ @.str.49, %70 ], [ @.str.48, %69 ], [ @.str.47, %68 ], [ @.str.46, %67 ], [ @.str.45, %66 ], [ @.str.44, %65 ], [ @.str.43, %64 ], [ @.str.42, %63 ], [ @.str.41, %54 ]
  %83 = zext i8 %62 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %83, ptr noundef nonnull %82) #3
  %84 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 8
  %85 = load i8, ptr %84, align 1
  %86 = icmp ult i8 %85, 3
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = sext i8 %85 to i32
  %89 = getelementptr inbounds [3 x ptr], ptr @switch.table.mmc_ios_show.65, i32 0, i32 %88
  %90 = load ptr, ptr %89, align 4
  br label %91

91:                                               ; preds = %87, %81
  %92 = phi ptr [ %90, %87 ], [ @.str.30, %81 ]
  %93 = zext i8 %85 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %93, ptr noundef nonnull %92) #3
  %94 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 9
  %95 = load i8, ptr %94, align 2
  %96 = icmp ult i8 %95, 4
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = sext i8 %95 to i32
  %99 = getelementptr inbounds [4 x ptr], ptr @switch.table.mmc_ios_show.66, i32 0, i32 %98
  %100 = load ptr, ptr %99, align 4
  br label %101

101:                                              ; preds = %97, %91
  %102 = phi ptr [ %100, %97 ], [ @.str.30, %91 ]
  %103 = zext i8 %95 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %103, ptr noundef nonnull %102) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_clock_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @mmc_clock_opt_get, ptr noundef nonnull @mmc_clock_opt_set, ptr noundef nonnull @.str.63) #3
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mmc_clock_opt_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  store i64 %5, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_clock_opt_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 16
  %7 = zext i32 %6 to i64
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ugt i64 %12, %1
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %2
  %15 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #3
  %16 = trunc i64 %1 to i32
  tail call void @mmc_set_clock(ptr noundef %0, i32 noundef %16) #3
  tail call void @mmc_release_host(ptr noundef %0) #3
  br label %17

17:                                               ; preds = %14, %9, %4
  %18 = phi i32 [ 0, %14 ], [ -22, %9 ], [ -22, %4 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_claim_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
!8 = !{i8 0, i8 2}
