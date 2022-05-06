; ModuleID = '/llk/IR/drivers/base/regmap/regcache-rbtree.c_pt.bc'
source_filename = "../drivers/base/regmap/regcache-rbtree.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.regcache_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap = type { %union.anon, ptr, ptr, ptr, i32, ptr, ptr, %struct.regmap_format, ptr, ptr, ptr, i8, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i8, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, i8, i8, ptr, i32, i8, i8, i8, i32, i32, %struct.rb_root, ptr, ptr, i8 }
%union.anon = type { %struct.mutex }
%struct.regmap_format = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.regcache_rbtree_ctx = type { %struct.rb_root, ptr }
%struct.reg_default = type { i32, i32 }
%struct.regcache_rbtree_node = type { ptr, ptr, i32, i32, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.64 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"rbtree\00", align 1
@regcache_rbtree_ops = dso_local local_unnamed_addr global %struct.regcache_ops { ptr @.str, i32 1, ptr @regcache_rbtree_init, ptr @regcache_rbtree_exit, ptr @rbtree_debugfs_init, ptr @regcache_rbtree_read, ptr @regcache_rbtree_write, ptr @regcache_rbtree_sync, ptr @regcache_rbtree_drop }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@rbtree_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rbtree_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%x-%x (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"%d nodes, %d registers, average %d registers, used %zu bytes\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regcache_rbtree_init(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 8) #8
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 58
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  store ptr null, ptr %3, align 8
  %7 = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %3, i32 0, i32 1
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 51
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 56
  br label %17

13:                                               ; preds = %17
  %14 = add nuw i32 %18, 1
  %15 = load i32, ptr %8, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13, %11
  %18 = phi i32 [ 0, %11 ], [ %14, %13 ]
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr %struct.reg_default, ptr %19, i32 %18
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.reg_default, ptr %19, i32 %18, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @regcache_rbtree_write(ptr noundef %0, i32 noundef %21, i32 noundef %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %13, label %26

26:                                               ; preds = %17
  %27 = tail call i32 @regcache_rbtree_exit(ptr noundef %0)
  br label %28

28:                                               ; preds = %26, %13, %6, %1
  %29 = phi i32 [ %24, %26 ], [ -12, %1 ], [ 0, %6 ], [ 0, %13 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regcache_rbtree_exit(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 58
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @rb_first(ptr noundef nonnull %3) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %11, %8 ], [ %6, %5 ]
  %10 = getelementptr i8, ptr %9, i32 -16
  %11 = tail call ptr @rb_next(ptr noundef nonnull %9) #9
  tail call void @rb_erase(ptr noundef nonnull %9, ptr noundef nonnull %3) #9
  %12 = getelementptr i8, ptr %9, i32 -12
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #9
  %14 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %14) #9
  tail call void @kfree(ptr noundef %10) #9
  %15 = icmp eq ptr %11, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  %17 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %17) #9
  store ptr null, ptr %2, align 4
  br label %18

18:                                               ; preds = %16, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rbtree_debugfs_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 256, ptr noundef %3, ptr noundef %0, ptr noundef nonnull @rbtree_fops) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regcache_rbtree_read(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 58
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %7, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %14, %16
  %18 = add i32 %17, %11
  %19 = icmp ugt i32 %11, %1
  %20 = icmp ult i32 %18, %1
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %9, %3
  %23 = load ptr, ptr %5, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %77, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %49, %25
  %29 = phi ptr [ %23, %25 ], [ %50, %49 ]
  %30 = getelementptr i8, ptr %29, i32 -8
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %29, i32 -4
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  %35 = mul i32 %34, %27
  %36 = add i32 %35, %31
  %37 = icmp ugt i32 %31, %1
  %38 = icmp ult i32 %36, %1
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  br i1 %38, label %41, label %43

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 1
  br label %46

43:                                               ; preds = %40
  br i1 %37, label %44, label %49

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 2
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi ptr [ %42, %41 ], [ %45, %44 ]
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi ptr [ %29, %43 ], [ %48, %46 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %77, label %28

52:                                               ; preds = %28
  %53 = getelementptr i8, ptr %29, i32 -16
  store ptr %53, ptr %6, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %77, label %55

55:                                               ; preds = %52
  %56 = getelementptr i8, ptr %29, i32 -8
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %26, align 4
  br label %59

59:                                               ; preds = %55, %9
  %60 = phi i32 [ %58, %55 ], [ %16, %9 ]
  %61 = phi i32 [ %57, %55 ], [ %11, %9 ]
  %62 = phi ptr [ %53, %55 ], [ %7, %9 ]
  %63 = sub i32 %1, %61
  %64 = udiv i32 %63, %60
  %65 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %62, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = lshr i32 %64, 5
  %68 = getelementptr i32, ptr %66, i32 %67
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %64, 31
  %71 = shl nuw i32 1, %70
  %72 = and i32 %69, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %59
  %75 = load ptr, ptr %62, align 4
  %76 = tail call i32 @regcache_get_val(ptr noundef %0, ptr noundef %75, i32 noundef %64) #9
  store i32 %76, ptr %2, align 4
  br label %77

77:                                               ; preds = %74, %59, %52, %49, %22
  %78 = phi i32 [ 0, %74 ], [ -2, %59 ], [ -2, %52 ], [ -2, %22 ], [ -2, %49 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regcache_rbtree_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 58
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %7, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %14, %16
  %18 = add i32 %17, %11
  %19 = icmp ugt i32 %11, %1
  %20 = icmp ult i32 %18, %1
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %9, %3
  %23 = load ptr, ptr %5, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %69, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %49, %25
  %29 = phi ptr [ %23, %25 ], [ %50, %49 ]
  %30 = getelementptr i8, ptr %29, i32 -8
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %29, i32 -4
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  %35 = mul i32 %34, %27
  %36 = add i32 %35, %31
  %37 = icmp ugt i32 %31, %1
  %38 = icmp ult i32 %36, %1
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  br i1 %38, label %41, label %43

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 1
  br label %46

43:                                               ; preds = %40
  br i1 %37, label %44, label %49

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 2
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi ptr [ %42, %41 ], [ %45, %44 ]
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi ptr [ %29, %43 ], [ %48, %46 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %28

52:                                               ; preds = %28
  %53 = getelementptr i8, ptr %29, i32 -16
  store ptr %53, ptr %6, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %52
  %56 = getelementptr i8, ptr %29, i32 -8
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %26, align 4
  br label %59

59:                                               ; preds = %55, %9
  %60 = phi i32 [ %58, %55 ], [ %16, %9 ]
  %61 = phi i32 [ %57, %55 ], [ %11, %9 ]
  %62 = phi ptr [ %53, %55 ], [ %7, %9 ]
  %63 = sub i32 %1, %61
  %64 = udiv i32 %63, %60
  %65 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %62, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  tail call void @_set_bit(i32 noundef %64, ptr noundef %66) #9
  %67 = load ptr, ptr %62, align 4
  %68 = tail call zeroext i1 @regcache_set_val(ptr noundef %0, ptr noundef %67, i32 noundef %64, i32 noundef %2) #9
  br label %274

69:                                               ; preds = %52, %49, %22
  %70 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %71 = load i32, ptr %70, align 4
  %72 = mul i32 %71, 28
  %73 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 50
  %74 = load i32, ptr %73, align 4
  %75 = udiv i32 %72, %74
  %76 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %75)
  %77 = add i32 %75, %1
  br i1 %24, label %169, label %78

78:                                               ; preds = %116, %69
  %79 = phi ptr [ %118, %116 ], [ %23, %69 ]
  %80 = phi ptr [ %108, %116 ], [ null, %69 ]
  %81 = phi i32 [ %107, %116 ], [ 0, %69 ]
  %82 = phi i32 [ %106, %116 ], [ -1, %69 ]
  %83 = phi i32 [ %105, %116 ], [ 0, %69 ]
  %84 = getelementptr i8, ptr %79, i32 -16
  %85 = getelementptr i8, ptr %79, i32 -8
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr i8, ptr %79, i32 -4
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, -1
  %90 = mul i32 %89, %71
  %91 = add i32 %90, %86
  %92 = icmp ugt i32 %86, %77
  %93 = icmp ult i32 %91, %76
  %94 = select i1 %92, i1 true, i1 %93
  br i1 %94, label %104, label %95

95:                                               ; preds = %78
  %96 = icmp ugt i32 %86, %1
  %97 = sub i32 %86, %1
  %98 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %91)
  %99 = select i1 %96, i32 %97, i32 %98
  %100 = icmp ult i32 %99, %82
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = tail call i32 @llvm.umin.i32(i32 %86, i32 %1)
  %103 = tail call i32 @llvm.umax.i32(i32 %91, i32 %1)
  br label %104

104:                                              ; preds = %101, %95, %78
  %105 = phi i32 [ %103, %101 ], [ %83, %95 ], [ %83, %78 ]
  %106 = phi i32 [ %99, %101 ], [ %82, %95 ], [ %82, %78 ]
  %107 = phi i32 [ %102, %101 ], [ %81, %95 ], [ %81, %78 ]
  %108 = phi ptr [ %84, %101 ], [ %80, %95 ], [ %80, %78 ]
  %109 = icmp ugt i32 %86, %1
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.rb_node, ptr %79, i32 0, i32 2
  br label %116

112:                                              ; preds = %104
  %113 = icmp ult i32 %91, %1
  br i1 %113, label %114, label %120

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.rb_node, ptr %79, i32 0, i32 1
  br label %116

116:                                              ; preds = %114, %110
  %117 = phi ptr [ %111, %110 ], [ %115, %114 ]
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %78

120:                                              ; preds = %116, %112
  %121 = icmp eq ptr %108, null
  br i1 %121, label %169, label %122

122:                                              ; preds = %120
  %123 = sub i32 %105, %107
  %124 = udiv i32 %123, %71
  %125 = add i32 %124, 1
  %126 = sub i32 %1, %107
  %127 = udiv i32 %126, %71
  %128 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %108, i32 0, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = sub i32 %129, %107
  %131 = udiv i32 %130, %71
  %132 = load ptr, ptr %108, align 4
  %133 = mul i32 %125, %74
  %134 = tail call noalias ptr @krealloc(ptr noundef %132, i32 noundef %133, i32 noundef 3264) #10
  %135 = icmp eq ptr %134, null
  br i1 %135, label %274, label %136

136:                                              ; preds = %122
  store ptr %134, ptr %108, align 4
  %137 = add i32 %124, 32
  %138 = lshr i32 %137, 5
  %139 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %108, i32 0, i32 3
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, 31
  %142 = lshr i32 %141, 5
  %143 = icmp ugt i32 %138, %142
  %144 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %108, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  br i1 %143, label %146, label %157

146:                                              ; preds = %136
  %147 = shl nuw nsw i32 %138, 2
  %148 = tail call noalias ptr @krealloc(ptr noundef %145, i32 noundef %147, i32 noundef 3264) #10
  %149 = icmp eq ptr %148, null
  br i1 %149, label %274, label %150

150:                                              ; preds = %146
  %151 = load i32, ptr %139, align 4
  %152 = add i32 %151, 31
  %153 = lshr i32 %152, 5
  %154 = getelementptr i32, ptr %148, i32 %153
  %155 = sub nsw i32 %138, %153
  %156 = shl nsw i32 %155, 2
  tail call void @llvm.memset.p0.i32(ptr align 4 %154, i8 0, i32 %156, i1 false) #9
  br label %157

157:                                              ; preds = %150, %136
  %158 = phi i32 [ %151, %150 ], [ %140, %136 ]
  %159 = phi ptr [ %148, %150 ], [ %145, %136 ]
  %160 = icmp ugt i32 %71, %126
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load i32, ptr %73, align 4
  %163 = mul i32 %162, %131
  %164 = getelementptr i8, ptr %134, i32 %163
  %165 = mul i32 %162, %158
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %164, ptr nonnull align 1 %134, i32 %165, i1 false) #9
  tail call void @__bitmap_shift_left(ptr noundef %159, ptr noundef %159, i32 noundef %131, i32 noundef %125) #9
  br label %166

166:                                              ; preds = %161, %157
  store i32 %125, ptr %139, align 4
  store i32 %107, ptr %128, align 4
  store ptr %159, ptr %144, align 4
  tail call void @_set_bit(i32 noundef %127, ptr noundef %159) #9
  %167 = load ptr, ptr %108, align 4
  %168 = tail call zeroext i1 @regcache_set_val(ptr noundef %0, ptr noundef %167, i32 noundef %127, i32 noundef %2) #9
  store ptr %108, ptr %6, align 4
  br label %274

169:                                              ; preds = %120, %69
  %170 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %171 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %170, i32 noundef 3520, i32 noundef 28) #8
  %172 = icmp eq ptr %171, null
  br i1 %172, label %274, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 33
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %211, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.regmap_access_table, ptr %175, i32 0, i32 1
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %195, label %181

181:                                              ; preds = %177
  %182 = load ptr, ptr %175, align 4
  br label %183

183:                                              ; preds = %192, %181
  %184 = phi i32 [ 0, %181 ], [ %193, %192 ]
  %185 = getelementptr %struct.regmap_range, ptr %182, i32 %184
  %186 = load i32, ptr %185, align 4
  %187 = icmp ugt i32 %186, %1
  br i1 %187, label %192, label %188

188:                                              ; preds = %183
  %189 = getelementptr %struct.regmap_range, ptr %182, i32 %184, i32 1
  %190 = load i32, ptr %189, align 4
  %191 = icmp ult i32 %190, %1
  br i1 %191, label %192, label %195

192:                                              ; preds = %188, %183
  %193 = add nuw i32 %184, 1
  %194 = icmp eq i32 %193, %179
  br i1 %194, label %211, label %183

195:                                              ; preds = %188, %177
  %196 = phi i32 [ 0, %177 ], [ %184, %188 ]
  %197 = icmp eq i32 %196, %179
  br i1 %197, label %211, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr %175, align 4
  %200 = getelementptr %struct.regmap_range, ptr %199, i32 %196
  %201 = getelementptr %struct.regmap_range, ptr %199, i32 %196, i32 1
  %202 = load i32, ptr %201, align 4
  %203 = load i32, ptr %200, align 4
  %204 = sub i32 %202, %203
  %205 = load i32, ptr %70, align 4
  %206 = udiv i32 %204, %205
  %207 = add i32 %206, 1
  %208 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %171, i32 0, i32 3
  store i32 %207, ptr %208, align 4
  %209 = load i32, ptr %200, align 4
  %210 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %171, i32 0, i32 2
  store i32 %209, ptr %210, align 8
  br label %211

211:                                              ; preds = %198, %195, %192, %173
  %212 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %171, i32 0, i32 3
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  store i32 1, ptr %212, align 4
  %216 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %171, i32 0, i32 2
  store i32 %1, ptr %216, align 8
  br label %217

217:                                              ; preds = %215, %211
  %218 = phi i32 [ 1, %215 ], [ %213, %211 ]
  %219 = load i32, ptr %73, align 4
  %220 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %218, i32 %219) #9
  %221 = extractvalue { i32, i1 } %220, 1
  br i1 %221, label %222, label %223, !prof !8

222:                                              ; preds = %217
  store ptr null, ptr %171, align 8
  br label %235

223:                                              ; preds = %217
  %224 = extractvalue { i32, i1 } %220, 0
  %225 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %224, i32 noundef 3264) #11
  store ptr %225, ptr %171, align 8
  %226 = icmp eq ptr %225, null
  br i1 %226, label %235, label %227

227:                                              ; preds = %223
  %228 = add i32 %218, 31
  %229 = lshr i32 %228, 3
  %230 = and i32 %229, 536870908
  %231 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %230, i32 noundef 3520) #11
  %232 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %171, i32 0, i32 1
  store ptr %231, ptr %232, align 4
  %233 = icmp eq ptr %231, null
  br i1 %233, label %234, label %236

234:                                              ; preds = %227
  tail call void @kfree(ptr noundef nonnull %225) #9
  br label %235

235:                                              ; preds = %234, %223, %222
  tail call void @kfree(ptr noundef nonnull %171) #9
  br label %274

236:                                              ; preds = %227
  %237 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %171, i32 0, i32 2
  %238 = load i32, ptr %237, align 8
  %239 = sub i32 %1, %238
  tail call void @_set_bit(i32 noundef %239, ptr noundef nonnull %231) #9
  %240 = tail call zeroext i1 @regcache_set_val(ptr noundef %0, ptr noundef nonnull %225, i32 noundef %239, i32 noundef %2) #9
  %241 = load ptr, ptr %5, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %267, label %243

243:                                              ; preds = %236
  %244 = load i32, ptr %70, align 4
  br label %245

245:                                              ; preds = %258, %243
  %246 = phi ptr [ %241, %243 ], [ %263, %258 ]
  %247 = phi ptr [ %5, %243 ], [ %262, %258 ]
  %248 = getelementptr i8, ptr %246, i32 -8
  %249 = load i32, ptr %248, align 4
  %250 = getelementptr i8, ptr %246, i32 -4
  %251 = load i32, ptr %250, align 4
  %252 = add i32 %251, -1
  %253 = mul i32 %252, %244
  %254 = add i32 %253, %249
  %255 = icmp ult i32 %238, %249
  %256 = icmp ugt i32 %238, %254
  %257 = select i1 %255, i1 true, i1 %256
  br i1 %257, label %258, label %273

258:                                              ; preds = %245
  %259 = getelementptr inbounds %struct.rb_node, ptr %246, i32 0, i32 1
  %260 = getelementptr inbounds %struct.rb_node, ptr %246, i32 0, i32 2
  %261 = select i1 %255, ptr %260, ptr %247
  %262 = select i1 %256, ptr %259, ptr %261
  %263 = load ptr, ptr %262, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %245

265:                                              ; preds = %258
  %266 = ptrtoint ptr %246 to i32
  br label %267

267:                                              ; preds = %265, %236
  %268 = phi i32 [ %266, %265 ], [ 0, %236 ]
  %269 = phi ptr [ %262, %265 ], [ %5, %236 ]
  %270 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %171, i32 0, i32 4
  store i32 %268, ptr %270, align 8
  %271 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %171, i32 0, i32 4, i32 1
  store ptr null, ptr %271, align 4
  %272 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %171, i32 0, i32 4, i32 2
  store ptr null, ptr %272, align 8
  store ptr %270, ptr %269, align 4
  tail call void @rb_insert_color(ptr noundef %270, ptr noundef %5) #9
  br label %273

273:                                              ; preds = %267, %245
  store ptr %171, ptr %6, align 4
  br label %274

274:                                              ; preds = %273, %235, %169, %166, %146, %122, %59
  %275 = phi i32 [ 0, %273 ], [ 0, %59 ], [ 0, %166 ], [ -12, %122 ], [ -12, %146 ], [ -12, %235 ], [ -12, %169 ]
  ret i32 %275
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regcache_rbtree_sync(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 58
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @rb_first(ptr noundef %5) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %46, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  br label %10

10:                                               ; preds = %43, %8
  %11 = phi ptr [ %6, %8 ], [ %44, %43 ]
  %12 = getelementptr i8, ptr %11, i32 -16
  %13 = getelementptr i8, ptr %11, i32 -8
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %11, i32 -4
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  %18 = load i32, ptr %9, align 4
  %19 = mul i32 %17, %18
  %20 = add i32 %19, %14
  %21 = icmp ugt i32 %14, %2
  br i1 %21, label %46, label %22

22:                                               ; preds = %10
  %23 = icmp ult i32 %20, %1
  br i1 %23, label %43, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %14, %1
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = sub i32 %1, %14
  %28 = udiv i32 %27, %18
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi i32 [ %28, %26 ], [ 0, %24 ]
  %31 = icmp ugt i32 %20, %2
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = sub i32 %2, %14
  %34 = udiv i32 %33, %18
  %35 = add i32 %34, 1
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i32 [ %35, %32 ], [ %16, %29 ]
  %38 = load ptr, ptr %12, align 4
  %39 = getelementptr i8, ptr %11, i32 -12
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @regcache_sync_block(ptr noundef %0, ptr noundef %38, ptr noundef %40, i32 noundef %14, i32 noundef %30, i32 noundef %37) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36, %22
  %44 = tail call ptr @rb_next(ptr noundef nonnull %11) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %10

46:                                               ; preds = %43, %10, %3
  %47 = tail call i32 @regmap_async_complete(ptr noundef %0) #9
  br label %48

48:                                               ; preds = %46, %36
  %49 = phi i32 [ %47, %46 ], [ %41, %36 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regcache_rbtree_drop(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 58
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @rb_first(ptr noundef %5) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  br label %10

10:                                               ; preds = %40, %8
  %11 = phi ptr [ %6, %8 ], [ %41, %40 ]
  %12 = getelementptr i8, ptr %11, i32 -8
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %11, i32 -4
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  %17 = load i32, ptr %9, align 4
  %18 = mul i32 %16, %17
  %19 = add i32 %18, %13
  %20 = icmp ugt i32 %13, %2
  br i1 %20, label %43, label %21

21:                                               ; preds = %10
  %22 = icmp ult i32 %19, %1
  br i1 %22, label %40, label %23

23:                                               ; preds = %21
  %24 = icmp ult i32 %13, %1
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = sub i32 %1, %13
  %27 = udiv i32 %26, %17
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi i32 [ %27, %25 ], [ 0, %23 ]
  %30 = icmp ugt i32 %19, %2
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = sub i32 %2, %13
  %33 = udiv i32 %32, %17
  %34 = add i32 %33, 1
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i32 [ %34, %31 ], [ %15, %28 ]
  %37 = getelementptr i8, ptr %11, i32 -12
  %38 = load ptr, ptr %37, align 4
  %39 = sub i32 %36, %29
  tail call void @__bitmap_clear(ptr noundef %38, i32 noundef %29, i32 noundef %39) #9
  br label %40

40:                                               ; preds = %35, %21
  %41 = tail call ptr @rb_next(ptr noundef nonnull %11) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %10

43:                                               ; preds = %40, %10, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rbtree_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @rbtree_show, ptr noundef %4) #9
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rbtree_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 58
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10) #9
  %11 = tail call ptr @rb_first(ptr noundef %6) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %47, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 50
  %15 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 45
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i32 [ 0, %13 ], [ %40, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %39, %16 ]
  %19 = phi i32 [ 8, %13 ], [ %30, %16 ]
  %20 = phi ptr [ %11, %13 ], [ %41, %16 ]
  %21 = add i32 %19, 28
  %22 = getelementptr i8, ptr %20, i32 -4
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %14, align 4
  %25 = mul i32 %24, %23
  %26 = add i32 %21, %25
  %27 = add i32 %23, 31
  %28 = lshr i32 %27, 3
  %29 = and i32 %28, 536870908
  %30 = add i32 %26, %29
  %31 = getelementptr i8, ptr %20, i32 -8
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %23, -1
  %34 = load i32, ptr %15, align 4
  %35 = mul i32 %33, %34
  %36 = add i32 %35, %32
  %37 = udiv i32 %35, %34
  %38 = add i32 %37, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %32, i32 noundef %36, i32 noundef %38) #9
  %39 = add i32 %18, 1
  %40 = add i32 %38, %17
  %41 = tail call ptr @rb_next(ptr noundef nonnull %20) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %16

43:                                               ; preds = %16
  %44 = icmp eq i32 %39, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = sdiv i32 %40, %39
  br label %47

47:                                               ; preds = %45, %43, %2
  %48 = phi i32 [ %40, %45 ], [ %40, %43 ], [ 0, %2 ]
  %49 = phi i32 [ %39, %45 ], [ 0, %43 ], [ 0, %2 ]
  %50 = phi i32 [ %30, %45 ], [ %30, %43 ], [ 8, %2 ]
  %51 = phi i32 [ %46, %45 ], [ 0, %43 ], [ 0, %2 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %49, i32 noundef %48, i32 noundef %51, i32 noundef %50) #9
  %52 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %9, align 4
  tail call void %53(ptr noundef %54) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_get_val(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regcache_set_val(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_shift_left(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync_block(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_async_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(1) }
attributes #11 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
