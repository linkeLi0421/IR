; ModuleID = '/llk/IR/fs/notify/group.c_pt.bc'
source_filename = "../fs/notify/group.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_put_group:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_put_group\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_put_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_alloc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_alloc_group\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_alloc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_alloc_user_group:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_alloc_user_group\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_alloc_user_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.70 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { %struct.inotify_group_private_data }
%struct.inotify_group_private_data = type { %struct.spinlock, %struct.idr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__kstrtab_fsnotify_put_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_put_group = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_put_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_put_group to i32), ptr @__kstrtab_fsnotify_put_group, ptr @__kstrtabns_fsnotify_put_group }, section "___ksymtab_gpl+fsnotify_put_group", align 4
@__kstrtab_fsnotify_alloc_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_alloc_group = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_alloc_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_alloc_group to i32), ptr @__kstrtab_fsnotify_alloc_group, ptr @__kstrtabns_fsnotify_alloc_group }, section "___ksymtab_gpl+fsnotify_alloc_group", align 4
@__kstrtab_fsnotify_alloc_user_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_alloc_user_group = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_alloc_user_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_alloc_user_group to i32), ptr @__kstrtab_fsnotify_alloc_user_group, ptr @__kstrtabns_fsnotify_alloc_user_group }, section "___ksymtab_gpl+fsnotify_alloc_user_group", align 4
@__fsnotify_alloc_group.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [27 x i8] c"&group->notification_waitq\00", align 1
@__fsnotify_alloc_group.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"&group->mark_mutex\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_fsnotify_alloc_group, ptr @__ksymtab_fsnotify_alloc_user_group, ptr @__ksymtab_fsnotify_put_group], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_group_stop_queueing(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %2) #5
  %3 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 8
  store i8 1, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %4 = load i16, ptr %2, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_destroy_group(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 8
  store i8 1, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %5 = load i16, ptr %3, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  tail call void @fsnotify_clear_marks_by_group(ptr noundef %0, i32 noundef -1) #5
  %7 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 10
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !12
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #5
  %11 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 4
  %12 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %2, i32 noundef 2) #5
  %13 = load volatile i32, ptr %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %15, %10
  call void @schedule() #5
  %16 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %2, i32 noundef 2) #5
  %17 = load volatile i32, ptr %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15, %10
  call void @finish_wait(ptr noundef %11, ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #5
  br label %20

20:                                               ; preds = %19, %1
  call void @fsnotify_wait_marks_destroyed() #5
  call void @fsnotify_flush_notify(ptr noundef %0) #5
  %21 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 13
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.fsnotify_ops, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  call void %27(ptr noundef %0, ptr noundef nonnull %22) #5
  br label %28

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #5, !srcloc !14
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #5, !srcloc !15
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = icmp sgt i32 %31, 0
  br i1 %34, label %43, label %35, !prof !16

35:                                               ; preds = %33
  call void @refcount_warn_saturate(ptr noundef %29, i32 noundef 3) #5
  br label %43

36:                                               ; preds = %28
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.fsnotify_ops, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  call void %39(ptr noundef %0) #5
  br label %42

42:                                               ; preds = %41, %36
  call void @kfree(ptr noundef %0) #5
  br label %43

43:                                               ; preds = %42, %35, %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_clear_marks_by_group(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_wait_marks_destroyed() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_flush_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_put_group(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #5, !srcloc !14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #5, !srcloc !15
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %16, label %8, !prof !16

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #5
  br label %16

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.fsnotify_ops, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void %12(ptr noundef %0) #5
  br label %15

15:                                               ; preds = %14, %9
  tail call void @kfree(ptr noundef %0) #5
  br label %16

16:                                               ; preds = %15, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_get_group(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #5, !srcloc !14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #5, !srcloc !18
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !19

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !16

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #5
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fsnotify_alloc_group(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 120) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 1
  store volatile i32 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 10
  store volatile i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 2
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 3
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 3, i32 1
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull @__fsnotify_alloc_group.__key) #5
  %12 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 6
  store i32 -1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @__fsnotify_alloc_group.__key.1) #5
  %14 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 11
  store volatile ptr %14, ptr %14, align 8
  %15 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 11, i32 1
  store ptr %14, ptr %15, align 4
  store ptr %0, ptr %3, align 8
  br label %16

16:                                               ; preds = %5, %1
  %17 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fsnotify_alloc_user_group(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 4197824, i32 noundef 120) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 1
  store volatile i32 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 10
  store volatile i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 2
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 3
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 3, i32 1
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull @__fsnotify_alloc_group.__key) #5
  %12 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 6
  store i32 -1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @__fsnotify_alloc_group.__key.1) #5
  %14 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 11
  store volatile ptr %14, ptr %14, align 8
  %15 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 11, i32 1
  store ptr %14, ptr %15, align 4
  store ptr %0, ptr %3, align 8
  br label %16

16:                                               ; preds = %5, %1
  %17 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsnotify_fasync(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fsnotify_group, ptr %5, i32 0, i32 12
  %7 = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %6) #5
  %8 = icmp slt i32 %7, 0
  %9 = select i1 %8, i32 -5, i32 0
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!8 = !{i64 2148939093}
!9 = !{i64 2148934917}
!10 = !{i64 2148934992, i64 2148935019, i64 2148935066, i64 2148935088, i64 2148935116, i64 2148935136}
!11 = !{i64 2148962096}
!12 = !{!"auto-init"}
!13 = !{i64 2148191746}
!14 = !{i64 587883, i64 2148077854, i64 2148077880, i64 2148077927, i64 2148077949, i64 2148077977, i64 2148077997}
!15 = !{i64 2148093881, i64 2148093913, i64 2148093942, i64 2148093976, i64 2148094007, i64 2148094030}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2149276188}
!18 = !{i64 2148091524, i64 2148091556, i64 2148091585, i64 2148091619, i64 2148091650, i64 2148091673}
!19 = !{!"branch_weights", i32 1, i32 2000}
