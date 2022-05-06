; ModuleID = '/llk/IR/drivers/mtd/mtdchar.c_pt.bc'
source_filename = "../drivers/mtd/mtdchar.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.68 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.68 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.mtd_file_info = type { ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.blkpg_partition = type { i64, i64, i32, [64 x i8], [64 x i8] }
%struct.mtd_write_req = type { i64, i64, i64, i64, i64, i8, [7 x i8] }
%struct.mtd_info_user = type { i8, i32, i32, i32, i32, i32, i64 }
%struct.erase_info_user64 = type { i64, i64 }
%struct.erase_info_user = type { i32, i32 }
%struct.mtd_oob_buf = type { i32, i32, ptr }
%struct.mtd_oob_buf64 = type { i64, i32, i32, i64 }
%struct.nand_oobinfo = type { i32, i32, [8 x [2 x i32]], [32 x i32] }
%struct.otp_info = type { i32, i32, i32 }
%struct.blkpg_ioctl_arg = type { i32, i32, i32, ptr }
%struct.mtd_master = type { %struct.mutex, %struct.mutex, i8 }
%struct.region_info_user = type { i32, i32, i32, i32 }
%struct.mtd_erase_region_info = type { i64, i32, i32, ptr }
%struct.erase_info = type { i64, i64, i64 }
%struct.nand_ecclayout_user = type { i32, [64 x i32], i32, [8 x %struct.nand_oobfree] }
%struct.nand_oobfree = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, ptr, %struct.address_space, %struct.list_head, %union.anon.65, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.63 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.64 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.65 = type { ptr }

@.str = private unnamed_addr constant [4 x i8] c"mtd\00", align 1
@mtd_fops = internal constant %struct.file_operations { ptr null, ptr @mtdchar_lseek, ptr @mtdchar_read, ptr @mtdchar_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtdchar_unlocked_ioctl, ptr null, ptr @mtdchar_mmap, i32 0, ptr @mtdchar_open, ptr null, ptr @mtdchar_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"\013Can't allocate major number %d for MTD\0A\00", align 1
@__UNIQUE_ID_alias250 = internal constant [26 x i8] c"mtd.alias=char-major-90-*\00", section ".modinfo", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @cleanup_mtdchar], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_mtdchar() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__register_chrdev(i32 noundef 90, i32 noundef 0, i32 noundef 1048576, ptr noundef nonnull @.str, ptr noundef nonnull @mtd_fops) #11
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 90) #12
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_mtdchar() #0 section ".exit.text" {
  tail call void @__unregister_chrdev(i32 noundef 90, i32 noundef 0, i32 noundef 1048576, ptr noundef nonnull @.str) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @mtdchar_lseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = tail call i64 @fixed_size_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %8) #11
  ret i64 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtdchar_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_ops, align 4
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 %2, ptr %6, align 4
  %11 = load i64, ptr %3, align 8
  %12 = zext i32 %2 to i64
  %13 = add i64 %11, %12
  %14 = getelementptr inbounds %struct.mtd_info, ptr %10, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = icmp ugt i64 %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = icmp ugt i64 %15, %11
  br i1 %18, label %19, label %92

19:                                               ; preds = %17
  %20 = sub i64 %15, %11
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %19, %4
  %23 = phi i32 [ %21, %19 ], [ %2, %4 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %92, label %25

25:                                               ; preds = %22
  %26 = call ptr @mtd_kmalloc_up_to(ptr noundef %10, ptr noundef nonnull %6) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %92, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.mtd_file_info, ptr %9, i32 0, i32 1
  %30 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 6
  %31 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 7
  %32 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 1
  %33 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 2
  %34 = getelementptr inbounds i8, ptr %7, i32 8
  br label %35

35:                                               ; preds = %82, %28
  %36 = phi ptr [ %1, %28 ], [ %86, %82 ]
  %37 = phi i32 [ %23, %28 ], [ %85, %82 ]
  %38 = phi i32 [ 0, %28 ], [ %84, %82 ]
  %39 = load i32, ptr %6, align 4
  %40 = call i32 @llvm.umin.i32(i32 %37, i32 %39)
  %41 = load i32, ptr %29, align 4
  switch i32 %41, label %52 [
    i32 1, label %42
    i32 2, label %45
    i32 3, label %48
  ]

42:                                               ; preds = %35
  %43 = load i64, ptr %3, align 8
  %44 = call i32 @mtd_read_fact_prot_reg(ptr noundef %10, i64 noundef %43, i32 noundef %40, ptr noundef nonnull %5, ptr noundef nonnull %26) #11
  br label %55

45:                                               ; preds = %35
  %46 = load i64, ptr %3, align 8
  %47 = call i32 @mtd_read_user_prot_reg(ptr noundef %10, i64 noundef %46, i32 noundef %40, ptr noundef nonnull %5, ptr noundef nonnull %26) #11
  br label %55

48:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %34, i8 0, i32 16, i1 false)
  store i32 2, ptr %7, align 4
  store ptr %26, ptr %30, align 4
  store ptr null, ptr %31, align 4
  store i32 %40, ptr %32, align 4
  %49 = load i64, ptr %3, align 8
  %50 = call i32 @mtd_read_oob(ptr noundef %10, i64 noundef %49, ptr noundef nonnull %7) #11
  %51 = load i32, ptr %33, align 4
  store i32 %51, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  br label %55

52:                                               ; preds = %35
  %53 = load i64, ptr %3, align 8
  %54 = call i32 @mtd_read(ptr noundef %10, i64 noundef %53, i32 noundef %40, ptr noundef nonnull %5, ptr noundef nonnull %26) #11
  br label %55

55:                                               ; preds = %52, %48, %45, %42
  %56 = phi i32 [ %54, %52 ], [ %50, %48 ], [ %47, %45 ], [ %44, %42 ]
  switch i32 %56, label %90 [
    i32 0, label %57
    i32 -74, label %57
    i32 -117, label %57
  ]

57:                                               ; preds = %55, %55, %55
  %58 = load i32, ptr %5, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, ptr %3, align 8
  %61 = add i64 %60, %59
  store i64 %61, ptr %3, align 8
  %62 = icmp slt i32 %58, 0
  %63 = load i1, ptr @check_copy_size.__already_done, align 1
  %64 = xor i1 %63, true
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %67, !prof !9

66:                                               ; preds = %57
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %67

67:                                               ; preds = %66, %57
  br i1 %62, label %90, label %68, !prof !9

68:                                               ; preds = %67
  %69 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %36, i32 %58, i32 -1090519040) #13, !srcloc !10
  %70 = extractvalue { i32, i32 } %69, 0
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = tail call ptr @llvm.thread.pointer() #11
  %74 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 3
  %75 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %74) #14, !srcloc !11
  %76 = and i32 %75, -13
  %77 = or i32 %76, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %78 = call i32 @arm_copy_to_user(ptr noundef %36, ptr noundef nonnull %26, i32 noundef %58) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  br label %79

79:                                               ; preds = %72, %68
  %80 = phi i32 [ %78, %72 ], [ %58, %68 ]
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32, ptr %5, align 4
  %84 = add i32 %83, %38
  %85 = sub i32 %37, %83
  %86 = getelementptr i8, ptr %36, i32 %83
  %87 = icmp eq i32 %83, 0
  %88 = icmp eq i32 %85, 0
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %90, label %35

90:                                               ; preds = %82, %79, %67, %55
  %91 = phi i32 [ -14, %67 ], [ -14, %79 ], [ %56, %55 ], [ %84, %82 ]
  call void @kfree(ptr noundef nonnull %26) #11
  br label %92

92:                                               ; preds = %90, %25, %22, %17
  %93 = phi i32 [ 0, %22 ], [ -12, %25 ], [ 0, %17 ], [ %91, %90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtdchar_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_ops, align 4
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 %2, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  %11 = load i64, ptr %3, align 8
  %12 = getelementptr inbounds %struct.mtd_info, ptr %10, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = icmp ugt i64 %13, %11
  br i1 %14, label %15, label %93

15:                                               ; preds = %4
  %16 = zext i32 %2 to i64
  %17 = add i64 %11, %16
  %18 = icmp ugt i64 %17, %13
  %19 = sub i64 %13, %11
  %20 = trunc i64 %19 to i32
  %21 = select i1 %18, i32 %20, i32 %2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %93, label %23

23:                                               ; preds = %15
  %24 = call ptr @mtd_kmalloc_up_to(ptr noundef %10, ptr noundef nonnull %5) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %93, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.mtd_file_info, ptr %9, i32 0, i32 1
  %28 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 6
  %29 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 7
  %30 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 5
  %31 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 1
  %32 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 2
  %33 = getelementptr inbounds i8, ptr %7, i32 8
  br label %34

34:                                               ; preds = %82, %26
  %35 = phi ptr [ %1, %26 ], [ %89, %82 ]
  %36 = phi i32 [ %21, %26 ], [ %88, %82 ]
  %37 = phi i32 [ 0, %26 ], [ %87, %82 ]
  %38 = load i32, ptr %5, align 4
  %39 = call i32 @llvm.umin.i32(i32 %36, i32 %38)
  %40 = icmp slt i32 %39, 0
  %41 = load i1, ptr @check_copy_size.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %45, !prof !9

44:                                               ; preds = %34
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %45

45:                                               ; preds = %44, %34
  br i1 %40, label %91, label %46, !prof !9

46:                                               ; preds = %45
  %47 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %35, i32 %39, i32 -1090519040) #13, !srcloc !14
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57, !prof !15

50:                                               ; preds = %46
  %51 = tail call ptr @llvm.thread.pointer() #11
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %53 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %52) #14, !srcloc !11
  %54 = and i32 %53, -13
  %55 = or i32 %54, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %56 = call i32 @arm_copy_from_user(ptr noundef nonnull %24, ptr noundef %35, i32 noundef %39) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  br label %57

57:                                               ; preds = %50, %46
  %58 = phi i32 [ %56, %50 ], [ %39, %46 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60, !prof !15

60:                                               ; preds = %57
  %61 = sub i32 %39, %58
  %62 = getelementptr i8, ptr %24, i32 %61
  call void @llvm.memset.p0.i32(ptr align 1 %62, i8 0, i32 %58, i1 false) #11
  br label %91

63:                                               ; preds = %57
  %64 = load i32, ptr %27, align 4
  switch i32 %64, label %72 [
    i32 1, label %91
    i32 2, label %65
    i32 3, label %68
  ]

65:                                               ; preds = %63
  %66 = load i64, ptr %3, align 8
  %67 = call i32 @mtd_write_user_prot_reg(ptr noundef %10, i64 noundef %66, i32 noundef %39, ptr noundef nonnull %6, ptr noundef nonnull %24) #11
  br label %75

68:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %33, i8 0, i32 12, i1 false)
  store i32 2, ptr %7, align 4
  store ptr %24, ptr %28, align 4
  store ptr null, ptr %29, align 4
  store i32 0, ptr %30, align 4
  store i32 %39, ptr %31, align 4
  %69 = load i64, ptr %3, align 8
  %70 = call i32 @mtd_write_oob(ptr noundef %10, i64 noundef %69, ptr noundef nonnull %7) #11
  %71 = load i32, ptr %32, align 4
  store i32 %71, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  br label %75

72:                                               ; preds = %63
  %73 = load i64, ptr %3, align 8
  %74 = call i32 @mtd_write(ptr noundef %10, i64 noundef %73, i32 noundef %39, ptr noundef nonnull %6, ptr noundef nonnull %24) #11
  br label %75

75:                                               ; preds = %72, %68, %65
  %76 = phi i32 [ %74, %72 ], [ %70, %68 ], [ %67, %65 ]
  %77 = icmp eq i32 %76, -28
  %78 = icmp ne i32 %37, 0
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %91, label %80

80:                                               ; preds = %75
  %81 = icmp eq i32 %76, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %80
  %83 = load i32, ptr %6, align 4
  %84 = zext i32 %83 to i64
  %85 = load i64, ptr %3, align 8
  %86 = add i64 %85, %84
  store i64 %86, ptr %3, align 8
  %87 = add i32 %83, %37
  %88 = sub i32 %36, %83
  %89 = getelementptr i8, ptr %35, i32 %83
  %90 = icmp eq i32 %88, 0
  br i1 %90, label %91, label %34

91:                                               ; preds = %82, %80, %75, %63, %60, %45
  %92 = phi i32 [ -14, %60 ], [ -14, %45 ], [ %76, %80 ], [ -30, %63 ], [ %87, %82 ], [ %37, %75 ]
  call void @kfree(ptr noundef nonnull %24) #11
  br label %93

93:                                               ; preds = %91, %23, %15, %4
  %94 = phi i32 [ -28, %4 ], [ 0, %15 ], [ -12, %23 ], [ %92, %91 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtdchar_unlocked_ioctl(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = alloca %struct.mtd_oob_region, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_oob_region, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.blkpg_partition, align 8
  %9 = alloca %struct.mtd_write_req, align 8
  %10 = alloca %struct.mtd_oob_ops, align 4
  %11 = alloca %struct.mtd_info_user, align 8
  %12 = alloca %struct.erase_info_user64, align 8
  %13 = alloca %struct.erase_info_user, align 8
  %14 = alloca %struct.mtd_oob_buf, align 4
  %15 = alloca %struct.mtd_oob_buf, align 4
  %16 = alloca %struct.mtd_oob_buf64, align 8
  %17 = alloca %struct.mtd_oob_buf64, align 8
  %18 = alloca %struct.erase_info_user, align 8
  %19 = alloca %struct.erase_info_user, align 8
  %20 = alloca %struct.erase_info_user, align 8
  %21 = alloca %struct.nand_oobinfo, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.otp_info, align 4
  %28 = alloca %struct.blkpg_ioctl_arg, align 4
  %29 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %32, %3
  %33 = phi ptr [ %31, %3 ], [ %35, %32 ]
  %34 = getelementptr inbounds %struct.mtd_info, ptr %33, i32 0, i32 62
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %32

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.mtd_info, ptr %33, i32 0, i32 64
  %39 = getelementptr inbounds %struct.mtd_master, ptr %38, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %39) #11
  %40 = load ptr, ptr %29, align 8
  %41 = load ptr, ptr %40, align 4
  br label %42

42:                                               ; preds = %42, %37
  %43 = phi ptr [ %41, %37 ], [ %45, %42 ]
  %44 = getelementptr inbounds %struct.mtd_info, ptr %43, i32 0, i32 62
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %42

47:                                               ; preds = %42
  %48 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i32 32, i1 false) #11, !annotation !8
  switch i32 %1, label %1115 [
    i32 -2147201785, label %54
    i32 -1072673528, label %54
    i32 -2145366783, label %54
    i32 -1072935676, label %54
    i32 -1072149226, label %54
    i32 -2146939625, label %54
    i32 -2134356726, label %54
    i32 1074285835, label %54
    i32 -2147201779, label %54
    i32 1074023694, label %54
    i32 1074547983, label %54
    i32 -2125968111, label %54
    i32 -2146415342, label %54
    i32 19731, label %54
    i32 4713, label %54
    i32 4703, label %54
    i32 1074285826, label %49
    i32 1074810132, label %49
    i32 1074285829, label %49
    i32 1074285830, label %49
    i32 1074285836, label %49
    i32 -1072935677, label %49
    i32 -1072149227, label %49
    i32 -1070576360, label %49
    i32 -2146677488, label %49
    i32 1074547993, label %49
  ]

49:                                               ; preds = %47, %47, %47, %47, %47, %47, %47, %47, %47, %47
  %50 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %1115, label %54

54:                                               ; preds = %49, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47
  switch i32 %1, label %1113 [
    i32 -2147201785, label %55
    i32 -1072673528, label %68
    i32 -2145366783, label %112
    i32 1074285826, label %141
    i32 1074810132, label %141
    i32 -1072935677, label %193
    i32 -1072935676, label %220
    i32 -1072149227, label %246
    i32 -1072149226, label %274
    i32 -1070576360, label %302
    i32 1074285829, label %555
    i32 1074285830, label %575
    i32 -2146939625, label %595
    i32 -2134356726, label %615
    i32 1074285835, label %729
    i32 1074285836, label %750
    i32 -2147201779, label %771
    i32 1074023694, label %798
    i32 1074547983, label %798
    i32 -2146677488, label %851
    i32 1074547993, label %851
    i32 -2125968111, label %885
    i32 -2146415342, label %1012
    i32 19731, label %1025
    i32 4713, label %1056
  ]

55:                                               ; preds = %54
  %56 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 4, i32 -1090519040) #13, !srcloc !10
  %57 = extractvalue { i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %1115

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 19
  %61 = tail call ptr @llvm.thread.pointer() #11
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %63 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %62) #14, !srcloc !11
  %64 = and i32 %63, -13
  %65 = or i32 %64, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %66 = tail call i32 @arm_copy_to_user(ptr noundef %48, ptr noundef %60, i32 noundef 4) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %1113, label %1115

68:                                               ; preds = %54
  %69 = getelementptr inbounds %struct.region_info_user, ptr %48, i32 0, i32 3
  %70 = tail call ptr @llvm.thread.pointer() #11
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3
  %72 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %71) #14, !srcloc !11
  %73 = and i32 %72, -13
  %74 = or i32 %73, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %75 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %69, i32 -1090519041) #11, !srcloc !16
  %76 = extractvalue { i32, i32 } %75, 0
  %77 = extractvalue { i32, i32 } %75, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %79, label %1115

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 19
  %81 = load i32, ptr %80, align 8
  %82 = icmp ult i32 %77, %81
  br i1 %82, label %83, label %1115

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 20
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr %struct.mtd_erase_region_info, ptr %85, i32 %77
  %87 = load i64, ptr %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %71) #14, !srcloc !11
  %90 = and i32 %89, -13
  %91 = or i32 %90, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %91) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %92 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %48, i32 %88, i32 -1090519041) #11, !srcloc !17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %1115

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.region_info_user, ptr %48, i32 0, i32 1
  %96 = getelementptr %struct.mtd_erase_region_info, ptr %85, i32 %77, i32 1
  %97 = load i32, ptr %96, align 8
  %98 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %71) #14, !srcloc !11
  %99 = and i32 %98, -13
  %100 = or i32 %99, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %101 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %95, i32 %97, i32 -1090519041) #11, !srcloc !18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %98) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %1115

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.region_info_user, ptr %48, i32 0, i32 2
  %105 = getelementptr %struct.mtd_erase_region_info, ptr %85, i32 %77, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %71) #14, !srcloc !11
  %108 = and i32 %107, -13
  %109 = or i32 %108, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %109) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %110 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %104, i32 %106, i32 -1090519041) #11, !srcloc !19
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %107) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %1113, label %1115

112:                                              ; preds = %54
  %113 = load i8, ptr %41, align 8
  store i8 %113, ptr %11, align 8
  %114 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.mtd_info_user, ptr %11, i32 0, i32 1
  store i32 %115, ptr %116, align 4
  %117 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 2
  %118 = load i64, ptr %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds %struct.mtd_info_user, ptr %11, i32 0, i32 2
  store i32 %119, ptr %120, align 8
  %121 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 3
  %122 = load i32, ptr %121, align 8
  %123 = getelementptr inbounds %struct.mtd_info_user, ptr %11, i32 0, i32 3
  store i32 %122, ptr %123, align 4
  %124 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 4
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr inbounds %struct.mtd_info_user, ptr %11, i32 0, i32 4
  store i32 %125, ptr %126, align 8
  %127 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 6
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr inbounds %struct.mtd_info_user, ptr %11, i32 0, i32 5
  store i32 %128, ptr %129, align 4
  %130 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 32, i32 -1090519040) #13, !srcloc !10
  %131 = extractvalue { i32, i32 } %130, 0
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %1115

133:                                              ; preds = %112
  %134 = tail call ptr @llvm.thread.pointer() #11
  %135 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 3
  %136 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %135) #14, !srcloc !11
  %137 = and i32 %136, -13
  %138 = or i32 %137, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %138) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %139 = call i32 @arm_copy_to_user(ptr noundef %48, ptr noundef nonnull %11, i32 noundef 32) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %136) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %1113, label %1115

141:                                              ; preds = %54, %54
  %142 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %143 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %142, i32 noundef 3520, i32 noundef 24) #15
  %144 = icmp eq ptr %143, null
  br i1 %144, label %1113, label %145

145:                                              ; preds = %141
  %146 = icmp eq i32 %1, 1074810132
  br i1 %146, label %147, label %168

147:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i32 16, i1 false) #11, !annotation !8
  %148 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 16, i32 -1090519040) #13, !srcloc !14
  %149 = extractvalue { i32, i32 } %148, 0
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %159, !prof !15

151:                                              ; preds = %147
  %152 = tail call ptr @llvm.thread.pointer() #11
  %153 = getelementptr inbounds %struct.thread_info, ptr %152, i32 0, i32 3
  %154 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %153) #14, !srcloc !11
  %155 = and i32 %154, -13
  %156 = or i32 %155, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %156) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %157 = call i32 @arm_copy_from_user(ptr noundef nonnull %12, ptr noundef %48, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %154) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %163, label %159, !prof !15

159:                                              ; preds = %151, %147
  %160 = phi i32 [ %157, %151 ], [ 16, %147 ]
  %161 = sub i32 16, %160
  %162 = getelementptr i8, ptr %12, i32 %161
  call void @llvm.memset.p0.i32(ptr align 1 %162, i8 0, i32 %160, i1 false) #11
  call void @kfree(ptr noundef nonnull %143) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  br label %1115

163:                                              ; preds = %151
  %164 = load i64, ptr %12, align 8
  store i64 %164, ptr %143, align 8
  %165 = getelementptr inbounds %struct.erase_info_user64, ptr %12, i32 0, i32 1
  %166 = load i64, ptr %165, align 8
  %167 = getelementptr inbounds %struct.erase_info, ptr %143, i32 0, i32 1
  store i64 %166, ptr %167, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  br label %191

168:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  store i64 0, ptr %13, align 8, !annotation !8
  %169 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 8, i32 -1090519040) #13, !srcloc !14
  %170 = extractvalue { i32, i32 } %169, 0
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %180, !prof !15

172:                                              ; preds = %168
  %173 = tail call ptr @llvm.thread.pointer() #11
  %174 = getelementptr inbounds %struct.thread_info, ptr %173, i32 0, i32 3
  %175 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %174) #14, !srcloc !11
  %176 = and i32 %175, -13
  %177 = or i32 %176, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %177) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %178 = call i32 @arm_copy_from_user(ptr noundef nonnull %13, ptr noundef %48, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %175) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180, !prof !15

180:                                              ; preds = %172, %168
  %181 = phi i32 [ %178, %172 ], [ 8, %168 ]
  %182 = sub i32 8, %181
  %183 = getelementptr i8, ptr %13, i32 %182
  call void @llvm.memset.p0.i32(ptr align 1 %183, i8 0, i32 %181, i1 false) #11
  call void @kfree(ptr noundef nonnull %143) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  br label %1115

184:                                              ; preds = %172
  %185 = load i32, ptr %13, align 8
  %186 = zext i32 %185 to i64
  store i64 %186, ptr %143, align 8
  %187 = getelementptr inbounds %struct.erase_info_user, ptr %13, i32 0, i32 1
  %188 = load i32, ptr %187, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.erase_info, ptr %143, i32 0, i32 1
  store i64 %189, ptr %190, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  br label %191

191:                                              ; preds = %184, %163
  %192 = call i32 @mtd_erase(ptr noundef %41, ptr noundef nonnull %143) #11
  call void @kfree(ptr noundef nonnull %143) #11
  br label %1113

193:                                              ; preds = %54
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i32 12, i1 false) #11, !annotation !8
  %194 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 12, i32 -1090519040) #13, !srcloc !14
  %195 = extractvalue { i32, i32 } %194, 0
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %205, !prof !15

197:                                              ; preds = %193
  %198 = tail call ptr @llvm.thread.pointer() #11
  %199 = getelementptr inbounds %struct.thread_info, ptr %198, i32 0, i32 3
  %200 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %199) #14, !srcloc !11
  %201 = and i32 %200, -13
  %202 = or i32 %201, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %202) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %203 = call i32 @arm_copy_from_user(ptr noundef nonnull %14, ptr noundef %48, i32 noundef 12) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %200) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %209, label %205, !prof !15

205:                                              ; preds = %197, %193
  %206 = phi i32 [ %203, %197 ], [ 12, %193 ]
  %207 = sub i32 12, %206
  %208 = getelementptr i8, ptr %14, i32 %207
  call void @llvm.memset.p0.i32(ptr align 1 %208, i8 0, i32 %206, i1 false) #11
  br label %218

209:                                              ; preds = %197
  %210 = load i32, ptr %14, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.mtd_oob_buf, ptr %14, i32 0, i32 1
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr inbounds %struct.mtd_oob_buf, ptr %14, i32 0, i32 2
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr inbounds %struct.mtd_oob_buf, ptr %48, i32 0, i32 1
  %217 = call fastcc i32 @mtdchar_writeoob(ptr noundef %0, ptr noundef %41, i64 noundef %211, i32 noundef %213, ptr noundef %215, ptr noundef %216) #11
  br label %218

218:                                              ; preds = %209, %205
  %219 = phi i32 [ %217, %209 ], [ -14, %205 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  br label %1113

220:                                              ; preds = %54
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %15, i8 0, i32 12, i1 false) #11, !annotation !8
  %221 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 12, i32 -1090519040) #13, !srcloc !14
  %222 = extractvalue { i32, i32 } %221, 0
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %232, !prof !15

224:                                              ; preds = %220
  %225 = tail call ptr @llvm.thread.pointer() #11
  %226 = getelementptr inbounds %struct.thread_info, ptr %225, i32 0, i32 3
  %227 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %226) #14, !srcloc !11
  %228 = and i32 %227, -13
  %229 = or i32 %228, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %229) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %230 = call i32 @arm_copy_from_user(ptr noundef nonnull %15, ptr noundef %48, i32 noundef 12) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %227) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %236, label %232, !prof !15

232:                                              ; preds = %224, %220
  %233 = phi i32 [ %230, %224 ], [ 12, %220 ]
  %234 = sub i32 12, %233
  %235 = getelementptr i8, ptr %15, i32 %234
  call void @llvm.memset.p0.i32(ptr align 1 %235, i8 0, i32 %233, i1 false) #11
  br label %244

236:                                              ; preds = %224
  %237 = load i32, ptr %15, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.mtd_oob_buf, ptr %15, i32 0, i32 1
  %240 = load i32, ptr %239, align 4
  %241 = getelementptr inbounds %struct.mtd_oob_buf, ptr %15, i32 0, i32 2
  %242 = load ptr, ptr %241, align 4
  %243 = call fastcc i32 @mtdchar_readoob(ptr noundef %0, ptr noundef %41, i64 noundef %238, i32 noundef %240, ptr noundef %242, ptr noundef %48) #11
  br label %244

244:                                              ; preds = %236, %232
  %245 = phi i32 [ %243, %236 ], [ -14, %232 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  br label %1113

246:                                              ; preds = %54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i32 24, i1 false) #11, !annotation !8
  %247 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 24, i32 -1090519040) #13, !srcloc !14
  %248 = extractvalue { i32, i32 } %247, 0
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %258, !prof !15

250:                                              ; preds = %246
  %251 = tail call ptr @llvm.thread.pointer() #11
  %252 = getelementptr inbounds %struct.thread_info, ptr %251, i32 0, i32 3
  %253 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %252) #14, !srcloc !11
  %254 = and i32 %253, -13
  %255 = or i32 %254, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %255) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %256 = call i32 @arm_copy_from_user(ptr noundef nonnull %16, ptr noundef %48, i32 noundef 24) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %253) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %262, label %258, !prof !15

258:                                              ; preds = %250, %246
  %259 = phi i32 [ %256, %250 ], [ 24, %246 ]
  %260 = sub i32 24, %259
  %261 = getelementptr i8, ptr %16, i32 %260
  call void @llvm.memset.p0.i32(ptr align 1 %261, i8 0, i32 %259, i1 false) #11
  br label %272

262:                                              ; preds = %250
  %263 = load i64, ptr %16, align 8
  %264 = getelementptr inbounds %struct.mtd_oob_buf64, ptr %16, i32 0, i32 2
  %265 = load i32, ptr %264, align 4
  %266 = getelementptr inbounds %struct.mtd_oob_buf64, ptr %16, i32 0, i32 3
  %267 = load i64, ptr %266, align 8
  %268 = trunc i64 %267 to i32
  %269 = inttoptr i32 %268 to ptr
  %270 = getelementptr inbounds %struct.mtd_oob_buf64, ptr %48, i32 0, i32 2
  %271 = call fastcc i32 @mtdchar_writeoob(ptr noundef %0, ptr noundef %41, i64 noundef %263, i32 noundef %265, ptr noundef %269, ptr noundef %270) #11
  br label %272

272:                                              ; preds = %262, %258
  %273 = phi i32 [ %271, %262 ], [ -14, %258 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #11
  br label %1113

274:                                              ; preds = %54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i32 24, i1 false) #11, !annotation !8
  %275 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 24, i32 -1090519040) #13, !srcloc !14
  %276 = extractvalue { i32, i32 } %275, 0
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %286, !prof !15

278:                                              ; preds = %274
  %279 = tail call ptr @llvm.thread.pointer() #11
  %280 = getelementptr inbounds %struct.thread_info, ptr %279, i32 0, i32 3
  %281 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %280) #14, !srcloc !11
  %282 = and i32 %281, -13
  %283 = or i32 %282, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %283) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %284 = call i32 @arm_copy_from_user(ptr noundef nonnull %17, ptr noundef %48, i32 noundef 24) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %281) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %290, label %286, !prof !15

286:                                              ; preds = %278, %274
  %287 = phi i32 [ %284, %278 ], [ 24, %274 ]
  %288 = sub i32 24, %287
  %289 = getelementptr i8, ptr %17, i32 %288
  call void @llvm.memset.p0.i32(ptr align 1 %289, i8 0, i32 %287, i1 false) #11
  br label %300

290:                                              ; preds = %278
  %291 = load i64, ptr %17, align 8
  %292 = getelementptr inbounds %struct.mtd_oob_buf64, ptr %17, i32 0, i32 2
  %293 = load i32, ptr %292, align 4
  %294 = getelementptr inbounds %struct.mtd_oob_buf64, ptr %17, i32 0, i32 3
  %295 = load i64, ptr %294, align 8
  %296 = trunc i64 %295 to i32
  %297 = inttoptr i32 %296 to ptr
  %298 = getelementptr inbounds %struct.mtd_oob_buf64, ptr %48, i32 0, i32 2
  %299 = call fastcc i32 @mtdchar_readoob(ptr noundef %0, ptr noundef %41, i64 noundef %291, i32 noundef %293, ptr noundef %297, ptr noundef %298) #11
  br label %300

300:                                              ; preds = %290, %286
  %301 = phi i32 [ %299, %290 ], [ -14, %286 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #11
  br label %1113

302:                                              ; preds = %302, %54
  %303 = phi ptr [ %305, %302 ], [ %41, %54 ]
  %304 = getelementptr inbounds %struct.mtd_info, ptr %303, i32 0, i32 62
  %305 = load ptr, ptr %304, align 4
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %302

307:                                              ; preds = %302
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i32 48, i1 false) #11, !annotation !8
  %308 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 48, i32 -1090519040) #13, !srcloc !14
  %309 = extractvalue { i32, i32 } %308, 0
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %319, !prof !15

311:                                              ; preds = %307
  %312 = tail call ptr @llvm.thread.pointer() #11
  %313 = getelementptr inbounds %struct.thread_info, ptr %312, i32 0, i32 3
  %314 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %313) #14, !srcloc !11
  %315 = and i32 %314, -13
  %316 = or i32 %315, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %316) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %317 = call i32 @arm_copy_from_user(ptr noundef nonnull %9, ptr noundef %48, i32 noundef 48) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %314) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %323, label %319, !prof !15

319:                                              ; preds = %311, %307
  %320 = phi i32 [ %317, %311 ], [ 48, %307 ]
  %321 = sub i32 48, %320
  %322 = getelementptr i8, ptr %9, i32 %321
  call void @llvm.memset.p0.i32(ptr align 1 %322, i8 0, i32 %320, i1 false) #11
  br label %553

323:                                              ; preds = %311
  %324 = getelementptr inbounds %struct.mtd_write_req, ptr %9, i32 0, i32 3
  %325 = load i64, ptr %324, align 8
  %326 = trunc i64 %325 to i32
  %327 = inttoptr i32 %326 to ptr
  %328 = getelementptr inbounds %struct.mtd_write_req, ptr %9, i32 0, i32 4
  %329 = load i64, ptr %328, align 8
  %330 = trunc i64 %329 to i32
  %331 = inttoptr i32 %330 to ptr
  %332 = getelementptr inbounds %struct.mtd_info, ptr %303, i32 0, i32 28
  %333 = load ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, null
  br i1 %334, label %553, label %335

335:                                              ; preds = %323
  %336 = icmp eq i32 %326, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %335
  %338 = getelementptr inbounds %struct.mtd_write_req, ptr %9, i32 0, i32 1
  store i64 0, ptr %338, align 8
  br label %339

339:                                              ; preds = %337, %335
  %340 = icmp eq i32 %330, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %339
  %342 = getelementptr inbounds %struct.mtd_write_req, ptr %9, i32 0, i32 2
  store i64 0, ptr %342, align 8
  br label %343

343:                                              ; preds = %341, %339
  %344 = load i64, ptr %9, align 8
  %345 = getelementptr inbounds %struct.mtd_write_req, ptr %9, i32 0, i32 1
  %346 = load i64, ptr %345, align 8
  %347 = add i64 %346, %344
  %348 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 2
  %349 = load i64, ptr %348, align 8
  %350 = icmp ugt i64 %347, %349
  br i1 %350, label %553, label %351

351:                                              ; preds = %343
  %352 = trunc i64 %346 to i32
  %353 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 3
  %354 = load i32, ptr %353, align 8
  %355 = call i32 @llvm.umin.i32(i32 %354, i32 %352) #11
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %362, label %357

357:                                              ; preds = %351
  %358 = call noalias align 64 ptr @__kmalloc(i32 noundef %355, i32 noundef 3264) #16
  %359 = icmp eq ptr %358, null
  br i1 %359, label %553, label %360

360:                                              ; preds = %357
  %361 = load i32, ptr %353, align 8
  br label %362

362:                                              ; preds = %360, %351
  %363 = phi i32 [ %361, %360 ], [ %354, %351 ]
  %364 = phi ptr [ %358, %360 ], [ null, %351 ]
  %365 = getelementptr inbounds %struct.mtd_write_req, ptr %9, i32 0, i32 2
  %366 = load i64, ptr %365, align 8
  %367 = trunc i64 %366 to i32
  %368 = call i32 @llvm.umin.i32(i32 %363, i32 %367) #11
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %374, label %370

370:                                              ; preds = %362
  %371 = call noalias align 64 ptr @__kmalloc(i32 noundef %368, i32 noundef 3264) #16
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %374

373:                                              ; preds = %370
  call void @kfree(ptr noundef %364) #11
  br label %553

374:                                              ; preds = %370, %362
  %375 = phi ptr [ %371, %370 ], [ null, %362 ]
  %376 = getelementptr inbounds %struct.mtd_write_req, ptr %9, i32 0, i32 5
  %377 = getelementptr inbounds %struct.mtd_oob_ops, ptr %10, i32 0, i32 1
  %378 = getelementptr inbounds %struct.mtd_oob_ops, ptr %10, i32 0, i32 2
  %379 = getelementptr inbounds %struct.mtd_oob_ops, ptr %10, i32 0, i32 3
  %380 = getelementptr inbounds %struct.mtd_oob_ops, ptr %10, i32 0, i32 4
  %381 = getelementptr inbounds %struct.mtd_oob_ops, ptr %10, i32 0, i32 5
  %382 = getelementptr inbounds %struct.mtd_oob_ops, ptr %10, i32 0, i32 6
  %383 = getelementptr inbounds %struct.mtd_oob_ops, ptr %10, i32 0, i32 7
  %384 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 9
  %385 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 11
  %386 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 4
  %387 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 7
  %388 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 6
  %389 = load i64, ptr %345, align 8
  br label %390

390:                                              ; preds = %538, %374
  %391 = phi i64 [ %389, %374 ], [ %544, %538 ]
  %392 = phi ptr [ %331, %374 ], [ %550, %538 ]
  %393 = phi ptr [ %327, %374 ], [ %545, %538 ]
  %394 = icmp eq i64 %391, 0
  br i1 %394, label %398, label %395

395:                                              ; preds = %390
  %396 = load i64, ptr %365, align 8
  %397 = trunc i64 %396 to i32
  br label %404

398:                                              ; preds = %390
  %399 = icmp eq ptr %393, null
  %400 = load i64, ptr %365, align 8
  %401 = icmp ne i64 %400, 0
  %402 = select i1 %399, i1 %401, i1 false
  %403 = trunc i64 %400 to i32
  br i1 %402, label %404, label %551

404:                                              ; preds = %398, %395
  %405 = phi i32 [ %397, %395 ], [ %403, %398 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #11
  %406 = load i8, ptr %376, align 8
  %407 = zext i8 %406 to i32
  store i32 %407, ptr %10, align 4
  %408 = trunc i64 %391 to i32
  %409 = call i32 @llvm.umin.i32(i32 %355, i32 %408) #11
  store i32 %409, ptr %377, align 4
  store i32 0, ptr %378, align 4
  %410 = call i32 @llvm.umin.i32(i32 %368, i32 %405) #11
  store i32 %410, ptr %379, align 4
  store i32 0, ptr %380, align 4
  store i32 0, ptr %381, align 4
  store ptr %364, ptr %382, align 4
  store ptr %375, ptr %383, align 4
  %411 = load i32, ptr %353, align 8
  %412 = icmp eq i32 %409, %411
  %413 = load i64, ptr %9, align 8
  br i1 %412, label %414, label %437

414:                                              ; preds = %404
  %415 = zext i32 %409 to i64
  %416 = add i64 %413, %415
  %417 = load i32, ptr %384, align 8
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %423, label %419

419:                                              ; preds = %414
  %420 = load i32, ptr %385, align 8
  %421 = trunc i64 %416 to i32
  %422 = and i32 %420, %421
  br label %434

423:                                              ; preds = %414
  %424 = load i32, ptr %386, align 4
  %425 = icmp ult i64 %416, 4294967296
  br i1 %425, label %426, label %429, !prof !15

426:                                              ; preds = %423
  %427 = trunc i64 %416 to i32
  %428 = urem i32 %427, %424
  br label %434

429:                                              ; preds = %423
  %430 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %424, i64 %416) #13, !srcloc !20
  %431 = extractvalue { i64, i64 } %430, 0
  %432 = lshr i64 %431, 32
  %433 = trunc i64 %432 to i32
  br label %434

434:                                              ; preds = %429, %426, %419
  %435 = phi i32 [ %422, %419 ], [ %428, %426 ], [ %433, %429 ]
  %436 = sub i32 %409, %435
  store i32 %436, ptr %377, align 4
  br label %437

437:                                              ; preds = %434, %404
  %438 = phi i32 [ %436, %434 ], [ %409, %404 ]
  %439 = icmp eq i32 %438, 0
  %440 = icmp eq i32 %410, 0
  %441 = select i1 %439, i1 true, i1 %440
  br i1 %441, label %487, label %442

442:                                              ; preds = %437
  %443 = load i32, ptr %384, align 8
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %455

445:                                              ; preds = %442
  %446 = load i32, ptr %386, align 4
  %447 = icmp ult i64 %413, 4294967296
  br i1 %447, label %448, label %451, !prof !15

448:                                              ; preds = %445
  %449 = trunc i64 %413 to i32
  %450 = udiv i32 %449, %446
  br label %464

451:                                              ; preds = %445
  %452 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %446, i64 %413) #13, !srcloc !20
  %453 = extractvalue { i64, i64 } %452, 1
  %454 = trunc i64 %453 to i32
  br label %464

455:                                              ; preds = %442
  %456 = zext i32 %443 to i64
  %457 = lshr i64 %413, %456
  %458 = trunc i64 %457 to i32
  %459 = zext i32 %438 to i64
  %460 = add i64 %413, -1
  %461 = add i64 %460, %459
  %462 = lshr i64 %461, %456
  %463 = trunc i64 %462 to i32
  br label %477

464:                                              ; preds = %451, %448
  %465 = phi i32 [ %450, %448 ], [ %454, %451 ]
  %466 = zext i32 %438 to i64
  %467 = add i64 %413, -1
  %468 = add i64 %467, %466
  %469 = icmp ult i64 %468, 4294967296
  br i1 %469, label %470, label %473, !prof !15

470:                                              ; preds = %464
  %471 = trunc i64 %468 to i32
  %472 = udiv i32 %471, %446
  br label %477

473:                                              ; preds = %464
  %474 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %446, i64 %468) #13, !srcloc !20
  %475 = extractvalue { i64, i64 } %474, 1
  %476 = trunc i64 %475 to i32
  br label %477

477:                                              ; preds = %473, %470, %455
  %478 = phi i32 [ %458, %455 ], [ %465, %470 ], [ %465, %473 ]
  %479 = phi i32 [ %463, %455 ], [ %472, %470 ], [ %476, %473 ]
  %480 = icmp eq i8 %406, 1
  %481 = select i1 %480, ptr %387, ptr %388
  %482 = load i32, ptr %481, align 4
  %483 = sub i32 1, %478
  %484 = add i32 %483, %479
  %485 = mul i32 %482, %484
  %486 = call i32 @llvm.umin.i32(i32 %410, i32 %485) #11
  store i32 %486, ptr %379, align 4
  br label %487

487:                                              ; preds = %477, %437
  %488 = icmp slt i32 %438, 0
  %489 = load i1, ptr @check_copy_size.__already_done, align 1
  %490 = xor i1 %489, true
  %491 = select i1 %488, i1 %490, i1 false
  br i1 %491, label %492, label %493, !prof !9

492:                                              ; preds = %487
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %493

493:                                              ; preds = %492, %487
  br i1 %488, label %536, label %494, !prof !9

494:                                              ; preds = %493
  %495 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %393, i32 %438, i32 -1090519040) #13, !srcloc !14
  %496 = extractvalue { i32, i32 } %495, 0
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %503, !prof !15

498:                                              ; preds = %494
  %499 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %313) #14, !srcloc !11
  %500 = and i32 %499, -13
  %501 = or i32 %500, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %501) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %502 = call i32 @arm_copy_from_user(ptr noundef %364, ptr noundef %393, i32 noundef %438) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %499) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  br label %503

503:                                              ; preds = %498, %494
  %504 = phi i32 [ %502, %498 ], [ %438, %494 ]
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %509, label %506, !prof !15

506:                                              ; preds = %503
  %507 = sub i32 %438, %504
  %508 = getelementptr i8, ptr %364, i32 %507
  call void @llvm.memset.p0.i32(ptr align 1 %508, i8 0, i32 %504, i1 false) #11
  br label %536

509:                                              ; preds = %503
  %510 = load i32, ptr %379, align 4
  %511 = icmp slt i32 %510, 0
  %512 = load i1, ptr @check_copy_size.__already_done, align 1
  %513 = xor i1 %512, true
  %514 = select i1 %511, i1 %513, i1 false
  br i1 %514, label %515, label %516, !prof !9

515:                                              ; preds = %509
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %516

516:                                              ; preds = %515, %509
  br i1 %511, label %536, label %517, !prof !9

517:                                              ; preds = %516
  %518 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %392, i32 %510, i32 -1090519040) #13, !srcloc !14
  %519 = extractvalue { i32, i32 } %518, 0
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %526, !prof !15

521:                                              ; preds = %517
  %522 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %313) #14, !srcloc !11
  %523 = and i32 %522, -13
  %524 = or i32 %523, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %524) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %525 = call i32 @arm_copy_from_user(ptr noundef %375, ptr noundef %392, i32 noundef %510) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %522) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  br label %526

526:                                              ; preds = %521, %517
  %527 = phi i32 [ %525, %521 ], [ %510, %517 ]
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %532, label %529, !prof !15

529:                                              ; preds = %526
  %530 = sub i32 %510, %527
  %531 = getelementptr i8, ptr %375, i32 %530
  call void @llvm.memset.p0.i32(ptr align 1 %531, i8 0, i32 %527, i1 false) #11
  br label %536

532:                                              ; preds = %526
  %533 = load i64, ptr %9, align 8
  %534 = call i32 @mtd_write_oob(ptr noundef %41, i64 noundef %533, ptr noundef nonnull %10) #11
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %538, label %536

536:                                              ; preds = %532, %529, %516, %506, %493
  %537 = phi i32 [ -14, %506 ], [ -14, %529 ], [ -14, %516 ], [ -14, %493 ], [ %534, %532 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  br label %551

538:                                              ; preds = %532
  %539 = load i32, ptr %378, align 4
  %540 = zext i32 %539 to i64
  %541 = load i64, ptr %9, align 8
  %542 = add i64 %541, %540
  store i64 %542, ptr %9, align 8
  %543 = load i64, ptr %345, align 8
  %544 = sub i64 %543, %540
  store i64 %544, ptr %345, align 8
  %545 = getelementptr i8, ptr %393, i32 %539
  %546 = load i32, ptr %380, align 4
  %547 = zext i32 %546 to i64
  %548 = load i64, ptr %365, align 8
  %549 = sub i64 %548, %547
  store i64 %549, ptr %365, align 8
  %550 = getelementptr i8, ptr %392, i32 %546
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  br label %390

551:                                              ; preds = %536, %398
  %552 = phi i32 [ %537, %536 ], [ 0, %398 ]
  call void @kfree(ptr noundef %364) #11
  call void @kfree(ptr noundef %375) #11
  br label %553

553:                                              ; preds = %551, %373, %357, %343, %323, %319
  %554 = phi i32 [ %552, %551 ], [ -12, %373 ], [ -95, %323 ], [ -22, %343 ], [ -12, %357 ], [ -14, %319 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #11
  br label %1113

555:                                              ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #11
  store i64 0, ptr %18, align 8, !annotation !8
  %556 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 8, i32 -1090519040) #13, !srcloc !14
  %557 = extractvalue { i32, i32 } %556, 0
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %567, !prof !15

559:                                              ; preds = %555
  %560 = tail call ptr @llvm.thread.pointer() #11
  %561 = getelementptr inbounds %struct.thread_info, ptr %560, i32 0, i32 3
  %562 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %561) #14, !srcloc !11
  %563 = and i32 %562, -13
  %564 = or i32 %563, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %564) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %565 = call i32 @arm_copy_from_user(ptr noundef nonnull %18, ptr noundef %48, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %562) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %568, label %567, !prof !15

567:                                              ; preds = %559, %555
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #11
  br label %1115

568:                                              ; preds = %559
  %569 = load i32, ptr %18, align 8
  %570 = zext i32 %569 to i64
  %571 = getelementptr inbounds %struct.erase_info_user, ptr %18, i32 0, i32 1
  %572 = load i32, ptr %571, align 4
  %573 = zext i32 %572 to i64
  %574 = call i32 @mtd_lock(ptr noundef %41, i64 noundef %570, i64 noundef %573) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #11
  br label %1113

575:                                              ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #11
  store i64 0, ptr %19, align 8, !annotation !8
  %576 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 8, i32 -1090519040) #13, !srcloc !14
  %577 = extractvalue { i32, i32 } %576, 0
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %587, !prof !15

579:                                              ; preds = %575
  %580 = tail call ptr @llvm.thread.pointer() #11
  %581 = getelementptr inbounds %struct.thread_info, ptr %580, i32 0, i32 3
  %582 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %581) #14, !srcloc !11
  %583 = and i32 %582, -13
  %584 = or i32 %583, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %584) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %585 = call i32 @arm_copy_from_user(ptr noundef nonnull %19, ptr noundef %48, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %582) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %588, label %587, !prof !15

587:                                              ; preds = %579, %575
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #11
  br label %1115

588:                                              ; preds = %579
  %589 = load i32, ptr %19, align 8
  %590 = zext i32 %589 to i64
  %591 = getelementptr inbounds %struct.erase_info_user, ptr %19, i32 0, i32 1
  %592 = load i32, ptr %591, align 4
  %593 = zext i32 %592 to i64
  %594 = call i32 @mtd_unlock(ptr noundef %41, i64 noundef %590, i64 noundef %593) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #11
  br label %1113

595:                                              ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #11
  store i64 0, ptr %20, align 8, !annotation !8
  %596 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 8, i32 -1090519040) #13, !srcloc !14
  %597 = extractvalue { i32, i32 } %596, 0
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %607, !prof !15

599:                                              ; preds = %595
  %600 = tail call ptr @llvm.thread.pointer() #11
  %601 = getelementptr inbounds %struct.thread_info, ptr %600, i32 0, i32 3
  %602 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %601) #14, !srcloc !11
  %603 = and i32 %602, -13
  %604 = or i32 %603, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %604) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %605 = call i32 @arm_copy_from_user(ptr noundef nonnull %20, ptr noundef %48, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %602) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %608, label %607, !prof !15

607:                                              ; preds = %599, %595
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #11
  br label %1115

608:                                              ; preds = %599
  %609 = load i32, ptr %20, align 8
  %610 = zext i32 %609 to i64
  %611 = getelementptr inbounds %struct.erase_info_user, ptr %20, i32 0, i32 1
  %612 = load i32, ptr %611, align 4
  %613 = zext i32 %612 to i64
  %614 = call i32 @mtd_is_locked(ptr noundef %41, i64 noundef %610, i64 noundef %613) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #11
  br label %1113

615:                                              ; preds = %54
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %21) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(200) %21, i8 0, i32 200, i1 false) #11, !annotation !8
  %616 = getelementptr inbounds %struct.mtd_info, ptr %43, i32 0, i32 15
  %617 = load ptr, ptr %616, align 8
  %618 = icmp eq ptr %617, null
  br i1 %618, label %718, label %619

619:                                              ; preds = %615
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store i64 0, ptr %4, align 8, !annotation !8
  %620 = icmp eq ptr %41, null
  br i1 %620, label %712, label %621

621:                                              ; preds = %619
  %622 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 1
  %623 = getelementptr inbounds %struct.mtd_oob_region, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(200) %21, i8 0, i64 200, i1 false) #11
  br label %627

624:                                              ; preds = %643, %639
  %625 = phi i32 [ %629, %639 ], [ %650, %643 ]
  %626 = icmp ult i32 %625, 32
  br i1 %626, label %627, label %652

627:                                              ; preds = %624, %621
  %628 = phi i32 [ 0, %621 ], [ %630, %624 ]
  %629 = phi i32 [ 0, %621 ], [ %625, %624 ]
  %630 = add i32 %628, 1
  %631 = call i32 @mtd_ooblayout_ecc(ptr noundef nonnull %41, i32 noundef %628, ptr noundef nonnull %4) #11
  %632 = icmp slt i32 %631, 0
  br i1 %632, label %633, label %635

633:                                              ; preds = %627
  %634 = icmp eq i32 %631, -34
  br i1 %634, label %652, label %712

635:                                              ; preds = %627
  %636 = load i32, ptr %623, align 4
  %637 = add i32 %636, %629
  %638 = icmp ugt i32 %637, 32
  br i1 %638, label %712, label %639

639:                                              ; preds = %635
  %640 = load i32, ptr %4, align 8
  %641 = add i32 %640, %636
  %642 = icmp ult i32 %640, %641
  br i1 %642, label %643, label %624

643:                                              ; preds = %643, %639
  %644 = phi i32 [ %646, %643 ], [ %640, %639 ]
  %645 = phi i32 [ %650, %643 ], [ %629, %639 ]
  %646 = add nuw i32 %644, 1
  %647 = getelementptr %struct.nand_oobinfo, ptr %21, i32 0, i32 3, i32 %645
  store i32 %644, ptr %647, align 4
  %648 = load i32, ptr %622, align 4
  %649 = add i32 %648, 1
  store i32 %649, ptr %622, align 4
  %650 = add i32 %645, 1
  %651 = icmp eq i32 %646, %641
  br i1 %651, label %624, label %643

652:                                              ; preds = %633, %624
  %653 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %41, i32 noundef 0, ptr noundef nonnull %4) #11
  %654 = icmp slt i32 %653, 0
  br i1 %654, label %655, label %658

655:                                              ; preds = %700, %693, %686, %679, %672, %665, %658, %652
  %656 = phi i32 [ %653, %652 ], [ %663, %658 ], [ %670, %665 ], [ %677, %672 ], [ %684, %679 ], [ %691, %686 ], [ %698, %693 ], [ %705, %700 ]
  %657 = icmp eq i32 %656, -34
  br i1 %657, label %714, label %712

658:                                              ; preds = %652
  %659 = load i32, ptr %4, align 8
  %660 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 2, i32 0
  store i32 %659, ptr %660, align 4
  %661 = load i32, ptr %623, align 4
  %662 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 2, i32 0, i32 1
  store i32 %661, ptr %662, align 4
  %663 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %41, i32 noundef 1, ptr noundef nonnull %4) #11
  %664 = icmp slt i32 %663, 0
  br i1 %664, label %655, label %665

665:                                              ; preds = %658
  %666 = load i32, ptr %4, align 8
  %667 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 2, i32 1
  store i32 %666, ptr %667, align 4
  %668 = load i32, ptr %623, align 4
  %669 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 2, i32 1, i32 1
  store i32 %668, ptr %669, align 4
  %670 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %41, i32 noundef 2, ptr noundef nonnull %4) #11
  %671 = icmp slt i32 %670, 0
  br i1 %671, label %655, label %672

672:                                              ; preds = %665
  %673 = load i32, ptr %4, align 8
  %674 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 2, i32 2
  store i32 %673, ptr %674, align 4
  %675 = load i32, ptr %623, align 4
  %676 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 2, i32 2, i32 1
  store i32 %675, ptr %676, align 4
  %677 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %41, i32 noundef 3, ptr noundef nonnull %4) #11
  %678 = icmp slt i32 %677, 0
  br i1 %678, label %655, label %679

679:                                              ; preds = %672
  %680 = load i32, ptr %4, align 8
  %681 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 2, i32 3
  store i32 %680, ptr %681, align 4
  %682 = load i32, ptr %623, align 4
  %683 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 2, i32 3, i32 1
  store i32 %682, ptr %683, align 4
  %684 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %41, i32 noundef 4, ptr noundef nonnull %4) #11
  %685 = icmp slt i32 %684, 0
  br i1 %685, label %655, label %686

686:                                              ; preds = %679
  %687 = load i32, ptr %4, align 8
  %688 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 2, i32 4
  store i32 %687, ptr %688, align 4
  %689 = load i32, ptr %623, align 4
  %690 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 2, i32 4, i32 1
  store i32 %689, ptr %690, align 4
  %691 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %41, i32 noundef 5, ptr noundef nonnull %4) #11
  %692 = icmp slt i32 %691, 0
  br i1 %692, label %655, label %693

693:                                              ; preds = %686
  %694 = load i32, ptr %4, align 8
  %695 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 2, i32 5
  store i32 %694, ptr %695, align 4
  %696 = load i32, ptr %623, align 4
  %697 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 2, i32 5, i32 1
  store i32 %696, ptr %697, align 4
  %698 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %41, i32 noundef 6, ptr noundef nonnull %4) #11
  %699 = icmp slt i32 %698, 0
  br i1 %699, label %655, label %700

700:                                              ; preds = %693
  %701 = load i32, ptr %4, align 8
  %702 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 2, i32 6
  store i32 %701, ptr %702, align 4
  %703 = load i32, ptr %623, align 4
  %704 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 2, i32 6, i32 1
  store i32 %703, ptr %704, align 4
  %705 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %41, i32 noundef 7, ptr noundef nonnull %4) #11
  %706 = icmp slt i32 %705, 0
  br i1 %706, label %655, label %707

707:                                              ; preds = %700
  %708 = load i32, ptr %4, align 8
  %709 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 2, i32 7
  store i32 %708, ptr %709, align 4
  %710 = load i32, ptr %623, align 4
  %711 = getelementptr inbounds %struct.nand_oobinfo, ptr %21, i32 0, i32 2, i32 7, i32 1
  store i32 %710, ptr %711, align 4
  br label %714

712:                                              ; preds = %655, %635, %633, %619
  %713 = phi i32 [ %631, %633 ], [ %656, %655 ], [ -22, %619 ], [ -22, %635 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %718

714:                                              ; preds = %707, %655
  store i32 2, ptr %21, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %715 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 200, i32 -1090519040) #13, !srcloc !10
  %716 = extractvalue { i32, i32 } %715, 0
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %721, label %720

718:                                              ; preds = %712, %615
  %719 = phi i32 [ -95, %615 ], [ %713, %712 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %21) #11
  br label %1115

720:                                              ; preds = %714
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %21) #11
  br label %1115

721:                                              ; preds = %714
  %722 = tail call ptr @llvm.thread.pointer() #11
  %723 = getelementptr inbounds %struct.thread_info, ptr %722, i32 0, i32 3
  %724 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %723) #14, !srcloc !11
  %725 = and i32 %724, -13
  %726 = or i32 %725, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %726) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %727 = call i32 @arm_copy_to_user(ptr noundef %48, ptr noundef nonnull %21, i32 noundef 200) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %724) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %728 = icmp eq i32 %727, 0
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %21) #11
  br i1 %728, label %1113, label %1115

729:                                              ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #11
  store i64 0, ptr %22, align 8, !annotation !8
  %730 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 8, i32 -1090519040) #13, !srcloc !14
  %731 = extractvalue { i32, i32 } %730, 0
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %733, label %741, !prof !15

733:                                              ; preds = %729
  %734 = tail call ptr @llvm.thread.pointer() #11
  %735 = getelementptr inbounds %struct.thread_info, ptr %734, i32 0, i32 3
  %736 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %735) #14, !srcloc !11
  %737 = and i32 %736, -13
  %738 = or i32 %737, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %738) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %739 = call i32 @arm_copy_from_user(ptr noundef nonnull %22, ptr noundef %48, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %736) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %745, label %741, !prof !15

741:                                              ; preds = %733, %729
  %742 = phi i32 [ %739, %733 ], [ 8, %729 ]
  %743 = sub i32 8, %742
  %744 = getelementptr i8, ptr %22, i32 %743
  call void @llvm.memset.p0.i32(ptr align 1 %744, i8 0, i32 %742, i1 false) #11
  br label %748

745:                                              ; preds = %733
  %746 = load i64, ptr %22, align 8
  %747 = call i32 @mtd_block_isbad(ptr noundef %41, i64 noundef %746) #11
  br label %748

748:                                              ; preds = %745, %741
  %749 = phi i32 [ %747, %745 ], [ -14, %741 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #11
  br label %1115

750:                                              ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #11
  store i64 0, ptr %23, align 8, !annotation !8
  %751 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 8, i32 -1090519040) #13, !srcloc !14
  %752 = extractvalue { i32, i32 } %751, 0
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %754, label %762, !prof !15

754:                                              ; preds = %750
  %755 = tail call ptr @llvm.thread.pointer() #11
  %756 = getelementptr inbounds %struct.thread_info, ptr %755, i32 0, i32 3
  %757 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %756) #14, !srcloc !11
  %758 = and i32 %757, -13
  %759 = or i32 %758, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %759) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %760 = call i32 @arm_copy_from_user(ptr noundef nonnull %23, ptr noundef %48, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %757) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %766, label %762, !prof !15

762:                                              ; preds = %754, %750
  %763 = phi i32 [ %760, %754 ], [ 8, %750 ]
  %764 = sub i32 8, %763
  %765 = getelementptr i8, ptr %23, i32 %764
  call void @llvm.memset.p0.i32(ptr align 1 %765, i8 0, i32 %763, i1 false) #11
  br label %769

766:                                              ; preds = %754
  %767 = load i64, ptr %23, align 8
  %768 = call i32 @mtd_block_markbad(ptr noundef %41, i64 noundef %767) #11
  br label %769

769:                                              ; preds = %766, %762
  %770 = phi i32 [ %768, %766 ], [ -14, %762 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #11
  br label %1115

771:                                              ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #11
  store i32 0, ptr %24, align 4, !annotation !8
  %772 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 4, i32 -1090519040) #13, !srcloc !14
  %773 = extractvalue { i32, i32 } %772, 0
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %775, label %783, !prof !15

775:                                              ; preds = %771
  %776 = tail call ptr @llvm.thread.pointer() #11
  %777 = getelementptr inbounds %struct.thread_info, ptr %776, i32 0, i32 3
  %778 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %777) #14, !srcloc !11
  %779 = and i32 %778, -13
  %780 = or i32 %779, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %780) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %781 = call i32 @arm_copy_from_user(ptr noundef nonnull %24, ptr noundef %48, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %778) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %784, label %783, !prof !15

783:                                              ; preds = %775, %771
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #11
  br label %1115

784:                                              ; preds = %775
  %785 = getelementptr inbounds %struct.mtd_file_info, ptr %40, i32 0, i32 1
  store i32 0, ptr %785, align 4
  %786 = load i32, ptr %24, align 4
  %787 = load ptr, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  switch i32 %786, label %795 [
    i32 1, label %788
    i32 2, label %791
    i32 0, label %794
  ]

788:                                              ; preds = %784
  %789 = call i32 @mtd_read_fact_prot_reg(ptr noundef %787, i64 noundef -1, i32 noundef 0, ptr noundef nonnull %5, ptr noundef null) #11
  %790 = icmp eq i32 %789, -95
  br i1 %790, label %795, label %794

791:                                              ; preds = %784
  %792 = call i32 @mtd_read_user_prot_reg(ptr noundef %787, i64 noundef -1, i32 noundef 0, ptr noundef nonnull %5, ptr noundef null) #11
  %793 = icmp eq i32 %792, -95
  br i1 %793, label %795, label %794

794:                                              ; preds = %791, %788, %784
  store i32 %786, ptr %785, align 4
  br label %795

795:                                              ; preds = %794, %791, %788, %784
  %796 = phi i32 [ -95, %788 ], [ -95, %791 ], [ -22, %784 ], [ 0, %794 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %797 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  store i64 0, ptr %797, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #11
  br label %1113

798:                                              ; preds = %54, %54
  %799 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %800 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %799, i32 noundef 3264, i32 noundef 4096) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #11
  store i32 0, ptr %25, align 4, !annotation !8
  %801 = icmp eq ptr %800, null
  br i1 %801, label %802, label %803

802:                                              ; preds = %798
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #11
  br label %1115

803:                                              ; preds = %798
  %804 = getelementptr inbounds %struct.mtd_file_info, ptr %40, i32 0, i32 1
  %805 = load i32, ptr %804, align 4
  switch i32 %805, label %849 [
    i32 1, label %806
    i32 2, label %808
  ]

806:                                              ; preds = %803
  %807 = call i32 @mtd_get_fact_prot_info(ptr noundef %41, i32 noundef 4096, ptr noundef nonnull %25, ptr noundef nonnull %800) #11
  br label %810

808:                                              ; preds = %803
  %809 = call i32 @mtd_get_user_prot_info(ptr noundef %41, i32 noundef 4096, ptr noundef nonnull %25, ptr noundef nonnull %800) #11
  br label %810

810:                                              ; preds = %808, %806
  %811 = phi i32 [ %809, %808 ], [ %807, %806 ]
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %849

813:                                              ; preds = %810
  %814 = icmp eq i32 %1, 1074023694
  br i1 %814, label %815, label %830

815:                                              ; preds = %813
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #11
  %816 = load i32, ptr %25, align 4
  %817 = udiv i32 %816, 12
  store i32 %817, ptr %26, align 4
  %818 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 4, i32 -1090519040) #13, !srcloc !10
  %819 = extractvalue { i32, i32 } %818, 0
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %821, label %828

821:                                              ; preds = %815
  %822 = tail call ptr @llvm.thread.pointer() #11
  %823 = getelementptr inbounds %struct.thread_info, ptr %822, i32 0, i32 3
  %824 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %823) #14, !srcloc !11
  %825 = and i32 %824, -13
  %826 = or i32 %825, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %826) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %827 = call i32 @arm_copy_to_user(ptr noundef %48, ptr noundef nonnull %26, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %824) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  br label %828

828:                                              ; preds = %821, %815
  %829 = phi i32 [ %827, %821 ], [ 4, %815 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #11
  br label %845

830:                                              ; preds = %813
  %831 = load i32, ptr %25, align 4
  %832 = icmp ugt i32 %831, 4096
  br i1 %832, label %833, label %834, !prof !9

833:                                              ; preds = %830
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef 4096, i32 noundef %831) #11
  br label %849

834:                                              ; preds = %830
  %835 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 %831, i32 -1090519040) #13, !srcloc !10
  %836 = extractvalue { i32, i32 } %835, 0
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %845

838:                                              ; preds = %834
  %839 = tail call ptr @llvm.thread.pointer() #11
  %840 = getelementptr inbounds %struct.thread_info, ptr %839, i32 0, i32 3
  %841 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %840) #14, !srcloc !11
  %842 = and i32 %841, -13
  %843 = or i32 %842, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %843) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %844 = call i32 @arm_copy_to_user(ptr noundef %48, ptr noundef nonnull %800, i32 noundef %831) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %841) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  br label %845

845:                                              ; preds = %838, %834, %828
  %846 = phi i32 [ %829, %828 ], [ %844, %838 ], [ %831, %834 ]
  %847 = icmp eq i32 %846, 0
  %848 = select i1 %847, i32 0, i32 -14
  br label %849

849:                                              ; preds = %845, %833, %810, %803
  %850 = phi i32 [ %811, %810 ], [ -22, %803 ], [ -14, %833 ], [ %848, %845 ]
  call void @kfree(ptr noundef nonnull %800) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #11
  br label %1113

851:                                              ; preds = %54, %54
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %27, i8 0, i32 12, i1 false) #11, !annotation !8
  %852 = getelementptr inbounds %struct.mtd_file_info, ptr %40, i32 0, i32 1
  %853 = load i32, ptr %852, align 4
  %854 = icmp eq i32 %853, 2
  br i1 %854, label %855, label %883

855:                                              ; preds = %851
  %856 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 12, i32 -1090519040) #13, !srcloc !14
  %857 = extractvalue { i32, i32 } %856, 0
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %859, label %867, !prof !15

859:                                              ; preds = %855
  %860 = tail call ptr @llvm.thread.pointer() #11
  %861 = getelementptr inbounds %struct.thread_info, ptr %860, i32 0, i32 3
  %862 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %861) #14, !srcloc !11
  %863 = and i32 %862, -13
  %864 = or i32 %863, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %864) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %865 = call i32 @arm_copy_from_user(ptr noundef nonnull %27, ptr noundef %48, i32 noundef 12) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %862) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %871, label %867, !prof !15

867:                                              ; preds = %859, %855
  %868 = phi i32 [ %865, %859 ], [ 12, %855 ]
  %869 = sub i32 12, %868
  %870 = getelementptr i8, ptr %27, i32 %869
  call void @llvm.memset.p0.i32(ptr align 1 %870, i8 0, i32 %868, i1 false) #11
  br label %883

871:                                              ; preds = %859
  %872 = icmp eq i32 %1, -2146677488
  %873 = load i32, ptr %27, align 4
  %874 = zext i32 %873 to i64
  %875 = getelementptr inbounds %struct.otp_info, ptr %27, i32 0, i32 1
  %876 = load i32, ptr %875, align 4
  br i1 %872, label %877, label %879

877:                                              ; preds = %871
  %878 = call i32 @mtd_lock_user_prot_reg(ptr noundef %41, i64 noundef %874, i32 noundef %876) #11
  br label %881

879:                                              ; preds = %871
  %880 = call i32 @mtd_erase_user_prot_reg(ptr noundef %41, i64 noundef %874, i32 noundef %876) #11
  br label %881

881:                                              ; preds = %879, %877
  %882 = phi i32 [ %880, %879 ], [ %878, %877 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #11
  br label %1113

883:                                              ; preds = %867, %851
  %884 = phi i32 [ -22, %851 ], [ -14, %867 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #11
  br label %1115

885:                                              ; preds = %54
  %886 = getelementptr inbounds %struct.mtd_info, ptr %43, i32 0, i32 15
  %887 = load ptr, ptr %886, align 8
  %888 = icmp eq ptr %887, null
  br i1 %888, label %1115, label %889

889:                                              ; preds = %885
  %890 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %891 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %890, i32 noundef 3264, i32 noundef 328) #15
  %892 = icmp eq ptr %891, null
  br i1 %892, label %1115, label %893

893:                                              ; preds = %889
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store i64 0, ptr %6, align 8, !annotation !8
  %894 = icmp eq ptr %41, null
  br i1 %894, label %997, label %895

895:                                              ; preds = %893
  %896 = getelementptr inbounds %struct.mtd_oob_region, ptr %6, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %891, i8 0, i64 328, i1 false) #11
  br label %897

897:                                              ; preds = %921, %895
  %898 = phi i32 [ 0, %895 ], [ %900, %921 ]
  %899 = phi i32 [ 0, %895 ], [ %912, %921 ]
  %900 = add i32 %898, 1
  %901 = call i32 @mtd_ooblayout_ecc(ptr noundef nonnull %41, i32 noundef %898, ptr noundef nonnull %6) #11
  %902 = icmp slt i32 %901, 0
  br i1 %902, label %903, label %905

903:                                              ; preds = %897
  %904 = icmp eq i32 %901, -34
  br i1 %904, label %923, label %997

905:                                              ; preds = %897
  %906 = load i32, ptr %6, align 8
  %907 = load i32, ptr %896, align 4
  %908 = add i32 %907, %906
  %909 = call i32 @llvm.umax.i32(i32 %906, i32 %908) #11
  br label %910

910:                                              ; preds = %914, %905
  %911 = phi i32 [ %906, %905 ], [ %915, %914 ]
  %912 = phi i32 [ %899, %905 ], [ %919, %914 ]
  %913 = icmp eq i32 %911, %909
  br i1 %913, label %921, label %914

914:                                              ; preds = %910
  %915 = add i32 %911, 1
  %916 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 1, i32 %912
  store i32 %911, ptr %916, align 4
  %917 = load i32, ptr %891, align 8
  %918 = add i32 %917, 1
  store i32 %918, ptr %891, align 8
  %919 = add i32 %912, 1
  %920 = icmp eq i32 %919, 64
  br i1 %920, label %923, label %910

921:                                              ; preds = %910
  %922 = icmp slt i32 %912, 64
  br i1 %922, label %897, label %923

923:                                              ; preds = %921, %914, %903
  %924 = getelementptr inbounds %struct.nand_ecclayout_user, ptr %891, i32 0, i32 2
  %925 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %41, i32 noundef 0, ptr noundef nonnull %6) #11
  %926 = icmp slt i32 %925, 0
  br i1 %926, label %997, label %927

927:                                              ; preds = %923
  %928 = load i32, ptr %6, align 8
  %929 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 3, i32 0
  store i32 %928, ptr %929, align 8
  %930 = load i32, ptr %896, align 4
  %931 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 3, i32 0, i32 1
  store i32 %930, ptr %931, align 4
  %932 = load i32, ptr %924, align 4
  %933 = add i32 %932, %930
  store i32 %933, ptr %924, align 4
  %934 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %41, i32 noundef 1, ptr noundef nonnull %6) #11
  %935 = icmp slt i32 %934, 0
  br i1 %935, label %997, label %936

936:                                              ; preds = %927
  %937 = load i32, ptr %6, align 8
  %938 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 3, i32 1
  store i32 %937, ptr %938, align 8
  %939 = load i32, ptr %896, align 4
  %940 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 3, i32 1, i32 1
  store i32 %939, ptr %940, align 4
  %941 = load i32, ptr %924, align 4
  %942 = add i32 %941, %939
  store i32 %942, ptr %924, align 4
  %943 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %41, i32 noundef 2, ptr noundef nonnull %6) #11
  %944 = icmp slt i32 %943, 0
  br i1 %944, label %997, label %945

945:                                              ; preds = %936
  %946 = load i32, ptr %6, align 8
  %947 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 3, i32 2
  store i32 %946, ptr %947, align 8
  %948 = load i32, ptr %896, align 4
  %949 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 3, i32 2, i32 1
  store i32 %948, ptr %949, align 4
  %950 = load i32, ptr %924, align 4
  %951 = add i32 %950, %948
  store i32 %951, ptr %924, align 4
  %952 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %41, i32 noundef 3, ptr noundef nonnull %6) #11
  %953 = icmp slt i32 %952, 0
  br i1 %953, label %997, label %954

954:                                              ; preds = %945
  %955 = load i32, ptr %6, align 8
  %956 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 3, i32 3
  store i32 %955, ptr %956, align 8
  %957 = load i32, ptr %896, align 4
  %958 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 3, i32 3, i32 1
  store i32 %957, ptr %958, align 4
  %959 = load i32, ptr %924, align 4
  %960 = add i32 %959, %957
  store i32 %960, ptr %924, align 4
  %961 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %41, i32 noundef 4, ptr noundef nonnull %6) #11
  %962 = icmp slt i32 %961, 0
  br i1 %962, label %997, label %963

963:                                              ; preds = %954
  %964 = load i32, ptr %6, align 8
  %965 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 3, i32 4
  store i32 %964, ptr %965, align 8
  %966 = load i32, ptr %896, align 4
  %967 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 3, i32 4, i32 1
  store i32 %966, ptr %967, align 4
  %968 = load i32, ptr %924, align 4
  %969 = add i32 %968, %966
  store i32 %969, ptr %924, align 4
  %970 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %41, i32 noundef 5, ptr noundef nonnull %6) #11
  %971 = icmp slt i32 %970, 0
  br i1 %971, label %997, label %972

972:                                              ; preds = %963
  %973 = load i32, ptr %6, align 8
  %974 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 3, i32 5
  store i32 %973, ptr %974, align 8
  %975 = load i32, ptr %896, align 4
  %976 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 3, i32 5, i32 1
  store i32 %975, ptr %976, align 4
  %977 = load i32, ptr %924, align 4
  %978 = add i32 %977, %975
  store i32 %978, ptr %924, align 4
  %979 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %41, i32 noundef 6, ptr noundef nonnull %6) #11
  %980 = icmp slt i32 %979, 0
  br i1 %980, label %997, label %981

981:                                              ; preds = %972
  %982 = load i32, ptr %6, align 8
  %983 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 3, i32 6
  store i32 %982, ptr %983, align 8
  %984 = load i32, ptr %896, align 4
  %985 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 3, i32 6, i32 1
  store i32 %984, ptr %985, align 4
  %986 = load i32, ptr %924, align 4
  %987 = add i32 %986, %984
  store i32 %987, ptr %924, align 4
  %988 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %41, i32 noundef 7, ptr noundef nonnull %6) #11
  %989 = icmp slt i32 %988, 0
  br i1 %989, label %997, label %990

990:                                              ; preds = %981
  %991 = load i32, ptr %6, align 8
  %992 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 3, i32 7
  store i32 %991, ptr %992, align 8
  %993 = load i32, ptr %896, align 4
  %994 = getelementptr %struct.nand_ecclayout_user, ptr %891, i32 0, i32 3, i32 7, i32 1
  store i32 %993, ptr %994, align 4
  %995 = load i32, ptr %924, align 4
  %996 = add i32 %995, %993
  store i32 %996, ptr %924, align 4
  br label %997

997:                                              ; preds = %990, %981, %972, %963, %954, %945, %936, %927, %923, %903, %893
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %998 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 328, i32 -1090519040) #13, !srcloc !10
  %999 = extractvalue { i32, i32 } %998, 0
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1001, label %1010

1001:                                             ; preds = %997
  %1002 = tail call ptr @llvm.thread.pointer() #11
  %1003 = getelementptr inbounds %struct.thread_info, ptr %1002, i32 0, i32 3
  %1004 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1003) #14, !srcloc !11
  %1005 = and i32 %1004, -13
  %1006 = or i32 %1005, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1006) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %1007 = call i32 @arm_copy_to_user(ptr noundef %48, ptr noundef nonnull %891, i32 noundef 328) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1004) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %1008 = icmp eq i32 %1007, 0
  %1009 = select i1 %1008, i32 0, i32 -14
  br label %1010

1010:                                             ; preds = %1001, %997
  %1011 = phi i32 [ -14, %997 ], [ %1009, %1001 ]
  call void @kfree(ptr noundef nonnull %891) #11
  br label %1113

1012:                                             ; preds = %54
  %1013 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 16, i32 -1090519040) #13, !srcloc !10
  %1014 = extractvalue { i32, i32 } %1013, 0
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %1016, label %1115

1016:                                             ; preds = %1012
  %1017 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 52
  %1018 = tail call ptr @llvm.thread.pointer() #11
  %1019 = getelementptr inbounds %struct.thread_info, ptr %1018, i32 0, i32 3
  %1020 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1019) #14, !srcloc !11
  %1021 = and i32 %1020, -13
  %1022 = or i32 %1021, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1022) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %1023 = tail call i32 @arm_copy_to_user(ptr noundef %48, ptr noundef %1017, i32 noundef 16) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1020) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1113, label %1115

1025:                                             ; preds = %54
  %1026 = getelementptr inbounds %struct.mtd_file_info, ptr %40, i32 0, i32 1
  store i32 0, ptr %1026, align 4
  switch i32 %2, label %1052 [
    i32 1, label %1027
    i32 2, label %1027
    i32 3, label %1038
    i32 0, label %1053
  ]

1027:                                             ; preds = %1025, %1025
  %1028 = load ptr, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !8
  switch i32 %2, label %1036 [
    i32 1, label %1029
    i32 2, label %1032
  ]

1029:                                             ; preds = %1027
  %1030 = call i32 @mtd_read_fact_prot_reg(ptr noundef %1028, i64 noundef -1, i32 noundef 0, ptr noundef nonnull %7, ptr noundef null) #11
  %1031 = icmp eq i32 %1030, -95
  br i1 %1031, label %1036, label %1035

1032:                                             ; preds = %1027
  %1033 = call i32 @mtd_read_user_prot_reg(ptr noundef %1028, i64 noundef -1, i32 noundef 0, ptr noundef nonnull %7, ptr noundef null) #11
  %1034 = icmp eq i32 %1033, -95
  br i1 %1034, label %1036, label %1035

1035:                                             ; preds = %1032, %1029
  store i32 %2, ptr %1026, align 4
  br label %1036

1036:                                             ; preds = %1035, %1032, %1029, %1027
  %1037 = phi i32 [ -95, %1029 ], [ -95, %1032 ], [ -22, %1027 ], [ 0, %1035 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %1053

1038:                                             ; preds = %1038, %1025
  %1039 = phi ptr [ %1041, %1038 ], [ %41, %1025 ]
  %1040 = getelementptr inbounds %struct.mtd_info, ptr %1039, i32 0, i32 62
  %1041 = load ptr, ptr %1040, align 4
  %1042 = icmp eq ptr %1041, null
  br i1 %1042, label %1043, label %1038

1043:                                             ; preds = %1038
  %1044 = getelementptr inbounds %struct.mtd_info, ptr %1039, i32 0, i32 27
  %1045 = load ptr, ptr %1044, align 8
  %1046 = icmp eq ptr %1045, null
  br i1 %1046, label %1115, label %1047

1047:                                             ; preds = %1043
  %1048 = getelementptr inbounds %struct.mtd_info, ptr %1039, i32 0, i32 28
  %1049 = load ptr, ptr %1048, align 4
  %1050 = icmp eq ptr %1049, null
  br i1 %1050, label %1115, label %1051

1051:                                             ; preds = %1047
  store i32 3, ptr %1026, align 4
  br label %1053

1052:                                             ; preds = %1025
  br label %1053

1053:                                             ; preds = %1052, %1051, %1036, %1025
  %1054 = phi i32 [ -22, %1052 ], [ %2, %1025 ], [ 0, %1051 ], [ %1037, %1036 ]
  %1055 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  store i64 0, ptr %1055, align 8
  br label %1113

1056:                                             ; preds = %54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %28) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %28, i8 0, i32 16, i1 false) #11, !annotation !8
  %1057 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 16, i32 -1090519040) #13, !srcloc !14
  %1058 = extractvalue { i32, i32 } %1057, 0
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1060, label %1068, !prof !15

1060:                                             ; preds = %1056
  %1061 = tail call ptr @llvm.thread.pointer() #11
  %1062 = getelementptr inbounds %struct.thread_info, ptr %1061, i32 0, i32 3
  %1063 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1062) #14, !srcloc !11
  %1064 = and i32 %1063, -13
  %1065 = or i32 %1064, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1065) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %1066 = call i32 @arm_copy_from_user(ptr noundef nonnull %28, ptr noundef %48, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1063) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1072, label %1068, !prof !15

1068:                                             ; preds = %1060, %1056
  %1069 = phi i32 [ %1066, %1060 ], [ 16, %1056 ]
  %1070 = sub i32 16, %1069
  %1071 = getelementptr i8, ptr %28, i32 %1070
  call void @llvm.memset.p0.i32(ptr align 1 %1071, i8 0, i32 %1069, i1 false) #11
  br label %1111

1072:                                             ; preds = %1060
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(152) %8, i8 0, i32 152, i1 false) #11, !annotation !8
  %1073 = call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %1073, label %1074, label %1109

1074:                                             ; preds = %1072
  %1075 = getelementptr inbounds %struct.blkpg_ioctl_arg, ptr %28, i32 0, i32 3
  %1076 = load ptr, ptr %1075, align 4
  %1077 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1076, i32 152, i32 -1090519040) #13, !srcloc !14
  %1078 = extractvalue { i32, i32 } %1077, 0
  %1079 = icmp eq i32 %1078, 0
  br i1 %1079, label %1080, label %1086, !prof !15

1080:                                             ; preds = %1074
  %1081 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1062) #14, !srcloc !11
  %1082 = and i32 %1081, -13
  %1083 = or i32 %1082, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1083) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %1084 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %1076, i32 noundef 152) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1081) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1090, label %1086, !prof !15

1086:                                             ; preds = %1080, %1074
  %1087 = phi i32 [ %1084, %1080 ], [ 152, %1074 ]
  %1088 = sub i32 152, %1087
  %1089 = getelementptr i8, ptr %8, i32 %1088
  call void @llvm.memset.p0.i32(ptr align 1 %1089, i8 0, i32 %1087, i1 false) #11
  br label %1109

1090:                                             ; preds = %1080
  %1091 = load i32, ptr %28, align 4
  switch i32 %1091, label %1109 [
    i32 1, label %1092
    i32 2, label %1103
  ]

1092:                                             ; preds = %1090
  %1093 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 62
  %1094 = load ptr, ptr %1093, align 4
  %1095 = icmp eq ptr %1094, null
  br i1 %1095, label %1096, label %1109

1096:                                             ; preds = %1092
  %1097 = getelementptr inbounds %struct.blkpg_partition, ptr %8, i32 0, i32 3
  %1098 = getelementptr inbounds %struct.blkpg_partition, ptr %8, i32 0, i32 3, i32 63
  store i8 0, ptr %1098, align 1
  %1099 = load i64, ptr %8, align 8
  %1100 = getelementptr inbounds %struct.blkpg_partition, ptr %8, i32 0, i32 1
  %1101 = load i64, ptr %1100, align 8
  %1102 = call i32 @mtd_add_partition(ptr noundef %41, ptr noundef %1097, i64 noundef %1099, i64 noundef %1101) #11
  br label %1109

1103:                                             ; preds = %1090
  %1104 = getelementptr inbounds %struct.blkpg_partition, ptr %8, i32 0, i32 2
  %1105 = load i32, ptr %1104, align 8
  %1106 = icmp slt i32 %1105, 0
  br i1 %1106, label %1109, label %1107

1107:                                             ; preds = %1103
  %1108 = call i32 @mtd_del_partition(ptr noundef %41, i32 noundef %1105) #11
  br label %1109

1109:                                             ; preds = %1107, %1103, %1096, %1092, %1090, %1086, %1072
  %1110 = phi i32 [ %1108, %1107 ], [ %1102, %1096 ], [ -1, %1072 ], [ -22, %1092 ], [ -22, %1103 ], [ -22, %1090 ], [ -14, %1086 ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %8) #11
  br label %1111

1111:                                             ; preds = %1109, %1068
  %1112 = phi i32 [ %1110, %1109 ], [ -14, %1068 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %28) #11
  br label %1113

1113:                                             ; preds = %1111, %1053, %1016, %1010, %881, %849, %795, %721, %608, %588, %568, %553, %300, %272, %244, %218, %191, %141, %133, %103, %59, %54
  %1114 = phi i32 [ %1112, %1111 ], [ %1054, %1053 ], [ 0, %1016 ], [ %1011, %1010 ], [ %850, %849 ], [ 0, %721 ], [ %554, %553 ], [ %301, %300 ], [ %273, %272 ], [ %245, %244 ], [ %219, %218 ], [ 0, %133 ], [ 0, %103 ], [ 0, %59 ], [ 0, %54 ], [ %574, %568 ], [ %594, %588 ], [ %614, %608 ], [ %796, %795 ], [ %882, %881 ], [ -12, %141 ], [ %192, %191 ]
  br label %1115

1115:                                             ; preds = %1113, %1047, %1043, %1016, %1012, %889, %885, %883, %802, %783, %769, %748, %721, %720, %718, %607, %587, %567, %180, %159, %133, %112, %103, %94, %83, %79, %68, %59, %55, %49, %47
  %1116 = phi i32 [ %1114, %1113 ], [ %884, %883 ], [ -14, %783 ], [ %770, %769 ], [ %749, %748 ], [ -14, %721 ], [ -14, %607 ], [ -14, %587 ], [ -14, %567 ], [ -14, %103 ], [ -1, %49 ], [ -25, %47 ], [ -14, %59 ], [ -14, %133 ], [ -14, %1016 ], [ -95, %1047 ], [ -14, %180 ], [ -14, %159 ], [ %719, %718 ], [ -14, %720 ], [ -12, %802 ], [ -14, %55 ], [ -14, %83 ], [ -14, %94 ], [ -22, %79 ], [ -14, %68 ], [ -14, %112 ], [ -12, %889 ], [ -95, %885 ], [ -14, %1012 ], [ -95, %1043 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #11
  call void @mutex_unlock(ptr noundef %39) #11
  ret i32 %1116
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mtdchar_mmap(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtdchar_open(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #4 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %4, 1
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %2
  %13 = lshr i32 %4, 1
  %14 = and i32 %13, 524287
  %15 = tail call ptr @get_mtd_device(ptr noundef null, i32 noundef %14) #11
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = ptrtoint ptr %15 to i32
  br label %39

19:                                               ; preds = %12
  %20 = load i8, ptr %15, align 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %5, align 8
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mtd_info, ptr %15, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26, %22
  %32 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %33 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 8) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  store ptr %15, ptr %33, align 8
  %36 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %33, ptr %36, align 8
  br label %39

37:                                               ; preds = %31, %26, %19
  %38 = phi i32 [ -19, %19 ], [ -13, %26 ], [ -12, %31 ]
  tail call void @put_mtd_device(ptr noundef %15) #11
  br label %39

39:                                               ; preds = %37, %35, %17, %2
  %40 = phi i32 [ %18, %17 ], [ %38, %37 ], [ 0, %35 ], [ -13, %2 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtdchar_close(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #4 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %10, %2
  %11 = phi ptr [ %13, %10 ], [ %5, %2 ]
  %12 = getelementptr inbounds %struct.mtd_info, ptr %11, i32 0, i32 62
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mtd_info, ptr %11, i32 0, i32 37
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef %11) #11
  br label %20

20:                                               ; preds = %19, %15, %2
  tail call void @put_mtd_device(ptr noundef %5) #11
  store ptr null, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fixed_size_llseek(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtd_kmalloc_up_to(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_fact_prot_reg(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_user_prot_reg(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write_user_prot_reg(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mtdchar_writeoob(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #4 {
  %7 = alloca %struct.mtd_oob_ops, align 4
  %8 = alloca i32, align 4
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %1, %6 ], [ %12, %9 ]
  %11 = getelementptr inbounds %struct.mtd_info, ptr %10, i32 0, i32 62
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %16 = load ptr, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  %17 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %17, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  %18 = icmp ugt i32 %3, 4096
  br i1 %18, label %71, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.mtd_info, ptr %10, i32 0, i32 28
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %71, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 3
  store i32 %3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  %28 = trunc i64 %2 to i32
  %29 = and i32 %27, %28
  %30 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 6
  store ptr null, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mtd_file_info, ptr %16, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 3
  %35 = select i1 %34, i32 2, i32 0
  store i32 %35, ptr %7, align 4
  %36 = icmp eq i32 %29, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 %39, %29
  %41 = icmp ult i32 %40, %3
  br i1 %41, label %71, label %42

42:                                               ; preds = %37, %23
  %43 = tail call ptr @memdup_user(ptr noundef %4, i32 noundef %3) #11
  %44 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 7
  store ptr %43, ptr %44, align 4
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = ptrtoint ptr %43 to i32
  br label %71

48:                                               ; preds = %42
  %49 = load i32, ptr %25, align 4
  %50 = zext i32 %49 to i64
  %51 = sub nsw i64 0, %50
  %52 = and i64 %51, %2
  %53 = call i32 @mtd_write_oob(ptr noundef %1, i64 noundef %52, ptr noundef nonnull %7) #11
  %54 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  store i32 %55, ptr %8, align 4
  %56 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 4, i32 -1090519040) #13, !srcloc !10
  %57 = extractvalue { i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %48
  %60 = tail call ptr @llvm.thread.pointer() #11
  %61 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 3
  %62 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %61) #14, !srcloc !11
  %63 = and i32 %62, -13
  %64 = or i32 %63, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %65 = call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef nonnull %8, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i32 %53, i32 -14
  br label %68

68:                                               ; preds = %59, %48
  %69 = phi i32 [ -14, %48 ], [ %67, %59 ]
  %70 = load ptr, ptr %44, align 4
  call void @kfree(ptr noundef %70) #11
  br label %71

71:                                               ; preds = %68, %46, %37, %19, %14
  %72 = phi i32 [ %47, %46 ], [ %69, %68 ], [ -22, %14 ], [ -95, %19 ], [ -22, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mtdchar_readoob(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #4 {
  %7 = alloca %struct.mtd_oob_ops, align 4
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  %10 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %10, i8 0, i32 28, i1 false)
  %11 = icmp ugt i32 %3, 4096
  br i1 %11, label %78, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 3
  store i32 %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  %17 = trunc i64 %2 to i32
  %18 = and i32 %16, %17
  %19 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 5
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mtd_file_info, ptr %9, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 3
  %23 = select i1 %22, i32 2, i32 0
  store i32 %23, ptr %7, align 4
  %24 = icmp eq i32 %18, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %27, %18
  %29 = icmp ult i32 %28, %3
  br i1 %29, label %78, label %30

30:                                               ; preds = %25, %12
  %31 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #16
  %32 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 7
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %78, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %14, align 4
  %36 = zext i32 %35 to i64
  %37 = sub nsw i64 0, %36
  %38 = and i64 %37, %2
  %39 = call i32 @mtd_read_oob(ptr noundef %1, i64 noundef %38, ptr noundef nonnull %7) #11
  %40 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = tail call ptr @llvm.thread.pointer() #11
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %44 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %43) #14, !srcloc !11
  %45 = and i32 %44, -13
  %46 = or i32 %45, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %47 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %5, i32 %41, i32 -1090519041) #11, !srcloc !21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %34
  %50 = load i32, ptr %40, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %32, align 4
  %54 = icmp slt i32 %50, 0
  %55 = load i1, ptr @check_copy_size.__already_done, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %59, !prof !9

58:                                               ; preds = %52
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %59

59:                                               ; preds = %58, %52
  br i1 %54, label %71, label %60, !prof !9

60:                                               ; preds = %59
  %61 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %50, i32 -1090519040) #13, !srcloc !10
  %62 = extractvalue { i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %43) #14, !srcloc !11
  %66 = and i32 %65, -13
  %67 = or i32 %66, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %68 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %53, i32 noundef %50) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 %39, i32 -14
  br label %71

71:                                               ; preds = %64, %60, %59, %49, %34
  %72 = phi i32 [ %39, %49 ], [ -14, %34 ], [ -14, %59 ], [ %70, %64 ], [ -14, %60 ]
  %73 = load ptr, ptr %32, align 4
  call void @kfree(ptr noundef %73) #11
  %74 = icmp ne i32 %72, -117
  %75 = icmp ne i32 %72, -74
  %76 = and i1 %74, %75
  %77 = select i1 %76, i32 %72, i32 0
  br label %78

78:                                               ; preds = %71, %30, %25, %6
  %79 = phi i32 [ -22, %6 ], [ -22, %25 ], [ -12, %30 ], [ %77, %71 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_lock(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_unlock(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_is_locked(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_markbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_get_fact_prot_info(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_get_user_prot_info(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_lock_user_prot_reg(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase_user_prot_reg(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_ecc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_free(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_add_partition(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_del_partition(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2151492152, i64 2151492177}
!11 = !{i64 3987686}
!12 = !{i64 3987883}
!13 = !{i64 2151473162}
!14 = !{i64 2151491574, i64 2151491599}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2153224652, i64 2153224932, i64 2153225266, i64 2153225600}
!17 = !{i64 2153233611, i64 2153233891, i64 2153234225, i64 2153234559}
!18 = !{i64 2153241811, i64 2153242091, i64 2153242425, i64 2153242759}
!19 = !{i64 2153250011, i64 2153250291, i64 2153250625, i64 2153250959}
!20 = !{i64 2148644305, i64 2148644585, i64 2148644919, i64 2148645253}
!21 = !{i64 2153180098, i64 2153180378, i64 2153180712, i64 2153181046}
