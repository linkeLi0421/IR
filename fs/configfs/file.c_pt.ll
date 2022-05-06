; ModuleID = '/llk/IR/fs/configfs/file.c_pt.bc'
source_filename = "../fs/configfs/file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
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
%struct.configfs_buffer = type { i32, i64, ptr, ptr, %struct.mutex, i32, i8, i8, ptr, i32, i32, ptr, ptr, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.50, %struct.list_head, %struct.list_head, %union.anon.51 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.12, ptr }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%union.anon.50 = type { %struct.list_head }
%union.anon.51 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.configfs_dirent = type { %struct.atomic_t, i32, %struct.list_head, %struct.list_head, i32, ptr, i32, i16, ptr, ptr, ptr }
%struct.configfs_fragment = type { %struct.atomic_t, %struct.rw_semaphore, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.configfs_bin_attribute = type { %struct.configfs_attribute, ptr, i32, ptr, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.52, %union.anon.53 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { i64 }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }

@configfs_file_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @configfs_read_iter, ptr @configfs_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @configfs_open_file, ptr null, ptr @configfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@configfs_bin_file_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr @configfs_bin_read_iter, ptr @configfs_bin_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @configfs_open_bin_file, ptr null, ptr @configfs_release_bin_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fill_read_buffer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [19 x i8] c"fs/configfs/file.c\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@__configfs_open_file.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"&buffer->mutex\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_read_iter(ptr nocapture noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %5, align 8
  br label %50

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.configfs_dirent, ptr %16, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = tail call i32 @get_zeroed_page(i32 noundef 3264) #6
  %24 = inttoptr i32 %23 to ptr
  store ptr %24, ptr %19, align 8
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %75, label %26

26:                                               ; preds = %22, %12
  %27 = getelementptr inbounds %struct.configfs_fragment, ptr %18, i32 0, i32 1
  tail call void @down_read(ptr noundef %27) #6
  %28 = getelementptr inbounds %struct.configfs_fragment, ptr %18, i32 0, i32 2
  %29 = load i8, ptr %28, align 4, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @up_read(ptr noundef %27) #6
  br label %75

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 13
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.configfs_attribute, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 11
  %38 = load ptr, ptr %37, align 8
  %39 = load ptr, ptr %19, align 8
  %40 = tail call i32 %36(ptr noundef %38, ptr noundef %39) #6
  tail call void @up_read(ptr noundef %27) #6
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %75, label %42

42:                                               ; preds = %32
  %43 = icmp ugt i32 %40, 4096
  %44 = load i1, ptr @fill_read_buffer.__already_done, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %48, !prof !9

47:                                               ; preds = %42
  store i1 true, ptr @fill_read_buffer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef null) #6
  br label %48

48:                                               ; preds = %47, %42
  br i1 %43, label %75, label %49

49:                                               ; preds = %48
  store i32 0, ptr %7, align 4
  store i32 %40, ptr %5, align 8
  br label %50

50:                                               ; preds = %49, %10
  %51 = phi i32 [ %11, %10 ], [ %40, %49 ]
  %52 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %53 = load i64, ptr %52, align 8
  %54 = zext i32 %51 to i64
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = trunc i64 %53 to i32
  %60 = getelementptr i8, ptr %58, i32 %59
  %61 = sub i32 %51, %59
  %62 = icmp slt i32 %61, 0
  %63 = load i1, ptr @check_copy_size.__already_done, align 1
  %64 = xor i1 %63, true
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %67, !prof !9

66:                                               ; preds = %56
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %67

67:                                               ; preds = %66, %56
  br i1 %62, label %74, label %68, !prof !9

68:                                               ; preds = %67
  %69 = tail call i32 @_copy_to_iter(ptr noundef %60, i32 noundef %61, ptr noundef %1) #6
  %70 = sext i32 %69 to i64
  %71 = load i64, ptr %52, align 8
  %72 = add i64 %71, %70
  store i64 %72, ptr %52, align 8
  %73 = icmp eq i32 %69, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68, %67
  br label %75

75:                                               ; preds = %74, %68, %50, %48, %32, %31, %22
  %76 = phi i32 [ 0, %50 ], [ -14, %74 ], [ %69, %68 ], [ -2, %31 ], [ -5, %48 ], [ %40, %32 ], [ -12, %22 ]
  tail call void @mutex_unlock(ptr noundef %6) #6
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_write_iter(ptr nocapture noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #6
  %12 = inttoptr i32 %11 to ptr
  store ptr %12, ptr %7, align 8
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %50, label %14

14:                                               ; preds = %10, %2
  %15 = phi ptr [ %12, %10 ], [ %8, %2 ]
  %16 = tail call i32 @_copy_from_iter(ptr noundef nonnull %15, i32 noundef 4095, ptr noundef %1) #6
  %17 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 5
  store i32 1, ptr %17, align 4
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr i8, ptr %18, i32 %16
  store i8 0, ptr %19, align 1
  %20 = icmp eq i32 %16, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %14
  %22 = icmp sgt i32 %16, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.configfs_dirent, ptr %27, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.configfs_fragment, ptr %29, i32 0, i32 1
  tail call void @down_read(ptr noundef %30) #6
  %31 = getelementptr inbounds %struct.configfs_fragment, ptr %29, i32 0, i32 2
  %32 = load i8, ptr %31, align 4, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  tail call void @up_read(ptr noundef %30) #6
  br label %50

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 13
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.configfs_attribute, ptr %37, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 11
  %41 = load ptr, ptr %40, align 8
  %42 = load ptr, ptr %7, align 8
  %43 = tail call i32 %39(ptr noundef %41, ptr noundef %42, i32 noundef %16) #6
  tail call void @up_read(ptr noundef %30) #6
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = zext i32 %43 to i64
  %47 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %48 = load i64, ptr %47, align 8
  %49 = add i64 %48, %46
  store i64 %49, ptr %47, align 8
  br label %50

50:                                               ; preds = %45, %35, %34, %21, %14, %10
  %51 = phi i32 [ %43, %45 ], [ %43, %35 ], [ -2, %34 ], [ %16, %21 ], [ -12, %10 ], [ -14, %14 ]
  tail call void @mutex_unlock(ptr noundef %6) #6
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_open_file(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #1 {
  %3 = tail call fastcc i32 @__configfs_open_file(ptr noundef %0, ptr noundef %1, i32 noundef 4)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.configfs_buffer, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  tail call void @module_put(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.configfs_buffer, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = ptrtoint ptr %8 to i32
  tail call void @free_pages(i32 noundef %11, i32 noundef 0) #6
  br label %12

12:                                               ; preds = %10, %2
  tail call void @kfree(ptr noundef %4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_bin_read_iter(ptr nocapture noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.configfs_dirent, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 7
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %89

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 6
  store i8 1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %63, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.configfs_fragment, ptr %9, i32 0, i32 1
  tail call void @down_read(ptr noundef %22) #6
  %23 = getelementptr inbounds %struct.configfs_fragment, ptr %9, i32 0, i32 2
  %24 = load i8, ptr %23, align 4, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @up_read(ptr noundef %22) #6
  br label %89

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 13
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.configfs_bin_attribute, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 11
  %33 = load ptr, ptr %32, align 8
  %34 = tail call i32 %31(ptr noundef %33, ptr noundef null, i32 noundef 0) #6
  tail call void @up_read(ptr noundef %22) #6
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %89, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 10
  %38 = load i32, ptr %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = icmp sgt i32 %34, %38
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %89, label %42

42:                                               ; preds = %36
  %43 = tail call noalias ptr @vmalloc(i32 noundef %34) #7
  %44 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 8
  store ptr %43, ptr %44, align 4
  %45 = icmp eq ptr %43, null
  br i1 %45, label %89, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 9
  store i32 %34, ptr %47, align 8
  tail call void @down_read(ptr noundef %22) #6
  %48 = load i8, ptr %23, align 4, !range !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @up_read(ptr noundef %22) #6
  br label %59

51:                                               ; preds = %46
  %52 = load ptr, ptr %28, align 8
  %53 = getelementptr inbounds %struct.configfs_bin_attribute, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %32, align 8
  %56 = load ptr, ptr %44, align 4
  %57 = tail call i32 %54(ptr noundef %55, ptr noundef %56, i32 noundef %34) #6
  tail call void @up_read(ptr noundef %22) #6
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51, %50
  %60 = phi i32 [ -2, %50 ], [ %57, %51 ]
  %61 = load ptr, ptr %44, align 4
  tail call void @vfree(ptr noundef %61) #6
  store i32 0, ptr %47, align 8
  store ptr null, ptr %44, align 4
  br label %89

62:                                               ; preds = %51
  store i32 0, ptr %18, align 4
  br label %63

63:                                               ; preds = %62, %16
  %64 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 9
  %67 = load i32, ptr %66, align 8
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 8
  %72 = load ptr, ptr %71, align 4
  %73 = trunc i64 %65 to i32
  %74 = getelementptr i8, ptr %72, i32 %73
  %75 = sub i32 %67, %73
  %76 = icmp slt i32 %75, 0
  %77 = load i1, ptr @check_copy_size.__already_done, align 1
  %78 = xor i1 %77, true
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %81, !prof !9

80:                                               ; preds = %70
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %81

81:                                               ; preds = %80, %70
  br i1 %76, label %88, label %82, !prof !9

82:                                               ; preds = %81
  %83 = tail call i32 @_copy_to_iter(ptr noundef %74, i32 noundef %75, ptr noundef %1) #6
  %84 = sext i32 %83 to i64
  %85 = load i64, ptr %64, align 8
  %86 = add i64 %85, %84
  store i64 %86, ptr %64, align 8
  %87 = icmp eq i32 %83, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82, %81
  br label %89

89:                                               ; preds = %88, %82, %63, %59, %42, %36, %27, %26, %2
  %90 = phi i32 [ %60, %59 ], [ 0, %63 ], [ -26, %2 ], [ %34, %27 ], [ -27, %36 ], [ -12, %42 ], [ -2, %26 ], [ -14, %88 ], [ %83, %82 ]
  tail call void @mutex_unlock(ptr noundef %12) #6
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_bin_write_iter(ptr nocapture noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 6
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %60

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 7
  store i8 1, ptr %11, align 1
  %12 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = trunc i64 %13 to i32
  %17 = add i32 %15, %16
  %18 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 9
  %19 = load i32, ptr %18, align 8
  %20 = icmp ugt i32 %17, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  br label %46

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = icmp ugt i32 %17, %26
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %60, label %30

30:                                               ; preds = %24
  %31 = tail call noalias ptr @vmalloc(i32 noundef %17) #7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %60, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.configfs_buffer, ptr %5, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %18, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %31, ptr nonnull align 1 %35, i32 %38, i1 false)
  %39 = load ptr, ptr %34, align 4
  tail call void @vfree(ptr noundef %39) #6
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, ptr %18, align 8
  %42 = getelementptr i8, ptr %31, i32 %41
  %43 = sub i32 %17, %41
  tail call void @llvm.memset.p0.i32(ptr align 1 %42, i8 0, i32 %43, i1 false)
  store ptr %31, ptr %34, align 4
  store i32 %17, ptr %18, align 8
  %44 = load i64, ptr %12, align 8
  %45 = trunc i64 %44 to i32
  br label %46

46:                                               ; preds = %40, %21
  %47 = phi i32 [ %16, %21 ], [ %45, %40 ]
  %48 = phi i32 [ %19, %21 ], [ %17, %40 ]
  %49 = phi ptr [ %23, %21 ], [ %31, %40 ]
  %50 = getelementptr i8, ptr %49, i32 %47
  %51 = sub i32 %48, %47
  %52 = icmp slt i32 %51, 0
  %53 = load i1, ptr @check_copy_size.__already_done, align 1
  %54 = xor i1 %53, true
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %57, !prof !9

56:                                               ; preds = %46
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %57

57:                                               ; preds = %56, %46
  br i1 %52, label %62, label %58, !prof !9

58:                                               ; preds = %57
  %59 = tail call i32 @_copy_from_iter(ptr noundef %50, i32 noundef %51, ptr noundef %1) #6
  br label %62

60:                                               ; preds = %30, %24, %2
  %61 = phi i32 [ -12, %30 ], [ -27, %24 ], [ -26, %2 ]
  tail call void @mutex_unlock(ptr noundef %6) #6
  br label %69

62:                                               ; preds = %58, %57
  %63 = phi i32 [ %59, %58 ], [ 0, %57 ]
  %64 = sext i32 %63 to i64
  %65 = load i64, ptr %12, align 8
  %66 = add i64 %65, %64
  store i64 %66, ptr %12, align 8
  tail call void @mutex_unlock(ptr noundef %6) #6
  %67 = icmp eq i32 %63, 0
  %68 = select i1 %67, i32 -14, i32 %63
  br label %69

69:                                               ; preds = %62, %60
  %70 = phi i32 [ %61, %60 ], [ %68, %62 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_open_bin_file(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #1 {
  %3 = tail call fastcc i32 @__configfs_open_file(ptr noundef %0, ptr noundef %1, i32 noundef 8)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_release_bin_file(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.configfs_buffer, ptr %4, i32 0, i32 7
  %6 = load i8, ptr %5, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.configfs_dirent, ptr %12, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.configfs_fragment, ptr %14, i32 0, i32 1
  tail call void @down_read(ptr noundef %15) #6
  %16 = getelementptr inbounds %struct.configfs_fragment, ptr %14, i32 0, i32 2
  %17 = load i8, ptr %16, align 4, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.configfs_buffer, ptr %4, i32 0, i32 13
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.configfs_bin_attribute, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.configfs_buffer, ptr %4, i32 0, i32 11
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.configfs_buffer, ptr %4, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.configfs_buffer, ptr %4, i32 0, i32 9
  %29 = load i32, ptr %28, align 8
  %30 = tail call i32 %23(ptr noundef %25, ptr noundef %27, i32 noundef %29) #6
  br label %31

31:                                               ; preds = %19, %8
  tail call void @up_read(ptr noundef %15) #6
  br label %32

32:                                               ; preds = %31, %2
  %33 = getelementptr inbounds %struct.configfs_buffer, ptr %4, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  tail call void @vfree(ptr noundef %34) #6
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct.configfs_buffer, ptr %35, i32 0, i32 12
  %37 = load ptr, ptr %36, align 4
  tail call void @module_put(ptr noundef %37) #6
  %38 = getelementptr inbounds %struct.configfs_buffer, ptr %35, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %32
  %42 = ptrtoint ptr %39 to i32
  tail call void @free_pages(i32 noundef %42, i32 noundef 0) #6
  br label %43

43:                                               ; preds = %41, %32
  tail call void @kfree(ptr noundef %35) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @configfs_create_file(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_attribute, ptr %1, i32 0, i32 2
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 4095
  %10 = or i16 %9, -32768
  %11 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 24
  tail call void @down_write(ptr noundef %13) #6
  %14 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @configfs_make_dirent(ptr noundef %6, ptr noundef null, ptr noundef %1, i16 noundef zeroext %10, i32 noundef 4, ptr noundef %15) #6
  %17 = load ptr, ptr %11, align 8
  %18 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 24
  tail call void @up_write(ptr noundef %18) #6
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_make_dirent(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @configfs_create_bin_file(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_attribute, ptr %1, i32 0, i32 2
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 4095
  %10 = or i16 %9, -32768
  %11 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 24
  tail call void @down_write(ptr noundef %13) #6
  %14 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @configfs_make_dirent(ptr noundef %6, ptr noundef null, ptr noundef %1, i16 noundef zeroext %10, i32 noundef 8, ptr noundef %15) #6
  %17 = load ptr, ptr %11, align 8
  %18 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 24
  tail call void @up_write(ptr noundef %18) #6
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__configfs_open_file(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.configfs_dirent, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 80) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %101, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.configfs_fragment, ptr %9, i32 0, i32 1
  tail call void @down_read(ptr noundef %14) #6
  %15 = getelementptr inbounds %struct.configfs_fragment, ptr %9, i32 0, i32 2
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %99, !prof !10

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.configfs_dirent, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 11
  store ptr %24, ptr %25, align 8
  %26 = icmp eq ptr %24, null
  br i1 %26, label %99, label %27

27:                                               ; preds = %18
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr inbounds %struct.configfs_dirent, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %99, label %32

32:                                               ; preds = %27
  %33 = and i32 %2, 8
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 13
  store ptr %30, ptr %35, align 8
  br i1 %34, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.configfs_bin_attribute, ptr %30, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 10
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = getelementptr inbounds %struct.configfs_attribute, ptr %30, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 12
  store ptr %42, ptr %43, align 4
  %44 = tail call zeroext i1 @try_module_get(ptr noundef %42) #6
  br i1 %44, label %45, label %99

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.config_item, ptr %24, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %98, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.config_item_type, ptr %47, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 3
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %49
  %58 = load i16, ptr %0, align 8
  %59 = and i16 %58, 146
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %98, label %61

61:                                               ; preds = %57
  %62 = and i32 %2, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.configfs_attribute, ptr %30, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %98, label %68

68:                                               ; preds = %64, %61
  br i1 %34, label %73, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.configfs_bin_attribute, ptr %30, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %98, label %73

73:                                               ; preds = %69, %68, %49
  %74 = and i32 %54, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %73
  %77 = load i16, ptr %0, align 8
  %78 = and i16 %77, 292
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %76
  %81 = and i32 %2, 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.configfs_attribute, ptr %30, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %98, label %87

87:                                               ; preds = %83, %80
  br i1 %34, label %92, label %88

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.configfs_bin_attribute, ptr %30, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %98, label %92

92:                                               ; preds = %88, %87, %73
  %93 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %93, ptr noundef nonnull @.str.3, ptr noundef nonnull @__configfs_open_file.__key) #6
  %94 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 5
  store i32 1, ptr %94, align 4
  %95 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 6
  store i8 0, ptr %95, align 8
  %96 = getelementptr inbounds %struct.configfs_buffer, ptr %11, i32 0, i32 7
  store i8 0, ptr %96, align 1
  %97 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %11, ptr %97, align 8
  tail call void @up_read(ptr noundef %14) #6
  br label %101

98:                                               ; preds = %88, %83, %76, %69, %64, %57, %45
  tail call void @module_put(ptr noundef %42) #6
  br label %99

99:                                               ; preds = %98, %40, %27, %18, %13
  %100 = phi i32 [ -2, %13 ], [ -13, %98 ], [ -19, %40 ], [ -22, %27 ], [ -22, %18 ]
  tail call void @up_read(ptr noundef %14) #6
  tail call void @kfree(ptr noundef nonnull %11) #6
  br label %101

101:                                              ; preds = %99, %92, %3
  %102 = phi i32 [ 0, %92 ], [ %100, %99 ], [ -12, %3 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
