; ModuleID = '/llk/IR/drivers/base/regmap/regmap-debugfs.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-debugfs.c"
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
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap = type { %union.anon, ptr, ptr, ptr, i32, ptr, ptr, %struct.regmap_format, ptr, ptr, ptr, i8, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i8, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, i8, i8, ptr, i32, i8, i8, i8, i32, i32, %struct.rb_root, ptr, ptr, i8 }
%union.anon = type { %struct.mutex }
%struct.regmap_format = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rb_root = type { ptr }
%struct.regmap_debugfs_node = type { ptr, %struct.list_head }
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
%struct.regmap_range_node = type { %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.regcache_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.regmap_debugfs_off_cache = type { %struct.list_head, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.64 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@regmap_debugfs_root = internal unnamed_addr global ptr null, align 4
@regmap_debugfs_early_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @regmap_debugfs_early_lock, i64 12), ptr getelementptr (i8, ptr @regmap_debugfs_early_lock, i64 12) } }, align 4
@regmap_debugfs_early_list = internal global %struct.list_head { ptr @regmap_debugfs_early_list, ptr @regmap_debugfs_early_list }, align 4
@regmap_debugfs_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"&map->cache_lock\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dummy%d\00", align 1
@dummy_index = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@regmap_name_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @regmap_name_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@regmap_reg_ranges_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @regmap_reg_ranges_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@regmap_map_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @regmap_map_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@regmap_access_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @regmap_access_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"cache_only\00", align 1
@regmap_cache_only_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @debugfs_read_file_bool, ptr @regmap_cache_only_write_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"cache_dirty\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"cache_bypass\00", align 1
@regmap_cache_bypass_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @debugfs_read_file_bool, ptr @regmap_cache_bypass_write_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@regmap_range_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @regmap_range_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"regmap\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"nodev\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%x-%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"drivers/base/regmap/regmap-debugfs.c\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%.*x: \00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"%.*x\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"%.*x: %c %c %c %c\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"debugfs cache_only=Y forced\0A\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"debugfs cache_only=N forced: syncing cache\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Failed to sync cache %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"debugfs cache_bypass=Y forced\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"debugfs cache_bypass=N forced\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regmap_debugfs_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 17
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %110

7:                                                ; preds = %1
  %8 = load ptr, ptr @regmap_debugfs_root, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 12) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %110, label %14

14:                                               ; preds = %10
  store ptr %0, ptr %12, align 8
  tail call void @mutex_lock(ptr noundef nonnull @regmap_debugfs_early_lock) #13
  %15 = getelementptr inbounds %struct.regmap_debugfs_node, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr @regmap_debugfs_early_list, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store ptr %16, ptr %15, align 4
  %18 = getelementptr inbounds %struct.regmap_debugfs_node, ptr %12, i32 0, i32 1, i32 1
  store ptr @regmap_debugfs_early_list, ptr %18, align 8
  store volatile ptr %15, ptr @regmap_debugfs_early_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @regmap_debugfs_early_lock) #13
  br label %110

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 23
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 23, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 24
  tail call void @__mutex_init(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef nonnull @regmap_debugfs_init.__key) #13
  %23 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load ptr, ptr %24, align 4
  br label %32

32:                                               ; preds = %30, %26, %19
  %33 = phi ptr [ @.str, %19 ], [ %31, %30 ], [ %28, %26 ]
  %34 = icmp eq ptr %3, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 19
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %33, ptr noundef nonnull %3) #13
  store ptr %40, ptr %36, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %110, label %42

42:                                               ; preds = %39, %35, %32
  %43 = phi ptr [ %33, %32 ], [ %40, %39 ], [ %37, %35 ]
  %44 = tail call i32 @strcmp(ptr noundef %43, ptr noundef nonnull dereferenceable(6) @.str)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 19
  %48 = load ptr, ptr %47, align 4
  tail call void @kfree(ptr noundef %48) #13
  %49 = load i32, ptr @dummy_index, align 4
  %50 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %49) #13
  store ptr %50, ptr %47, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %110, label %52

52:                                               ; preds = %46
  %53 = load i32, ptr @dummy_index, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr @dummy_index, align 4
  br label %55

55:                                               ; preds = %52, %42
  %56 = phi ptr [ %43, %42 ], [ %50, %52 ]
  %57 = load ptr, ptr @regmap_debugfs_root, align 4
  %58 = tail call ptr @debugfs_create_dir(ptr noundef %56, ptr noundef %57) #13
  %59 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 18
  store ptr %58, ptr %59, align 4
  %60 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef %58, ptr noundef %0, ptr noundef nonnull @regmap_name_fops) #13
  %61 = load ptr, ptr %59, align 4
  %62 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %61, ptr noundef %0, ptr noundef nonnull @regmap_reg_ranges_fops) #13
  %63 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 25
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = tail call zeroext i1 @regmap_readable(ptr noundef %0, i32 noundef 0) #13
  br i1 %67, label %68, label %73

68:                                               ; preds = %66, %55
  %69 = load ptr, ptr %59, align 4
  %70 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %69, ptr noundef %0, ptr noundef nonnull @regmap_map_fops) #13
  %71 = load ptr, ptr %59, align 4
  %72 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %71, ptr noundef %0, ptr noundef nonnull @regmap_access_fops) #13
  br label %73

73:                                               ; preds = %68, %66
  %74 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 48
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %59, align 4
  %79 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 53
  %80 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %78, ptr noundef %79, ptr noundef nonnull @regmap_cache_only_fops) #13
  %81 = load ptr, ptr %59, align 4
  %82 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 59
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %81, ptr noundef %82) #13
  %83 = load ptr, ptr %59, align 4
  %84 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  %85 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 384, ptr noundef %83, ptr noundef %84, ptr noundef nonnull @regmap_cache_bypass_fops) #13
  br label %86

86:                                               ; preds = %77, %73
  %87 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 68
  %88 = tail call ptr @rb_first(ptr noundef %87) #13
  %89 = icmp eq ptr %88, null
  br i1 %89, label %101, label %90

90:                                               ; preds = %98, %86
  %91 = phi ptr [ %99, %98 ], [ %88, %86 ]
  %92 = getelementptr inbounds %struct.regmap_range_node, ptr %91, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load ptr, ptr %59, align 4
  %97 = tail call ptr @debugfs_create_file(ptr noundef nonnull %93, i16 noundef zeroext 256, ptr noundef %96, ptr noundef nonnull %91, ptr noundef nonnull @regmap_range_fops) #13
  br label %98

98:                                               ; preds = %95, %90
  %99 = tail call ptr @rb_next(ptr noundef nonnull %91) #13
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %90

101:                                              ; preds = %98, %86
  %102 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 47
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.regcache_ops, ptr %103, i32 0, i32 4
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  tail call void %107(ptr noundef %0) #13
  br label %110

110:                                              ; preds = %109, %105, %101, %46, %39, %14, %10, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_readable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regmap_debugfs_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  tail call void @debugfs_remove(ptr noundef nonnull %3) #13
  %6 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 24
  tail call void @mutex_lock(ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 23
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %16, %10 ], [ %8, %5 ]
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  tail call void @kfree(ptr noundef %11) #13
  %16 = load volatile ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, %7
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %5
  tail call void @mutex_unlock(ptr noundef %6) #13
  %19 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #13
  store ptr null, ptr %19, align 4
  br label %37

21:                                               ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @regmap_debugfs_early_lock) #13
  %22 = load ptr, ptr @regmap_debugfs_early_list, align 4
  %23 = icmp eq ptr %22, @regmap_debugfs_early_list
  br i1 %23, label %36, label %24

24:                                               ; preds = %34, %21
  %25 = phi ptr [ %27, %34 ], [ %22, %21 ]
  %26 = getelementptr i8, ptr %25, i32 -4
  %27 = load ptr, ptr %25, align 4
  %28 = load ptr, ptr %26, align 4
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  store volatile ptr %27, ptr %32, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %31, align 4
  tail call void @kfree(ptr noundef %26) #13
  br label %34

34:                                               ; preds = %30, %24
  %35 = icmp eq ptr %27, @regmap_debugfs_early_list
  br i1 %35, label %36, label %24

36:                                               ; preds = %34, %21
  tail call void @mutex_unlock(ptr noundef nonnull @regmap_debugfs_early_lock) #13
  br label %37

37:                                               ; preds = %36, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regmap_debugfs_initcall() local_unnamed_addr #0 {
  %1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.11, ptr noundef null) #13
  store ptr %1, ptr @regmap_debugfs_root, align 4
  tail call void @mutex_lock(ptr noundef nonnull @regmap_debugfs_early_lock) #13
  %2 = load ptr, ptr @regmap_debugfs_early_list, align 4
  %3 = icmp eq ptr %2, @regmap_debugfs_early_list
  br i1 %3, label %14, label %4

4:                                                ; preds = %4, %0
  %5 = phi ptr [ %7, %4 ], [ %2, %0 ]
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = load ptr, ptr %5, align 4
  %8 = load ptr, ptr %6, align 4
  tail call void @regmap_debugfs_init(ptr noundef %8)
  %9 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @kfree(ptr noundef %6) #13
  %13 = icmp eq ptr %7, @regmap_debugfs_early_list
  br i1 %13, label %14, label %4

14:                                               ; preds = %4, %0
  tail call void @mutex_unlock(ptr noundef nonnull @regmap_debugfs_early_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_name_read_file(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 4096) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.regmap, ptr %6, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 4
  br label %20

20:                                               ; preds = %18, %14, %10
  %21 = phi ptr [ %19, %18 ], [ @.str.12, %14 ], [ @.str.12, %10 ]
  %22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %8, i32 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef %21)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %8, i32 noundef %22) #13
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %25, %24 ], [ %22, %20 ]
  tail call void @kfree(ptr noundef nonnull %8) #13
  br label %28

28:                                               ; preds = %26, %4
  %29 = phi i32 [ -12, %4 ], [ %27, %26 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_reg_ranges_read_file(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %8 = load i64, ptr %3, align 8
  %9 = icmp sgt i64 %8, -1
  %10 = icmp ne i32 %2, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %93

12:                                               ; preds = %4
  %13 = tail call i32 @llvm.umin.i32(i32 %2, i32 8388608)
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %93, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 4096) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %91, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.regmap, ptr %7, i32 0, i32 22
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.regmap, ptr %7, i32 0, i32 25
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %26) #13
  %28 = getelementptr inbounds %struct.regmap, ptr %7, i32 0, i32 20
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.regmap, ptr %7, i32 0, i32 7, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %30, 1
  %32 = getelementptr inbounds %struct.regmap, ptr %7, i32 0, i32 21
  store i32 %31, ptr %32, align 4
  %33 = add i32 %27, 3
  %34 = add i32 %33, %31
  store i32 %34, ptr %21, align 4
  br label %35

35:                                               ; preds = %24, %20
  %36 = load i64, ptr %3, align 8
  %37 = call fastcc i32 @regmap_debugfs_get_dump_start(ptr noundef %7, i32 noundef 0, i64 noundef %36, ptr noundef nonnull %5)
  %38 = getelementptr inbounds %struct.regmap, ptr %7, i32 0, i32 24
  tail call void @mutex_lock(ptr noundef %38) #13
  %39 = getelementptr inbounds %struct.regmap, ptr %7, i32 0, i32 23
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %64, label %42

42:                                               ; preds = %58, %35
  %43 = phi ptr [ %62, %58 ], [ %40, %35 ]
  %44 = phi i32 [ %59, %58 ], [ 0, %35 ]
  %45 = phi i64 [ %61, %58 ], [ 0, %35 ]
  %46 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %43, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %43, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %18, i32 noundef 4096, ptr noundef nonnull @.str.14, i32 noundef %47, i32 noundef %49)
  %51 = load i64, ptr %3, align 8
  %52 = icmp slt i64 %45, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %42
  %54 = add i32 %50, %44
  %55 = icmp ugt i32 %54, %13
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = getelementptr i8, ptr %14, i32 %44
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %57, ptr nonnull align 8 %18, i32 %50, i1 false)
  br label %58

58:                                               ; preds = %56, %42
  %59 = phi i32 [ %54, %56 ], [ %44, %42 ]
  %60 = zext i32 %50 to i64
  %61 = add i64 %45, %60
  %62 = load ptr, ptr %43, align 4
  %63 = icmp eq ptr %62, %39
  br i1 %63, label %64, label %42

64:                                               ; preds = %58, %53, %35
  %65 = phi i64 [ 0, %35 ], [ %45, %53 ], [ %61, %58 ]
  %66 = phi i32 [ 0, %35 ], [ %44, %53 ], [ %59, %58 ]
  store i64 %65, ptr %5, align 8
  tail call void @mutex_unlock(ptr noundef %38) #13
  tail call void @kfree(ptr noundef nonnull %18) #13
  %67 = icmp slt i32 %66, 0
  %68 = load i1, ptr @check_copy_size.__already_done, align 1
  %69 = xor i1 %68, true
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %72, !prof !9

71:                                               ; preds = %64
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %72

72:                                               ; preds = %71, %64
  br i1 %67, label %91, label %73, !prof !9

73:                                               ; preds = %72
  %74 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %66, i32 -1090519040) #15, !srcloc !10
  %75 = extractvalue { i32, i32 } %74, 0
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = tail call ptr @llvm.thread.pointer() #13
  %79 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 3
  %80 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %79) #16, !srcloc !11
  %81 = and i32 %80, -13
  %82 = or i32 %81, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #13, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !13
  %83 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %14, i32 noundef %66) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #13, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !13
  br label %84

84:                                               ; preds = %77, %73
  %85 = phi i32 [ %83, %77 ], [ %66, %73 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = zext i32 %66 to i64
  %89 = load i64, ptr %3, align 8
  %90 = add i64 %89, %88
  store i64 %90, ptr %3, align 8
  br label %91

91:                                               ; preds = %87, %84, %72, %16
  %92 = phi i32 [ -12, %16 ], [ %66, %87 ], [ -14, %84 ], [ -14, %72 ]
  tail call void @kfree(ptr noundef nonnull %14) #13
  br label %93

93:                                               ; preds = %91, %12, %4
  %94 = phi i32 [ -22, %4 ], [ -12, %12 ], [ %92, %91 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @regmap_debugfs_get_dump_start(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %123

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 24
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 23
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %11, label %81

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 25
  %13 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 22
  %14 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %15 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 23, i32 1
  br label %16

16:                                               ; preds = %62, %11
  %17 = phi i32 [ 0, %11 ], [ %69, %62 ]
  %18 = phi ptr [ null, %11 ], [ %64, %62 ]
  %19 = phi i64 [ 0, %11 ], [ %63, %62 ]
  %20 = phi i32 [ 0, %11 ], [ %66, %62 ]
  %21 = tail call zeroext i1 @regmap_precious(ptr noundef %0, i32 noundef %20) #13
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = tail call zeroext i1 @regmap_readable(ptr noundef %0, i32 noundef %20) #13
  br i1 %23, label %36, label %24

24:                                               ; preds = %22
  %25 = tail call zeroext i1 @regmap_cached(ptr noundef %0, i32 noundef %20) #13
  br i1 %25, label %36, label %26

26:                                               ; preds = %24, %16
  %27 = icmp eq ptr %18, null
  br i1 %27, label %62, label %28

28:                                               ; preds = %26
  %29 = add i32 %17, -1
  %30 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %18, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = load i32, ptr %14, align 4
  %32 = sub i32 %20, %31
  %33 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %18, i32 0, i32 4
  store i32 %32, ptr %33, align 4
  %34 = load ptr, ptr %15, align 4
  store ptr %18, ptr %15, align 4
  store ptr %8, ptr %18, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %18, ptr %34, align 4
  br label %62

36:                                               ; preds = %24, %22
  %37 = icmp eq ptr %18, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %36
  %39 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 24) #12
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load volatile ptr, ptr %8, align 4
  %44 = icmp eq ptr %43, %8
  br i1 %44, label %53, label %45

45:                                               ; preds = %45, %42
  %46 = phi ptr [ %51, %45 ], [ %43, %42 ]
  %47 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %46, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %46, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  tail call void @kfree(ptr noundef %46) #13
  %51 = load volatile ptr, ptr %8, align 4
  %52 = icmp eq ptr %51, %8
  br i1 %52, label %53, label %45

53:                                               ; preds = %45, %42
  tail call void @mutex_unlock(ptr noundef %7) #13
  br label %123

54:                                               ; preds = %38
  %55 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %40, i32 0, i32 1
  store i32 %17, ptr %55, align 8
  %56 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %40, i32 0, i32 3
  store i32 %20, ptr %56, align 8
  br label %57

57:                                               ; preds = %54, %36
  %58 = phi ptr [ %18, %36 ], [ %40, %54 ]
  %59 = load i32, ptr %13, align 4
  %60 = zext i32 %59 to i64
  %61 = add i64 %19, %60
  br label %62

62:                                               ; preds = %57, %28, %26
  %63 = phi i64 [ %61, %57 ], [ %19, %28 ], [ %19, %26 ]
  %64 = phi ptr [ %58, %57 ], [ null, %28 ], [ null, %26 ]
  %65 = load i32, ptr %14, align 4
  %66 = add i32 %65, %20
  %67 = load i32, ptr %12, align 4
  %68 = icmp ugt i32 %66, %67
  %69 = trunc i64 %63 to i32
  br i1 %68, label %70, label %16

70:                                               ; preds = %62
  %71 = icmp eq ptr %64, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %70
  %73 = trunc i64 %63 to i32
  %74 = add i32 %73, -1
  %75 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %64, i32 0, i32 2
  store i32 %74, ptr %75, align 4
  %76 = load i32, ptr %14, align 4
  %77 = sub i32 %66, %76
  %78 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %64, i32 0, i32 4
  store i32 %77, ptr %78, align 4
  %79 = load ptr, ptr %15, align 4
  store ptr %64, ptr %15, align 4
  store ptr %8, ptr %64, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %79, ptr %80, align 4
  store volatile ptr %64, ptr %79, align 4
  br label %81

81:                                               ; preds = %72, %70, %6
  %82 = load volatile ptr, ptr %8, align 4
  %83 = icmp eq ptr %82, %8
  br i1 %83, label %84, label %86, !prof !9

84:                                               ; preds = %81
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 160, i32 noundef 9, ptr noundef null) #13
  %85 = load ptr, ptr %8, align 4
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi ptr [ %85, %84 ], [ %82, %81 ]
  %88 = icmp eq ptr %87, %8
  br i1 %88, label %121, label %89

89:                                               ; preds = %115, %86
  %90 = phi ptr [ %116, %115 ], [ %87, %86 ]
  %91 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %90, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp sgt i64 %93, %2
  %95 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %90, i32 0, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %97, %2
  %99 = select i1 %94, i1 true, i1 %98
  br i1 %99, label %115, label %100

100:                                              ; preds = %89
  %101 = trunc i64 %2 to i32
  %102 = sub i32 %101, %92
  %103 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 22
  %104 = load i32, ptr %103, align 4
  %105 = udiv i32 %102, %104
  %106 = mul i32 %105, %104
  %107 = add i32 %106, %92
  %108 = zext i32 %107 to i64
  store i64 %108, ptr %3, align 8
  tail call void @mutex_unlock(ptr noundef %7) #13
  %109 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %90, i32 0, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %112 = load i32, ptr %111, align 4
  %113 = mul i32 %112, %105
  %114 = add i32 %113, %110
  br label %123

115:                                              ; preds = %89
  store i64 %97, ptr %3, align 8
  %116 = load ptr, ptr %90, align 4
  %117 = icmp eq ptr %116, %8
  br i1 %117, label %118, label %89

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %90, i32 0, i32 4
  %120 = load i32, ptr %119, align 4
  br label %121

121:                                              ; preds = %118, %86
  %122 = phi i32 [ %120, %118 ], [ 0, %86 ]
  tail call void @mutex_unlock(ptr noundef %7) #13
  br label %123

123:                                              ; preds = %121, %100, %53, %4
  %124 = phi i32 [ 0, %53 ], [ %114, %100 ], [ %122, %121 ], [ %1, %4 ]
  ret i32 %124
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_precious(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_cached(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_map_read_file(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.regmap, ptr %6, i32 0, i32 25
  %8 = load i32, ptr %7, align 4
  %9 = tail call fastcc i32 @regmap_read_debugfs(ptr noundef %6, i32 noundef 0, i32 noundef %8, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @regmap_read_debugfs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef %5) unnamed_addr #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %9 = load i64, ptr %5, align 8
  store i64 %9, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !14
  %10 = icmp sgt i64 %9, -1
  %11 = icmp ne i32 %4, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %151

13:                                               ; preds = %6
  %14 = tail call i32 @llvm.umin.i32(i32 %4, i32 8388608)
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %151, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 22
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 25
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %23) #13
  %25 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 20
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = shl i32 %27, 1
  %29 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 21
  store i32 %28, ptr %29, align 4
  %30 = add i32 %24, 3
  %31 = add i32 %30, %28
  store i32 %31, ptr %18, align 4
  br label %32

32:                                               ; preds = %21, %17
  %33 = load i64, ptr %5, align 8
  %34 = call fastcc i32 @regmap_debugfs_get_dump_start(ptr noundef %0, i32 noundef %1, i64 noundef %33, ptr noundef nonnull %7)
  %35 = icmp sgt i32 %34, -1
  %36 = icmp ule i32 %34, %2
  %37 = and i1 %35, %36
  br i1 %37, label %38, label %130

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 20
  %40 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 21
  %41 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %42 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %43 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 24
  %44 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 23
  %45 = load i64, ptr %7, align 8
  %46 = load i64, ptr %7, align 8
  br label %47

47:                                               ; preds = %116, %38
  %48 = phi i64 [ %46, %38 ], [ %88, %116 ]
  %49 = phi i64 [ %45, %38 ], [ %88, %116 ]
  %50 = phi i32 [ %34, %38 ], [ %117, %116 ]
  %51 = phi i32 [ 0, %38 ], [ %85, %116 ]
  %52 = load i64, ptr %5, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %83, label %54

54:                                               ; preds = %47
  %55 = load i32, ptr %18, align 4
  %56 = add i32 %55, %51
  %57 = icmp ugt i32 %56, %14
  br i1 %57, label %121, label %58

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %15, i32 %51
  %60 = sub i32 %14, %51
  %61 = load i32, ptr %39, align 4
  %62 = sub i32 %50, %1
  %63 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %59, i32 noundef %60, ptr noundef nonnull @.str.19, i32 noundef %61, i32 noundef %62)
  %64 = load i32, ptr %39, align 4
  %65 = add i32 %51, 2
  %66 = add i32 %65, %64
  %67 = call i32 @regmap_read(ptr noundef %0, i32 noundef %50, ptr noundef nonnull %8) #13
  %68 = icmp eq i32 %67, 0
  %69 = getelementptr i8, ptr %15, i32 %66
  br i1 %68, label %70, label %75

70:                                               ; preds = %58
  %71 = sub i32 %14, %66
  %72 = load i32, ptr %40, align 4
  %73 = load i32, ptr %8, align 4
  %74 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %69, i32 noundef %71, ptr noundef nonnull @.str.20, i32 noundef %72, i32 noundef %73)
  br label %77

75:                                               ; preds = %58
  %76 = load i32, ptr %40, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %69, i8 88, i32 %76, i1 false)
  br label %77

77:                                               ; preds = %75, %70
  %78 = load i32, ptr %41, align 4
  %79 = shl i32 %78, 1
  %80 = add i32 %79, %66
  %81 = add i32 %80, 1
  %82 = getelementptr i8, ptr %15, i32 %80
  store i8 10, ptr %82, align 1
  br label %83

83:                                               ; preds = %77, %47
  %84 = phi i64 [ %48, %77 ], [ %49, %47 ]
  %85 = phi i32 [ %81, %77 ], [ %51, %47 ]
  %86 = load i32, ptr %18, align 4
  %87 = zext i32 %86 to i64
  %88 = add i64 %84, %87
  %89 = load i32, ptr %42, align 4
  %90 = add i32 %89, %50
  %91 = call zeroext i1 @regmap_precious(ptr noundef %0, i32 noundef %90) #13
  br i1 %91, label %99, label %92

92:                                               ; preds = %83
  %93 = call zeroext i1 @regmap_readable(ptr noundef %0, i32 noundef %90) #13
  br i1 %93, label %96, label %94

94:                                               ; preds = %92
  %95 = call zeroext i1 @regmap_cached(ptr noundef %0, i32 noundef %90) #13
  br i1 %95, label %96, label %99

96:                                               ; preds = %94, %92
  %97 = load i32, ptr %42, align 4
  %98 = add i32 %97, %50
  br label %116

99:                                               ; preds = %94, %83
  call void @mutex_lock(ptr noundef %43) #13
  %100 = load ptr, ptr %44, align 4
  %101 = icmp eq ptr %100, %44
  br i1 %101, label %114, label %102

102:                                              ; preds = %111, %99
  %103 = phi ptr [ %112, %111 ], [ %100, %99 ]
  %104 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %103, i32 0, i32 4
  %105 = load i32, ptr %104, align 4
  %106 = icmp ult i32 %105, %50
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %103, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = icmp ugt i32 %109, %50
  br i1 %110, label %114, label %111

111:                                              ; preds = %107, %102
  %112 = load ptr, ptr %103, align 4
  %113 = icmp eq ptr %112, %44
  br i1 %113, label %114, label %102

114:                                              ; preds = %111, %107, %99
  %115 = phi i32 [ -22, %99 ], [ -22, %111 ], [ %109, %107 ]
  call void @mutex_unlock(ptr noundef %43) #13
  br label %116

116:                                              ; preds = %114, %96
  %117 = phi i32 [ %98, %96 ], [ %115, %114 ]
  %118 = icmp sgt i32 %117, -1
  %119 = icmp ule i32 %117, %2
  %120 = and i1 %118, %119
  br i1 %120, label %47, label %121

121:                                              ; preds = %116, %54
  %122 = phi i64 [ %88, %116 ], [ %48, %54 ]
  %123 = phi i32 [ %85, %116 ], [ %51, %54 ]
  store i64 %122, ptr %7, align 8
  %124 = icmp slt i32 %123, 0
  %125 = load i1, ptr @check_copy_size.__already_done, align 1
  %126 = xor i1 %125, true
  %127 = select i1 %124, i1 %126, i1 false
  br i1 %127, label %128, label %129, !prof !9

128:                                              ; preds = %121
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %149

129:                                              ; preds = %121
  br i1 %124, label %149, label %130, !prof !9

130:                                              ; preds = %129, %32
  %131 = phi i32 [ %123, %129 ], [ 0, %32 ]
  %132 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %131, i32 -1090519040) #15, !srcloc !10
  %133 = extractvalue { i32, i32 } %132, 0
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = tail call ptr @llvm.thread.pointer() #13
  %137 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 3
  %138 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %137) #16, !srcloc !11
  %139 = and i32 %138, -13
  %140 = or i32 %139, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %140) #13, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !13
  %141 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %15, i32 noundef %131) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %138) #13, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !13
  br label %142

142:                                              ; preds = %135, %130
  %143 = phi i32 [ %141, %135 ], [ %131, %130 ]
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = zext i32 %131 to i64
  %147 = load i64, ptr %5, align 8
  %148 = add i64 %147, %146
  store i64 %148, ptr %5, align 8
  br label %149

149:                                              ; preds = %145, %142, %129, %128
  %150 = phi i32 [ %131, %145 ], [ -14, %142 ], [ -14, %129 ], [ -14, %128 ]
  call void @kfree(ptr noundef nonnull %15) #13
  br label %151

151:                                              ; preds = %149, %13, %6
  %152 = phi i32 [ %150, %149 ], [ -22, %6 ], [ -12, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  ret i32 %152
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_access_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @regmap_access_show, ptr noundef %4) #13
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_access_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 25
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %6) #13
  %8 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 45
  br label %9

9:                                                ; preds = %23, %2
  %10 = phi i32 [ 0, %2 ], [ %25, %23 ]
  %11 = tail call zeroext i1 @regmap_readable(ptr noundef %4, i32 noundef %10) #13
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @regmap_writeable(ptr noundef %4, i32 noundef %10) #13
  br i1 %13, label %14, label %23

14:                                               ; preds = %12, %9
  %15 = tail call zeroext i1 @regmap_readable(ptr noundef %4, i32 noundef %10) #13
  %16 = select i1 %15, i32 121, i32 110
  %17 = tail call zeroext i1 @regmap_writeable(ptr noundef %4, i32 noundef %10) #13
  %18 = select i1 %17, i32 121, i32 110
  %19 = tail call zeroext i1 @regmap_volatile(ptr noundef %4, i32 noundef %10) #13
  %20 = select i1 %19, i32 121, i32 110
  %21 = tail call zeroext i1 @regmap_precious(ptr noundef %4, i32 noundef %10) #13
  %22 = select i1 %21, i32 121, i32 110
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %7, i32 noundef %10, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #13
  br label %23

23:                                               ; preds = %14, %12
  %24 = load i32, ptr %8, align 4
  %25 = add i32 %24, %10
  %26 = load i32, ptr %5, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %9

28:                                               ; preds = %23
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_writeable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_volatile(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_read_file_bool(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_cache_only_write_file(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -296
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !14
  %9 = call i32 @kstrtobool_from_user(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @debugfs_file_get(ptr noundef %13) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %7, i32 -276
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %7, i32 -268
  %20 = load ptr, ptr %19, align 4
  call void %18(ptr noundef %20) #13
  %21 = load i8, ptr %5, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  %23 = load i8, ptr %7, align 4, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %22, label %30, label %25

25:                                               ; preds = %16
  br i1 %24, label %26, label %49

26:                                               ; preds = %25
  %27 = getelementptr i8, ptr %7, i32 -260
  %28 = load ptr, ptr %27, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.22) #17
  call void @add_taint(i32 noundef 6, i32 noundef 0) #13
  %29 = load i8, ptr %5, align 1, !range !8
  br label %41

30:                                               ; preds = %16
  br i1 %24, label %41, label %31

31:                                               ; preds = %30
  %32 = getelementptr i8, ptr %7, i32 -260
  %33 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.23) #17
  %34 = load i8, ptr %5, align 1, !range !8
  store i8 %34, ptr %7, align 4
  %35 = getelementptr i8, ptr %7, i32 -272
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %19, align 4
  call void %36(ptr noundef %37) #13
  %38 = load ptr, ptr %12, align 4
  call void @debugfs_file_put(ptr noundef %38) #13
  %39 = call i32 @regcache_sync(ptr noundef %8) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %54, label %47

41:                                               ; preds = %30, %26
  %42 = phi i8 [ 0, %30 ], [ %29, %26 ]
  store i8 %42, ptr %7, align 4
  %43 = getelementptr i8, ptr %7, i32 -272
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %19, align 4
  call void %44(ptr noundef %45) #13
  %46 = load ptr, ptr %12, align 4
  call void @debugfs_file_put(ptr noundef %46) #13
  br label %54

47:                                               ; preds = %31
  %48 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.24, i32 noundef %39) #17
  br label %54

49:                                               ; preds = %25
  store i8 %21, ptr %7, align 4
  %50 = getelementptr i8, ptr %7, i32 -272
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %19, align 4
  call void %51(ptr noundef %52) #13
  %53 = load ptr, ptr %12, align 4
  call void @debugfs_file_put(ptr noundef %53) #13
  br label %54

54:                                               ; preds = %49, %47, %41, %31, %11, %4
  %55 = phi i32 [ %2, %4 ], [ %14, %11 ], [ %2, %41 ], [ %2, %49 ], [ %2, %31 ], [ %2, %47 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_file_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_file_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_cache_bypass_write_file(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !14
  %8 = call i32 @kstrtobool_from_user(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @debugfs_file_get(ptr noundef %12) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %7, i32 -277
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %7, i32 -269
  %19 = load ptr, ptr %18, align 4
  call void %17(ptr noundef %19) #13
  %20 = load i8, ptr %5, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = load i8, ptr %7, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %21, label %28, label %24

24:                                               ; preds = %15
  br i1 %23, label %25, label %32

25:                                               ; preds = %24
  %26 = getelementptr i8, ptr %7, i32 -261
  %27 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.25) #17
  call void @add_taint(i32 noundef 6, i32 noundef 0) #13
  br label %32

28:                                               ; preds = %15
  br i1 %23, label %32, label %29

29:                                               ; preds = %28
  %30 = getelementptr i8, ptr %7, i32 -261
  %31 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.26) #17
  br label %32

32:                                               ; preds = %29, %28, %25, %24
  %33 = load i8, ptr %5, align 1, !range !8
  store i8 %33, ptr %7, align 1
  %34 = getelementptr i8, ptr %7, i32 -273
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %18, align 4
  call void %35(ptr noundef %36) #13
  %37 = load ptr, ptr %11, align 4
  call void @debugfs_file_put(ptr noundef %37) #13
  br label %38

38:                                               ; preds = %32, %10, %4
  %39 = phi i32 [ %2, %32 ], [ %2, %4 ], [ %13, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_range_read_file(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.regmap_range_node, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regmap_range_node, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.regmap_range_node, ptr %6, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = tail call fastcc i32 @regmap_read_debugfs(ptr noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }
attributes #17 = { cold nounwind }

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
!10 = !{i64 2151138213, i64 2151138238}
!11 = !{i64 3633747}
!12 = !{i64 3633944}
!13 = !{i64 2151119223}
!14 = !{!"auto-init"}
