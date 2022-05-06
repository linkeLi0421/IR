; ModuleID = '/llk/IR/kernel/trace/trace_stat.c_pt.bc'
source_filename = "../kernel/trace/trace_stat.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tracer_stat = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stat_session = type { %struct.list_head, ptr, %struct.rb_root, %struct.mutex, ptr }
%struct.rb_root = type { ptr }
%struct.stat_node = type { %struct.rb_node, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.83, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.84, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.85, ptr, %struct.address_space, %struct.list_head, %union.anon.88, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.83 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.84 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.85 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.88 = type { ptr }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@all_stat_sessions_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @all_stat_sessions_mutex, i64 12), ptr getelementptr (i8, ptr @all_stat_sessions_mutex, i64 12) } }, align 4
@all_stat_sessions = internal global %struct.list_head { ptr @all_stat_sessions, ptr @all_stat_sessions }, align 4
@register_stat_tracer.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [21 x i8] c"&session->stat_mutex\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@stat_dir = internal unnamed_addr global ptr null, align 4
@tracing_stat_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_stat_open, ptr null, ptr @tracing_stat_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"trace_stat\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\014Could not create tracefs 'trace_stat' entry\0A\00", align 1
@trace_stat_seq_ops = internal constant %struct.seq_operations { ptr @stat_seq_start, ptr @stat_seq_stop, ptr @stat_seq_next, ptr @stat_seq_show }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_stat_tracer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %73, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tracer_stat, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %73, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tracer_stat, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %73, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tracer_stat, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %73, label %15

15:                                               ; preds = %11
  tail call void @mutex_lock(ptr noundef nonnull @all_stat_sessions_mutex) #5
  br label %16

16:                                               ; preds = %20, %15
  %17 = phi ptr [ @all_stat_sessions, %15 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @all_stat_sessions
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.stat_session, ptr %18, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %71, label %16

24:                                               ; preds = %16
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 40) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %71, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.stat_session, ptr %26, i32 0, i32 1
  store ptr %0, ptr %29, align 8
  store volatile ptr %26, ptr %26, align 8
  %30 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %26, ptr %30, align 4
  %31 = getelementptr inbounds %struct.stat_session, ptr %26, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %31, ptr noundef nonnull @.str, ptr noundef nonnull @register_stat_tracer.__key) #5
  %32 = load ptr, ptr @stat_dir, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = tail call i32 @tracing_init_dentry() #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = tail call ptr @tracefs_create_dir(ptr noundef nonnull @.str.1, ptr noundef null) #5
  store ptr %38, ptr @stat_dir, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %49

42:                                               ; preds = %37, %28
  %43 = phi ptr [ %38, %37 ], [ %32, %28 ]
  %44 = load ptr, ptr %29, align 8
  %45 = load ptr, ptr %44, align 4
  %46 = tail call ptr @tracefs_create_file(ptr noundef %45, i16 noundef zeroext 416, ptr noundef nonnull %43, ptr noundef nonnull %26, ptr noundef nonnull @tracing_stat_fops) #5
  %47 = getelementptr inbounds %struct.stat_session, ptr %26, i32 0, i32 4
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %42, %40, %34
  %50 = phi i32 [ -12, %40 ], [ -19, %34 ], [ -12, %42 ]
  %51 = getelementptr inbounds %struct.stat_session, ptr %26, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  tail call void @tracefs_remove(ptr noundef %52) #5
  %53 = getelementptr inbounds %struct.stat_session, ptr %26, i32 0, i32 2
  %54 = tail call ptr @rb_first_postorder(ptr noundef %53) #5
  %55 = icmp eq ptr %54, null
  br i1 %55, label %68, label %56

56:                                               ; preds = %66, %49
  %57 = phi ptr [ %58, %66 ], [ %54, %49 ]
  %58 = tail call ptr @rb_next_postorder(ptr noundef nonnull %57) #5
  %59 = load ptr, ptr %29, align 8
  %60 = getelementptr inbounds %struct.tracer_stat, ptr %59, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.stat_node, ptr %57, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  tail call void %61(ptr noundef %65) #5
  br label %66

66:                                               ; preds = %63, %56
  tail call void @kfree(ptr noundef nonnull %57) #5
  %67 = icmp eq ptr %58, null
  br i1 %67, label %68, label %56

68:                                               ; preds = %66, %49
  store ptr null, ptr %53, align 4
  tail call void @kfree(ptr noundef nonnull %26) #5
  br label %71

69:                                               ; preds = %42
  %70 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @all_stat_sessions, i32 0, i32 1), align 4
  store ptr %26, ptr getelementptr inbounds (%struct.list_head, ptr @all_stat_sessions, i32 0, i32 1), align 4
  store ptr @all_stat_sessions, ptr %26, align 8
  store ptr %70, ptr %30, align 4
  store volatile ptr %26, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %68, %24, %20
  %72 = phi i32 [ %50, %68 ], [ 0, %69 ], [ -12, %24 ], [ -22, %20 ]
  tail call void @mutex_unlock(ptr noundef nonnull @all_stat_sessions_mutex) #5
  br label %73

73:                                               ; preds = %71, %11, %7, %3, %1
  %74 = phi i32 [ %72, %71 ], [ -22, %1 ], [ -22, %11 ], [ -22, %7 ], [ -22, %3 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_stat_tracer(ptr noundef readnone %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @all_stat_sessions_mutex) #5
  %2 = load ptr, ptr @all_stat_sessions, align 4
  br label %3

3:                                                ; preds = %6, %1
  %4 = phi ptr [ %2, %1 ], [ %7, %6 ]
  %5 = icmp eq ptr %4, @all_stat_sessions
  br i1 %5, label %34, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.stat_session, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %3

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.stat_session, ptr %4, i32 0, i32 1
  %13 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %7, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  %16 = getelementptr inbounds %struct.stat_session, ptr %4, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void @tracefs_remove(ptr noundef %17) #5
  %18 = getelementptr inbounds %struct.stat_session, ptr %4, i32 0, i32 2
  %19 = tail call ptr @rb_first_postorder(ptr noundef %18) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %31, %11
  %22 = phi ptr [ %23, %31 ], [ %19, %11 ]
  %23 = tail call ptr @rb_next_postorder(ptr noundef nonnull %22) #5
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr inbounds %struct.tracer_stat, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.stat_node, ptr %22, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void %26(ptr noundef %30) #5
  br label %31

31:                                               ; preds = %28, %21
  tail call void @kfree(ptr noundef nonnull %22) #5
  %32 = icmp eq ptr %23, null
  br i1 %32, label %33, label %21

33:                                               ; preds = %31, %11
  store ptr null, ptr %18, align 4
  tail call void @kfree(ptr noundef %4) #5
  br label %34

34:                                               ; preds = %33, %3
  tail call void @mutex_unlock(ptr noundef nonnull @all_stat_sessions_mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tracefs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_init_dentry() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tracefs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_stat_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stat_session, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stat_session, ptr %4, i32 0, i32 2
  %8 = getelementptr inbounds %struct.stat_session, ptr %4, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %8) #5
  %9 = tail call ptr @rb_first_postorder(ptr noundef %7) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %21, %2
  %12 = phi ptr [ %13, %21 ], [ %9, %2 ]
  %13 = tail call ptr @rb_next_postorder(ptr noundef nonnull %12) #5
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.tracer_stat, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.stat_node, ptr %12, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void %16(ptr noundef %20) #5
  br label %21

21:                                               ; preds = %18, %11
  tail call void @kfree(ptr noundef nonnull %12) #5
  %22 = icmp eq ptr %13, null
  br i1 %22, label %23, label %11

23:                                               ; preds = %21, %2
  store ptr null, ptr %7, align 4
  %24 = getelementptr inbounds %struct.tracer_stat, ptr %6, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store ptr @dummy_cmp, ptr %24, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.tracer_stat, ptr %6, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = tail call ptr %30(ptr noundef %6) #5
  %32 = icmp eq ptr %31, null
  br i1 %32, label %118, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %24, align 4
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 16) #6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %117, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.stat_node, ptr %36, i32 0, i32 1
  store ptr %31, ptr %39, align 4
  %40 = load ptr, ptr %7, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %57, label %42

42:                                               ; preds = %42, %38
  %43 = phi ptr [ %53, %42 ], [ %40, %38 ]
  %44 = phi ptr [ %52, %42 ], [ %7, %38 ]
  %45 = getelementptr inbounds %struct.stat_node, ptr %43, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %34(ptr noundef nonnull %31, ptr noundef %46) #5
  %48 = load ptr, ptr %44, align 4
  %49 = getelementptr inbounds %struct.rb_node, ptr %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.rb_node, ptr %48, i32 0, i32 1
  %51 = icmp slt i32 %47, 0
  %52 = select i1 %51, ptr %50, ptr %49
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %42

55:                                               ; preds = %42
  %56 = ptrtoint ptr %48 to i32
  br label %57

57:                                               ; preds = %55, %38
  %58 = phi i32 [ %56, %55 ], [ 0, %38 ]
  %59 = phi ptr [ %52, %55 ], [ %7, %38 ]
  store i32 %58, ptr %36, align 8
  %60 = getelementptr inbounds %struct.rb_node, ptr %36, i32 0, i32 1
  store ptr null, ptr %60, align 4
  %61 = getelementptr inbounds %struct.rb_node, ptr %36, i32 0, i32 2
  store ptr null, ptr %61, align 8
  store ptr %36, ptr %59, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %36, ptr noundef %7) #5
  %62 = getelementptr inbounds %struct.tracer_stat, ptr %6, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = tail call ptr %63(ptr noundef nonnull %31, i32 noundef 1) #5
  %65 = icmp eq ptr %64, null
  br i1 %65, label %118, label %66

66:                                               ; preds = %92, %57
  %67 = phi ptr [ %99, %92 ], [ %64, %57 ]
  %68 = phi i32 [ %97, %92 ], [ 1, %57 ]
  %69 = load ptr, ptr %24, align 4
  %70 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %71 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3520, i32 noundef 16) #6
  %72 = icmp eq ptr %71, null
  br i1 %72, label %101, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.stat_node, ptr %71, i32 0, i32 1
  store ptr %67, ptr %74, align 4
  %75 = load ptr, ptr %7, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %92, label %77

77:                                               ; preds = %77, %73
  %78 = phi ptr [ %88, %77 ], [ %75, %73 ]
  %79 = phi ptr [ %87, %77 ], [ %7, %73 ]
  %80 = getelementptr inbounds %struct.stat_node, ptr %78, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = tail call i32 %69(ptr noundef nonnull %67, ptr noundef %81) #5
  %83 = load ptr, ptr %79, align 4
  %84 = getelementptr inbounds %struct.rb_node, ptr %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.rb_node, ptr %83, i32 0, i32 1
  %86 = icmp slt i32 %82, 0
  %87 = select i1 %86, ptr %85, ptr %84
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %77

90:                                               ; preds = %77
  %91 = ptrtoint ptr %83 to i32
  br label %92

92:                                               ; preds = %90, %73
  %93 = phi i32 [ %91, %90 ], [ 0, %73 ]
  %94 = phi ptr [ %87, %90 ], [ %7, %73 ]
  store i32 %93, ptr %71, align 8
  %95 = getelementptr inbounds %struct.rb_node, ptr %71, i32 0, i32 1
  store ptr null, ptr %95, align 4
  %96 = getelementptr inbounds %struct.rb_node, ptr %71, i32 0, i32 2
  store ptr null, ptr %96, align 8
  store ptr %71, ptr %94, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %71, ptr noundef %7) #5
  %97 = add i32 %68, 1
  %98 = load ptr, ptr %62, align 4
  %99 = tail call ptr %98(ptr noundef nonnull %67, i32 noundef %97) #5
  %100 = icmp eq ptr %99, null
  br i1 %100, label %118, label %66

101:                                              ; preds = %66
  %102 = tail call ptr @rb_first_postorder(ptr noundef %7) #5
  %103 = icmp eq ptr %102, null
  br i1 %103, label %116, label %104

104:                                              ; preds = %114, %101
  %105 = phi ptr [ %106, %114 ], [ %102, %101 ]
  %106 = tail call ptr @rb_next_postorder(ptr noundef nonnull %105) #5
  %107 = load ptr, ptr %5, align 4
  %108 = getelementptr inbounds %struct.tracer_stat, ptr %107, i32 0, i32 5
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.stat_node, ptr %105, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  tail call void %109(ptr noundef %113) #5
  br label %114

114:                                              ; preds = %111, %104
  tail call void @kfree(ptr noundef nonnull %105) #5
  %115 = icmp eq ptr %106, null
  br i1 %115, label %116, label %104

116:                                              ; preds = %114, %101
  store ptr null, ptr %7, align 4
  br label %117

117:                                              ; preds = %116, %33
  tail call void @mutex_unlock(ptr noundef %8) #5
  br label %141

118:                                              ; preds = %92, %57, %28
  tail call void @mutex_unlock(ptr noundef %8) #5
  %119 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @trace_stat_seq_ops) #5
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %137, label %121

121:                                              ; preds = %118
  tail call void @mutex_lock(ptr noundef %8) #5
  %122 = tail call ptr @rb_first_postorder(ptr noundef %7) #5
  %123 = icmp eq ptr %122, null
  br i1 %123, label %136, label %124

124:                                              ; preds = %134, %121
  %125 = phi ptr [ %126, %134 ], [ %122, %121 ]
  %126 = tail call ptr @rb_next_postorder(ptr noundef nonnull %125) #5
  %127 = load ptr, ptr %5, align 4
  %128 = getelementptr inbounds %struct.tracer_stat, ptr %127, i32 0, i32 5
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.stat_node, ptr %125, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  tail call void %129(ptr noundef %133) #5
  br label %134

134:                                              ; preds = %131, %124
  tail call void @kfree(ptr noundef nonnull %125) #5
  %135 = icmp eq ptr %126, null
  br i1 %135, label %136, label %124

136:                                              ; preds = %134, %121
  store ptr null, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef %8) #5
  br label %141

137:                                              ; preds = %118
  %138 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.seq_file, ptr %139, i32 0, i32 11
  store ptr %4, ptr %140, align 8
  br label %141

141:                                              ; preds = %137, %136, %117
  %142 = phi i32 [ %119, %136 ], [ 0, %137 ], [ -12, %117 ]
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_stat_release(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stat_session, ptr %4, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.stat_session, ptr %4, i32 0, i32 2
  %7 = tail call ptr @rb_first_postorder(ptr noundef %6) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.stat_session, ptr %4, i32 0, i32 1
  br label %11

11:                                               ; preds = %21, %9
  %12 = phi ptr [ %7, %9 ], [ %13, %21 ]
  %13 = tail call ptr @rb_next_postorder(ptr noundef nonnull %12) #5
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr inbounds %struct.tracer_stat, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.stat_node, ptr %12, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void %16(ptr noundef %20) #5
  br label %21

21:                                               ; preds = %18, %11
  tail call void @kfree(ptr noundef nonnull %12) #5
  %22 = icmp eq ptr %13, null
  br i1 %22, label %23, label %11

23:                                               ; preds = %21, %2
  store ptr null, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef %5) #5
  %24 = tail call i32 @seq_release(ptr noundef %0, ptr noundef %1) #5
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dummy_cmp(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #4 {
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @stat_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load i64, ptr %1, align 8
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.stat_session, ptr %4, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %7) #5
  %8 = getelementptr inbounds %struct.stat_session, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracer_stat, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = icmp eq i32 %6, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %13
  %16 = add i32 %6, -1
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi i32 [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr inbounds %struct.stat_session, ptr %4, i32 0, i32 2
  %20 = tail call ptr @rb_first(ptr noundef %19) #5
  %21 = icmp ne ptr %20, null
  %22 = icmp sgt i32 %18, 0
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %32

24:                                               ; preds = %24, %17
  %25 = phi i32 [ %28, %24 ], [ 0, %17 ]
  %26 = phi ptr [ %27, %24 ], [ %20, %17 ]
  %27 = tail call ptr @rb_next(ptr noundef nonnull %26) #5
  %28 = add nuw nsw i32 %25, 1
  %29 = icmp ne ptr %27, null
  %30 = icmp slt i32 %28, %18
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %24, label %32

32:                                               ; preds = %24, %17, %13
  %33 = phi ptr [ inttoptr (i32 1 to ptr), %13 ], [ %20, %17 ], [ %27, %24 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stat_seq_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stat_session, ptr %4, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @stat_seq_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %2, align 8
  %7 = add i64 %6, 1
  store i64 %7, ptr %2, align 8
  %8 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.stat_session, ptr %5, i32 0, i32 2
  %11 = tail call ptr @rb_first(ptr noundef %10) #5
  br label %14

12:                                               ; preds = %3
  %13 = tail call ptr @rb_next(ptr noundef %1) #5
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %11, %9 ], [ %13, %12 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stat_seq_show(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  %6 = getelementptr inbounds %struct.stat_session, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  br i1 %5, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tracer_stat, ptr %7, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0) #5
  br label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tracer_stat, ptr %7, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stat_node, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %14(ptr noundef %0, ptr noundef %16) #5
  br label %18

18:                                               ; preds = %12, %8
  %19 = phi i32 [ %11, %8 ], [ %17, %12 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracefs_remove(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { cold nounwind }

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
