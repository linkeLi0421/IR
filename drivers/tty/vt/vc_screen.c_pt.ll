; ModuleID = '/llk/IR/drivers/tty/vt/vc_screen.c_pt.bc'
source_filename = "../drivers/tty/vt/vc_screen.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.atomic_t = type { i32 }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.34, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.34 = type { ptr }
%struct.llist_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vcs_poll_data = type { %struct.notifier_block, i32, i32, %struct.wait_queue_head, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@vc_class = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [6 x i8] c"vcs%u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vcsu%u\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vcsa%u\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vcs\00", align 1
@vcs_fops = internal constant %struct.file_operations { ptr null, ptr @vcs_lseek, ptr @vcs_read, ptr @vcs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vcs_poll, ptr null, ptr null, ptr null, i32 0, ptr @vcs_open, ptr null, ptr @vcs_release, ptr null, ptr @vcs_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"unable to get major %d for vcs device\00", align 1
@vcs_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"vc\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"vcsu\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"vcsa\00", align 1
@ignore_console_lock_warning = external dso_local global %struct.atomic_t, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"drivers/tty/vt/vc_screen.c\00", align 1
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@vcs_poll_data_get.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"&poll->waitq\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@switch.table.vcs_poll = private unnamed_addr constant [5 x i32] [i32 325, i32 333, i32 349, i32 333, i32 327], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vcs_make_sysfs(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @vc_class, align 4
  %3 = add i32 %0, 1
  %4 = or i32 %3, 7340032
  %5 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %2, ptr noundef null, i32 noundef %4, ptr noundef null, ptr noundef nonnull @.str, i32 noundef %3) #10
  %6 = load ptr, ptr @vc_class, align 4
  %7 = add i32 %0, 65
  %8 = or i32 %7, 7340032
  %9 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %6, ptr noundef null, i32 noundef %8, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef %3) #10
  %10 = load ptr, ptr @vc_class, align 4
  %11 = add i32 %0, 129
  %12 = or i32 %11, 7340032
  %13 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %10, ptr noundef null, i32 noundef %12, ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vcs_remove_sysfs(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @vc_class, align 4
  %3 = add i32 %0, 1
  %4 = or i32 %3, 7340032
  tail call void @device_destroy(ptr noundef %2, i32 noundef %4) #10
  %5 = load ptr, ptr @vc_class, align 4
  %6 = add i32 %0, 65
  %7 = or i32 %6, 7340032
  tail call void @device_destroy(ptr noundef %5, i32 noundef %7) #10
  %8 = load ptr, ptr @vc_class, align 4
  %9 = add i32 %0, 129
  %10 = or i32 %9, 7340032
  tail call void @device_destroy(ptr noundef %8, i32 noundef %10) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @vcs_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @__register_chrdev(i32 noundef 7, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.3, ptr noundef nonnull @vcs_fops) #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4, i32 noundef 7) #11
  unreachable

4:                                                ; preds = %0
  %5 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @vcs_init.__key) #10
  store ptr %5, ptr @vc_class, align 4
  %6 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %5, ptr noundef null, i32 noundef 7340032, ptr noundef null, ptr noundef nonnull @.str.3) #10
  %7 = load ptr, ptr @vc_class, align 4
  %8 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %7, ptr noundef null, i32 noundef 7340096, ptr noundef null, ptr noundef nonnull @.str.6) #10
  %9 = load ptr, ptr @vc_class, align 4
  %10 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %9, ptr noundef null, i32 noundef 7340160, ptr noundef null, ptr noundef nonnull @.str.7) #10
  tail call void @vcs_make_sysfs(i32 noundef 0)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @vcs_lseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  tail call void @console_lock() #10
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 63
  %9 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = tail call i32 @is_console_locked() #10
  %13 = icmp eq i32 %12, 0
  %14 = load i32, ptr @oops_in_progress, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 187, i32 noundef 9, ptr noundef null) #10
  br label %18

18:                                               ; preds = %17, %11, %3
  %19 = icmp eq i32 %8, 0
  %20 = load i32, ptr @fg_console, align 4
  %21 = add nsw i32 %8, -1
  %22 = select i1 %19, i32 %20, i32 %21
  %23 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  tail call void @console_unlock() #10
  br label %65

27:                                               ; preds = %18
  %28 = load i32, ptr %6, align 4
  %29 = and i32 %28, 128
  %30 = icmp eq i32 %29, 0
  %31 = and i32 %28, 64
  %32 = icmp eq i32 %31, 0
  %33 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = tail call i32 @is_console_locked() #10
  %37 = icmp eq i32 %36, 0
  %38 = load i32, ptr @oops_in_progress, align 4
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 213, i32 noundef 9, ptr noundef null) #10
  br label %42

42:                                               ; preds = %41, %35, %27
  %43 = getelementptr inbounds %struct.vc_data, ptr %24, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.vc_data, ptr %24, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = mul i32 %46, %44
  br i1 %30, label %53, label %48

48:                                               ; preds = %42
  br i1 %32, label %50, label %49

49:                                               ; preds = %48
  tail call void @console_unlock() #10
  br label %59

50:                                               ; preds = %48
  %51 = shl i32 %47, 1
  %52 = add i32 %51, 4
  br label %56

53:                                               ; preds = %42
  %54 = shl i32 %47, 2
  %55 = select i1 %32, i32 %47, i32 %54
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i32 [ %52, %50 ], [ %55, %53 ]
  tail call void @console_unlock() #10
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56, %49
  %60 = phi i32 [ -95, %49 ], [ %57, %56 ]
  %61 = sext i32 %60 to i64
  br label %65

62:                                               ; preds = %56
  %63 = zext i32 %57 to i64
  %64 = tail call i64 @fixed_size_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %63) #10
  br label %65

65:                                               ; preds = %62, %59, %26
  %66 = phi i64 [ %61, %59 ], [ %64, %62 ], [ -6, %26 ]
  ret i64 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vcs_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %8 = inttoptr i32 %7 to ptr
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %275, label %10

10:                                               ; preds = %4
  %11 = load i64, ptr %3, align 8
  tail call void @console_lock() #10
  %12 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %13, 128
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %13, 63
  %19 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %10
  %22 = tail call i32 @is_console_locked() #10
  %23 = icmp eq i32 %22, 0
  %24 = load i32, ptr @oops_in_progress, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 187, i32 noundef 9, ptr noundef null) #10
  br label %28

28:                                               ; preds = %27, %21, %10
  %29 = icmp eq i32 %18, 0
  %30 = load i32, ptr @fg_console, align 4
  %31 = add nsw i32 %18, -1
  %32 = select i1 %29, i32 %30, i32 %31
  %33 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %273, label %36

36:                                               ; preds = %28
  %37 = icmp slt i64 %11, 0
  br i1 %37, label %273, label %38

38:                                               ; preds = %36
  br i1 %15, label %44, label %39

39:                                               ; preds = %38
  %40 = zext i32 %2 to i64
  %41 = or i64 %11, %40
  %42 = and i64 %41, 3
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %273

44:                                               ; preds = %39, %38
  %45 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %46 = load ptr, ptr %45, align 8
  %47 = icmp ne i32 %2, 0
  %48 = icmp ne ptr %46, null
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.vcs_poll_data, ptr %46, i32 0, i32 2
  store i32 0, ptr %51, align 4
  br label %54

52:                                               ; preds = %44
  %53 = icmp eq i32 %2, 0
  br i1 %53, label %271, label %54

54:                                               ; preds = %52, %50
  %55 = getelementptr inbounds %struct.vc_data, ptr %34, i32 0, i32 5
  %56 = getelementptr inbounds %struct.vc_data, ptr %34, i32 0, i32 4
  %57 = getelementptr i8, ptr %8, i32 1
  %58 = getelementptr i8, ptr %8, i32 2
  %59 = getelementptr i8, ptr %8, i32 4
  br label %60

60:                                               ; preds = %257, %54
  %61 = phi i64 [ %11, %54 ], [ %260, %257 ]
  %62 = phi i32 [ 0, %54 ], [ %261, %257 ]
  %63 = phi i32 [ %2, %54 ], [ %262, %257 ]
  %64 = phi ptr [ %1, %54 ], [ %258, %257 ]
  %65 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = tail call i32 @is_console_locked() #10
  %69 = icmp eq i32 %68, 0
  %70 = load i32, ptr @oops_in_progress, align 4
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %74, !prof !8

73:                                               ; preds = %67
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 213, i32 noundef 9, ptr noundef null) #10
  br label %74

74:                                               ; preds = %73, %67, %60
  %75 = load i32, ptr %55, align 4
  %76 = load i32, ptr %56, align 4
  %77 = mul i32 %76, %75
  br i1 %17, label %82, label %78

78:                                               ; preds = %74
  br i1 %15, label %79, label %88

79:                                               ; preds = %78
  %80 = shl i32 %77, 1
  %81 = add i32 %80, 4
  br label %85

82:                                               ; preds = %74
  %83 = shl i32 %77, 2
  %84 = select i1 %15, i32 %77, i32 %83
  br label %85

85:                                               ; preds = %82, %79
  %86 = phi i32 [ %81, %79 ], [ %84, %82 ]
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85, %78
  %89 = phi i32 [ %86, %85 ], [ -95, %78 ]
  %90 = icmp eq i32 %62, 0
  br i1 %90, label %273, label %91

91:                                               ; preds = %88
  %92 = zext i32 %62 to i64
  %93 = load i64, ptr %3, align 8
  %94 = add i64 %93, %92
  store i64 %94, ptr %3, align 8
  br label %273

95:                                               ; preds = %85
  %96 = zext i32 %86 to i64
  %97 = icmp slt i64 %61, %96
  br i1 %97, label %98, label %264

98:                                               ; preds = %95
  %99 = zext i32 %63 to i64
  %100 = sub i64 %96, %61
  %101 = icmp slt i64 %100, %99
  %102 = trunc i64 %100 to i32
  %103 = select i1 %101, i32 %102, i32 %63
  %104 = tail call i32 @llvm.umin.i32(i32 %103, i32 4096)
  br i1 %15, label %135, label %105

105:                                              ; preds = %98
  %106 = tail call i32 @vc_uniscr_check(ptr noundef nonnull %34) #10
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %264

108:                                              ; preds = %105
  %109 = trunc i64 %61 to i32
  %110 = lshr i32 %109, 2
  %111 = freeze i32 %110
  %112 = freeze i32 %76
  %113 = udiv i32 %111, %112
  %114 = mul i32 %113, %112
  %115 = sub i32 %111, %114
  %116 = sub i32 %76, %115
  %117 = lshr i32 %104, 2
  %118 = tail call i32 @llvm.umin.i32(i32 %116, i32 %117) #10
  tail call void @vc_uniscr_copy_line(ptr noundef nonnull %34, ptr noundef nonnull %8, i1 noundef zeroext %29, i32 noundef %113, i32 noundef %115, i32 noundef %118) #10
  %119 = shl nuw nsw i32 %118, 2
  %120 = sub nsw i32 %104, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %228, label %122

122:                                              ; preds = %108
  %123 = getelementptr i8, ptr %8, i32 %119
  br label %124

124:                                              ; preds = %124, %122
  %125 = phi ptr [ %123, %122 ], [ %132, %124 ]
  %126 = phi i32 [ %120, %122 ], [ %133, %124 ]
  %127 = phi i32 [ %113, %122 ], [ %128, %124 ]
  %128 = add i32 %127, 1
  %129 = lshr i32 %126, 2
  %130 = tail call i32 @llvm.umin.i32(i32 %76, i32 %129) #10
  tail call void @vc_uniscr_copy_line(ptr noundef nonnull %34, ptr noundef %125, i1 noundef zeroext %29, i32 noundef %128, i32 noundef 0, i32 noundef %130) #10
  %131 = shl nuw i32 %130, 2
  %132 = getelementptr i8, ptr %125, i32 %131
  %133 = sub i32 %126, %131
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %228, label %124, !llvm.loop !9

135:                                              ; preds = %98
  %136 = trunc i64 %61 to i32
  br i1 %17, label %137, label %165

137:                                              ; preds = %135
  %138 = tail call ptr @screen_pos(ptr noundef nonnull %34, i32 noundef %136, i1 noundef zeroext %29) #10
  %139 = icmp eq i32 %104, 0
  br i1 %139, label %228, label %140

140:                                              ; preds = %137
  %141 = add i32 %76, %136
  %142 = urem i32 %136, %76
  %143 = sub i32 %141, %142
  br label %144

144:                                              ; preds = %160, %140
  %145 = phi i32 [ %150, %160 ], [ %104, %140 ]
  %146 = phi i32 [ %163, %160 ], [ %142, %140 ]
  %147 = phi ptr [ %162, %160 ], [ %138, %140 ]
  %148 = phi ptr [ %154, %160 ], [ %8, %140 ]
  %149 = phi i32 [ %161, %160 ], [ %143, %140 ]
  %150 = add nsw i32 %145, -1
  %151 = getelementptr i16, ptr %147, i32 1
  %152 = tail call zeroext i16 @vcs_scr_readw(ptr noundef nonnull %34, ptr noundef %147) #10
  %153 = trunc i16 %152 to i8
  %154 = getelementptr i8, ptr %148, i32 1
  store i8 %153, ptr %148, align 1
  %155 = add i32 %146, 1
  %156 = icmp eq i32 %155, %76
  br i1 %156, label %157, label %160

157:                                              ; preds = %144
  %158 = tail call ptr @screen_pos(ptr noundef nonnull %34, i32 noundef %149, i1 noundef zeroext %29) #10
  %159 = add i32 %149, %76
  br label %160

160:                                              ; preds = %157, %144
  %161 = phi i32 [ %159, %157 ], [ %149, %144 ]
  %162 = phi ptr [ %158, %157 ], [ %151, %144 ]
  %163 = phi i32 [ 0, %157 ], [ %155, %144 ]
  %164 = icmp eq i32 %150, 0
  br i1 %164, label %228, label %144

165:                                              ; preds = %135
  %166 = icmp ult i32 %136, 4
  br i1 %166, label %167, label %179

167:                                              ; preds = %165
  %168 = tail call i32 @llvm.umin.i32(i32 %75, i32 255) #10
  %169 = trunc i32 %168 to i8
  store i8 %169, ptr %8, align 1
  %170 = load i32, ptr %56, align 4
  %171 = tail call i32 @llvm.umin.i32(i32 %170, i32 255) #10
  %172 = trunc i32 %171 to i8
  store i8 %172, ptr %57, align 1
  tail call void @getconsxy(ptr noundef nonnull %34, ptr noundef %58) #10
  %173 = add nuw nsw i32 %104, %136
  %174 = icmp ugt i32 %173, 4096
  %175 = sub nuw nsw i32 4096, %136
  %176 = select i1 %174, i32 %175, i32 %104
  %177 = tail call i32 @llvm.umin.i32(i32 %173, i32 4096) #10
  %178 = tail call i32 @llvm.usub.sat.i32(i32 %177, i32 4) #10
  br label %187

179:                                              ; preds = %165
  %180 = and i32 %136, 1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %179
  %183 = icmp ult i32 %103, 4096
  %184 = add nuw nsw i32 %104, 1
  %185 = select i1 %183, i32 %184, i32 4096
  %186 = select i1 %183, i32 %104, i32 4095
  br label %194

187:                                              ; preds = %179, %167
  %188 = phi i32 [ %136, %167 ], [ 0, %179 ]
  %189 = phi i32 [ %176, %167 ], [ %104, %179 ]
  %190 = phi i32 [ %178, %167 ], [ %104, %179 ]
  %191 = phi i32 [ 4, %167 ], [ %136, %179 ]
  %192 = phi ptr [ %59, %167 ], [ %8, %179 ]
  %193 = icmp eq i32 %190, 0
  br i1 %193, label %228, label %194

194:                                              ; preds = %187, %182
  %195 = phi i32 [ %188, %187 ], [ 1, %182 ]
  %196 = phi ptr [ %192, %187 ], [ %8, %182 ]
  %197 = phi i32 [ %191, %187 ], [ %136, %182 ]
  %198 = phi i32 [ %190, %187 ], [ %185, %182 ]
  %199 = phi i32 [ %189, %187 ], [ %186, %182 ]
  %200 = add i32 %197, -4
  %201 = lshr i32 %200, 1
  %202 = tail call ptr @screen_pos(ptr noundef nonnull %34, i32 noundef %201, i1 noundef zeroext %29) #10
  %203 = add nuw nsw i32 %198, 1
  %204 = lshr i32 %203, 1
  %205 = add i32 %201, %76
  %206 = urem i32 %201, %76
  %207 = sub i32 %205, %206
  br label %208

208:                                              ; preds = %223, %194
  %209 = phi i32 [ %226, %223 ], [ %207, %194 ]
  %210 = phi i32 [ %217, %223 ], [ %204, %194 ]
  %211 = phi ptr [ %225, %223 ], [ %202, %194 ]
  %212 = phi ptr [ %216, %223 ], [ %196, %194 ]
  %213 = phi i32 [ %224, %223 ], [ %206, %194 ]
  %214 = getelementptr i16, ptr %211, i32 1
  %215 = tail call zeroext i16 @vcs_scr_readw(ptr noundef nonnull %34, ptr noundef %211) #10
  %216 = getelementptr i16, ptr %212, i32 1
  store i16 %215, ptr %212, align 2
  %217 = add nsw i32 %210, -1
  %218 = add i32 %213, 1
  %219 = icmp eq i32 %218, %76
  br i1 %219, label %220, label %223

220:                                              ; preds = %208
  %221 = tail call ptr @screen_pos(ptr noundef nonnull %34, i32 noundef %209, i1 noundef zeroext %29) #10
  %222 = add i32 %209, %76
  br label %223

223:                                              ; preds = %220, %208
  %224 = phi i32 [ 0, %220 ], [ %218, %208 ]
  %225 = phi ptr [ %221, %220 ], [ %214, %208 ]
  %226 = phi i32 [ %222, %220 ], [ %209, %208 ]
  %227 = icmp eq i32 %217, 0
  br i1 %227, label %228, label %208

228:                                              ; preds = %223, %187, %160, %137, %124, %108
  %229 = phi i32 [ 0, %137 ], [ %188, %187 ], [ 0, %108 ], [ 0, %160 ], [ %195, %223 ], [ 0, %124 ]
  %230 = phi i32 [ 0, %137 ], [ %189, %187 ], [ %104, %108 ], [ %104, %160 ], [ %199, %223 ], [ %104, %124 ]
  tail call void @console_unlock() #10
  %231 = getelementptr i8, ptr %8, i32 %229
  %232 = icmp slt i32 %230, 0
  %233 = load i1, ptr @check_copy_size.__already_done, align 1
  %234 = xor i1 %233, true
  %235 = select i1 %232, i1 %234, i1 false
  br i1 %235, label %236, label %237, !prof !11

236:                                              ; preds = %228
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %237

237:                                              ; preds = %236, %228
  br i1 %232, label %249, label %238, !prof !11

238:                                              ; preds = %237
  %239 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %64, i32 %230, i32 -1090519040) #12, !srcloc !12
  %240 = extractvalue { i32, i32 } %239, 0
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %238
  %243 = tail call ptr @llvm.thread.pointer() #10
  %244 = getelementptr inbounds %struct.thread_info, ptr %243, i32 0, i32 3
  %245 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %244) #13, !srcloc !13
  %246 = and i32 %245, -13
  %247 = or i32 %246, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %247) #10, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !15
  %248 = tail call i32 @arm_copy_to_user(ptr noundef %64, ptr noundef %231, i32 noundef %230) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %245) #10, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !15
  br label %250

249:                                              ; preds = %237
  tail call void @console_lock() #10
  br label %253

250:                                              ; preds = %242, %238
  %251 = phi i32 [ %248, %242 ], [ %230, %238 ]
  tail call void @console_lock() #10
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %257, label %253

253:                                              ; preds = %250, %249
  %254 = phi i32 [ %230, %249 ], [ %251, %250 ]
  %255 = add i32 %230, %62
  %256 = sub i32 %255, %254
  br label %264

257:                                              ; preds = %250
  %258 = getelementptr i8, ptr %64, i32 %230
  %259 = zext i32 %230 to i64
  %260 = add i64 %61, %259
  %261 = add i32 %230, %62
  %262 = sub i32 %103, %230
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %60

264:                                              ; preds = %257, %253, %105, %95
  %265 = phi i32 [ %256, %253 ], [ %261, %257 ], [ %62, %95 ], [ %62, %105 ]
  %266 = phi i32 [ -14, %253 ], [ 0, %257 ], [ 0, %95 ], [ %106, %105 ]
  %267 = zext i32 %265 to i64
  %268 = load i64, ptr %3, align 8
  %269 = add i64 %268, %267
  store i64 %269, ptr %3, align 8
  %270 = icmp eq i32 %265, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %264, %52
  %272 = phi i32 [ %266, %264 ], [ 0, %52 ]
  br label %273

273:                                              ; preds = %271, %264, %91, %88, %39, %36, %28
  %274 = phi i32 [ -22, %36 ], [ -22, %39 ], [ -6, %28 ], [ %89, %88 ], [ %272, %271 ], [ %265, %264 ], [ %62, %91 ]
  tail call void @console_unlock() #10
  tail call void @free_pages(i32 noundef %7, i32 noundef 0) #10
  br label %275

275:                                              ; preds = %273, %4
  %276 = phi i32 [ %274, %273 ], [ -12, %4 ]
  ret i32 %276
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vcs_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca [4 x i8], align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %283

12:                                               ; preds = %4
  %13 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %14 = inttoptr i32 %13 to ptr
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %283, label %16

16:                                               ; preds = %12
  %17 = load i64, ptr %3, align 8
  tail call void @console_lock() #10
  %18 = load i32, ptr %8, align 4
  %19 = and i32 %18, 128
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %18, 63
  %22 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = tail call i32 @is_console_locked() #10
  %26 = icmp eq i32 %25, 0
  %27 = load i32, ptr @oops_in_progress, align 4
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %31, !prof !8

30:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 187, i32 noundef 9, ptr noundef null) #10
  br label %31

31:                                               ; preds = %30, %24, %16
  %32 = icmp eq i32 %21, 0
  %33 = load i32, ptr @fg_console, align 4
  %34 = add nsw i32 %21, -1
  %35 = select i1 %32, i32 %33, i32 %34
  %36 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %281, label %39

39:                                               ; preds = %31
  %40 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = tail call i32 @is_console_locked() #10
  %44 = icmp eq i32 %43, 0
  %45 = load i32, ptr @oops_in_progress, align 4
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !8

48:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 213, i32 noundef 9, ptr noundef null) #10
  br label %49

49:                                               ; preds = %48, %42, %39
  %50 = getelementptr inbounds %struct.vc_data, ptr %37, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.vc_data, ptr %37, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = mul i32 %53, %51
  %55 = shl i32 %54, 1
  %56 = add i32 %55, 4
  %57 = select i1 %20, i32 %54, i32 %56
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %281, label %59

59:                                               ; preds = %49
  %60 = icmp slt i64 %17, 0
  br i1 %60, label %281, label %61

61:                                               ; preds = %59
  %62 = zext i32 %57 to i64
  %63 = icmp ugt i64 %17, %62
  br i1 %63, label %281, label %64

64:                                               ; preds = %61
  %65 = zext i32 %2 to i64
  %66 = sub nsw i64 %62, %17
  %67 = icmp slt i64 %66, %65
  %68 = trunc i64 %66 to i32
  %69 = select i1 %67, i32 %68, i32 %2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %281, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds i8, ptr %5, i32 2
  br label %73

73:                                               ; preds = %262, %71
  %74 = phi i64 [ %17, %71 ], [ %264, %262 ]
  %75 = phi i32 [ 0, %71 ], [ %265, %262 ]
  %76 = phi i32 [ %69, %71 ], [ %266, %262 ]
  %77 = phi ptr [ %1, %71 ], [ %267, %262 ]
  %78 = call i32 @llvm.umin.i32(i32 %76, i32 4096)
  call void @console_unlock() #10
  %79 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %77, i32 %78, i32 -1090519040) #12, !srcloc !16
  %80 = extractvalue { i32, i32 } %79, 0
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90, !prof !17

82:                                               ; preds = %73
  %83 = tail call ptr @llvm.thread.pointer() #10
  %84 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 3
  %85 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %84) #13, !srcloc !13
  %86 = and i32 %85, -13
  %87 = or i32 %86, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #10, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !15
  %88 = call i32 @arm_copy_from_user(ptr noundef nonnull %14, ptr noundef %77, i32 noundef %78) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #10, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !15
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %96, label %90, !prof !17

90:                                               ; preds = %82, %73
  %91 = phi i32 [ %88, %82 ], [ %78, %73 ]
  %92 = sub i32 %78, %91
  %93 = getelementptr i8, ptr %14, i32 %92
  call void @llvm.memset.p0.i32(ptr align 1 %93, i8 0, i32 %91, i1 false) #10
  call void @console_lock() #10
  %94 = sub i32 %78, %91
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %99

96:                                               ; preds = %82
  call void @console_lock() #10
  br label %99

97:                                               ; preds = %90
  %98 = icmp eq i32 %75, 0
  br i1 %98, label %281, label %269

99:                                               ; preds = %96, %90
  %100 = phi i32 [ %94, %90 ], [ %78, %96 ]
  %101 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = call i32 @is_console_locked() #10
  %105 = icmp eq i32 %104, 0
  %106 = load i32, ptr @oops_in_progress, align 4
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %109, label %110, !prof !8

109:                                              ; preds = %103
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 213, i32 noundef 9, ptr noundef null) #10
  br label %110

110:                                              ; preds = %109, %103, %99
  %111 = load i32, ptr %50, align 4
  %112 = load i32, ptr %52, align 4
  %113 = mul i32 %112, %111
  %114 = shl i32 %113, 1
  %115 = add i32 %114, 4
  %116 = select i1 %20, i32 %113, i32 %115
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = icmp eq i32 %75, 0
  br i1 %119, label %281, label %269

120:                                              ; preds = %110
  %121 = zext i32 %116 to i64
  %122 = icmp slt i64 %74, %121
  br i1 %122, label %123, label %273

123:                                              ; preds = %120
  %124 = zext i32 %100 to i64
  %125 = sub i64 %121, %74
  %126 = icmp slt i64 %125, %124
  %127 = trunc i64 %125 to i32
  %128 = select i1 %126, i32 %127, i32 %100
  %129 = trunc i64 %74 to i32
  br i1 %20, label %222, label %130

130:                                              ; preds = %123
  %131 = icmp ult i32 %129, 4
  br i1 %131, label %132, label %151

132:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !18
  call void @getconsxy(ptr noundef nonnull %37, ptr noundef %72) #10
  %133 = icmp eq i32 %128, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %132
  %135 = getelementptr i8, ptr %5, i32 %129
  %136 = sub nuw nsw i32 3, %129
  %137 = add i32 %128, -1
  %138 = icmp eq i32 %129, 3
  %139 = call i32 @llvm.umin.i32(i32 %137, i32 %136) #10
  %140 = select i1 %138, i32 0, i32 %139
  %141 = add nuw nsw i32 %140, 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %135, ptr nonnull align 1 %14, i32 %141, i1 false) #10
  %142 = sub i32 %137, %140
  %143 = getelementptr i8, ptr %14, i32 %141
  %144 = add nuw nsw i32 %141, %129
  br label %145

145:                                              ; preds = %134, %132
  %146 = phi i32 [ 0, %132 ], [ %142, %134 ]
  %147 = phi i32 [ %129, %132 ], [ %144, %134 ]
  %148 = phi ptr [ %14, %132 ], [ %143, %134 ]
  br i1 %32, label %150, label %149

149:                                              ; preds = %145
  call void @putconsxy(ptr noundef nonnull %37, ptr noundef %72) #10
  br label %150

150:                                              ; preds = %149, %145
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %151

151:                                              ; preds = %150, %130
  %152 = phi i32 [ %146, %150 ], [ %128, %130 ]
  %153 = phi i32 [ %147, %150 ], [ %129, %130 ]
  %154 = phi ptr [ %148, %150 ], [ %14, %130 ]
  %155 = icmp eq i32 %152, 0
  br i1 %155, label %262, label %156

156:                                              ; preds = %151
  %157 = add i32 %153, -4
  %158 = lshr i32 %157, 1
  %159 = urem i32 %158, %112
  %160 = call ptr @screen_pos(ptr noundef nonnull %37, i32 noundef %158, i1 noundef zeroext %32) #10
  %161 = and i32 %153, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %181, label %163

163:                                              ; preds = %156
  %164 = add i32 %152, -1
  %165 = getelementptr i8, ptr %154, i32 1
  %166 = load i8, ptr %154, align 1
  %167 = call zeroext i16 @vcs_scr_readw(ptr noundef nonnull %37, ptr noundef %160) #10
  %168 = zext i8 %166 to i16
  %169 = shl nuw i16 %168, 8
  %170 = and i16 %167, 255
  %171 = or i16 %169, %170
  call void @vcs_scr_writew(ptr noundef nonnull %37, i16 noundef zeroext %171, ptr noundef %160) #10
  %172 = add i32 %153, -3
  %173 = add nuw i32 %159, 1
  %174 = icmp eq i32 %173, %112
  br i1 %174, label %178, label %175

175:                                              ; preds = %163
  %176 = getelementptr i16, ptr %160, i32 1
  %177 = lshr i32 %172, 1
  br label %181

178:                                              ; preds = %163
  %179 = lshr i32 %172, 1
  %180 = call ptr @screen_pos(ptr noundef nonnull %37, i32 noundef %179, i1 noundef zeroext %32) #10
  br label %181

181:                                              ; preds = %178, %175, %156
  %182 = phi i32 [ %177, %175 ], [ %179, %178 ], [ %158, %156 ]
  %183 = phi i32 [ %164, %175 ], [ %164, %178 ], [ %152, %156 ]
  %184 = phi ptr [ %176, %175 ], [ %180, %178 ], [ %160, %156 ]
  %185 = phi i32 [ %173, %175 ], [ 0, %178 ], [ %159, %156 ]
  %186 = phi ptr [ %165, %175 ], [ %165, %178 ], [ %154, %156 ]
  %187 = icmp ugt i32 %183, 1
  br i1 %187, label %188, label %211

188:                                              ; preds = %181
  %189 = add i32 %182, %112
  %190 = sub i32 %189, %185
  br label %191

191:                                              ; preds = %206, %188
  %192 = phi ptr [ %199, %206 ], [ %186, %188 ]
  %193 = phi i32 [ %209, %206 ], [ %190, %188 ]
  %194 = phi i32 [ %208, %206 ], [ %185, %188 ]
  %195 = phi ptr [ %207, %206 ], [ %184, %188 ]
  %196 = phi i32 [ %200, %206 ], [ %183, %188 ]
  %197 = load i16, ptr %192, align 1
  %198 = getelementptr i16, ptr %195, i32 1
  call void @vcs_scr_writew(ptr noundef nonnull %37, i16 noundef zeroext %197, ptr noundef %195) #10
  %199 = getelementptr i8, ptr %192, i32 2
  %200 = add i32 %196, -2
  %201 = add i32 %194, 1
  %202 = icmp eq i32 %201, %112
  br i1 %202, label %203, label %206

203:                                              ; preds = %191
  %204 = call ptr @screen_pos(ptr noundef nonnull %37, i32 noundef %193, i1 noundef zeroext %32) #10
  %205 = add i32 %193, %112
  br label %206

206:                                              ; preds = %203, %191
  %207 = phi ptr [ %204, %203 ], [ %198, %191 ]
  %208 = phi i32 [ 0, %203 ], [ %201, %191 ]
  %209 = phi i32 [ %205, %203 ], [ %193, %191 ]
  %210 = icmp ugt i32 %200, 1
  br i1 %210, label %191, label %211

211:                                              ; preds = %206, %181
  %212 = phi i32 [ %183, %181 ], [ %200, %206 ]
  %213 = phi ptr [ %184, %181 ], [ %207, %206 ]
  %214 = phi ptr [ %186, %181 ], [ %199, %206 ]
  %215 = icmp eq i32 %212, 0
  br i1 %215, label %253, label %216

216:                                              ; preds = %211
  %217 = load i8, ptr %214, align 1
  %218 = call zeroext i16 @vcs_scr_readw(ptr noundef nonnull %37, ptr noundef %213) #10
  %219 = and i16 %218, -256
  %220 = zext i8 %217 to i16
  %221 = or i16 %219, %220
  call void @vcs_scr_writew(ptr noundef nonnull %37, i16 noundef zeroext %221, ptr noundef %213) #10
  br label %253

222:                                              ; preds = %123
  %223 = call ptr @screen_pos(ptr noundef nonnull %37, i32 noundef %129, i1 noundef zeroext %32) #10
  %224 = icmp eq i32 %128, 0
  br i1 %224, label %253, label %225

225:                                              ; preds = %222
  %226 = add i32 %112, %129
  %227 = urem i32 %129, %112
  %228 = sub i32 %226, %227
  br label %229

229:                                              ; preds = %248, %225
  %230 = phi ptr [ %235, %248 ], [ %14, %225 ]
  %231 = phi i32 [ %251, %248 ], [ %227, %225 ]
  %232 = phi ptr [ %250, %248 ], [ %223, %225 ]
  %233 = phi i32 [ %249, %248 ], [ %228, %225 ]
  %234 = phi i32 [ %237, %248 ], [ %128, %225 ]
  %235 = getelementptr i8, ptr %230, i32 1
  %236 = load i8, ptr %230, align 1
  %237 = add i32 %234, -1
  %238 = call zeroext i16 @vcs_scr_readw(ptr noundef nonnull %37, ptr noundef %232) #10
  %239 = and i16 %238, -256
  %240 = zext i8 %236 to i16
  %241 = or i16 %239, %240
  call void @vcs_scr_writew(ptr noundef nonnull %37, i16 noundef zeroext %241, ptr noundef %232) #10
  %242 = getelementptr i16, ptr %232, i32 1
  %243 = add i32 %231, 1
  %244 = icmp eq i32 %243, %112
  br i1 %244, label %245, label %248

245:                                              ; preds = %229
  %246 = call ptr @screen_pos(ptr noundef nonnull %37, i32 noundef %233, i1 noundef zeroext %32) #10
  %247 = add i32 %233, %112
  br label %248

248:                                              ; preds = %245, %229
  %249 = phi i32 [ %247, %245 ], [ %233, %229 ]
  %250 = phi ptr [ %246, %245 ], [ %242, %229 ]
  %251 = phi i32 [ 0, %245 ], [ %243, %229 ]
  %252 = icmp eq i32 %237, 0
  br i1 %252, label %253, label %229

253:                                              ; preds = %248, %222, %216, %211
  %254 = phi ptr [ %160, %211 ], [ %160, %216 ], [ %223, %222 ], [ %223, %248 ]
  %255 = phi ptr [ %213, %211 ], [ %213, %216 ], [ %223, %222 ], [ %250, %248 ]
  %256 = icmp eq ptr %255, null
  br i1 %256, label %262, label %257

257:                                              ; preds = %253
  %258 = ptrtoint ptr %254 to i32
  %259 = ptrtoint ptr %255 to i32
  %260 = sub i32 %259, %258
  %261 = ashr exact i32 %260, 1
  call void @update_region(ptr noundef nonnull %37, i32 noundef %258, i32 noundef %261) #10
  br label %262

262:                                              ; preds = %257, %253, %151
  %263 = zext i32 %128 to i64
  %264 = add i64 %74, %263
  %265 = add i32 %128, %75
  %266 = sub i32 %76, %128
  %267 = getelementptr i8, ptr %77, i32 %128
  %268 = icmp eq i32 %266, 0
  br i1 %268, label %273, label %73

269:                                              ; preds = %118, %97
  %270 = zext i32 %75 to i64
  %271 = load i64, ptr %3, align 8
  %272 = add i64 %271, %270
  store i64 %272, ptr %3, align 8
  br label %279

273:                                              ; preds = %262, %120
  %274 = phi i32 [ %265, %262 ], [ %75, %120 ]
  %275 = zext i32 %274 to i64
  %276 = load i64, ptr %3, align 8
  %277 = add i64 %276, %275
  store i64 %277, ptr %3, align 8
  %278 = icmp eq i32 %274, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %273, %269
  %280 = phi i32 [ %75, %269 ], [ %274, %273 ]
  call void @vcs_scr_updated(ptr noundef nonnull %37) #10
  br label %281

281:                                              ; preds = %279, %273, %118, %97, %64, %61, %59, %49, %31
  %282 = phi i32 [ -22, %59 ], [ -22, %61 ], [ %280, %279 ], [ 0, %273 ], [ -6, %31 ], [ %57, %49 ], [ -14, %97 ], [ %116, %118 ], [ 0, %64 ]
  call void @console_unlock() #10
  call void @free_pages(i32 noundef %13, i32 noundef 0) #10
  br label %283

283:                                              ; preds = %281, %12, %4
  %284 = phi i32 [ %282, %281 ], [ -95, %4 ], [ -12, %12 ]
  ret i32 %284
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vcs_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc ptr @vcs_poll_data_get(ptr noundef %0)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.vcs_poll_data, ptr %3, i32 0, i32 3
  %7 = icmp eq ptr %1, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %1, align 4
  %10 = icmp ne ptr %9, null
  %11 = icmp ne ptr %6, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void %9(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %1) #10
  br label %14

14:                                               ; preds = %13, %8, %5
  %15 = getelementptr inbounds %struct.vcs_poll_data, ptr %3, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, 5
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds [5 x i32], ptr @switch.table.vcs_poll, i32 0, i32 %16
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %14, %2
  %22 = phi i32 [ 333, %14 ], [ 333, %2 ], [ %20, %18 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vcs_open(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 63
  %6 = and i32 %4, 192
  %7 = icmp eq i32 %6, 192
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  tail call void @console_lock() #10
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = add nsw i32 %5, -1
  %12 = tail call i32 @vc_cons_allocated(i32 noundef %11) #10
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 -6, i32 0
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ 0, %8 ], [ %14, %10 ]
  tail call void @console_unlock() #10
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi i32 [ %16, %15 ], [ -95, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vcs_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @unregister_vt_notifier(ptr noundef nonnull %4) #10
  tail call void @kfree(ptr noundef nonnull %4) #10
  br label %8

8:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vcs_fasync(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %7
  %10 = tail call fastcc ptr @vcs_poll_data_get(ptr noundef %1)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9, %3
  %13 = phi ptr [ %5, %3 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.vcs_poll_data, ptr %13, i32 0, i32 4
  %15 = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %14) #10
  br label %16

16:                                               ; preds = %12, %9, %7
  %17 = phi i32 [ %15, %12 ], [ 0, %7 ], [ -12, %9 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fixed_size_llseek(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_console_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_uniscr_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc_uniscr_copy_line(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @screen_pos(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vcs_scr_readw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @getconsxy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcs_scr_updated(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @putconsxy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcs_scr_writew(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @vcs_poll_data_get(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %36

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 36) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 63
  %15 = getelementptr inbounds %struct.vcs_poll_data, ptr %7, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.vcs_poll_data, ptr %7, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %16, ptr noundef nonnull @.str.11, ptr noundef nonnull @vcs_poll_data_get.__key) #10
  store ptr @vcs_notifier, ptr %7, align 8
  %17 = getelementptr inbounds %struct.vcs_poll_data, ptr %7, i32 0, i32 2
  store i32 4, ptr %17, align 8
  %18 = tail call i32 @register_vt_notifier(ptr noundef nonnull %7) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %21) #10
  %22 = load ptr, ptr %2, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store ptr %7, ptr %2, align 8
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi ptr [ %7, %24 ], [ %22, %20 ]
  %27 = phi ptr [ null, %24 ], [ %7, %20 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %28 = load i16, ptr %21, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %30 = icmp eq ptr %27, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = tail call i32 @unregister_vt_notifier(ptr noundef nonnull %27) #10
  br label %33

33:                                               ; preds = %31, %9
  %34 = phi ptr [ %27, %31 ], [ %7, %9 ]
  %35 = phi ptr [ %26, %31 ], [ null, %9 ]
  tail call void @kfree(ptr noundef nonnull %34) #10
  br label %36

36:                                               ; preds = %33, %25, %5, %1
  %37 = phi ptr [ %3, %1 ], [ null, %5 ], [ %26, %25 ], [ %35, %33 ]
  ret ptr %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vcs_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.vcs_poll_data, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %1, label %22 [
    i32 4, label %8
    i32 2, label %7
  ]

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7, %3
  %9 = phi i32 [ 6, %7 ], [ 5, %3 ]
  %10 = icmp eq i32 %6, 0
  %11 = load i32, ptr @fg_console, align 4
  %12 = add i32 %6, -1
  %13 = select i1 %10, i32 %11, i32 %12
  %14 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 3
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.vcs_poll_data, ptr %0, i32 0, i32 2
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.vcs_poll_data, ptr %0, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %20, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %21 = getelementptr inbounds %struct.vcs_poll_data, ptr %0, i32 0, i32 4
  tail call void @kill_fasync(ptr noundef %21, i32 noundef 29, i32 noundef %9) #10
  br label %22

22:                                               ; preds = %18, %8, %3
  %23 = phi i32 [ 1, %18 ], [ 0, %3 ], [ 0, %8 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_vt_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_vt_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_cons_allocated(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 1, i32 4001}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2151000811, i64 2151000836}
!13 = !{i64 3496345}
!14 = !{i64 3496542}
!15 = !{i64 2150981821}
!16 = !{i64 2151000233, i64 2151000258}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{!"auto-init"}
!19 = !{i64 2149035178}
!20 = !{i64 2149031002}
!21 = !{i64 2149031077, i64 2149031104, i64 2149031151, i64 2149031173, i64 2149031201, i64 2149031221}
!22 = !{i64 2149058181}
