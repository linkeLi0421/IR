; ModuleID = '/llk/IR/drivers/dma-buf/sync_file.c_pt.bc'
source_filename = "../drivers/dma-buf/sync_file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sync_file_create:\09\09\09\09\09"
module asm "\09.asciz \09\22sync_file_create\22\09\09\09\09\09"
module asm "__kstrtabns_sync_file_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sync_file_get_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22sync_file_get_fence\22\09\09\09\09\09"
module asm "__kstrtabns_sync_file_get_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sync_file = type { ptr, [32 x i8], %struct.list_head, %struct.wait_queue_head, i32, ptr, %struct.dma_fence_cb }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.62, i64, i64, i32, %struct.kref, i32 }
%union.anon.62 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.sync_file_info = type { [32 x i8], i32, i32, i32, i32, i64 }
%struct.sync_merge_data = type { [32 x i8], i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dma_fence_array = type { %struct.dma_fence, %struct.spinlock, i32, %struct.atomic_t, ptr, %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.sync_fence_info = type { [32 x i8], [32 x i8], i32, i32, i64 }

@__kstrtab_sync_file_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_sync_file_create = external dso_local constant [0 x i8], align 1
@__ksymtab_sync_file_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sync_file_create to i32), ptr @__kstrtab_sync_file_create, ptr @__kstrtabns_sync_file_create }, section "___ksymtab+sync_file_create", align 4
@__kstrtab_sync_file_get_fence = external dso_local constant [0 x i8], align 1
@__kstrtabns_sync_file_get_fence = external dso_local constant [0 x i8], align 1
@__ksymtab_sync_file_get_fence = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sync_file_get_fence to i32), ptr @__kstrtab_sync_file_get_fence, ptr @__kstrtabns_sync_file_get_fence }, section "___ksymtab+sync_file_get_fence", align 4
@.str = private unnamed_addr constant [15 x i8] c"%s-%s%llu-%lld\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sync_file\00", align 1
@sync_file_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sync_file_poll, ptr @sync_file_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @sync_file_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sync_file_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"&sync_file->wq\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@dma_fence_array_ops = external dso_local constant %struct.dma_fence_ops, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_sync_file_create, ptr @__ksymtab_sync_file_get_fence], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sync_file_create(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 76) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @anon_inode_getfile(ptr noundef nonnull @.str.1, ptr noundef nonnull @sync_file_fops, ptr noundef nonnull %3, i32 noundef 0) #12
  store ptr %6, ptr %3, align 8
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #12
  br label %27

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sync_file, ptr %3, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef nonnull @sync_file_alloc.__key) #12
  %11 = getelementptr inbounds %struct.sync_file, ptr %3, i32 0, i32 6
  store volatile ptr %11, ptr %11, align 8
  %12 = getelementptr inbounds %struct.sync_file, ptr %3, i32 0, i32 6, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %0, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #12, !srcloc !8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #12, !srcloc !9
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !10

19:                                               ; preds = %14
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !11

23:                                               ; preds = %19, %14
  %24 = phi i32 [ 2, %14 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef %24) #12
  br label %25

25:                                               ; preds = %23, %19, %9
  %26 = getelementptr inbounds %struct.sync_file, ptr %3, i32 0, i32 5
  store ptr %0, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %8, %1
  %28 = phi ptr [ %3, %25 ], [ null, %8 ], [ null, %1 ]
  ret ptr %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sync_file_get_fence(i32 noundef %0) #0 {
  %2 = tail call ptr @fget(i32 noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @sync_file_fops
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fput(ptr noundef nonnull %2) #12
  br label %30

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sync_file, ptr %11, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dma_fence, ptr %15, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #12, !srcloc !8
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #12, !srcloc !9
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !10

22:                                               ; preds = %17
  %23 = add i32 %20, 1
  %24 = or i32 %23, %20
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %28, label %26, !prof !11

26:                                               ; preds = %22, %17
  %27 = phi i32 [ 2, %17 ], [ 1, %22 ]
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef %27) #12
  br label %28

28:                                               ; preds = %26, %22, %13
  %29 = load ptr, ptr %11, align 4
  tail call void @fput(ptr noundef %29) #12
  br label %30

30:                                               ; preds = %28, %9, %8, %1
  %31 = phi ptr [ %15, %28 ], [ null, %9 ], [ null, %8 ], [ null, %1 ]
  ret ptr %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sync_file_get_name(ptr noundef %0, ptr noundef returned %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sync_file, ptr %0, i32 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @strlcpy(ptr noundef %1, ptr noundef %4, i32 noundef %2) #12
  br label %26

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sync_file, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dma_fence_ops, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr %15(ptr noundef %11) #12
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr inbounds %struct.dma_fence_ops, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr %19(ptr noundef %11) #12
  %21 = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 3
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 4
  %24 = load i64, ptr %23, align 8
  %25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str, ptr noundef %16, ptr noundef %20, i64 noundef %22, i64 noundef %24)
  br label %26

26:                                               ; preds = %9, %7
  ret ptr %1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sync_file_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sync_file, ptr %4, i32 0, i32 3
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #12
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr inbounds %struct.sync_file, ptr %4, i32 0, i32 6
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sync_file, ptr %4, i32 0, i32 4
  %19 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %18) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sync_file, ptr %4, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @dma_fence_add_callback(ptr noundef %23, ptr noundef %14, ptr noundef nonnull @fence_check_cb_func) #12
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call void @__wake_up(ptr noundef %5, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  br label %27

27:                                               ; preds = %26, %21, %17, %13
  %28 = getelementptr inbounds %struct.sync_file, ptr %4, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dma_fence, ptr %29, i32 0, i32 5
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.dma_fence, ptr %29, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dma_fence_ops, ptr %36, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = tail call zeroext i1 %38(ptr noundef %29) #12
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = tail call i32 @dma_fence_signal(ptr noundef %29) #12
  br label %44

44:                                               ; preds = %42, %40, %34, %27
  %45 = phi i32 [ 1, %42 ], [ 1, %27 ], [ 0, %40 ], [ 0, %34 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sync_file_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.sync_file_info, align 8
  %5 = alloca %struct.sync_merge_data, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  switch i32 %1, label %599 [
    i32 -1070580221, label %8
    i32 -1070055932, label %440
  ]

8:                                                ; preds = %3
  %9 = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, i8 0, i32 48, i1 false) #12, !annotation !12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %438, label %11

11:                                               ; preds = %8
  %12 = inttoptr i32 %2 to ptr
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 48, i32 -1090519040) #13
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24, !prof !11

16:                                               ; preds = %11
  %17 = tail call ptr @llvm.thread.pointer() #12
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #14, !srcloc !13
  %20 = and i32 %19, -13
  %21 = or i32 %20, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %22 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %12, i32 noundef 48) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #12, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !11

24:                                               ; preds = %16, %11
  %25 = phi i32 [ %22, %16 ], [ 48, %11 ]
  %26 = sub i32 48, %25
  %27 = getelementptr i8, ptr %5, i32 %26
  call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %25, i1 false) #12
  br label %436

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.sync_merge_data, ptr %5, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = getelementptr inbounds %struct.sync_merge_data, ptr %5, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %31, i1 true, i1 %34
  br i1 %35, label %436, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.sync_merge_data, ptr %5, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = call ptr @fget(i32 noundef %38) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %436, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.file, ptr %39, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, @sync_file_fops
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  call void @fput(ptr noundef nonnull %39) #12
  br label %436

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.file, ptr %39, i32 0, i32 15
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %436, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds [32 x i8], ptr %5, i32 0, i32 31
  store i8 0, ptr %51, align 1
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %53 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 76) #11
  %54 = icmp eq ptr %53, null
  br i1 %54, label %433, label %55

55:                                               ; preds = %50
  %56 = call ptr @anon_inode_getfile(ptr noundef nonnull @.str.1, ptr noundef nonnull @sync_file_fops, ptr noundef nonnull %53, i32 noundef 0) #12
  store ptr %56, ptr %53, align 8
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  call void @kfree(ptr noundef nonnull %53) #12
  br label %433

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.sync_file, ptr %53, i32 0, i32 3
  call void @__init_waitqueue_head(ptr noundef %60, ptr noundef nonnull @.str.2, ptr noundef nonnull @sync_file_alloc.__key) #12
  %61 = getelementptr inbounds %struct.sync_file, ptr %53, i32 0, i32 6
  store volatile ptr %61, ptr %61, align 8
  %62 = getelementptr inbounds %struct.sync_file, ptr %53, i32 0, i32 6, i32 0, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.sync_file, ptr %7, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.dma_fence, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, @dma_fence_array_ops
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.dma_fence_array, ptr %64, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.dma_fence_array, ptr %64, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  br label %73

73:                                               ; preds = %68, %59
  %74 = phi i32 [ %70, %68 ], [ 1, %59 ]
  %75 = phi ptr [ %72, %68 ], [ %63, %59 ]
  %76 = getelementptr inbounds %struct.sync_file, ptr %48, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.dma_fence, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, @dma_fence_array_ops
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.dma_fence_array, ptr %77, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.dma_fence_array, ptr %77, i32 0, i32 4
  %85 = load ptr, ptr %84, align 4
  br label %86

86:                                               ; preds = %81, %73
  %87 = phi i32 [ %83, %81 ], [ 1, %73 ]
  %88 = phi ptr [ %85, %81 ], [ %76, %73 ]
  %89 = sub i32 2147483647, %87
  %90 = icmp sgt i32 %74, %89
  br i1 %90, label %417, label %91

91:                                               ; preds = %86
  %92 = add i32 %87, %74
  %93 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %92, i32 4) #12
  %94 = extractvalue { i32, i1 } %93, 1
  br i1 %94, label %417, label %95, !prof !10

95:                                               ; preds = %91
  %96 = extractvalue { i32, i1 } %93, 0
  %97 = call noalias align 64 ptr @__kmalloc(i32 noundef %96, i32 noundef 3520) #15
  %98 = icmp eq ptr %97, null
  br i1 %98, label %417, label %99

99:                                               ; preds = %95
  %100 = icmp sgt i32 %74, 0
  %101 = icmp sgt i32 %87, 0
  %102 = select i1 %100, i1 %101, i1 false
  br i1 %102, label %108, label %103

103:                                              ; preds = %270, %99
  %104 = phi i32 [ 0, %99 ], [ %271, %270 ]
  %105 = phi i32 [ 0, %99 ], [ %272, %270 ]
  %106 = phi i32 [ 0, %99 ], [ %273, %270 ]
  %107 = icmp slt i32 %105, %74
  br i1 %107, label %280, label %277

108:                                              ; preds = %270, %99
  %109 = phi i32 [ %273, %270 ], [ 0, %99 ]
  %110 = phi i32 [ %272, %270 ], [ 0, %99 ]
  %111 = phi i32 [ %271, %270 ], [ 0, %99 ]
  %112 = getelementptr ptr, ptr %75, i32 %110
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr ptr, ptr %88, i32 %109
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.dma_fence, ptr %113, i32 0, i32 3
  %117 = load i64, ptr %116, align 8
  %118 = getelementptr inbounds %struct.dma_fence, ptr %115, i32 0, i32 3
  %119 = load i64, ptr %118, align 8
  %120 = icmp ult i64 %117, %119
  br i1 %120, label %121, label %155

121:                                              ; preds = %108
  %122 = getelementptr ptr, ptr %97, i32 %111
  store ptr %113, ptr %122, align 4
  %123 = getelementptr inbounds %struct.dma_fence, ptr %113, i32 0, i32 5
  %124 = load volatile i32, ptr %123, align 4
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %152

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.dma_fence, ptr %113, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.dma_fence_ops, ptr %129, i32 0, i32 4
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %127
  %134 = call zeroext i1 %131(ptr noundef %113) #12
  br i1 %134, label %135, label %137

135:                                              ; preds = %133
  %136 = call i32 @dma_fence_signal(ptr noundef %113) #12
  br label %152

137:                                              ; preds = %133, %127
  %138 = icmp eq ptr %113, null
  br i1 %138, label %150, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.dma_fence, ptr %113, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %140) #12, !srcloc !8
  %141 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %140, ptr %140, i32 1, ptr elementtype(i32) %140) #12, !srcloc !9
  %142 = extractvalue { i32, i32, i32 } %141, 0
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %148, label %144, !prof !10

144:                                              ; preds = %139
  %145 = add i32 %142, 1
  %146 = or i32 %145, %142
  %147 = icmp sgt i32 %146, -1
  br i1 %147, label %150, label %148, !prof !11

148:                                              ; preds = %144, %139
  %149 = phi i32 [ 2, %139 ], [ 1, %144 ]
  call void @refcount_warn_saturate(ptr noundef %140, i32 noundef %149) #12
  br label %150

150:                                              ; preds = %148, %144, %137
  %151 = add i32 %111, 1
  br label %152

152:                                              ; preds = %150, %135, %121
  %153 = phi i32 [ %151, %150 ], [ %111, %135 ], [ %111, %121 ]
  %154 = add nsw i32 %110, 1
  br label %270

155:                                              ; preds = %108
  %156 = icmp ugt i64 %117, %119
  br i1 %156, label %157, label %191

157:                                              ; preds = %155
  %158 = getelementptr ptr, ptr %97, i32 %111
  store ptr %115, ptr %158, align 4
  %159 = getelementptr inbounds %struct.dma_fence, ptr %115, i32 0, i32 5
  %160 = load volatile i32, ptr %159, align 4
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %188

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.dma_fence, ptr %115, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.dma_fence_ops, ptr %165, i32 0, i32 4
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %173, label %169

169:                                              ; preds = %163
  %170 = call zeroext i1 %167(ptr noundef %115) #12
  br i1 %170, label %171, label %173

171:                                              ; preds = %169
  %172 = call i32 @dma_fence_signal(ptr noundef %115) #12
  br label %188

173:                                              ; preds = %169, %163
  %174 = icmp eq ptr %115, null
  br i1 %174, label %186, label %175

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.dma_fence, ptr %115, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %176) #12, !srcloc !8
  %177 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %176, ptr %176, i32 1, ptr elementtype(i32) %176) #12, !srcloc !9
  %178 = extractvalue { i32, i32, i32 } %177, 0
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180, !prof !10

180:                                              ; preds = %175
  %181 = add i32 %178, 1
  %182 = or i32 %181, %178
  %183 = icmp sgt i32 %182, -1
  br i1 %183, label %186, label %184, !prof !11

184:                                              ; preds = %180, %175
  %185 = phi i32 [ 2, %175 ], [ 1, %180 ]
  call void @refcount_warn_saturate(ptr noundef %176, i32 noundef %185) #12
  br label %186

186:                                              ; preds = %184, %180, %173
  %187 = add i32 %111, 1
  br label %188

188:                                              ; preds = %186, %171, %157
  %189 = phi i32 [ %187, %186 ], [ %111, %171 ], [ %111, %157 ]
  %190 = add nsw i32 %109, 1
  br label %270

191:                                              ; preds = %155
  %192 = getelementptr inbounds %struct.dma_fence, ptr %113, i32 0, i32 4
  %193 = load i64, ptr %192, align 8
  %194 = getelementptr inbounds %struct.dma_fence, ptr %115, i32 0, i32 4
  %195 = load i64, ptr %194, align 8
  %196 = getelementptr inbounds %struct.dma_fence, ptr %113, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = load i8, ptr %197, align 4, !range !16
  %199 = icmp eq i8 %198, 0
  %200 = icmp ugt i64 %193, %195
  %201 = trunc i64 %193 to i32
  %202 = trunc i64 %195 to i32
  %203 = sub i32 %201, %202
  %204 = icmp sgt i32 %203, 0
  %205 = select i1 %199, i1 %204, i1 %200
  %206 = getelementptr ptr, ptr %97, i32 %111
  br i1 %205, label %207, label %236

207:                                              ; preds = %191
  store ptr %113, ptr %206, align 4
  %208 = getelementptr inbounds %struct.dma_fence, ptr %113, i32 0, i32 5
  %209 = load volatile i32, ptr %208, align 4
  %210 = and i32 %209, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %266

212:                                              ; preds = %207
  %213 = load ptr, ptr %196, align 4
  %214 = getelementptr inbounds %struct.dma_fence_ops, ptr %213, i32 0, i32 4
  %215 = load ptr, ptr %214, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %221, label %217

217:                                              ; preds = %212
  %218 = call zeroext i1 %215(ptr noundef %113) #12
  br i1 %218, label %219, label %221

219:                                              ; preds = %217
  %220 = call i32 @dma_fence_signal(ptr noundef %113) #12
  br label %266

221:                                              ; preds = %217, %212
  %222 = icmp eq ptr %113, null
  br i1 %222, label %234, label %223

223:                                              ; preds = %221
  %224 = getelementptr inbounds %struct.dma_fence, ptr %113, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %224) #12, !srcloc !8
  %225 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %224, ptr %224, i32 1, ptr elementtype(i32) %224) #12, !srcloc !9
  %226 = extractvalue { i32, i32, i32 } %225, 0
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %232, label %228, !prof !10

228:                                              ; preds = %223
  %229 = add i32 %226, 1
  %230 = or i32 %229, %226
  %231 = icmp sgt i32 %230, -1
  br i1 %231, label %234, label %232, !prof !11

232:                                              ; preds = %228, %223
  %233 = phi i32 [ 2, %223 ], [ 1, %228 ]
  call void @refcount_warn_saturate(ptr noundef %224, i32 noundef %233) #12
  br label %234

234:                                              ; preds = %232, %228, %221
  %235 = add i32 %111, 1
  br label %266

236:                                              ; preds = %191
  store ptr %115, ptr %206, align 4
  %237 = getelementptr inbounds %struct.dma_fence, ptr %115, i32 0, i32 5
  %238 = load volatile i32, ptr %237, align 4
  %239 = and i32 %238, 1
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %266

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.dma_fence, ptr %115, i32 0, i32 1
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.dma_fence_ops, ptr %243, i32 0, i32 4
  %245 = load ptr, ptr %244, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %251, label %247

247:                                              ; preds = %241
  %248 = call zeroext i1 %245(ptr noundef %115) #12
  br i1 %248, label %249, label %251

249:                                              ; preds = %247
  %250 = call i32 @dma_fence_signal(ptr noundef %115) #12
  br label %266

251:                                              ; preds = %247, %241
  %252 = icmp eq ptr %115, null
  br i1 %252, label %264, label %253

253:                                              ; preds = %251
  %254 = getelementptr inbounds %struct.dma_fence, ptr %115, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %254) #12, !srcloc !8
  %255 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %254, ptr %254, i32 1, ptr elementtype(i32) %254) #12, !srcloc !9
  %256 = extractvalue { i32, i32, i32 } %255, 0
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %262, label %258, !prof !10

258:                                              ; preds = %253
  %259 = add i32 %256, 1
  %260 = or i32 %259, %256
  %261 = icmp sgt i32 %260, -1
  br i1 %261, label %264, label %262, !prof !11

262:                                              ; preds = %258, %253
  %263 = phi i32 [ 2, %253 ], [ 1, %258 ]
  call void @refcount_warn_saturate(ptr noundef %254, i32 noundef %263) #12
  br label %264

264:                                              ; preds = %262, %258, %251
  %265 = add i32 %111, 1
  br label %266

266:                                              ; preds = %264, %249, %236, %234, %219, %207
  %267 = phi i32 [ %235, %234 ], [ %111, %219 ], [ %111, %207 ], [ %265, %264 ], [ %111, %249 ], [ %111, %236 ]
  %268 = add nsw i32 %110, 1
  %269 = add nsw i32 %109, 1
  br label %270

270:                                              ; preds = %266, %188, %152
  %271 = phi i32 [ %153, %152 ], [ %189, %188 ], [ %267, %266 ]
  %272 = phi i32 [ %154, %152 ], [ %110, %188 ], [ %268, %266 ]
  %273 = phi i32 [ %109, %152 ], [ %190, %188 ], [ %269, %266 ]
  %274 = icmp slt i32 %272, %74
  %275 = icmp slt i32 %273, %87
  %276 = select i1 %274, i1 %275, i1 false
  br i1 %276, label %108, label %103

277:                                              ; preds = %315, %103
  %278 = phi i32 [ %104, %103 ], [ %316, %315 ]
  %279 = icmp slt i32 %106, %87
  br i1 %279, label %319, label %358

280:                                              ; preds = %315, %103
  %281 = phi i32 [ %317, %315 ], [ %105, %103 ]
  %282 = phi i32 [ %316, %315 ], [ %104, %103 ]
  %283 = getelementptr ptr, ptr %75, i32 %281
  %284 = load ptr, ptr %283, align 4
  %285 = getelementptr ptr, ptr %97, i32 %282
  store ptr %284, ptr %285, align 4
  %286 = getelementptr inbounds %struct.dma_fence, ptr %284, i32 0, i32 5
  %287 = load volatile i32, ptr %286, align 4
  %288 = and i32 %287, 1
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %315

290:                                              ; preds = %280
  %291 = getelementptr inbounds %struct.dma_fence, ptr %284, i32 0, i32 1
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr inbounds %struct.dma_fence_ops, ptr %292, i32 0, i32 4
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, null
  br i1 %295, label %300, label %296

296:                                              ; preds = %290
  %297 = call zeroext i1 %294(ptr noundef %284) #12
  br i1 %297, label %298, label %300

298:                                              ; preds = %296
  %299 = call i32 @dma_fence_signal(ptr noundef %284) #12
  br label %315

300:                                              ; preds = %296, %290
  %301 = icmp eq ptr %284, null
  br i1 %301, label %313, label %302

302:                                              ; preds = %300
  %303 = getelementptr inbounds %struct.dma_fence, ptr %284, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %303) #12, !srcloc !8
  %304 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %303, ptr %303, i32 1, ptr elementtype(i32) %303) #12, !srcloc !9
  %305 = extractvalue { i32, i32, i32 } %304, 0
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %311, label %307, !prof !10

307:                                              ; preds = %302
  %308 = add i32 %305, 1
  %309 = or i32 %308, %305
  %310 = icmp sgt i32 %309, -1
  br i1 %310, label %313, label %311, !prof !11

311:                                              ; preds = %307, %302
  %312 = phi i32 [ 2, %302 ], [ 1, %307 ]
  call void @refcount_warn_saturate(ptr noundef %303, i32 noundef %312) #12
  br label %313

313:                                              ; preds = %311, %307, %300
  %314 = add i32 %282, 1
  br label %315

315:                                              ; preds = %313, %298, %280
  %316 = phi i32 [ %314, %313 ], [ %282, %298 ], [ %282, %280 ]
  %317 = add i32 %281, 1
  %318 = icmp eq i32 %317, %74
  br i1 %318, label %277, label %280

319:                                              ; preds = %354, %277
  %320 = phi i32 [ %356, %354 ], [ %106, %277 ]
  %321 = phi i32 [ %355, %354 ], [ %278, %277 ]
  %322 = getelementptr ptr, ptr %88, i32 %320
  %323 = load ptr, ptr %322, align 4
  %324 = getelementptr ptr, ptr %97, i32 %321
  store ptr %323, ptr %324, align 4
  %325 = getelementptr inbounds %struct.dma_fence, ptr %323, i32 0, i32 5
  %326 = load volatile i32, ptr %325, align 4
  %327 = and i32 %326, 1
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %354

329:                                              ; preds = %319
  %330 = getelementptr inbounds %struct.dma_fence, ptr %323, i32 0, i32 1
  %331 = load ptr, ptr %330, align 4
  %332 = getelementptr inbounds %struct.dma_fence_ops, ptr %331, i32 0, i32 4
  %333 = load ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, null
  br i1 %334, label %339, label %335

335:                                              ; preds = %329
  %336 = call zeroext i1 %333(ptr noundef %323) #12
  br i1 %336, label %337, label %339

337:                                              ; preds = %335
  %338 = call i32 @dma_fence_signal(ptr noundef %323) #12
  br label %354

339:                                              ; preds = %335, %329
  %340 = icmp eq ptr %323, null
  br i1 %340, label %352, label %341

341:                                              ; preds = %339
  %342 = getelementptr inbounds %struct.dma_fence, ptr %323, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %342) #12, !srcloc !8
  %343 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %342, ptr %342, i32 1, ptr elementtype(i32) %342) #12, !srcloc !9
  %344 = extractvalue { i32, i32, i32 } %343, 0
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %350, label %346, !prof !10

346:                                              ; preds = %341
  %347 = add i32 %344, 1
  %348 = or i32 %347, %344
  %349 = icmp sgt i32 %348, -1
  br i1 %349, label %352, label %350, !prof !11

350:                                              ; preds = %346, %341
  %351 = phi i32 [ 2, %341 ], [ 1, %346 ]
  call void @refcount_warn_saturate(ptr noundef %342, i32 noundef %351) #12
  br label %352

352:                                              ; preds = %350, %346, %339
  %353 = add i32 %321, 1
  br label %354

354:                                              ; preds = %352, %337, %319
  %355 = phi i32 [ %353, %352 ], [ %321, %337 ], [ %321, %319 ]
  %356 = add i32 %320, 1
  %357 = icmp eq i32 %356, %87
  br i1 %357, label %358, label %319

358:                                              ; preds = %354, %277
  %359 = phi i32 [ %278, %277 ], [ %355, %354 ]
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %376

361:                                              ; preds = %358
  %362 = load ptr, ptr %75, align 4
  %363 = icmp eq ptr %362, null
  br i1 %363, label %375, label %364

364:                                              ; preds = %361
  %365 = getelementptr inbounds %struct.dma_fence, ptr %362, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %365) #12, !srcloc !8
  %366 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %365, ptr %365, i32 1, ptr elementtype(i32) %365) #12, !srcloc !9
  %367 = extractvalue { i32, i32, i32 } %366, 0
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %373, label %369, !prof !10

369:                                              ; preds = %364
  %370 = add i32 %367, 1
  %371 = or i32 %370, %367
  %372 = icmp sgt i32 %371, -1
  br i1 %372, label %375, label %373, !prof !11

373:                                              ; preds = %369, %364
  %374 = phi i32 [ 2, %364 ], [ 1, %369 ]
  call void @refcount_warn_saturate(ptr noundef %365, i32 noundef %374) #12
  br label %375

375:                                              ; preds = %373, %369, %361
  store ptr %362, ptr %97, align 64
  br label %376

376:                                              ; preds = %375, %358
  %377 = phi i32 [ 1, %375 ], [ %359, %358 ]
  %378 = icmp sgt i32 %92, %377
  br i1 %378, label %379, label %386

379:                                              ; preds = %376
  %380 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %377, i32 4) #12
  %381 = extractvalue { i32, i1 } %380, 1
  br i1 %381, label %398, label %382, !prof !10

382:                                              ; preds = %379
  %383 = extractvalue { i32, i1 } %380, 0
  %384 = call noalias ptr @krealloc(ptr noundef nonnull %97, i32 noundef %383, i32 noundef 3264) #16
  %385 = icmp eq ptr %384, null
  br i1 %385, label %398, label %386

386:                                              ; preds = %382, %376
  %387 = phi ptr [ %97, %376 ], [ %384, %382 ]
  %388 = icmp eq i32 %377, 1
  br i1 %388, label %389, label %392

389:                                              ; preds = %386
  %390 = load ptr, ptr %387, align 4
  %391 = getelementptr inbounds %struct.sync_file, ptr %53, i32 0, i32 5
  store ptr %390, ptr %391, align 4
  call void @kfree(ptr noundef %387) #12
  br label %420

392:                                              ; preds = %386
  %393 = call i64 @dma_fence_context_alloc(i32 noundef 1) #12
  %394 = call ptr @dma_fence_array_create(i32 noundef %377, ptr noundef %387, i64 noundef %393, i32 noundef 1, i1 noundef zeroext false) #12
  %395 = icmp eq ptr %394, null
  br i1 %395, label %398, label %396

396:                                              ; preds = %392
  %397 = getelementptr inbounds %struct.sync_file, ptr %53, i32 0, i32 5
  store ptr %394, ptr %397, align 4
  br label %420

398:                                              ; preds = %392, %382, %379
  %399 = phi ptr [ %97, %382 ], [ %387, %392 ], [ %97, %379 ]
  br label %400

400:                                              ; preds = %415, %398
  %401 = phi i32 [ %402, %415 ], [ %377, %398 ]
  %402 = add i32 %401, -1
  %403 = getelementptr ptr, ptr %399, i32 %402
  %404 = load ptr, ptr %403, align 4
  %405 = icmp eq ptr %404, null
  br i1 %405, label %415, label %406

406:                                              ; preds = %400
  %407 = getelementptr inbounds %struct.dma_fence, ptr %404, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %407) #12, !srcloc !8
  %408 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %407, ptr %407, i32 1, ptr elementtype(i32) %407) #12, !srcloc !18
  %409 = extractvalue { i32, i32, i32 } %408, 0
  %410 = icmp eq i32 %409, 1
  br i1 %410, label %414, label %411

411:                                              ; preds = %406
  %412 = icmp sgt i32 %409, 0
  br i1 %412, label %415, label %413, !prof !11

413:                                              ; preds = %411
  call void @refcount_warn_saturate(ptr noundef %407, i32 noundef 3) #12
  br label %415

414:                                              ; preds = %406
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  call void @dma_fence_release(ptr noundef %407) #12
  br label %415

415:                                              ; preds = %414, %413, %411, %400
  %416 = icmp eq i32 %402, 0
  br i1 %416, label %417, label %400

417:                                              ; preds = %415, %95, %91, %86
  %418 = phi ptr [ null, %86 ], [ null, %95 ], [ null, %91 ], [ %399, %415 ]
  call void @kfree(ptr noundef %418) #12
  %419 = load ptr, ptr %53, align 8
  call void @fput(ptr noundef %419) #12
  br label %433

420:                                              ; preds = %396, %389
  %421 = getelementptr inbounds %struct.sync_file, ptr %53, i32 0, i32 1
  %422 = call i32 @strlcpy(ptr noundef %421, ptr noundef nonnull %5, i32 noundef 32) #12
  %423 = getelementptr inbounds %struct.sync_merge_data, ptr %5, i32 0, i32 2
  store i32 %9, ptr %423, align 4
  %424 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #14, !srcloc !13
  %425 = and i32 %424, -13
  %426 = or i32 %425, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %426) #12, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %427 = call i32 @arm_copy_to_user(ptr noundef %12, ptr noundef nonnull %5, i32 noundef 48) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %424) #12, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %428 = icmp eq i32 %427, 0
  %429 = load ptr, ptr %53, align 8
  br i1 %428, label %431, label %430

430:                                              ; preds = %420
  call void @fput(ptr noundef %429) #12
  br label %433

431:                                              ; preds = %420
  call void @fd_install(i32 noundef %9, ptr noundef %429) #12
  %432 = load ptr, ptr %48, align 4
  call void @fput(ptr noundef %432) #12
  br label %438

433:                                              ; preds = %430, %417, %58, %50
  %434 = phi i32 [ -14, %430 ], [ -12, %417 ], [ -12, %58 ], [ -12, %50 ]
  %435 = load ptr, ptr %48, align 4
  call void @fput(ptr noundef %435) #12
  br label %436

436:                                              ; preds = %433, %46, %45, %36, %28, %24
  %437 = phi i32 [ %434, %433 ], [ -22, %28 ], [ -2, %46 ], [ -14, %24 ], [ -2, %45 ], [ -2, %36 ]
  call void @put_unused_fd(i32 noundef %9) #12
  br label %438

438:                                              ; preds = %436, %431, %8
  %439 = phi i32 [ %437, %436 ], [ 0, %431 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #12
  br label %599

440:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false) #12, !annotation !12
  %441 = inttoptr i32 %2 to ptr
  %442 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %441, i32 56, i32 -1090519040) #13
  %443 = extractvalue { i32, i32 } %442, 0
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %453, !prof !11

445:                                              ; preds = %440
  %446 = tail call ptr @llvm.thread.pointer() #12
  %447 = getelementptr inbounds %struct.thread_info, ptr %446, i32 0, i32 3
  %448 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %447) #14, !srcloc !13
  %449 = and i32 %448, -13
  %450 = or i32 %449, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %450) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %451 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %441, i32 noundef 56) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %448) #12, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %457, label %453, !prof !11

453:                                              ; preds = %445, %440
  %454 = phi i32 [ %451, %445 ], [ 56, %440 ]
  %455 = sub i32 56, %454
  %456 = getelementptr i8, ptr %4, i32 %455
  call void @llvm.memset.p0.i32(ptr align 1 %456, i8 0, i32 %454, i1 false) #12
  br label %597

457:                                              ; preds = %445
  %458 = getelementptr inbounds %struct.sync_file_info, ptr %4, i32 0, i32 2
  %459 = load i32, ptr %458, align 4
  %460 = icmp ne i32 %459, 0
  %461 = getelementptr inbounds %struct.sync_file_info, ptr %4, i32 0, i32 4
  %462 = load i32, ptr %461, align 4
  %463 = icmp ne i32 %462, 0
  %464 = select i1 %460, i1 true, i1 %463
  br i1 %464, label %597, label %465

465:                                              ; preds = %457
  %466 = getelementptr inbounds %struct.sync_file, ptr %7, i32 0, i32 5
  %467 = load ptr, ptr %466, align 4
  %468 = getelementptr inbounds %struct.dma_fence, ptr %467, i32 0, i32 1
  %469 = load ptr, ptr %468, align 4
  %470 = icmp eq ptr %469, @dma_fence_array_ops
  br i1 %470, label %471, label %476

471:                                              ; preds = %465
  %472 = getelementptr inbounds %struct.dma_fence_array, ptr %467, i32 0, i32 2
  %473 = load i32, ptr %472, align 4
  %474 = getelementptr inbounds %struct.dma_fence_array, ptr %467, i32 0, i32 4
  %475 = load ptr, ptr %474, align 4
  br label %476

476:                                              ; preds = %471, %465
  %477 = phi i32 [ %473, %471 ], [ 1, %465 ]
  %478 = phi ptr [ %475, %471 ], [ %466, %465 ]
  %479 = getelementptr inbounds %struct.sync_file_info, ptr %4, i32 0, i32 3
  %480 = load i32, ptr %479, align 8
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %485

482:                                              ; preds = %476
  %483 = call i32 @dma_fence_get_status(ptr noundef %467) #12
  %484 = getelementptr inbounds %struct.sync_file_info, ptr %4, i32 0, i32 1
  store i32 %483, ptr %484, align 8
  br label %564

485:                                              ; preds = %476
  %486 = getelementptr inbounds %struct.sync_file_info, ptr %4, i32 0, i32 1
  store i32 1, ptr %486, align 8
  %487 = icmp ult i32 %480, %477
  br i1 %487, label %597, label %488

488:                                              ; preds = %485
  %489 = mul i32 %477, 80
  %490 = call noalias align 64 ptr @__kmalloc(i32 noundef %489, i32 noundef 3520) #15
  %491 = icmp eq ptr %490, null
  br i1 %491, label %597, label %492

492:                                              ; preds = %488
  %493 = icmp sgt i32 %477, 0
  br i1 %493, label %494, label %541

494:                                              ; preds = %532, %492
  %495 = phi i32 [ %539, %532 ], [ 0, %492 ]
  %496 = getelementptr ptr, ptr %478, i32 %495
  %497 = load ptr, ptr %496, align 4
  %498 = getelementptr %struct.sync_fence_info, ptr %490, i32 %495
  %499 = getelementptr inbounds %struct.dma_fence, ptr %497, i32 0, i32 1
  %500 = load ptr, ptr %499, align 4
  %501 = getelementptr inbounds %struct.dma_fence_ops, ptr %500, i32 0, i32 2
  %502 = load ptr, ptr %501, align 4
  %503 = call ptr %502(ptr noundef %497) #12
  %504 = call i32 @strlcpy(ptr noundef %498, ptr noundef %503, i32 noundef 32) #12
  %505 = getelementptr %struct.sync_fence_info, ptr %490, i32 %495, i32 1
  %506 = load ptr, ptr %499, align 4
  %507 = getelementptr inbounds %struct.dma_fence_ops, ptr %506, i32 0, i32 1
  %508 = load ptr, ptr %507, align 4
  %509 = call ptr %508(ptr noundef %497) #12
  %510 = call i32 @strlcpy(ptr noundef %505, ptr noundef %509, i32 noundef 32) #12
  %511 = call i32 @dma_fence_get_status(ptr noundef %497) #12
  %512 = getelementptr %struct.sync_fence_info, ptr %490, i32 %495, i32 2
  store i32 %511, ptr %512, align 16
  %513 = getelementptr inbounds %struct.dma_fence, ptr %497, i32 0, i32 5
  %514 = load volatile i32, ptr %513, align 4
  %515 = and i32 %514, 1
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %525, label %517

517:                                              ; preds = %521, %494
  %518 = load volatile i32, ptr %513, align 4
  %519 = and i32 %518, 2
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %525

521:                                              ; preds = %517
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !20
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !21
  %522 = load volatile i32, ptr %513, align 4
  %523 = and i32 %522, 1
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %517

525:                                              ; preds = %521, %517, %494
  %526 = load volatile i32, ptr %513, align 4
  %527 = and i32 %526, 2
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %532, label %529

529:                                              ; preds = %525
  %530 = getelementptr inbounds %struct.dma_fence, ptr %497, i32 0, i32 2
  %531 = load i64, ptr %530, align 8
  br label %532

532:                                              ; preds = %529, %525
  %533 = phi i64 [ %531, %529 ], [ 0, %525 ]
  %534 = getelementptr %struct.sync_fence_info, ptr %490, i32 %495, i32 4
  store i64 %533, ptr %534, align 8
  %535 = load i32, ptr %512, align 16
  %536 = load i32, ptr %486, align 8
  %537 = icmp slt i32 %536, 1
  %538 = select i1 %537, i32 %536, i32 %535
  store i32 %538, ptr %486, align 8
  %539 = add nuw nsw i32 %495, 1
  %540 = icmp eq i32 %539, %477
  br i1 %540, label %541, label %494

541:                                              ; preds = %532, %492
  %542 = getelementptr inbounds %struct.sync_file_info, ptr %4, i32 0, i32 5
  %543 = load i64, ptr %542, align 8
  %544 = trunc i64 %543 to i32
  %545 = inttoptr i32 %544 to ptr
  %546 = icmp slt i32 %489, 0
  %547 = load i1, ptr @check_copy_size.__already_done, align 1
  %548 = xor i1 %547, true
  %549 = select i1 %546, i1 %548, i1 false
  br i1 %549, label %550, label %551, !prof !10

550:                                              ; preds = %541
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %551

551:                                              ; preds = %550, %541
  br i1 %546, label %594, label %552, !prof !10

552:                                              ; preds = %551
  %553 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %545, i32 %489, i32 -1090519040) #13, !srcloc !22
  %554 = extractvalue { i32, i32 } %553, 0
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %561

556:                                              ; preds = %552
  %557 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %447) #14, !srcloc !13
  %558 = and i32 %557, -13
  %559 = or i32 %558, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %559) #12, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %560 = call i32 @arm_copy_to_user(ptr noundef %545, ptr noundef nonnull %490, i32 noundef %489) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %557) #12, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  br label %561

561:                                              ; preds = %556, %552
  %562 = phi i32 [ %560, %556 ], [ %489, %552 ]
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %564, label %594

564:                                              ; preds = %561, %482
  %565 = phi ptr [ %490, %561 ], [ null, %482 ]
  %566 = getelementptr inbounds %struct.sync_file, ptr %7, i32 0, i32 1
  %567 = load i8, ptr %566, align 4
  %568 = icmp eq i8 %567, 0
  br i1 %568, label %571, label %569

569:                                              ; preds = %564
  %570 = call i32 @strlcpy(ptr noundef nonnull %4, ptr noundef %566, i32 noundef 32) #12
  br label %587

571:                                              ; preds = %564
  %572 = load ptr, ptr %466, align 4
  %573 = getelementptr inbounds %struct.dma_fence, ptr %572, i32 0, i32 1
  %574 = load ptr, ptr %573, align 4
  %575 = getelementptr inbounds %struct.dma_fence_ops, ptr %574, i32 0, i32 1
  %576 = load ptr, ptr %575, align 4
  %577 = call ptr %576(ptr noundef %572) #12
  %578 = load ptr, ptr %573, align 4
  %579 = getelementptr inbounds %struct.dma_fence_ops, ptr %578, i32 0, i32 2
  %580 = load ptr, ptr %579, align 4
  %581 = call ptr %580(ptr noundef %572) #12
  %582 = getelementptr inbounds %struct.dma_fence, ptr %572, i32 0, i32 3
  %583 = load i64, ptr %582, align 8
  %584 = getelementptr inbounds %struct.dma_fence, ptr %572, i32 0, i32 4
  %585 = load i64, ptr %584, align 8
  %586 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %577, ptr noundef %581, i64 noundef %583, i64 noundef %585) #12
  br label %587

587:                                              ; preds = %571, %569
  store i32 %477, ptr %479, align 8
  %588 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %447) #14, !srcloc !13
  %589 = and i32 %588, -13
  %590 = or i32 %589, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %590) #12, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %591 = call i32 @arm_copy_to_user(ptr noundef %441, ptr noundef nonnull %4, i32 noundef 56) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %588) #12, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %592 = icmp eq i32 %591, 0
  %593 = select i1 %592, i32 0, i32 -14
  br label %594

594:                                              ; preds = %587, %561, %551
  %595 = phi i32 [ -14, %561 ], [ -14, %551 ], [ %593, %587 ]
  %596 = phi ptr [ %490, %561 ], [ %490, %551 ], [ %565, %587 ]
  call void @kfree(ptr noundef %596) #12
  br label %597

597:                                              ; preds = %594, %488, %485, %457, %453
  %598 = phi i32 [ %595, %594 ], [ -22, %457 ], [ -22, %485 ], [ -12, %488 ], [ -14, %453 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #12
  br label %599

599:                                              ; preds = %597, %438, %3
  %600 = phi i32 [ %598, %597 ], [ %439, %438 ], [ -25, %3 ]
  ret i32 %600
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sync_file_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sync_file, ptr %4, i32 0, i32 4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sync_file, ptr %4, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sync_file, ptr %4, i32 0, i32 6
  %13 = tail call zeroext i1 @dma_fence_remove_callback(ptr noundef %11, ptr noundef %12) #12
  br label %14

14:                                               ; preds = %9, %2
  %15 = getelementptr inbounds %struct.sync_file, ptr %4, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dma_fence, ptr %16, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #12, !srcloc !8
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #12, !srcloc !18
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = icmp sgt i32 %21, 0
  br i1 %24, label %27, label %25, !prof !11

25:                                               ; preds = %23
  tail call void @refcount_warn_saturate(ptr noundef %19, i32 noundef 3) #12
  br label %27

26:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  tail call void @dma_fence_release(ptr noundef %19) #12
  br label %27

27:                                               ; preds = %26, %25, %23, %14
  tail call void @kfree(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fence_check_cb_func(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -20
  tail call void @__wake_up(ptr noundef %3, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_fence_array_create(i32 noundef, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_get_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_remove_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(1) }

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
!8 = !{i64 842606, i64 2148332577, i64 2148332603, i64 2148332650, i64 2148332672, i64 2148332700, i64 2148332720}
!9 = !{i64 2148345450, i64 2148345482, i64 2148345511, i64 2148345545, i64 2148345576, i64 2148345599}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"auto-init"}
!13 = !{i64 3470839}
!14 = !{i64 3471036}
!15 = !{i64 2150956315}
!16 = !{i8 0, i8 2}
!17 = !{i64 2148445672}
!18 = !{i64 2148347807, i64 2148347839, i64 2148347868, i64 2148347902, i64 2148347933, i64 2148347956}
!19 = !{i64 2149769648}
!20 = !{i64 2152035410}
!21 = !{i64 2152035252}
!22 = !{i64 2150975305, i64 2150975330}
