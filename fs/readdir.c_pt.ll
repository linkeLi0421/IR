; ModuleID = '/llk/IR/fs/readdir.c_pt.bc'
source_filename = "../fs/readdir.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iterate_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22iterate_dir\22\09\09\09\09\09"
module asm "__kstrtabns_iterate_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.87, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.88, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.89, ptr, %struct.address_space, %struct.list_head, %union.anon.92, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.87 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.88 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.89 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.92 = type { ptr }
%struct.dir_context = type { ptr, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.95, %struct.list_head, %struct.list_head, %union.anon.96 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.93 }
%union.anon.93 = type { i64 }
%union.anon.95 = type { %struct.list_head }
%union.anon.96 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.getdents_callback = type { %struct.dir_context, ptr, i32, i32, i32 }
%struct.linux_dirent = type { i32, i32, i16, [1 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.getdents_callback64 = type { %struct.dir_context, ptr, i32, i32, i32 }
%struct.linux_dirent64 = type { i64, i64, i16, i8, [0 x i8] }

@__kstrtab_iterate_dir = external dso_local constant [0 x i8], align 1
@__kstrtabns_iterate_dir = external dso_local constant [0 x i8], align 1
@__ksymtab_iterate_dir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iterate_dir to i32), ptr @__kstrtab_iterate_dir, ptr @__kstrtabns_iterate_dir }, section "___ksymtab+iterate_dir", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_iterate_dir], section "llvm.metadata"

@sys_getdents = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_getdents
@sys_getdents64 = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_getdents64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iterate_dir(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file_operations, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.file_operations, ptr %6, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %84, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 24
  %16 = tail call i32 @down_read_killable(ptr noundef %15) #5
  br label %20

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 24
  %19 = tail call i32 @down_write_killable(ptr noundef %18) #5
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ %16, %14 ], [ %19, %17 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %84

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  store i64 %30, ptr %31, align 8
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr inbounds %struct.file_operations, ptr %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.file_operations, ptr %32, i32 0, i32 8
  %35 = select i1 %9, ptr %33, ptr %34
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %0, ptr noundef %1) #5
  %38 = load i64, ptr %31, align 8
  store i64 %38, ptr %29, align 8
  %39 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 67108864
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %45 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.inode, ptr %48, i32 0, i32 8
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 42
  %52 = load volatile i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %43
  %55 = load i16, ptr %48, align 8
  %56 = and i16 %55, -4096
  %57 = icmp eq i16 %56, 16384
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, ptr %46, align 8
  %60 = and i32 %59, 16384
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %58, %54
  %63 = phi i32 [ 1073741825, %58 ], [ 1, %54 ]
  %64 = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 3
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, %46
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = tail call i32 @__fsnotify_parent(ptr noundef %46, i32 noundef %63, ptr noundef %44, i32 noundef 1) #5
  br label %72

69:                                               ; preds = %62, %58
  %70 = phi i32 [ %63, %62 ], [ 1073741825, %58 ]
  %71 = tail call i32 @fsnotify(i32 noundef %70, ptr noundef %44, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %48, i32 noundef 0) #5
  br label %72

72:                                               ; preds = %69, %67, %43, %28
  %73 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 262144
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %78) #5
  br label %79

79:                                               ; preds = %77, %72, %23
  %80 = phi i32 [ -2, %23 ], [ %37, %72 ], [ %37, %77 ]
  %81 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 24
  br i1 %9, label %83, label %82

82:                                               ; preds = %79
  tail call void @up_read(ptr noundef %81) #5
  br label %84

83:                                               ; preds = %79
  tail call void @up_write(ptr noundef %81) #5
  br label %84

84:                                               ; preds = %83, %82, %20, %10
  %85 = phi i32 [ %21, %20 ], [ %80, %82 ], [ %80, %83 ], [ -20, %10 ]
  ret i32 %85
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getdents(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.getdents_callback, align 8
  %5 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #5
  store i64 0, ptr %4, align 8, !annotation !8
  store ptr @filldir, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dir_context, ptr %4, i32 0, i32 1
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.getdents_callback, ptr %4, i32 0, i32 1
  store ptr %5, ptr %7, align 8
  %8 = getelementptr inbounds %struct.getdents_callback, ptr %4, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.getdents_callback, ptr %4, i32 0, i32 3
  store i32 %2, ptr %9, align 8
  %10 = getelementptr inbounds %struct.getdents_callback, ptr %4, i32 0, i32 4
  store i32 0, ptr %10, align 4
  %11 = tail call i32 @__fdget_pos(i32 noundef %0) #5, !noalias !9
  %12 = and i32 %11, -4
  %13 = inttoptr i32 %12 to ptr
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %3
  %16 = call i32 @iterate_dir(ptr noundef nonnull %13, ptr noundef nonnull %4) #5
  %17 = load i32, ptr %10, align 4
  %18 = icmp slt i32 %16, 0
  %19 = select i1 %18, i32 %16, i32 %17
  %20 = load i32, ptr %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %7, align 8
  %24 = sub i32 0, %20
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = getelementptr inbounds %struct.linux_dirent, ptr %25, i32 0, i32 1
  %27 = load i64, ptr %6, align 8
  %28 = trunc i64 %27 to i32
  %29 = tail call ptr @llvm.thread.pointer() #5
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %31 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %30) #6, !srcloc !12
  %32 = and i32 %31, -13
  %33 = or i32 %32, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #5, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %34 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %26, i32 %28, i32 -1090519041) #5, !srcloc !15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #5, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %35 = icmp eq i32 %34, 0
  %36 = load i32, ptr %9, align 8
  %37 = sub i32 %2, %36
  %38 = select i1 %35, i32 %37, i32 -14
  br label %39

39:                                               ; preds = %22, %15
  %40 = phi i32 [ %38, %22 ], [ %19, %15 ]
  %41 = and i32 %11, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  call void @__f_unlock_pos(ptr noundef nonnull %13) #5
  br label %44

44:                                               ; preds = %43, %39
  %45 = and i32 %11, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  call void @fput(ptr noundef nonnull %13) #5
  br label %48

48:                                               ; preds = %47, %44, %3
  %49 = phi i32 [ -9, %3 ], [ %40, %44 ], [ %40, %47 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #5
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getdents64(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.getdents_callback64, align 8
  %5 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #5
  store i64 0, ptr %4, align 8, !annotation !8
  store ptr @filldir64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dir_context, ptr %4, i32 0, i32 1
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.getdents_callback64, ptr %4, i32 0, i32 1
  store ptr %5, ptr %7, align 8
  %8 = getelementptr inbounds %struct.getdents_callback64, ptr %4, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.getdents_callback64, ptr %4, i32 0, i32 3
  store i32 %2, ptr %9, align 8
  %10 = getelementptr inbounds %struct.getdents_callback64, ptr %4, i32 0, i32 4
  store i32 0, ptr %10, align 4
  %11 = tail call i32 @__fdget_pos(i32 noundef %0) #5, !noalias !16
  %12 = and i32 %11, -4
  %13 = inttoptr i32 %12 to ptr
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %3
  %16 = call i32 @iterate_dir(ptr noundef nonnull %13, ptr noundef nonnull %4) #5
  %17 = load i32, ptr %10, align 4
  %18 = icmp slt i32 %16, 0
  %19 = select i1 %18, i32 %16, i32 %17
  %20 = load i32, ptr %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %15
  %23 = load i64, ptr %6, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = sub i32 0, %20
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = getelementptr inbounds %struct.linux_dirent64, ptr %26, i32 0, i32 1
  %28 = tail call ptr @llvm.thread.pointer() #5
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %30 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %29) #6, !srcloc !12
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #5, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %33 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %27, i64 %23, i32 -1090519041) #5, !srcloc !19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #5, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %34 = icmp eq i32 %33, 0
  %35 = load i32, ptr %9, align 8
  %36 = sub i32 %2, %35
  %37 = select i1 %34, i32 %36, i32 -14
  br label %38

38:                                               ; preds = %22, %15
  %39 = phi i32 [ %37, %22 ], [ %19, %15 ]
  %40 = and i32 %11, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  call void @__f_unlock_pos(ptr noundef nonnull %13) #5
  br label %43

43:                                               ; preds = %42, %38
  %44 = and i32 %11, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  call void @fput(ptr noundef nonnull %13) #5
  br label %47

47:                                               ; preds = %46, %43, %3
  %48 = phi i32 [ -9, %3 ], [ %39, %43 ], [ %39, %46 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #5
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filldir(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = add i32 %2, 15
  %8 = and i32 %7, -4
  %9 = add i32 %2, -4096
  %10 = icmp ult i32 %9, -4095
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @memchr(ptr noundef %1, i32 noundef 47, i32 noundef %2) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %6
  %15 = getelementptr inbounds %struct.getdents_callback, ptr %0, i32 0, i32 4
  store i32 -5, ptr %15, align 4
  br label %98

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.getdents_callback, ptr %0, i32 0, i32 4
  store i32 -22, ptr %17, align 4
  %18 = getelementptr inbounds %struct.getdents_callback, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 8
  %20 = icmp sgt i32 %8, %19
  br i1 %20, label %98, label %21

21:                                               ; preds = %16
  %22 = trunc i64 %4 to i32
  %23 = icmp ult i64 %4, 4294967296
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 -75, ptr %17, align 4
  br label %98

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.getdents_callback, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @llvm.thread.pointer() #5
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 256
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %98, !prof !20

34:                                               ; preds = %29
  %35 = load volatile i32, ptr %30, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %98

38:                                               ; preds = %34, %25
  %39 = getelementptr inbounds %struct.getdents_callback, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = sub i32 0, %27
  %42 = getelementptr i8, ptr %40, i32 %41
  %43 = add i32 %27, %8
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %42, i32 %43, i32 -1090519040) #7, !srcloc !21
  %45 = extractvalue { i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %97

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.linux_dirent, ptr %42, i32 0, i32 1
  %49 = trunc i64 %3 to i32
  %50 = tail call ptr @llvm.thread.pointer() #5
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %51) #6, !srcloc !12
  %53 = and i32 %52, -13
  %54 = or i32 %53, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %55 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %48, i32 %49, i32 -1090519041) #5, !srcloc !22
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %97, !prof !20

57:                                               ; preds = %47
  %58 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %51) #6, !srcloc !12
  %59 = and i32 %58, -13
  %60 = or i32 %59, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %61 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %40, i32 %22, i32 -1090519041) #5, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %97, !prof !20

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.linux_dirent, ptr %40, i32 0, i32 2
  %65 = trunc i32 %8 to i16
  %66 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %51) #6, !srcloc !12
  %67 = and i32 %66, -13
  %68 = or i32 %67, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %69 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %64, i16 %65, i32 -1090519041) #5, !srcloc !24
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %97, !prof !20

71:                                               ; preds = %63
  %72 = getelementptr i8, ptr %40, i32 %8
  %73 = getelementptr i8, ptr %72, i32 -1
  %74 = trunc i32 %5 to i8
  %75 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %51) #6, !srcloc !12
  %76 = and i32 %75, -13
  %77 = or i32 %76, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %78 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %73, i8 %74, i32 -1090519041) #5, !srcloc !25
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %97, !prof !20

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.linux_dirent, ptr %40, i32 0, i32 3
  %82 = getelementptr i8, ptr %81, i32 %2
  %83 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %51) #6, !srcloc !12
  %84 = and i32 %83, -13
  %85 = or i32 %84, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %86 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %82, i8 0, i32 -1090519041) #5, !srcloc !26
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %97, !prof !20

88:                                               ; preds = %80
  %89 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %51) #6, !srcloc !12
  %90 = and i32 %89, -13
  %91 = or i32 %90, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %91) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %92 = tail call i32 @arm_copy_to_user(ptr noundef %81, ptr noundef %1, i32 noundef %2) #5
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  store ptr %72, ptr %39, align 8
  store i32 %8, ptr %26, align 4
  %95 = load i32, ptr %18, align 8
  %96 = sub i32 %95, %8
  store i32 %96, ptr %18, align 8
  br label %98

97:                                               ; preds = %88, %80, %71, %63, %57, %47, %38
  store i32 -14, ptr %17, align 4
  br label %98

98:                                               ; preds = %97, %94, %34, %29, %24, %16, %14
  %99 = phi i32 [ -75, %24 ], [ -14, %97 ], [ 0, %94 ], [ -22, %16 ], [ -4, %34 ], [ -5, %14 ], [ -4, %29 ]
  ret i32 %99
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget_pos(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__f_unlock_pos(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filldir64(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = add i32 %2, 27
  %8 = and i32 %7, -8
  %9 = add i32 %2, -4096
  %10 = icmp ult i32 %9, -4095
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @memchr(ptr noundef %1, i32 noundef 47, i32 noundef %2) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %6
  %15 = getelementptr inbounds %struct.getdents_callback64, ptr %0, i32 0, i32 4
  store i32 -5, ptr %15, align 4
  br label %93

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.getdents_callback64, ptr %0, i32 0, i32 4
  store i32 -22, ptr %17, align 4
  %18 = getelementptr inbounds %struct.getdents_callback64, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 8
  %20 = icmp sgt i32 %8, %19
  br i1 %20, label %93, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.getdents_callback64, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @llvm.thread.pointer() #5
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %93, !prof !20

30:                                               ; preds = %25
  %31 = load volatile i32, ptr %26, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %93

34:                                               ; preds = %30, %21
  %35 = getelementptr inbounds %struct.getdents_callback64, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = sub i32 0, %23
  %38 = getelementptr i8, ptr %36, i32 %37
  %39 = add i32 %23, %8
  %40 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 %39, i32 -1090519040) #7, !srcloc !27
  %41 = extractvalue { i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %92

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.linux_dirent64, ptr %38, i32 0, i32 1
  %45 = tail call ptr @llvm.thread.pointer() #5
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %46) #6, !srcloc !12
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %50 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %44, i64 %3, i32 -1090519041) #5, !srcloc !28
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %92, !prof !20

52:                                               ; preds = %43
  %53 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %46) #6, !srcloc !12
  %54 = and i32 %53, -13
  %55 = or i32 %54, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %56 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %36, i64 %4, i32 -1090519041) #5, !srcloc !29
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %92, !prof !20

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.linux_dirent64, ptr %36, i32 0, i32 2
  %60 = trunc i32 %8 to i16
  %61 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %46) #6, !srcloc !12
  %62 = and i32 %61, -13
  %63 = or i32 %62, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %64 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %59, i16 %60, i32 -1090519041) #5, !srcloc !30
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %92, !prof !20

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.linux_dirent64, ptr %36, i32 0, i32 3
  %68 = trunc i32 %5 to i8
  %69 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %46) #6, !srcloc !12
  %70 = and i32 %69, -13
  %71 = or i32 %70, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %72 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %67, i8 %68, i32 -1090519041) #5, !srcloc !31
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %92, !prof !20

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.linux_dirent64, ptr %36, i32 0, i32 4
  %76 = getelementptr i8, ptr %75, i32 %2
  %77 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %46) #6, !srcloc !12
  %78 = and i32 %77, -13
  %79 = or i32 %78, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %80 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %76, i8 0, i32 -1090519041) #5, !srcloc !32
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92, !prof !20

82:                                               ; preds = %74
  %83 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %46) #6, !srcloc !12
  %84 = and i32 %83, -13
  %85 = or i32 %84, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %86 = tail call i32 @arm_copy_to_user(ptr noundef %75, ptr noundef %1, i32 noundef %2) #5
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #5, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !14
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  store i32 %8, ptr %22, align 4
  %89 = getelementptr i8, ptr %36, i32 %8
  store ptr %89, ptr %35, align 8
  %90 = load i32, ptr %18, align 8
  %91 = sub i32 %90, %8
  store i32 %91, ptr %18, align 8
  br label %93

92:                                               ; preds = %82, %74, %66, %58, %52, %43, %34
  store i32 -14, ptr %17, align 4
  br label %93

93:                                               ; preds = %92, %88, %30, %25, %16, %14
  %94 = phi i32 [ -14, %92 ], [ 0, %88 ], [ -22, %16 ], [ -4, %30 ], [ -5, %14 ], [ -4, %25 ]
  ret i32 %94
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

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
!9 = !{!10}
!10 = distinct !{!10, !11, !"fdget_pos: argument 0"}
!11 = distinct !{!11, !"fdget_pos"}
!12 = !{i64 4009994}
!13 = !{i64 4010191}
!14 = !{i64 2151495470}
!15 = !{i64 2153976559, i64 2153976839, i64 2153977173, i64 2153977507}
!16 = !{!17}
!17 = distinct !{!17, !18, !"fdget_pos: argument 0"}
!18 = distinct !{!18, !"fdget_pos"}
!19 = !{i64 2154104568, i64 2154104848, i64 2154105182, i64 2154105516}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2153855226, i64 2153855251}
!22 = !{i64 2153873816, i64 2153874126, i64 2153874440, i64 2153874754}
!23 = !{i64 2153894597, i64 2153894907, i64 2153895221, i64 2153895535}
!24 = !{i64 2153914000, i64 2153914310, i64 2153914624, i64 2153914938}
!25 = !{i64 2153933673, i64 2153933983, i64 2153934297, i64 2153934611}
!26 = !{i64 2153954574, i64 2153954884, i64 2153955198, i64 2153955512}
!27 = !{i64 2153981573, i64 2153981598}
!28 = !{i64 2154001592, i64 2154001902, i64 2154002216, i64 2154002530}
!29 = !{i64 2154022361, i64 2154022671, i64 2154022985, i64 2154023299}
!30 = !{i64 2154040335, i64 2154040645, i64 2154040959, i64 2154041273}
!31 = !{i64 2154059708, i64 2154060018, i64 2154060332, i64 2154060646}
!32 = !{i64 2154080609, i64 2154080919, i64 2154081233, i64 2154081547}
