; ModuleID = '/llk/IR/drivers/gpu/drm/drm_vblank_work.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_vblank_work.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_vblank_work_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_vblank_work_schedule\22\09\09\09\09\09"
module asm "__kstrtabns_drm_vblank_work_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_vblank_work_cancel_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_vblank_work_cancel_sync\22\09\09\09\09\09"
module asm "__kstrtabns_drm_vblank_work_cancel_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_vblank_work_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_vblank_work_flush\22\09\09\09\09\09"
module asm "__kstrtabns_drm_vblank_work_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_vblank_work_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_vblank_work_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_vblank_work_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.drm_vblank_crtc = type { ptr, %struct.wait_queue_head, %struct.timer_list, %struct.seqlock_t, %struct.atomic64_t, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, i8, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.71, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.71 = type { i32, ptr }
%struct.drm_vblank_work = type { %struct.kthread_work, ptr, i64, i32, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }

@.str = private unnamed_addr constant [51 x i8] c"crtc %d vblank %llu already passed (current %llu)\0A\00", align 1
@__kstrtab_drm_vblank_work_schedule = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_vblank_work_schedule = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_vblank_work_schedule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_vblank_work_schedule to i32), ptr @__kstrtab_drm_vblank_work_schedule, ptr @__kstrtabns_drm_vblank_work_schedule }, section "___ksymtab+drm_vblank_work_schedule", align 4
@__kstrtab_drm_vblank_work_cancel_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_vblank_work_cancel_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_vblank_work_cancel_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_vblank_work_cancel_sync to i32), ptr @__kstrtab_drm_vblank_work_cancel_sync, ptr @__kstrtabns_drm_vblank_work_cancel_sync }, section "___ksymtab+drm_vblank_work_cancel_sync", align 4
@__kstrtab_drm_vblank_work_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_vblank_work_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_vblank_work_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_vblank_work_flush to i32), ptr @__kstrtab_drm_vblank_work_flush, ptr @__kstrtabns_drm_vblank_work_flush }, section "___ksymtab+drm_vblank_work_flush", align 4
@__kstrtab_drm_vblank_work_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_vblank_work_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_vblank_work_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_vblank_work_init to i32), ptr @__kstrtab_drm_vblank_work_init, ptr @__kstrtabns_drm_vblank_work_init }, section "___ksymtab+drm_vblank_work_init", align 4
@drm_vblank_worker_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"&vblank->work_wait_queue\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"card%d-crtc%d\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_drm_vblank_work_cancel_sync, ptr @__ksymtab_drm_vblank_work_flush, ptr @__ksymtab_drm_vblank_work_init, ptr @__ksymtab_drm_vblank_work_schedule], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_handle_vblank_works(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %0, i32 0, i32 4
  %4 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %3, ptr elementtype(i64) %3) #5, !srcloc !8
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %7 = load volatile i32, ptr %6, align 4
  store volatile i32 %7, ptr %2, align 4
  %8 = lshr i32 %7, 16
  %9 = and i32 %7, 65535
  %10 = icmp eq i32 %9, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_vblank_work.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 52, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %0, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %44, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %0, i32 0, i32 10
  %18 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %0, i32 0, i32 15
  br label %19

19:                                               ; preds = %31, %16
  %20 = phi ptr [ %24, %31 ], [ %14, %16 ]
  %21 = phi i1 [ true, %31 ], [ false, %16 ]
  br label %22

22:                                               ; preds = %29, %19
  %23 = phi ptr [ %24, %29 ], [ %20, %19 ]
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %23, i32 -12
  %26 = load i64, ptr %25, align 8
  %27 = sub i64 %4, %26
  %28 = icmp ult i64 %27, 8388609
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = icmp eq ptr %24, %13
  br i1 %30, label %41, label %22

31:                                               ; preds = %22
  %32 = getelementptr i8, ptr %23, i32 -36
  %33 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %24, ptr %34, align 4
  store volatile ptr %23, ptr %23, align 4
  store ptr %23, ptr %33, align 4
  %36 = load ptr, ptr %0, align 8
  %37 = load i32, ptr %17, align 8
  tail call void @drm_vblank_put(ptr noundef %36, i32 noundef %37) #5
  %38 = load ptr, ptr %18, align 8
  %39 = tail call zeroext i1 @kthread_queue_work(ptr noundef %38, ptr noundef %32) #5
  %40 = icmp eq ptr %24, %13
  br i1 %40, label %42, label %19

41:                                               ; preds = %29
  br i1 %21, label %42, label %44

42:                                               ; preds = %41, %31
  %43 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %0, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %43, i32 noundef 3, i32 noundef 0, ptr noundef null) #5
  br label %44

44:                                               ; preds = %42, %41, %12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_vblank_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_vblank_cancel_pending_works(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %5 = load volatile i32, ptr %4, align 4
  store volatile i32 %5, ptr %2, align 4
  %6 = lshr i32 %5, 16
  %7 = and i32 %5, 65535
  %8 = icmp eq i32 %7, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_vblank_work.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 74, 0\0A.popsection", ""() #5, !srcloc !11
  unreachable

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %0, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %0, i32 0, i32 10
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi ptr [ %12, %14 ], [ %18, %16 ]
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %18, ptr %20, align 4
  store volatile ptr %17, ptr %17, align 4
  store ptr %17, ptr %19, align 4
  %22 = load ptr, ptr %0, align 8
  %23 = load i32, ptr %15, align 8
  tail call void @drm_vblank_put(ptr noundef %22, i32 noundef %23) #5
  %24 = icmp eq ptr %18, %11
  br i1 %24, label %25, label %16

25:                                               ; preds = %16, %10
  %26 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %0, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %26, i32 noundef 3, i32 noundef 0, ptr noundef null) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_vblank_work_schedule(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 28
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #5
  %9 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %59

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %13) #5
  %14 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %5, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %17 = load i16, ptr %13, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  br i1 %16, label %19, label %59

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 4
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %5, i32 0, i32 10
  %25 = load i32, ptr %24, align 8
  %26 = tail call i32 @drm_vblank_get(ptr noundef %6, i32 noundef %25) #5
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %59, label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = icmp eq i64 %30, %1
  br i1 %31, label %59, label %32

32:                                               ; preds = %28, %23
  %33 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 2
  store i64 %1, ptr %33, align 8
  %34 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %5, i32 0, i32 10
  %35 = load i32, ptr %34, align 8
  %36 = tail call i64 @drm_vblank_count(ptr noundef %6, i32 noundef %35) #5
  %37 = sub i64 %36, %1
  %38 = icmp ult i64 %37, 8388609
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = icmp eq ptr %6, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi ptr [ %43, %41 ], [ null, %39 ]
  %46 = load i32, ptr %34, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %45, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %46, i64 noundef %1, i64 noundef %36) #5
  br i1 %2, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %34, align 8
  tail call void @drm_vblank_put(ptr noundef %6, i32 noundef %48) #5
  %49 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %5, i32 0, i32 15
  %50 = load ptr, ptr %49, align 8
  %51 = tail call zeroext i1 @kthread_queue_work(ptr noundef %50, ptr noundef %0) #5
  %52 = zext i1 %51 to i32
  br i1 %22, label %59, label %61

53:                                               ; preds = %44, %32
  br i1 %22, label %54, label %59

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %5, i32 0, i32 16
  %56 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %5, i32 0, i32 16, i32 1
  %57 = load ptr, ptr %56, align 4
  store ptr %20, ptr %56, align 4
  store ptr %55, ptr %20, align 4
  %58 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 4, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %20, ptr %57, align 4
  br label %59

59:                                               ; preds = %54, %53, %47, %28, %23, %12, %3
  %60 = phi i32 [ 1, %53 ], [ 1, %54 ], [ 0, %28 ], [ %52, %47 ], [ %26, %23 ], [ 0, %12 ], [ 0, %3 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #5
  br label %67

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 4, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %20, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %63, ptr %65, align 4
  store volatile ptr %64, ptr %63, align 4
  store volatile ptr %20, ptr %20, align 4
  store ptr %20, ptr %62, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #5
  %66 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %5, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %66, i32 noundef 3, i32 noundef 0, ptr noundef null) #5
  br label %67

67:                                               ; preds = %61, %59
  %68 = phi i32 [ %60, %59 ], [ %52, %61 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_vblank_count(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_vblank_work_cancel_sync(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, %6
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 4, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %7, ptr %11, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %10, align 4
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %3, i32 0, i32 10
  %15 = load i32, ptr %14, align 8
  tail call void @drm_vblank_put(ptr noundef %13, i32 noundef %15) #5
  br label %16

16:                                               ; preds = %9, %1
  %17 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %20 = load i16, ptr %5, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  %22 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %3, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %22, i32 noundef 3, i32 noundef 0, ptr noundef null) #5
  %23 = tail call zeroext i1 @kthread_cancel_work_sync(ptr noundef %0) #5
  %24 = select i1 %23, i1 true, i1 %8
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #5
  %25 = load i32, ptr %17, align 8
  %26 = add i32 %25, -1
  store i32 %26, ptr %17, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %27 = load i16, ptr %5, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  ret i1 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_vblank_work_flush(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #5
  %7 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 4
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !18
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #5
  %11 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %4, i32 0, i32 17
  %12 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %2, i32 noundef 2) #5
  %13 = load volatile ptr, ptr %7, align 4
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %21, label %15

15:                                               ; preds = %15, %10
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %16 = load i16, ptr %6, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  call void @schedule() #5
  call void @_raw_spin_lock_irq(ptr noundef %6) #5
  %18 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %2, i32 noundef 2) #5
  %19 = load volatile ptr, ptr %7, align 4
  %20 = icmp eq ptr %19, %7
  br i1 %20, label %21, label %15

21:                                               ; preds = %15, %10
  call void @finish_wait(ptr noundef %11, ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #5
  br label %22

22:                                               ; preds = %21, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %23 = load i16, ptr %6, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  call void @kthread_flush_work(ptr noundef %0) #5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_vblank_work_init(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #4 {
  %4 = getelementptr inbounds i8, ptr %0, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(20) %4, i8 0, i32 12, i1 false)
  store volatile ptr %0, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.kthread_work, ptr %0, i32 0, i32 1
  store ptr %2, ptr %6, align 8
  %7 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 4
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 4, i32 1
  store ptr %7, ptr %8, align 4
  %9 = load ptr, ptr %1, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 23
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr %struct.drm_vblank_crtc, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.drm_vblank_work, ptr %0, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_vblank_worker_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %0, i32 0, i32 16
  store volatile ptr %2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %0, i32 0, i32 16, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %0, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @drm_vblank_worker_init.__key) #5
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 8
  %11 = tail call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %8, i32 noundef %10) #5
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = ptrtoint ptr %11 to i32
  br label %19

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %0, i32 0, i32 15
  store ptr %11, ptr %16, align 8
  %17 = getelementptr inbounds %struct.kthread_worker, ptr %11, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void @sched_set_fifo(ptr noundef %18) #5
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi i32 [ %14, %13 ], [ 0, %15 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }

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
!8 = !{i64 719827, i64 719848}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2154953090, i64 2154953587, i64 2154953127, i64 2154953183, i64 2154953217, i64 2154953241, i64 2154953282, i64 2154953303, i64 2154953331, i64 2154953365}
!11 = !{i64 2154959538, i64 2154960035, i64 2154959575, i64 2154959631, i64 2154959665, i64 2154959689, i64 2154959730, i64 2154959751, i64 2154959779, i64 2154959813}
!12 = !{i64 2149087962}
!13 = !{i64 2149083786}
!14 = !{i64 2149083861, i64 2149083888, i64 2149083935, i64 2149083957, i64 2149083985, i64 2149084005}
!15 = !{i64 2149110965}
!16 = !{i64 636136}
!17 = !{i64 2149112106}
!18 = !{!"auto-init"}
