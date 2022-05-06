; ModuleID = '/llk/IR/fs/utimes.c_pt.bc'
source_filename = "../fs/utimes.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.93, %struct.list_head, %struct.list_head, %union.anon.94 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.91 }
%union.anon.91 = type { i64 }
%union.anon.93 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.85, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.86, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.87, ptr, %struct.address_space, %struct.list_head, %union.anon.90, i32, i32, ptr, ptr }
%union.anon.85 = type { i32 }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.86 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.87 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.90 = type { ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.file = type { %union.anon.95, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.95 = type { %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.old_utimbuf32 = type { i32, i32 }
%struct.old_timespec32 = type { i32, i32 }
%struct.old_timeval32 = type { i32, i32 }

@sys_utimensat = dso_local alias i32 (i32, ptr, ptr, i32), ptr @__se_sys_utimensat
@sys_utime32 = dso_local alias i32 (ptr, ptr), ptr @__se_sys_utime32
@sys_utimensat_time32 = dso_local alias i32 (i32, ptr, ptr, i32), ptr @__se_sys_utimensat_time32
@sys_futimesat_time32 = dso_local alias i32 (i32, ptr, ptr), ptr @__se_sys_futimesat_time32
@sys_utimes_time32 = dso_local alias i32 (ptr, ptr), ptr @__se_sys_utimes_time32

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_utimes(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.iattr, align 8
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i32 80, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, -2
  %14 = icmp eq i32 %13, 1073741822
  %15 = icmp ult i32 %12, 1000000000
  %16 = or i1 %15, %14
  br i1 %16, label %17, label %87

17:                                               ; preds = %10
  %18 = getelementptr %struct.timespec64, ptr %1, i32 1, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, -2
  %21 = icmp eq i32 %20, 1073741822
  %22 = icmp ult i32 %19, 1000000000
  %23 = or i1 %22, %21
  br i1 %23, label %24, label %87

24:                                               ; preds = %17
  %25 = icmp eq i32 %12, 1073741823
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = icmp eq i32 %19, 1073741823
  %28 = select i1 %27, ptr null, ptr %1
  br label %29

29:                                               ; preds = %26, %24, %2
  %30 = phi ptr [ %28, %26 ], [ %1, %24 ], [ null, %2 ]
  %31 = load ptr, ptr %0, align 4
  %32 = tail call i32 @mnt_want_write(ptr noundef %31) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %87

34:                                               ; preds = %29
  %35 = icmp eq ptr %30, null
  br i1 %35, label %55, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.timespec64, ptr %30, i32 0, i32 1
  %38 = load i32, ptr %37, align 8
  switch i32 %38, label %40 [
    i32 1073741822, label %39
    i32 1073741823, label %42
  ]

39:                                               ; preds = %36
  br label %42

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.iattr, ptr %3, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(16) %30, i32 16, i1 false)
  br label %42

42:                                               ; preds = %40, %39, %36
  %43 = phi i32 [ 112, %36 ], [ 240, %40 ], [ 96, %39 ]
  %44 = getelementptr %struct.timespec64, ptr %30, i32 1, i32 1
  %45 = load i32, ptr %44, align 8
  switch i32 %45, label %48 [
    i32 1073741822, label %46
    i32 1073741823, label %52
  ]

46:                                               ; preds = %42
  %47 = and i32 %43, 208
  br label %52

48:                                               ; preds = %42
  %49 = getelementptr %struct.timespec64, ptr %30, i32 1
  %50 = getelementptr inbounds %struct.iattr, ptr %3, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %50, ptr noundef align 8 dereferenceable(16) %49, i32 16, i1 false)
  %51 = or i32 %43, 256
  br label %52

52:                                               ; preds = %48, %46, %42
  %53 = phi i32 [ %43, %42 ], [ %51, %48 ], [ %47, %46 ]
  %54 = or i32 %53, 65536
  br label %55

55:                                               ; preds = %52, %34
  %56 = phi i32 [ %54, %52 ], [ 131184, %34 ]
  store i32 %56, ptr %3, align 8
  %57 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 24
  br label %58

58:                                               ; preds = %80, %55
  call void @down_write(ptr noundef %57) #6
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.vfsmount, ptr %59, i32 0, i32 3
  %61 = load volatile ptr, ptr %60, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %62 = load ptr, ptr %5, align 4
  %63 = call i32 @notify_change(ptr noundef %61, ptr noundef %62, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  call void @up_write(ptr noundef %57) #6
  %64 = load ptr, ptr %4, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %84, label %66

66:                                               ; preds = %58
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %67 = getelementptr inbounds %struct.inode, ptr %64, i32 0, i32 40
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.file_lock_context, ptr %68, i32 0, i32 3
  %72 = load volatile ptr, ptr %71, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.file_lock_context, ptr %68, i32 0, i32 3, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %71
  br i1 %77, label %80, label %78

78:                                               ; preds = %74, %70
  %79 = call i32 @__break_lease(ptr noundef nonnull %64, i32 noundef 1, i32 noundef 4) #6
  br label %80

80:                                               ; preds = %78, %74, %66
  %81 = phi i32 [ %79, %78 ], [ 0, %74 ], [ 0, %66 ]
  %82 = load ptr, ptr %4, align 4
  call void @iput(ptr noundef %82) #6
  store ptr null, ptr %4, align 4
  %83 = icmp eq i32 %81, 0
  br i1 %83, label %58, label %84

84:                                               ; preds = %80, %58
  %85 = phi i32 [ %81, %80 ], [ %63, %58 ]
  %86 = load ptr, ptr %0, align 4
  call void @mnt_drop_write(ptr noundef %86) #6
  br label %87

87:                                               ; preds = %84, %29, %17, %10
  %88 = phi i32 [ -22, %17 ], [ -22, %10 ], [ %32, %29 ], [ %85, %84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret i32 %88
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_utimes(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.path, align 8
  %6 = icmp eq ptr %1, null
  %7 = icmp ne i32 %0, -100
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %9
  %12 = tail call i32 @__fdget(i32 noundef %0) #6, !noalias !12
  %13 = and i32 %12, -4
  %14 = inttoptr i32 %13 to ptr
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 1
  %18 = tail call i32 @vfs_utimes(ptr noundef %17, ptr noundef %2) #6
  %19 = and i32 %12, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %16
  tail call void @fput(ptr noundef nonnull %14) #6
  br label %48

22:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 0, ptr %5, align 8, !annotation !8
  %23 = and i32 %3, -4353
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = lshr i32 %3, 8
  %27 = and i32 %26, 1
  %28 = shl nuw nsw i32 %3, 2
  %29 = and i32 %28, 16384
  %30 = or i32 %27, %29
  %31 = xor i32 %30, 1
  %32 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %1, i32 noundef %31, ptr noundef nonnull %5, ptr noundef null) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = or i32 %31, 32
  br label %39

36:                                               ; preds = %39
  %37 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %1, i32 noundef %35, ptr noundef nonnull %5, ptr noundef null) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36, %34
  %40 = phi i32 [ %31, %34 ], [ %35, %36 ]
  %41 = call i32 @vfs_utimes(ptr noundef nonnull %5, ptr noundef %2) #6
  call void @path_put(ptr noundef nonnull %5) #6
  %42 = icmp eq i32 %41, -116
  %43 = and i32 %40, 32
  %44 = icmp eq i32 %43, 0
  %45 = and i1 %44, %42
  br i1 %45, label %36, label %46

46:                                               ; preds = %39, %36, %25, %22
  %47 = phi i32 [ -22, %22 ], [ %32, %25 ], [ %41, %39 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %48

48:                                               ; preds = %46, %21, %16, %11, %9
  %49 = phi i32 [ %47, %46 ], [ -22, %9 ], [ -9, %11 ], [ %18, %16 ], [ %18, %21 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_utimensat(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca [2 x %struct.timespec64], align 8
  %6 = inttoptr i32 %1 to ptr
  %7 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false) #6, !annotation !8
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = call i32 @get_timespec64(ptr noundef nonnull %5, ptr noundef nonnull %7) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = getelementptr inbounds [2 x %struct.timespec64], ptr %5, i32 0, i32 1
  %14 = getelementptr %struct.__kernel_timespec, ptr %7, i32 1
  %15 = call i32 @get_timespec64(ptr noundef %13, ptr noundef %14) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.timespec64, ptr %5, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 1073741822
  %21 = getelementptr inbounds [2 x %struct.timespec64], ptr %5, i32 0, i32 1, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 1073741822
  %24 = select i1 %20, i1 %23, i1 false
  br i1 %24, label %28, label %25

25:                                               ; preds = %17, %4
  %26 = phi ptr [ %5, %17 ], [ null, %4 ]
  %27 = call i32 @do_utimes(i32 noundef %0, ptr noundef %6, ptr noundef %26, i32 noundef %3) #6
  br label %28

28:                                               ; preds = %25, %17, %12, %9
  %29 = phi i32 [ %27, %25 ], [ -14, %12 ], [ -14, %9 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #6
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_utime32(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.path, align 8
  %4 = alloca [2 x %struct.timespec64], align 8
  %5 = inttoptr i32 %0 to ptr
  %6 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i32 32, i1 false) #6, !annotation !8
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #6
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #7, !srcloc !15
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #6, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !17
  %14 = tail call { i32, i64 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %6, i32 -1090519041) #6, !srcloc !18
  %15 = extractvalue { i32, i64 } %14, 0
  %16 = extractvalue { i32, i64 } %14, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #6, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !17
  %17 = shl i64 %16, 32
  %18 = ashr exact i64 %17, 32
  store i64 %18, ptr %4, align 8
  %19 = icmp eq i32 %15, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.old_utimbuf32, ptr %6, i32 0, i32 1
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #7, !srcloc !15
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #6, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !17
  %25 = tail call { i32, i64 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %21, i32 -1090519041) #6, !srcloc !19
  %26 = extractvalue { i32, i64 } %25, 0
  %27 = extractvalue { i32, i64 } %25, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #6, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !17
  %28 = shl i64 %27, 32
  %29 = ashr exact i64 %28, 32
  %30 = getelementptr inbounds [2 x %struct.timespec64], ptr %4, i32 0, i32 1
  store i64 %29, ptr %30, align 8
  %31 = icmp eq i32 %26, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 1
  store i32 0, ptr %33, align 8
  %34 = getelementptr inbounds [2 x %struct.timespec64], ptr %4, i32 0, i32 1, i32 1
  store i32 0, ptr %34, align 8
  br label %35

35:                                               ; preds = %32, %2
  %36 = phi ptr [ %4, %32 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8, !annotation !8
  %37 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %5, i32 noundef 1, ptr noundef nonnull %3, ptr noundef null) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %47

39:                                               ; preds = %44
  %40 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %5, i32 noundef 33, ptr noundef nonnull %3, ptr noundef null) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = call i32 @vfs_utimes(ptr noundef nonnull %3, ptr noundef %36) #6
  call void @path_put(ptr noundef nonnull %3) #6
  br label %47

44:                                               ; preds = %35
  %45 = call i32 @vfs_utimes(ptr noundef nonnull %3, ptr noundef %36) #6
  call void @path_put(ptr noundef nonnull %3) #6
  %46 = icmp eq i32 %45, -116
  br i1 %46, label %39, label %47

47:                                               ; preds = %44, %42, %39, %35
  %48 = phi i32 [ %37, %35 ], [ %45, %44 ], [ %40, %39 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %49

49:                                               ; preds = %47, %20, %8
  %50 = phi i32 [ %48, %47 ], [ -14, %20 ], [ -14, %8 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #6
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_utimensat_time32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca [2 x %struct.timespec64], align 8
  %6 = inttoptr i32 %1 to ptr
  %7 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false) #6, !annotation !8
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = call i32 @get_old_timespec32(ptr noundef nonnull %5, ptr noundef nonnull %7) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = getelementptr inbounds [2 x %struct.timespec64], ptr %5, i32 0, i32 1
  %14 = getelementptr %struct.old_timespec32, ptr %7, i32 1
  %15 = call i32 @get_old_timespec32(ptr noundef %13, ptr noundef %14) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.timespec64, ptr %5, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 1073741822
  %21 = getelementptr inbounds [2 x %struct.timespec64], ptr %5, i32 0, i32 1, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 1073741822
  %24 = select i1 %20, i1 %23, i1 false
  br i1 %24, label %28, label %25

25:                                               ; preds = %17, %4
  %26 = phi ptr [ %5, %17 ], [ null, %4 ]
  %27 = call i32 @do_utimes(i32 noundef %0, ptr noundef %6, ptr noundef %26, i32 noundef %3) #6
  br label %28

28:                                               ; preds = %25, %17, %12, %9
  %29 = phi i32 [ %27, %25 ], [ -14, %12 ], [ -14, %9 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #6
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_futimesat_time32(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %1 to ptr
  %5 = inttoptr i32 %2 to ptr
  %6 = tail call fastcc i32 @do_compat_futimesat(i32 noundef %0, ptr noundef %4, ptr noundef %5) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_utimes_time32(i32 noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %0 to ptr
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call fastcc i32 @do_compat_futimesat(i32 noundef -100, ptr noundef %3, ptr noundef %4) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_compat_futimesat(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x %struct.timespec64], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %5 = icmp eq ptr %2, null
  br i1 %5, label %59, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #6
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #7, !srcloc !15
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #6, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !17
  %12 = tail call { i32, i64 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %2, i32 -1090519041) #6, !srcloc !20
  %13 = extractvalue { i32, i64 } %12, 0
  %14 = extractvalue { i32, i64 } %12, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #6, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !17
  %15 = shl i64 %14, 32
  %16 = ashr exact i64 %15, 32
  store i64 %16, ptr %4, align 8
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %18, label %62

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.old_timeval32, ptr %2, i32 0, i32 1
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #7, !srcloc !15
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #6, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !17
  %23 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %19, i32 -1090519041) #6, !srcloc !21
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = extractvalue { i32, i32 } %23, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #6, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !17
  %26 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 1
  %27 = icmp eq i32 %24, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %18
  %29 = getelementptr %struct.old_timeval32, ptr %2, i32 1
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #7, !srcloc !15
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #6, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !17
  %33 = tail call { i32, i64 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %29, i32 -1090519041) #6, !srcloc !22
  %34 = extractvalue { i32, i64 } %33, 0
  %35 = extractvalue { i32, i64 } %33, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #6, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !17
  %36 = shl i64 %35, 32
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds [2 x %struct.timespec64], ptr %4, i32 0, i32 1
  store i64 %37, ptr %38, align 8
  %39 = icmp eq i32 %34, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %28
  %41 = getelementptr %struct.old_timeval32, ptr %2, i32 1, i32 1
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #7, !srcloc !15
  %43 = and i32 %42, -13
  %44 = or i32 %43, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #6, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !17
  %45 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %41, i32 -1090519041) #6, !srcloc !23
  %46 = extractvalue { i32, i32 } %45, 0
  %47 = extractvalue { i32, i32 } %45, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #6, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !17
  %48 = getelementptr inbounds [2 x %struct.timespec64], ptr %4, i32 0, i32 1, i32 1
  %49 = icmp eq i32 %46, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %40
  %51 = icmp ugt i32 %25, 999999
  %52 = icmp sgt i32 %47, 999999
  %53 = select i1 %51, i1 true, i1 %52
  %54 = icmp slt i32 %47, 0
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = mul nuw nsw i32 %25, 1000
  store i32 %57, ptr %26, align 8
  %58 = mul nuw nsw i32 %47, 1000
  store i32 %58, ptr %48, align 8
  br label %59

59:                                               ; preds = %56, %3
  %60 = phi ptr [ %4, %56 ], [ null, %3 ]
  %61 = call i32 @do_utimes(i32 noundef %0, ptr noundef %1, ptr noundef %60, i32 noundef 0)
  br label %62

62:                                               ; preds = %59, %50, %40, %28, %18, %6
  %63 = phi i32 [ %61, %59 ], [ -14, %40 ], [ -14, %28 ], [ -14, %18 ], [ -14, %6 ], [ -22, %50 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #6
  ret i32 %63
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

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
!9 = !{i64 2149085556}
!10 = !{i64 2151313568}
!11 = !{i64 2147808879}
!12 = !{!13}
!13 = distinct !{!13, !14, !"fdget: argument 0"}
!14 = distinct !{!14, !"fdget"}
!15 = !{i64 3481363}
!16 = !{i64 3481560}
!17 = !{i64 2150966839}
!18 = !{i64 2153710249, i64 2153710529, i64 2153710863, i64 2153711197}
!19 = !{i64 2153722265, i64 2153722545, i64 2153722879, i64 2153723213}
!20 = !{i64 2153752251, i64 2153752531, i64 2153752865, i64 2153753199}
!21 = !{i64 2153765557, i64 2153765837, i64 2153766171, i64 2153766505}
!22 = !{i64 2153776303, i64 2153776583, i64 2153776917, i64 2153777251}
!23 = !{i64 2153789609, i64 2153789889, i64 2153790223, i64 2153790557}
