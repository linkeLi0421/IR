; ModuleID = '/llk/IR/fs/autofs/expire.c_pt.bc'
source_filename = "../fs/autofs/expire.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.57, %struct.list_head, %struct.list_head, %union.anon.58 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.55 }
%union.anon.55 = type { i64 }
%union.anon.57 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.58 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.autofs_info = type { ptr, ptr, i32, %struct.completion, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.callback_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.autofs_sb_info = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.autofs_packet_expire = type { %struct.autofs_packet_hdr, i32, [256 x i8] }
%struct.autofs_packet_hdr = type { i32, i32 }
%struct.anon = type { i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.56 = type { %struct.spinlock, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @autofs_expire_wait(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.autofs_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %2
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.autofs_sb_info, ptr %8, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %18) #6
  %19 = load i32, ptr %11, align 4
  %20 = and i32 %19, 3
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %29

22:                                               ; preds = %22, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %23 = load i16, ptr %18, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %25 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 10) #6
  tail call void @_raw_spin_lock(ptr noundef %18) #6
  %26 = load i32, ptr %11, align 4
  %27 = and i32 %26, 3
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %22, label %29

29:                                               ; preds = %22, %17
  %30 = phi i32 [ %19, %17 ], [ %26, %22 ]
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6
  %33 = load i16, ptr %18, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6
  tail call void asm sideeffect "", "~{memory}"() #6
  br i1 %32, label %42, label %35

35:                                               ; preds = %29
  %36 = tail call i32 @autofs_wait(ptr noundef %8, ptr noundef %0, i32 noundef 0) #6
  %37 = getelementptr inbounds %struct.autofs_info, ptr %10, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %37) #6
  %38 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 2, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, i32 -11, i32 %36
  br label %42

42:                                               ; preds = %35, %29, %15, %2
  %43 = phi i32 [ 0, %2 ], [ -10, %15 ], [ %41, %35 ], [ 0, %29 ]
  ret i32 %43
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @autofs_expire_run(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.autofs_packet_expire, align 4
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %5) #6
  %6 = getelementptr inbounds %struct.autofs_sb_info, ptr %2, i32 0, i32 4
  %7 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(256) %7, i8 0, i64 256, i1 false)
  %8 = load i32, ptr %6, align 4
  store i32 %8, ptr %5, align 4
  %9 = getelementptr inbounds %struct.autofs_packet_hdr, ptr %5, i32 0, i32 1
  store i32 1, ptr %9, align 4
  %10 = tail call fastcc ptr @autofs_expire_indirect(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %46, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 4
  %14 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.autofs_packet_expire, ptr %5, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.autofs_packet_expire, ptr %5, i32 0, i32 2
  %18 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 4, i32 1
  %19 = load ptr, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %17, ptr align 1 %19, i32 %15, i1 false)
  %20 = getelementptr %struct.autofs_packet_expire, ptr %5, i32 0, i32 2, i32 %15
  store i8 0, ptr %20, align 1
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 268, i32 -1090519040) #7, !srcloc !12
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %12
  %25 = tail call ptr @llvm.thread.pointer() #6
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #8, !srcloc !13
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #6, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !15
  %30 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %5, i32 noundef 268) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #6, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !15
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 0, i32 -14
  br label %33

33:                                               ; preds = %24, %12
  %34 = phi i32 [ -14, %12 ], [ %32, %24 ]
  %35 = getelementptr inbounds %struct.autofs_sb_info, ptr %2, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %35) #6
  %36 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 11
  %37 = load ptr, ptr %36, align 4
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = getelementptr inbounds %struct.autofs_info, ptr %37, i32 0, i32 7
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.autofs_info, ptr %37, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -4
  store i32 %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.autofs_info, ptr %37, i32 0, i32 3
  call void @complete_all(ptr noundef %43) #6
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %44 = load i16, ptr %35, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %35, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  call void @dput(ptr noundef nonnull %10) #6
  br label %46

46:                                               ; preds = %33, %4
  %47 = phi i32 [ %34, %33 ], [ -11, %4 ]
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %5) #6
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @autofs_expire_indirect(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %103, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.autofs_sb_info, ptr %2, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 9
  %12 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 7
  %13 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 14
  %14 = getelementptr inbounds %struct.autofs_sb_info, ptr %2, i32 0, i32 14
  %15 = and i32 %3, -3
  br label %16

16:                                               ; preds = %102, %8
  %17 = phi i32 [ %3, %8 ], [ %15, %102 ]
  %18 = phi ptr [ null, %8 ], [ %56, %102 ]
  br label %19

19:                                               ; preds = %71, %16
  %20 = phi ptr [ %18, %16 ], [ %56, %71 ]
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 27
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.autofs_sb_info, ptr %23, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %24) #6
  tail call void @_raw_spin_lock(ptr noundef %12) #6
  %25 = icmp eq ptr %20, null
  %26 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 13
  %27 = select i1 %25, ptr %13, ptr %26
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, %13
  br i1 %29, label %55, label %30

30:                                               ; preds = %50, %19
  %31 = phi ptr [ %53, %50 ], [ %28, %19 ]
  %32 = getelementptr i8, ptr %31, i32 -32
  tail call void @_raw_spin_lock(ptr noundef %32) #6
  %33 = getelementptr i8, ptr %31, i32 -72
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %30
  %37 = getelementptr i8, ptr %31, i32 -100
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %31, i32 -112
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = getelementptr i8, ptr %31, i32 -28
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 4
  br label %47

47:                                               ; preds = %43, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %48 = load i16, ptr %32, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %55

50:                                               ; preds = %36, %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %51 = load i16, ptr %32, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %53 = load ptr, ptr %31, align 8
  %54 = icmp eq ptr %53, %13
  br i1 %54, label %55, label %30

55:                                               ; preds = %50, %47, %19
  %56 = phi ptr [ %41, %47 ], [ null, %19 ], [ null, %50 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %57 = load i16, ptr %12, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %59 = load i16, ptr %24, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  tail call void @dput(ptr noundef %20) #6
  %61 = icmp eq ptr %56, null
  br i1 %61, label %103, label %62

62:                                               ; preds = %55
  tail call void @_raw_spin_lock(ptr noundef %14) #6
  %63 = getelementptr inbounds %struct.dentry, ptr %56, i32 0, i32 11
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.autofs_info, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6
  %69 = load i16, ptr %14, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6
  tail call void asm sideeffect "", "~{memory}"() #6
  br i1 %68, label %72, label %71

71:                                               ; preds = %72, %62
  br label %19

72:                                               ; preds = %62
  %73 = tail call fastcc ptr @should_expire(ptr noundef nonnull %56, ptr noundef %1, i32 noundef %10, i32 noundef %17)
  %74 = icmp eq ptr %73, null
  br i1 %74, label %71, label %75

75:                                               ; preds = %72
  tail call void @_raw_spin_lock(ptr noundef %14) #6
  %76 = getelementptr inbounds %struct.dentry, ptr %73, i32 0, i32 11
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.autofs_info, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = or i32 %79, 2
  store i32 %80, ptr %78, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %81 = load i16, ptr %14, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  tail call void @synchronize_rcu() #6
  %83 = tail call fastcc ptr @should_expire(ptr noundef nonnull %73, ptr noundef %1, i32 noundef %10, i32 noundef %15)
  %84 = icmp eq ptr %83, %73
  br i1 %84, label %91, label %85

85:                                               ; preds = %75
  tail call void @dput(ptr noundef %83) #6
  tail call void @_raw_spin_lock(ptr noundef %14) #6
  %86 = load i32, ptr %78, align 4
  %87 = and i32 %86, -3
  store i32 %87, ptr %78, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %88 = load i16, ptr %14, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %90 = icmp eq ptr %73, %56
  br i1 %90, label %102, label %101

91:                                               ; preds = %75
  %92 = icmp eq ptr %73, %56
  br i1 %92, label %94, label %93

93:                                               ; preds = %91
  tail call void @dput(ptr noundef nonnull %56) #6
  br label %94

94:                                               ; preds = %93, %91
  tail call void @_raw_spin_lock(ptr noundef %14) #6
  %95 = load i32, ptr %78, align 4
  %96 = or i32 %95, 1
  store i32 %96, ptr %78, align 4
  %97 = getelementptr inbounds %struct.autofs_info, ptr %77, i32 0, i32 3
  store i32 0, ptr %97, align 4
  %98 = getelementptr inbounds %struct.autofs_info, ptr %77, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %98, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %99 = load i16, ptr %14, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %103

101:                                              ; preds = %85
  tail call void @dput(ptr noundef nonnull %73) #6
  br label %102

102:                                              ; preds = %101, %85
  br label %16

103:                                              ; preds = %94, %55, %4
  %104 = phi ptr [ %73, %94 ], [ null, %4 ], [ null, %55 ]
  ret ptr %104
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @autofs_do_expire_multi(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.path, align 8
  %6 = getelementptr inbounds %struct.autofs_sb_info, ptr %2, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %91 [
    i32 4, label %8
    i32 2, label %8
  ]

8:                                                ; preds = %4, %4
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %10 = load ptr, ptr %9, align 64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %109, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %13) #6
  %14 = getelementptr inbounds %struct.autofs_sb_info, ptr %2, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %3, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = tail call i32 @may_umount_tree(ptr noundef %1) #6
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %20, label %24, label %28

24:                                               ; preds = %18
  br i1 %23, label %90, label %25

25:                                               ; preds = %24
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = getelementptr inbounds %struct.autofs_info, ptr %22, i32 0, i32 7
  store i32 %26, ptr %27, align 4
  br label %90

28:                                               ; preds = %18
  br i1 %23, label %90, label %29

29:                                               ; preds = %28
  %30 = and i32 %3, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = icmp eq i32 %15, 0
  br i1 %33, label %90, label %34

34:                                               ; preds = %32
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = getelementptr inbounds %struct.autofs_info, ptr %22, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %15, %37
  %39 = sub i32 %35, %38
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %90, label %41

41:                                               ; preds = %34, %29, %12
  %42 = getelementptr inbounds %struct.autofs_sb_info, ptr %2, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %42) #6
  %43 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 11
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.autofs_info, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %50 = load i16, ptr %42, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %90

52:                                               ; preds = %41
  %53 = or i32 %46, 2
  store i32 %53, ptr %45, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %54 = load i16, ptr %42, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  tail call void @synchronize_rcu() #6
  br i1 %17, label %56, label %78

56:                                               ; preds = %52
  %57 = tail call i32 @may_umount_tree(ptr noundef %1) #6
  %58 = icmp eq i32 %57, 0
  %59 = load ptr, ptr %43, align 4
  %60 = icmp eq ptr %59, null
  br i1 %58, label %61, label %65

61:                                               ; preds = %56
  br i1 %60, label %85, label %62

62:                                               ; preds = %61
  %63 = load volatile i32, ptr @jiffies, align 64
  %64 = getelementptr inbounds %struct.autofs_info, ptr %59, i32 0, i32 7
  store i32 %63, ptr %64, align 4
  br label %85

65:                                               ; preds = %56
  br i1 %60, label %85, label %66

66:                                               ; preds = %65
  %67 = and i32 %3, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = icmp eq i32 %15, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %69
  %72 = load volatile i32, ptr @jiffies, align 64
  %73 = getelementptr inbounds %struct.autofs_info, ptr %59, i32 0, i32 7
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %15, %74
  %76 = sub i32 %72, %75
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %71, %66, %52
  tail call void @_raw_spin_lock(ptr noundef %42) #6
  %79 = load i32, ptr %45, align 4
  %80 = or i32 %79, 1
  store i32 %80, ptr %45, align 4
  %81 = getelementptr inbounds %struct.autofs_info, ptr %44, i32 0, i32 3
  store i32 0, ptr %81, align 4
  %82 = getelementptr inbounds %struct.autofs_info, ptr %44, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %82, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %83 = load i16, ptr %42, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %94

85:                                               ; preds = %71, %69, %65, %62, %61
  tail call void @_raw_spin_lock(ptr noundef %42) #6
  %86 = load i32, ptr %45, align 4
  %87 = and i32 %86, -3
  store i32 %87, ptr %45, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %88 = load i16, ptr %42, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %90

90:                                               ; preds = %85, %49, %34, %32, %28, %25, %24
  tail call void @dput(ptr noundef nonnull %10) #6
  br label %109

91:                                               ; preds = %4
  %92 = tail call fastcc ptr @autofs_expire_indirect(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %93 = icmp eq ptr %92, null
  br i1 %93, label %109, label %94

94:                                               ; preds = %91, %78
  %95 = phi ptr [ %10, %78 ], [ %92, %91 ]
  %96 = getelementptr inbounds %struct.dentry, ptr %95, i32 0, i32 11
  %97 = load ptr, ptr %96, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store ptr %1, ptr %5, align 8
  %98 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1
  store ptr %95, ptr %98, align 4
  %99 = call i32 @autofs_wait(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 2) #6
  %100 = getelementptr inbounds %struct.autofs_sb_info, ptr %2, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %100) #6
  %101 = load volatile i32, ptr @jiffies, align 64
  %102 = getelementptr inbounds %struct.autofs_info, ptr %97, i32 0, i32 7
  store i32 %101, ptr %102, align 4
  %103 = getelementptr inbounds %struct.autofs_info, ptr %97, i32 0, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, -4
  store i32 %105, ptr %103, align 4
  %106 = getelementptr inbounds %struct.autofs_info, ptr %97, i32 0, i32 3
  call void @complete_all(ptr noundef %106) #6
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %107 = load i16, ptr %100, align 4
  %108 = add i16 %107, 1
  store i16 %108, ptr %100, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  call void @dput(ptr noundef nonnull %95) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %109

109:                                              ; preds = %94, %91, %90, %8
  %110 = phi i32 [ %99, %94 ], [ -11, %91 ], [ -11, %90 ], [ -11, %8 ]
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @autofs_expire_multi(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @llvm.thread.pointer() #6
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #8, !srcloc !13
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #6, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !15
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %3, i32 -1090519041) #6, !srcloc !16
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #6, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !15
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %6, %4
  %17 = phi i32 [ %14, %6 ], [ 0, %4 ]
  %18 = tail call i32 @autofs_do_expire_multi(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %17)
  br label %19

19:                                               ; preds = %16, %6
  %20 = phi i32 [ %18, %16 ], [ -14, %6 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @should_expire(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.autofs_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %94

11:                                               ; preds = %4
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 65536
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @autofs_mount_busy(ptr noundef %1, ptr noundef %0, i32 noundef %3)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %94

18:                                               ; preds = %15
  %19 = and i32 %3, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %94

21:                                               ; preds = %18
  %22 = load ptr, ptr %5, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = and i32 %3, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %94

27:                                               ; preds = %24
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %27
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = getelementptr inbounds %struct.autofs_info, ptr %22, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %2
  %34 = sub i32 %30, %33
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %94

36:                                               ; preds = %29, %27, %21
  br label %94

37:                                               ; preds = %11
  %38 = and i32 %12, 7340032
  %39 = icmp eq i32 %38, 6291456
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = and i32 %3, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %94

43:                                               ; preds = %40
  %44 = icmp eq ptr %6, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %43
  %46 = and i32 %3, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %94

48:                                               ; preds = %45
  %49 = icmp eq i32 %2, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %48
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = getelementptr inbounds %struct.autofs_info, ptr %6, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, %2
  %55 = sub i32 %51, %54
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %94

57:                                               ; preds = %50, %48, %43
  br label %94

58:                                               ; preds = %37
  %59 = tail call i32 @simple_empty(ptr noundef %0) #6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %94

61:                                               ; preds = %58
  %62 = and i32 %3, 2
  %63 = icmp eq i32 %62, 0
  %64 = and i32 %3, 4
  %65 = icmp eq i32 %64, 0
  br i1 %63, label %66, label %78

66:                                               ; preds = %61
  br i1 %65, label %67, label %75

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.autofs_info, ptr %6, i32 0, i32 8
  %69 = load volatile i32, ptr %68, align 4
  %70 = add i32 %69, 1
  %71 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  %72 = getelementptr inbounds %struct.anon.56, ptr %71, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = icmp ugt i32 %73, %70
  br i1 %74, label %94, label %75

75:                                               ; preds = %67, %66
  %76 = tail call fastcc i32 @autofs_tree_busy(ptr noundef %1, ptr noundef %0, i32 noundef %2, i32 noundef %3)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %94, label %93

78:                                               ; preds = %61
  br i1 %65, label %79, label %87

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.autofs_info, ptr %6, i32 0, i32 8
  %81 = load volatile i32, ptr %80, align 4
  %82 = add i32 %81, 1
  %83 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  %84 = getelementptr inbounds %struct.anon.56, ptr %83, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = icmp ugt i32 %85, %82
  br i1 %86, label %94, label %87

87:                                               ; preds = %79, %78
  %88 = tail call fastcc ptr @autofs_check_leaves(ptr noundef %1, ptr noundef %0, i32 noundef %2, i32 noundef %3)
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = icmp eq ptr %88, %0
  br i1 %91, label %92, label %94

92:                                               ; preds = %90
  tail call void @dput(ptr noundef %0) #6
  br label %94

93:                                               ; preds = %87, %75
  br label %94

94:                                               ; preds = %93, %92, %90, %79, %75, %67, %58, %57, %50, %45, %40, %36, %29, %24, %18, %15, %4
  %95 = phi ptr [ null, %93 ], [ null, %4 ], [ null, %15 ], [ %0, %18 ], [ %0, %40 ], [ null, %58 ], [ null, %67 ], [ %0, %75 ], [ null, %36 ], [ %0, %24 ], [ %0, %29 ], [ null, %57 ], [ %0, %45 ], [ %0, %50 ], [ %88, %90 ], [ %0, %92 ], [ null, %79 ]
  ret ptr %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @autofs_mount_busy(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store ptr %0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  store ptr %1, ptr %5, align 4
  call void @path_get(ptr noundef nonnull %4) #6
  %6 = call i32 @follow_down_one(ptr noundef nonnull %4) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %5, align 4
  %10 = call i32 @is_autofs_dentry(ptr noundef %9) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 27
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.autofs_sb_info, ptr %17, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %33, label %21

21:                                               ; preds = %12, %8
  %22 = and i32 %2, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 8
  %26 = call i32 @may_umount_tree(ptr noundef %25) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = getelementptr inbounds %struct.autofs_info, ptr %30, i32 0, i32 7
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %28, %24, %21, %12, %3
  %34 = phi i32 [ 1, %12 ], [ 1, %28 ], [ 1, %3 ], [ 0, %21 ], [ 0, %24 ]
  call void @path_put(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @autofs_tree_busy(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %65, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %65, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc ptr @get_next_positive_dentry(ptr noundef null, ptr noundef %1)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %43, %14
  %18 = phi ptr [ %44, %43 ], [ %15, %14 ]
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65536
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = tail call fastcc i32 @autofs_mount_busy(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %3)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %22
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = getelementptr inbounds %struct.autofs_info, ptr %6, i32 0, i32 7
  store i32 %26, ptr %27, align 4
  tail call void @dput(ptr noundef nonnull %18) #6
  br label %65

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.autofs_info, ptr %30, i32 0, i32 8
  %32 = load volatile i32, ptr %31, align 4
  %33 = icmp eq ptr %18, %1
  %34 = select i1 %33, i32 2, i32 1
  %35 = add i32 %32, %34
  %36 = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 7
  %37 = getelementptr inbounds %struct.anon.56, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, %35
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = getelementptr inbounds %struct.autofs_info, ptr %6, i32 0, i32 7
  store i32 %41, ptr %42, align 4
  tail call void @dput(ptr noundef nonnull %18) #6
  br label %65

43:                                               ; preds = %28, %22
  %44 = tail call fastcc ptr @get_next_positive_dentry(ptr noundef nonnull %18, ptr noundef %1)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %17

46:                                               ; preds = %43, %14
  %47 = and i32 %3, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load ptr, ptr %5, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %49
  %53 = and i32 %3, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = icmp eq i32 %2, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %55
  %58 = load volatile i32, ptr @jiffies, align 64
  %59 = getelementptr inbounds %struct.autofs_info, ptr %50, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, %2
  %62 = sub i32 %58, %61
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57, %55, %49
  br label %65

65:                                               ; preds = %64, %57, %52, %46, %40, %25, %10, %4
  %66 = phi i32 [ 1, %25 ], [ 1, %10 ], [ 1, %40 ], [ 0, %46 ], [ 1, %64 ], [ 0, %52 ], [ 0, %57 ], [ 1, %4 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @autofs_check_leaves(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc ptr @get_next_positive_dentry(ptr noundef null, ptr noundef %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %4
  %8 = and i32 %3, 1
  %9 = and i32 %3, 4
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq i32 %8, 0
  %12 = icmp eq i32 %2, 0
  br label %13

13:                                               ; preds = %35, %7
  %14 = phi ptr [ %5, %7 ], [ %36, %35 ]
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65536
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %13
  %19 = tail call fastcc i32 @autofs_mount_busy(ptr noundef %0, ptr noundef nonnull %14, i32 noundef %3)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  br i1 %10, label %22, label %38

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  br i1 %11, label %27, label %38

27:                                               ; preds = %26
  br i1 %12, label %35, label %28

28:                                               ; preds = %27
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = getelementptr inbounds %struct.autofs_info, ptr %24, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %2
  %33 = sub i32 %29, %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28, %27, %22, %18, %13
  %36 = tail call fastcc ptr @get_next_positive_dentry(ptr noundef nonnull %14, ptr noundef %1)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %13

38:                                               ; preds = %35, %28, %26, %21, %4
  %39 = phi ptr [ null, %4 ], [ %14, %28 ], [ %14, %26 ], [ null, %35 ], [ %14, %21 ]
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_down_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_autofs_dentry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @may_umount_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_next_positive_dentry(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %66, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %7) #6
  br label %66

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.autofs_sb_info, ptr %12, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %13) #6
  br label %14

14:                                               ; preds = %54, %8
  %15 = phi ptr [ %56, %54 ], [ %0, %8 ]
  %16 = phi ptr [ %15, %54 ], [ null, %8 ]
  %17 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %17) #6
  %18 = icmp eq ptr %16, null
  %19 = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 13
  %20 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 14
  %21 = select i1 %18, ptr %20, ptr %19
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, %20
  br i1 %23, label %49, label %24

24:                                               ; preds = %44, %14
  %25 = phi ptr [ %47, %44 ], [ %22, %14 ]
  %26 = getelementptr i8, ptr %25, i32 -32
  tail call void @_raw_spin_lock(ptr noundef %26) #6
  %27 = getelementptr i8, ptr %25, i32 -72
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %24
  %31 = getelementptr i8, ptr %25, i32 -100
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %25, i32 -112
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr i8, ptr %25, i32 -28
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %37, %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %42 = load i16, ptr %26, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %49

44:                                               ; preds = %30, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %45 = load i16, ptr %26, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %47 = load ptr, ptr %25, align 8
  %48 = icmp eq ptr %47, %20
  br i1 %48, label %49, label %24

49:                                               ; preds = %44, %41, %14
  %50 = phi ptr [ %35, %41 ], [ null, %14 ], [ null, %44 ]
  %51 = icmp ne ptr %50, null
  %52 = icmp eq ptr %15, %1
  %53 = or i1 %52, %51
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %58 = load i16, ptr %57, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %57, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %14

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %62 = load i16, ptr %61, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %64 = load i16, ptr %13, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  tail call void @dput(ptr noundef nonnull %0) #6
  br label %66

66:                                               ; preds = %60, %6, %4
  %67 = phi ptr [ %50, %60 ], [ null, %4 ], [ %1, %6 ]
  ret ptr %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

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
!8 = !{i64 2149016748}
!9 = !{i64 2149012572}
!10 = !{i64 2149012647, i64 2149012674, i64 2149012721, i64 2149012743, i64 2149012771, i64 2149012791}
!11 = !{i64 2149039751}
!12 = !{i64 2150982381, i64 2150982406}
!13 = !{i64 3477915}
!14 = !{i64 3478112}
!15 = !{i64 2150963391}
!16 = !{i64 2151551930, i64 2151552210, i64 2151552544, i64 2151552878}
