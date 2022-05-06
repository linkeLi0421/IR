; ModuleID = '/llk/IR/fs/notify/fdinfo.c_pt.bc'
source_filename = "../fs/notify/fdinfo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.74 = type { %struct.file_handle, [128 x i8] }
%struct.file_handle = type { i32, i32, [0 x i8] }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.73 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.73 = type { %struct.inotify_group_private_data }
%struct.inotify_group_private_data = type { %struct.spinlock, %struct.idr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.fsnotify_mark_connector = type { %struct.spinlock, i16, i16, %struct.__kernel_fsid_t, %union.anon.60, %struct.hlist_head }
%struct.__kernel_fsid_t = type { [2 x i32] }
%union.anon.60 = type { ptr }
%struct.hlist_head = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, ptr, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.66 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@.str = private unnamed_addr constant [55 x i8] c"inotify wd:%x ino:%lx sdev:%x mask:%x ignored_mask:%x \00", align 1
@show_mark_fhandle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"fs/notify/fdinfo.c\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Can't encode file handler for inotify: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"fhandle-bytes:%x fhandle-type:%x f_handle:\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inotify_show_fdinfo(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.anon.74, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fsnotify_group, ptr %6, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %7) #4
  %8 = getelementptr inbounds %struct.fsnotify_group, ptr %6, i32 0, i32 11
  %9 = getelementptr inbounds i8, ptr %3, i32 4
  %10 = getelementptr inbounds %struct.file_handle, ptr %3, i32 0, i32 2
  %11 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  br label %13

13:                                               ; preds = %64, %2
  %14 = phi ptr [ %8, %2 ], [ %15, %64 ]
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %8
  br i1 %16, label %68, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %15, i32 -12
  %19 = getelementptr i8, ptr %15, i32 20
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %20, i32 0, i32 1
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %20, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 -384
  %28 = call ptr @igrab(ptr noundef %27) #4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %64, label %30

30:                                               ; preds = %24
  %31 = load i32, ptr %18, align 4
  %32 = and i32 %31, 4095
  %33 = getelementptr i8, ptr %15, i32 32
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr i8, ptr %15, i32 24
  %42 = load i32, ptr %41, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %34, i32 noundef %36, i32 noundef %40, i32 noundef %32, i32 noundef %42) #4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(136) %9, i8 0, i32 132, i1 false) #4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 128, ptr %3, align 4
  store i32 32, ptr %4, align 4
  %43 = call i32 @exportfs_encode_inode_fh(ptr noundef nonnull %28, ptr noundef %10, ptr noundef nonnull %4, ptr noundef null) #4
  %44 = icmp eq i32 %43, 255
  %45 = icmp slt i32 %43, 0
  %46 = or i1 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %30
  %48 = load i1, ptr @show_mark_fhandle.__already_done, align 1
  br i1 %48, label %63, label %49, !prof !9

49:                                               ; preds = %47
  store i1 true, ptr @show_mark_fhandle.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %43) #4
  br label %63

50:                                               ; preds = %30
  store i32 %43, ptr %9, align 4
  %51 = load i32, ptr %4, align 4
  %52 = shl i32 %51, 2
  store i32 %52, ptr %3, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %52, i32 noundef %43) #4
  %53 = load i32, ptr %3, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %55, %50
  %56 = phi i32 [ %60, %55 ], [ 0, %50 ]
  %57 = getelementptr %struct.file_handle, ptr %3, i32 0, i32 2, i32 %56
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %59) #4
  %60 = add nuw i32 %56, 1
  %61 = load i32, ptr %3, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %55, label %63

63:                                               ; preds = %55, %50, %49, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #4
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #4
  call void @iput(ptr noundef nonnull %28) #4
  br label %64

64:                                               ; preds = %63, %24, %17
  %65 = load i32, ptr %11, align 4
  %66 = load i32, ptr %12, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %13

68:                                               ; preds = %64, %13
  call void @mutex_unlock(ptr noundef %7) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exportfs_encode_inode_fh(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
