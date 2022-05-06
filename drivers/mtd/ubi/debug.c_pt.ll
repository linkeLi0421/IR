; ModuleID = '/llk/IR/drivers/mtd/ubi/debug.c_pt.bc'
source_filename = "../drivers/mtd/ubi/debug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubi_ec_hdr = type { i32, i8, [3 x i8], i64, i32, i32, i32, [32 x i8], i32 }
%struct.ubi_vid_hdr = type { i32, i8, i8, i8, i8, i32, i32, [4 x i8], i32, i32, i32, i32, [4 x i8], i64, [12 x i8], i32 }
%struct.ubi_volume = type { %struct.device, %struct.cdev, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, [128 x i8], i32, i32, i64, i64, ptr, ptr, i8 }
%struct.ubi_vtbl_record = type { i32, i32, i32, i8, i8, i16, [128 x i8], i8, [23 x i8], i32 }
%struct.ubi_ainf_volume = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.rb_node, %struct.rb_root }
%struct.ubi_ainf_peb = type { i32, i32, i32, i32, i8, i64, %union.anon.70 }
%union.anon.70 = type { %struct.rb_node }
%struct.ubi_mkvol_req = type { i32, i32, i64, i8, i8, i16, [4 x i8], [128 x i8] }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.67 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.69 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ubi_wl_entry = type { %union.anon.64, i32, i32 }
%union.anon.64 = type { %struct.rb_node }

@.str = private unnamed_addr constant [61 x i8] c"err %d while reading %d bytes from PEB %d:%d, read %zd bytes\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"dumping %d bytes of data from PEB %d, offset %d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"\013Erase counter header dump:\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\013\09magic          %#08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"\013\09version        %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\013\09ec             %llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"\013\09vid_hdr_offset %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"\013\09data_offset    %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"\013\09image_seq      %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\013\09hdr_crc        %#08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"\013erase counter header hexdump:\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"\013Volume identifier header dump:\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"\013\09magic     %08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"\013\09version   %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"\013\09vol_type  %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"\013\09copy_flag %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"\013\09compat    %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"\013\09vol_id    %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"\013\09lnum      %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"\013\09data_size %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"\013\09used_ebs  %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"\013\09data_pad  %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"\013\09sqnum     %llu\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"\013\09hdr_crc   %08x\0A\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"\013Volume identifier header hexdump:\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"\013Volume information dump:\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"\013\09vol_id          %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\013\09reserved_pebs   %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\013\09alignment       %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"\013\09data_pad        %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"\013\09vol_type        %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"\013\09name_len        %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"\013\09usable_leb_size %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"\013\09used_ebs        %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"\013\09used_bytes      %lld\0A\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"\013\09last_eb_bytes   %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"\013\09corrupted       %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"\013\09upd_marker      %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"\013\09skip_check      %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"\013\09name            %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"\013\091st 5 characters of name: %c%c%c%c%c\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"\013Volume table record %d dump:\0A\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"\013\09name            NULL\0A\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"\013\09crc             %#08x\0A\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"\013Volume attaching information dump:\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"\013\09vol_id         %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"\013\09highest_lnum   %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"\013\09leb_count      %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"\013\09compat         %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"\013\09vol_type       %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"\013\09used_ebs       %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"\013\09last_data_size %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"\013\09data_pad       %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"\013eraseblock attaching information dump:\0A\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"\013\09ec       %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"\013\09pnum     %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"\013\09lnum     %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"\013\09scrub    %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"\013\09sqnum    %llu\0A\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"\013Volume creation request dump:\0A\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"\013\09alignment %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"\013\09bytes     %lld\0A\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"\013\09name_len  %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"\013\091st 16 characters of name: %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"ubi\00", align 1
@dfs_rootdir = internal unnamed_addr global ptr null, align 4
@.str.67 = private unnamed_addr constant [62 x i8] c"\013UBI error: cannot create \22ubi\22 debugfs directory, error %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"ubi%d\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"chk_gen\00", align 1
@dfs_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @dfs_file_read, ptr @dfs_file_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.70 = private unnamed_addr constant [7 x i8] c"chk_io\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"chk_fastmap\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"tst_disable_bgt\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"tst_emulate_bitflips\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"tst_emulate_io_failures\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"tst_emulate_power_cut\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"tst_emulate_power_cut_min\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"tst_emulate_power_cut_max\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"detailed_erase_block_info\00", align 1
@eraseblk_count_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @eraseblk_count_open, ptr null, ptr @eraseblk_count_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.79 = private unnamed_addr constant [55 x i8] c"XXXXXXXXXXXXXXX emulating a power cut XXXXXXXXXXXXXXXX\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@eraseblk_count_seq_ops = internal constant %struct.seq_operations { ptr @eraseblk_count_seq_start, ptr @eraseblk_count_seq_stop, ptr @eraseblk_count_seq_next, ptr @eraseblk_count_seq_show }, align 4
@.str.83 = private unnamed_addr constant [35 x i8] c"physical_block_number\09erase_count\0A\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"%-22d\09%-11d\0A\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"switch to read-only mode\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_dump_flash(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 61
  %7 = load i32, ptr %6, align 4
  %8 = tail call noalias ptr @vmalloc(i32 noundef %3) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %4
  %11 = sext i32 %1 to i64
  %12 = sext i32 %7 to i64
  %13 = mul nsw i64 %12, %11
  %14 = sext i32 %2 to i64
  %15 = add nsw i64 %13, %14
  %16 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 79
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @mtd_read(ptr noundef %17, i64 noundef %15, i32 noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %8) #14
  switch i32 %18, label %19 [
    i32 -117, label %21
    i32 0, label %21
  ]

19:                                               ; preds = %10
  %20 = load i32, ptr %5, align 4
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %18, i32 noundef %3, i32 noundef %1, i32 noundef %2, i32 noundef %20) #14
  br label %22

21:                                               ; preds = %10, %10
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %3, i32 noundef %1, i32 noundef %2) #14
  call void @print_hex_dump(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %8, i32 noundef %3, i1 noundef zeroext true) #14
  br label %22

22:                                               ; preds = %21, %19
  call void @vfree(ptr noundef nonnull %8) #14
  br label %23

23:                                               ; preds = %22, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_dump_ec_hdr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  %3 = load i32, ptr %0, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %4) #16
  %6 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %0, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %8) #16
  %10 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %0, i32 0, i32 3
  %11 = load i64, ptr %10, align 1
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %12) #16
  %14 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %16) #16
  %18 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %20) #16
  %22 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %24) #16
  %26 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %0, i32 0, i32 8
  %27 = load i32, ptr %26, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %28) #16
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #16
  tail call void @print_hex_dump(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %0, i32 noundef 64, i1 noundef zeroext true) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_dump_vid_hdr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #16
  %3 = load i32, ptr %0, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %4) #16
  %6 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %0, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %8) #16
  %10 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %0, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %12) #16
  %14 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %0, i32 0, i32 3
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %16) #16
  %18 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %0, i32 0, i32 4
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %20) #16
  %22 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %24) #16
  %26 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %28) #16
  %30 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %0, i32 0, i32 8
  %31 = load i32, ptr %30, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %32) #16
  %34 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %0, i32 0, i32 9
  %35 = load i32, ptr %34, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %36) #16
  %38 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %0, i32 0, i32 10
  %39 = load i32, ptr %38, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %40) #16
  %42 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %0, i32 0, i32 13
  %43 = load i64, ptr %42, align 1
  %44 = tail call i64 @llvm.bswap.i64(i64 %43)
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i64 noundef %44) #16
  %46 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %0, i32 0, i32 15
  %47 = load i32, ptr %46, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %48) #16
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #16
  tail call void @print_hex_dump(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %0, i32 noundef 64, i1 noundef zeroext true) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_dump_vol_info(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #16
  %3 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %4) #16
  %6 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %7) #16
  %9 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 15
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %10) #16
  %12 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 16
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %13) #16
  %15 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %16) #16
  %18 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 17
  %19 = load i32, ptr %18, align 8
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %19) #16
  %21 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 11
  %22 = load i32, ptr %21, align 8
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %22) #16
  %24 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %25) #16
  %27 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 14
  %28 = load i64, ptr %27, align 8
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i64 noundef %28) #16
  %30 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 13
  %31 = load i32, ptr %30, align 8
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %31) #16
  %33 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 25
  %34 = load i8, ptr %33, align 8
  %35 = lshr i8 %34, 2
  %36 = and i8 %35, 1
  %37 = zext i8 %36 to i32
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %37) #16
  %39 = load i8, ptr %33, align 8
  %40 = lshr i8 %39, 3
  %41 = and i8 %40, 1
  %42 = zext i8 %41 to i32
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %42) #16
  %44 = load i8, ptr %33, align 8
  %45 = and i8 %44, 1
  %46 = zext i8 %45 to i32
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %46) #16
  %48 = load i32, ptr %18, align 8
  %49 = icmp slt i32 %48, 128
  br i1 %49, label %50, label %57

50:                                               ; preds = %1
  %51 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 18
  %52 = add nsw i32 %48, 1
  %53 = tail call i32 @strnlen(ptr noundef %51, i32 noundef %52)
  %54 = icmp eq i32 %53, %48
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %51) #16
  br label %74

57:                                               ; preds = %50, %1
  %58 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 18
  %59 = load i8, ptr %58, align 4
  %60 = zext i8 %59 to i32
  %61 = getelementptr %struct.ubi_volume, ptr %0, i32 0, i32 18, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = getelementptr %struct.ubi_volume, ptr %0, i32 0, i32 18, i32 2
  %65 = load i8, ptr %64, align 2
  %66 = zext i8 %65 to i32
  %67 = getelementptr %struct.ubi_volume, ptr %0, i32 0, i32 18, i32 3
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = getelementptr %struct.ubi_volume, ptr %0, i32 0, i32 18, i32 4
  %71 = load i8, ptr %70, align 4
  %72 = zext i8 %71 to i32
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %60, i32 noundef %63, i32 noundef %66, i32 noundef %69, i32 noundef %72) #16
  br label %74

74:                                               ; preds = %57, %55
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_dump_vtbl_record(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %0, i32 0, i32 5
  %4 = load i16, ptr %3, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %1) #16
  %8 = load i32, ptr %0, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %9) #16
  %11 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %13) #16
  %15 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %17) #16
  %19 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %0, i32 0, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %21) #16
  %23 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %0, i32 0, i32 4
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %25) #16
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %6) #16
  %28 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %0, i32 0, i32 6
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #16
  br label %61

33:                                               ; preds = %2
  %34 = icmp ult i16 %5, 128
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = add nuw nsw i32 %6, 1
  %37 = tail call i32 @strnlen(ptr noundef %28, i32 noundef %36)
  %38 = icmp eq i32 %37, %6
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %28) #16
  br label %56

41:                                               ; preds = %35, %33
  %42 = zext i8 %29 to i32
  %43 = getelementptr %struct.ubi_vtbl_record, ptr %0, i32 0, i32 6, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr %struct.ubi_vtbl_record, ptr %0, i32 0, i32 6, i32 2
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = getelementptr %struct.ubi_vtbl_record, ptr %0, i32 0, i32 6, i32 3
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = getelementptr %struct.ubi_vtbl_record, ptr %0, i32 0, i32 6, i32 4
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %42, i32 noundef %45, i32 noundef %48, i32 noundef %51, i32 noundef %54) #16
  br label %56

56:                                               ; preds = %41, %39
  %57 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %0, i32 0, i32 9
  %58 = load i32, ptr %57, align 1
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %59) #16
  br label %61

61:                                               ; preds = %56, %31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_dump_av(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #16
  %3 = load i32, ptr %0, align 4
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %3) #16
  %5 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %6) #16
  %8 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %9) #16
  %11 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %12) #16
  %14 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %15) #16
  %17 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %18) #16
  %20 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %21) #16
  %23 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %24) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_dump_aeb(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #16
  %4 = load i32, ptr %0, align 8
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %4) #16
  %6 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %7) #16
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %12) #16
  %14 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %0, i32 0, i32 4
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %17) #16
  %19 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %0, i32 0, i32 5
  %20 = load i64, ptr %19, align 8
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i64 noundef %20) #16
  br label %22

22:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_dump_mkvol_req(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [17 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %2) #14
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #16
  %4 = load i32, ptr %0, align 1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %4) #16
  %6 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %7) #16
  %9 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %0, i32 0, i32 2
  %10 = load i64, ptr %9, align 1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i64 noundef %10) #16
  %12 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %0, i32 0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %14) #16
  %16 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %0, i32 0, i32 5
  %17 = load i16, ptr %16, align 1
  %18 = sext i16 %17 to i32
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %18) #16
  %20 = getelementptr inbounds %struct.ubi_mkvol_req, ptr %0, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef align 1 dereferenceable(16) %20, i32 16, i1 false)
  %21 = getelementptr inbounds [17 x i8], ptr %2, i32 0, i32 16
  store i8 0, ptr %21, align 1
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %2) #14
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_debugfs_init() local_unnamed_addr #0 {
  %1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.66, ptr noundef null) #14
  store ptr %1, ptr @dfs_rootdir, align 4
  %2 = icmp eq ptr %1, null
  %3 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = ptrtoint ptr %1 to i32
  %7 = select i1 %2, i32 -19, i32 %6
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %7) #16
  br label %9

9:                                                ; preds = %5, %0
  %10 = phi i32 [ %7, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_debugfs_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @dfs_rootdir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_debugfs_init_dev(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83, i32 4
  %5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %4, i32 noundef 7, ptr noundef nonnull @.str.68, i32 noundef %3)
  %6 = icmp sgt i32 %5, 6
  br i1 %6, label %40, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @dfs_rootdir, align 4
  %9 = tail call ptr @debugfs_create_dir(ptr noundef %4, ptr noundef %8) #14
  %10 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83, i32 5
  store ptr %9, ptr %10, align 4
  %11 = inttoptr i32 %3 to ptr
  %12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.69, i16 noundef zeroext 128, ptr noundef %9, ptr noundef %11, ptr noundef nonnull @dfs_fops) #14
  %13 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83, i32 6
  store ptr %12, ptr %13, align 4
  %14 = load ptr, ptr %10, align 4
  %15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.70, i16 noundef zeroext 128, ptr noundef %14, ptr noundef %11, ptr noundef nonnull @dfs_fops) #14
  %16 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83, i32 7
  store ptr %15, ptr %16, align 4
  %17 = load ptr, ptr %10, align 4
  %18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.71, i16 noundef zeroext 128, ptr noundef %17, ptr noundef %11, ptr noundef nonnull @dfs_fops) #14
  %19 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83, i32 8
  store ptr %18, ptr %19, align 4
  %20 = load ptr, ptr %10, align 4
  %21 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.72, i16 noundef zeroext 128, ptr noundef %20, ptr noundef %11, ptr noundef nonnull @dfs_fops) #14
  %22 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83, i32 9
  store ptr %21, ptr %22, align 4
  %23 = load ptr, ptr %10, align 4
  %24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.73, i16 noundef zeroext 128, ptr noundef %23, ptr noundef %11, ptr noundef nonnull @dfs_fops) #14
  %25 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83, i32 10
  store ptr %24, ptr %25, align 4
  %26 = load ptr, ptr %10, align 4
  %27 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.74, i16 noundef zeroext 128, ptr noundef %26, ptr noundef %11, ptr noundef nonnull @dfs_fops) #14
  %28 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83, i32 11
  store ptr %27, ptr %28, align 4
  %29 = load ptr, ptr %10, align 4
  %30 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.75, i16 noundef zeroext 128, ptr noundef %29, ptr noundef %11, ptr noundef nonnull @dfs_fops) #14
  %31 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83, i32 12
  store ptr %30, ptr %31, align 4
  %32 = load ptr, ptr %10, align 4
  %33 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.76, i16 noundef zeroext 128, ptr noundef %32, ptr noundef %11, ptr noundef nonnull @dfs_fops) #14
  %34 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83, i32 13
  store ptr %33, ptr %34, align 4
  %35 = load ptr, ptr %10, align 4
  %36 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.77, i16 noundef zeroext 128, ptr noundef %35, ptr noundef %11, ptr noundef nonnull @dfs_fops) #14
  %37 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83, i32 14
  store ptr %36, ptr %37, align 4
  %38 = load ptr, ptr %10, align 4
  %39 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.78, i16 noundef zeroext 256, ptr noundef %38, ptr noundef %11, ptr noundef nonnull @eraseblk_count_fops) #14
  br label %40

40:                                               ; preds = %7, %1
  %41 = phi i32 [ 0, %7 ], [ -22, %1 ]
  ret i32 %41
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_debugfs_exit_dev(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @debugfs_remove(ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_dbg_power_cut(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %4 = load i8, ptr %3, align 4
  %5 = lshr i8 %4, 6
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, %1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83, i32 2
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %10, align 4
  %16 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, %15
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = sub i32 %17, %15
  %21 = tail call i32 @prandom_u32() #14
  %22 = urem i32 %21, %20
  %23 = load i32, ptr %10, align 4
  %24 = add i32 %23, %22
  store i32 %24, ptr %10, align 4
  br label %33

25:                                               ; preds = %9
  %26 = add i32 %11, -1
  store i32 %26, ptr %10, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.79) #14
  %29 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, ptr %29, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.85) #14
  tail call void @dump_stack() #16
  br label %33

33:                                               ; preds = %32, %28, %25, %19, %13, %2
  %34 = phi i32 [ 0, %2 ], [ 0, %19 ], [ 0, %13 ], [ 0, %25 ], [ 1, %28 ], [ 1, %32 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dfs_file_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [8 x i8], align 8
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %7 to i32
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store i64 0, ptr %5, align 8, !annotation !8
  %11 = tail call ptr @ubi_get_device(i32 noundef %8) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %94, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ubi_device, ptr %11, i32 0, i32 83
  %15 = getelementptr inbounds %struct.ubi_device, ptr %11, i32 0, i32 83, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %10, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i8, ptr %14, align 4
  br label %83

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ubi_device, ptr %11, i32 0, i32 83, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %10, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8, ptr %14, align 4
  %26 = lshr i8 %25, 1
  br label %83

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ubi_device, ptr %11, i32 0, i32 83, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %10, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8, ptr %14, align 4
  %33 = lshr i8 %32, 2
  br label %83

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.ubi_device, ptr %11, i32 0, i32 83, i32 9
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %10, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8, ptr %14, align 4
  %40 = lshr i8 %39, 3
  br label %83

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.ubi_device, ptr %11, i32 0, i32 83, i32 10
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %10, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i8, ptr %14, align 4
  %47 = lshr i8 %46, 4
  br label %83

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.ubi_device, ptr %11, i32 0, i32 83, i32 11
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %10, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i8, ptr %14, align 4
  %54 = lshr i8 %53, 5
  br label %83

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.ubi_device, ptr %11, i32 0, i32 83, i32 12
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %10, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i8, ptr %14, align 4
  %61 = lshr i8 %60, 6
  %62 = zext i8 %61 to i32
  %63 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 8, ptr noundef nonnull @.str.80, i32 noundef %62)
  %64 = call i32 @strlen(ptr noundef nonnull %5)
  br label %89

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.ubi_device, ptr %11, i32 0, i32 83, i32 13
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %10, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ubi_device, ptr %11, i32 0, i32 83, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 8, ptr noundef nonnull @.str.80, i32 noundef %71)
  %73 = call i32 @strlen(ptr noundef nonnull %5)
  br label %89

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.ubi_device, ptr %11, i32 0, i32 83, i32 14
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %10, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ubi_device, ptr %11, i32 0, i32 83, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 8, ptr noundef nonnull @.str.80, i32 noundef %80)
  %82 = call i32 @strlen(ptr noundef nonnull %5)
  br label %89

83:                                               ; preds = %52, %45, %38, %31, %24, %18
  %84 = phi i8 [ %19, %18 ], [ %26, %24 ], [ %33, %31 ], [ %40, %38 ], [ %47, %45 ], [ %54, %52 ]
  %85 = and i8 %84, 1
  %86 = or i8 %85, 48
  store i8 %86, ptr %5, align 8
  %87 = getelementptr inbounds [8 x i8], ptr %5, i32 0, i32 1
  store i8 10, ptr %87, align 1
  %88 = getelementptr inbounds [8 x i8], ptr %5, i32 0, i32 2
  store i8 0, ptr %88, align 2
  br label %89

89:                                               ; preds = %83, %78, %69, %59
  %90 = phi i32 [ 2, %83 ], [ %82, %78 ], [ %73, %69 ], [ %64, %59 ]
  %91 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %90) #14
  br label %92

92:                                               ; preds = %89, %74
  %93 = phi i32 [ -22, %74 ], [ %91, %89 ]
  call void @ubi_put_device(ptr noundef nonnull %11) #14
  br label %94

94:                                               ; preds = %92, %4
  %95 = phi i32 [ %93, %92 ], [ -19, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dfs_file_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [8 x i8], align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = ptrtoint ptr %8 to i32
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %12 = tail call ptr @ubi_get_device(i32 noundef %9) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %130, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ubi_device, ptr %12, i32 0, i32 83
  %16 = tail call i32 @llvm.umin.i32(i32 %2, i32 7)
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %16, i32 -1090519040) #17, !srcloc !9
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27, !prof !10

20:                                               ; preds = %14
  %21 = tail call ptr @llvm.thread.pointer() #14
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #18, !srcloc !11
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #14, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %26 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %16) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  br label %27

27:                                               ; preds = %20, %14
  %28 = phi i32 [ %26, %20 ], [ %16, %14 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30, !prof !10

30:                                               ; preds = %27
  %31 = sub i32 %16, %28
  %32 = getelementptr i8, ptr %5, i32 %31
  call void @llvm.memset.p0.i32(ptr align 1 %32, i8 0, i32 %28, i1 false) #14
  br label %128

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.ubi_device, ptr %12, i32 0, i32 83, i32 13
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %11, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ubi_device, ptr %12, i32 0, i32 83, i32 2
  %39 = call i32 @kstrtouint(ptr noundef nonnull %5, i32 noundef 0, ptr noundef %38) #14
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 %2, i32 -22
  br label %128

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.ubi_device, ptr %12, i32 0, i32 83, i32 14
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %11, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ubi_device, ptr %12, i32 0, i32 83, i32 3
  %48 = call i32 @kstrtouint(ptr noundef nonnull %5, i32 noundef 0, ptr noundef %47) #14
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 %2, i32 -22
  br label %128

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.ubi_device, ptr %12, i32 0, i32 83, i32 12
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %11, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = call i32 @kstrtoint(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %6) #14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %128

58:                                               ; preds = %55
  %59 = load i32, ptr %6, align 4
  %60 = trunc i32 %59 to i8
  %61 = load i8, ptr %15, align 4
  %62 = shl i8 %60, 6
  %63 = and i8 %61, 63
  %64 = or i8 %63, %62
  store i8 %64, ptr %15, align 4
  br label %128

65:                                               ; preds = %51
  %66 = load i8, ptr %5, align 8
  switch i8 %66, label %128 [
    i8 49, label %68
    i8 48, label %67
  ]

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ 0, %67 ], [ 1, %65 ]
  store i32 %69, ptr %6, align 4
  %70 = getelementptr inbounds %struct.ubi_device, ptr %12, i32 0, i32 83, i32 6
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %11, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = trunc i32 %69 to i8
  %75 = load i8, ptr %15, align 4
  %76 = and i8 %75, -2
  %77 = or i8 %76, %74
  store i8 %77, ptr %15, align 4
  br label %128

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.ubi_device, ptr %12, i32 0, i32 83, i32 7
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %11, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = trunc i32 %69 to i8
  %84 = load i8, ptr %15, align 4
  %85 = shl nuw nsw i8 %83, 1
  %86 = and i8 %84, -3
  %87 = or i8 %86, %85
  store i8 %87, ptr %15, align 4
  br label %128

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.ubi_device, ptr %12, i32 0, i32 83, i32 8
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %11, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = trunc i32 %69 to i8
  %94 = load i8, ptr %15, align 4
  %95 = shl nuw nsw i8 %93, 2
  %96 = and i8 %94, -5
  %97 = or i8 %96, %95
  store i8 %97, ptr %15, align 4
  br label %128

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.ubi_device, ptr %12, i32 0, i32 83, i32 9
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %11, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = trunc i32 %69 to i8
  %104 = load i8, ptr %15, align 4
  %105 = shl nuw nsw i8 %103, 3
  %106 = and i8 %104, -9
  %107 = or i8 %106, %105
  store i8 %107, ptr %15, align 4
  br label %128

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.ubi_device, ptr %12, i32 0, i32 83, i32 10
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %11, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = trunc i32 %69 to i8
  %114 = load i8, ptr %15, align 4
  %115 = shl nuw nsw i8 %113, 4
  %116 = and i8 %114, -17
  %117 = or i8 %116, %115
  store i8 %117, ptr %15, align 4
  br label %128

118:                                              ; preds = %108
  %119 = getelementptr inbounds %struct.ubi_device, ptr %12, i32 0, i32 83, i32 11
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %11, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = trunc i32 %69 to i8
  %124 = load i8, ptr %15, align 4
  %125 = shl nuw nsw i8 %123, 5
  %126 = and i8 %124, -33
  %127 = or i8 %126, %125
  store i8 %127, ptr %15, align 4
  br label %128

128:                                              ; preds = %122, %118, %112, %102, %92, %82, %73, %65, %58, %55, %46, %37, %30
  %129 = phi i32 [ %2, %58 ], [ %2, %73 ], [ %2, %82 ], [ %2, %92 ], [ %2, %102 ], [ %2, %112 ], [ %2, %122 ], [ %41, %37 ], [ %50, %46 ], [ -22, %55 ], [ -22, %65 ], [ -22, %118 ], [ -14, %30 ]
  call void @ubi_put_device(ptr noundef nonnull %12) #14
  br label %130

130:                                              ; preds = %128, %4
  %131 = phi i32 [ %129, %128 ], [ -19, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret i32 %131
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_get_device(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eraseblk_count_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @eraseblk_count_seq_ops) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call ptr @ubi_get_device(i32 noundef %10) #14
  %12 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  store ptr %11, ptr %12, align 8
  %13 = icmp eq ptr %11, null
  %14 = select i1 %13, i32 -19, i32 0
  br label %15

15:                                               ; preds = %5, %2
  %16 = phi i32 [ %3, %2 ], [ %14, %5 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eraseblk_count_release(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  tail call void @ubi_put_device(ptr noundef %6) #14
  %7 = tail call i32 @seq_release(ptr noundef %0, ptr noundef %1) #14
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @eraseblk_count_seq_start(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load i64, ptr %1, align 8
  %6 = getelementptr inbounds %struct.ubi_device, ptr %4, i32 0, i32 60
  %7 = load i32, ptr %6, align 8
  %8 = sext i32 %7 to i64
  %9 = icmp slt i64 %5, %8
  %10 = select i1 %9, ptr %1, ptr null
  ret ptr %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @eraseblk_count_seq_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #12 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @eraseblk_count_seq_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #13 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %2, align 8
  %7 = add i64 %6, 1
  store i64 %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.ubi_device, ptr %5, i32 0, i32 60
  %9 = load i32, ptr %8, align 8
  %10 = sext i32 %9 to i64
  %11 = icmp slt i64 %7, %10
  %12 = select i1 %11, ptr %2, ptr null
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eraseblk_count_seq_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.83) #14
  %8 = load i32, ptr %1, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %5, %2 ]
  %11 = tail call i32 @ubi_io_is_bad(ptr noundef %4, i32 noundef %10) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ubi_device, ptr %4, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %14) #14
  %15 = getelementptr inbounds %struct.ubi_device, ptr %4, i32 0, i32 50
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %1, align 4
  %18 = getelementptr ptr, ptr %16, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.ubi_wl_entry, ptr %19, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %13
  %25 = phi i32 [ %23, %21 ], [ -1, %13 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %26 = load i16, ptr %14, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  %28 = icmp slt i32 %25, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.84, i32 noundef %30, i32 noundef %25) #14
  br label %31

31:                                               ; preds = %29, %24, %9
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_is_bad(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind readonly }

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
!9 = !{i64 2151017878, i64 2151017903}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 3513990}
!12 = !{i64 3514187}
!13 = !{i64 2150999466}
!14 = !{i64 2149241182}
!15 = !{i64 2149237006}
!16 = !{i64 2149237081, i64 2149237108, i64 2149237155, i64 2149237177, i64 2149237205, i64 2149237225}
!17 = !{i64 2149264185}
