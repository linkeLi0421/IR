; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gk104_fifo_func = type { %struct.anon.133, ptr, %struct.anon.134, ptr, %struct.gk104_fifo_user_user, %struct.gk104_fifo_chan_user, i8 }
%struct.anon.133 = type { ptr }
%struct.anon.134 = type { ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo_user_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gk104_fifo_chan_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }
%struct.gk104_fifo_pbdma_func = type { ptr, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.gk104_fifo_runlist_func = type { i8, ptr, ptr, ptr }
%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo = type { ptr, %struct.nvkm_fifo, %struct.anon.135, i32, [16 x %struct.anon.136], i32, [16 x %struct.anon.137], i32, %struct.anon.138 }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.74 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.74 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.135 = type { %struct.work_struct, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.136 = type { ptr, i32, i32 }
%struct.anon.137 = type { [2 x ptr], i32, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.138 = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.126, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.126 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fault_data = type { i64, i64, i64, i8, i8, i8, i8, i8, i8, i8 }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.gk104_fifo_engine_status = type { i8, i8, i8, i8, i8, %struct.anon.139, %struct.anon.139, ptr }
%struct.anon.139 = type { i8, i32 }
%struct.gk104_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, i32, ptr, %struct.list_head, i8, ptr, [16 x %struct.gk104_fifo_engn] }
%struct.gk104_fifo_engn = type { ptr, ptr }

@tu102_fifo = internal constant %struct.gk104_fifo_func { %struct.anon.133 zeroinitializer, ptr @tu102_fifo_pbdma, %struct.anon.134 { ptr @gv100_fifo_fault_access, ptr @tu102_fifo_fault_engine, ptr @gv100_fifo_fault_reason, ptr @gv100_fifo_fault_hubclient, ptr @gv100_fifo_fault_gpcclient }, ptr @tu102_fifo_runlist, %struct.gk104_fifo_user_user { %struct.nvkm_sclass { i32 -1, i32 -1, i32 50017, ptr null, ptr null }, ptr @tu102_fifo_user_new }, %struct.gk104_fifo_chan_user { %struct.nvkm_sclass { i32 0, i32 0, i32 50287, ptr null, ptr null }, ptr @tu102_fifo_gpfifo_new }, i8 1 }, align 4
@tu102_fifo_ = internal constant %struct.nvkm_fifo_func { ptr @gk104_fifo_dtor, ptr @gk104_fifo_oneinit, ptr @gk104_fifo_info, ptr @gk104_fifo_init, ptr @gk104_fifo_fini, ptr @tu102_fifo_intr, ptr @tu102_fifo_fault, ptr @gk104_fifo_engine_id, ptr @gk104_fifo_id_engine, ptr null, ptr null, ptr @gk104_fifo_uevent_init, ptr @gk104_fifo_uevent_fini, ptr @tu102_fifo_recover_chan, ptr @gk104_fifo_class_get, ptr @gk104_fifo_class_new, [0 x ptr] zeroinitializer }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@tu102_fifo_pbdma = internal constant %struct.gk104_fifo_pbdma_func { ptr @gm200_fifo_pbdma_nr, ptr @tu102_fifo_pbdma_init, ptr @gk208_fifo_pbdma_init_timeout }, align 4
@gv100_fifo_fault_access = external dso_local constant [0 x %struct.nvkm_enum], align 4
@tu102_fifo_fault_engine = internal constant [24 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 1, ptr @.str, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.1, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.2, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.3, ptr null, i32 34, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.4, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 31, ptr @.str.5, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 32, ptr @.str.6, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 33, ptr @.str.7, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 34, ptr @.str.8, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 35, ptr @.str.9, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 36, ptr @.str.10, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 37, ptr @.str.11, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 38, ptr @.str.12, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 39, ptr @.str.13, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 40, ptr @.str.14, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 41, ptr @.str.15, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 42, ptr @.str.16, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 43, ptr @.str.17, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 44, ptr @.str.18, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 45, ptr @.str.19, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 46, ptr @.str.20, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 128, ptr @.str.21, ptr null, i32 16, i32 0 }, %struct.nvkm_enum { i32 192, ptr @.str.22, ptr null, i32 12, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@gv100_fifo_fault_reason = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gv100_fifo_fault_hubclient = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gv100_fifo_fault_gpcclient = external dso_local constant [0 x %struct.nvkm_enum], align 4
@tu102_fifo_runlist = internal constant %struct.gk104_fifo_runlist_func { i8 16, ptr @gv100_fifo_runlist_cgrp, ptr @gv100_fifo_runlist_chan, ptr @tu102_fifo_runlist_commit }, align 4
@.str = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PTP\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"PWR_PMU\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"IFB\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"PERF\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"PHYSICAL\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"HOST0\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"HOST1\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"HOST2\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"HOST3\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"HOST4\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"HOST5\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"HOST6\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"HOST7\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"HOST8\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"HOST9\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"HOST10\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"HOST11\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"HOST12\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"HOST13\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"HOST14\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"BAR1\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"BAR2\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"%s: INTR %08x\0A\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"%s: engine %d: scheduled for recovery\0A\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"%s: runlist %d: scheduled for recovery\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.27 = private unnamed_addr constant [22 x i8] c"%s: SCHED_ERROR %02x\0A\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"GPC%d/\00", align 1
@nvkm_engine = external dso_local constant %struct.nvkm_subdev_func, align 4
@.str.30 = private unnamed_addr constant [112 x i8] c"%s: fault %02x [%s] at %016llx engine %02x [%s] client %02x [%s%s] reason %02x [%s] on channel %d [%010llx %s]\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"%s: channel %d: killed\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tu102_fifo_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1744) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  store ptr @tu102_fifo, ptr %6, align 8
  %9 = getelementptr inbounds %struct.gk104_fifo, ptr %6, i32 0, i32 2
  store i32 -32, ptr %9, align 4
  %10 = getelementptr inbounds %struct.gk104_fifo, ptr %6, i32 0, i32 2, i32 0, i32 1
  store volatile ptr %10, ptr %10, align 8
  %11 = getelementptr inbounds %struct.gk104_fifo, ptr %6, i32 0, i32 2, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.gk104_fifo, ptr %6, i32 0, i32 2, i32 0, i32 2
  store ptr @tu102_fifo_recover_work, ptr %12, align 8
  %13 = getelementptr inbounds %struct.gk104_fifo, ptr %6, i32 0, i32 1
  store ptr %13, ptr %3, align 4
  %14 = tail call i32 @nvkm_fifo_ctor(ptr noundef nonnull @tu102_fifo_, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 4096, ptr noundef %13) #9
  br label %15

15:                                               ; preds = %8, %4
  %16 = phi i32 [ %14, %8 ], [ -12, %4 ]
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_fifo_recover_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -740
  %3 = getelementptr i8, ptr %0, i32 -724
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -120
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.anon.135, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.anon.135, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  store i32 0, ptr %9, align 4
  store i32 0, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 9776
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %15 = or i32 %14, %8
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr i8, ptr %16, i32 9776
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #9, !srcloc !11
  %18 = icmp eq i32 %10, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = tail call i32 @llvm.cttz.i32(i32 %10, i1 true) #9, !range !12
  %21 = getelementptr i8, ptr %0, i32 28
  br label %24

22:                                               ; preds = %36, %1
  %23 = icmp eq i32 %8, 0
  br i1 %23, label %49, label %42

24:                                               ; preds = %36, %19
  %25 = phi i32 [ %20, %19 ], [ %40, %36 ]
  %26 = phi i32 [ %10, %19 ], [ %39, %36 ]
  %27 = getelementptr [16 x %struct.anon.136], ptr %21, i32 0, i32 %25
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.nvkm_engine, ptr %28, i32 0, i32 1
  %32 = tail call i32 @nvkm_subdev_fini(ptr noundef %31, i1 noundef zeroext false) #9
  %33 = tail call i32 @nvkm_subdev_init(ptr noundef %31) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !13

35:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 140, i32 noundef 9, ptr noundef null) #9
  br label %36

36:                                               ; preds = %35, %30, %24
  %37 = shl nuw i32 1, %25
  %38 = xor i32 %37, -1
  %39 = and i32 %26, %38
  %40 = tail call i32 @llvm.cttz.i32(i32 %39, i1 false) #9, !range !12
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %22, label %24

42:                                               ; preds = %42, %22
  %43 = phi i32 [ %47, %42 ], [ %8, %22 ]
  %44 = tail call i32 @llvm.cttz.i32(i32 %43, i1 true) #9, !range !12
  tail call void @gk104_fifo_runlist_update(ptr noundef %2, i32 noundef %44) #9
  %45 = shl nuw i32 1, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %43, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %42

49:                                               ; preds = %42, %22
  %50 = xor i32 %8, -1
  %51 = load ptr, ptr %11, align 4
  %52 = getelementptr i8, ptr %51, i32 9776
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %54 = and i32 %53, %50
  %55 = load ptr, ptr %11, align 4
  %56 = getelementptr i8, ptr %55, i32 9776
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #9, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_fifo_user_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_fifo_gpfifo_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_fifo_pbdma_nr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_fifo_pbdma_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = shl nsw i32 -1, %5
  %7 = xor i32 %6, -1
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 11948032
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %12 = and i32 %11, 2147479552
  %13 = or i32 %12, %7
  %14 = or i32 %13, -2147483648
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr i8, ptr %15, i32 11948032
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #9, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk208_fifo_pbdma_init_timeout(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_fifo_runlist_cgrp(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_fifo_runlist_chan(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_fifo_runlist_commit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i64 %9(ptr noundef %2) #9
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = shl i32 %1, 4
  %15 = add i32 %14, 11008
  %16 = getelementptr i8, ptr %13, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %11) #9, !srcloc !11
  %17 = lshr i64 %10, 32
  %18 = trunc i64 %17 to i32
  %19 = load ptr, ptr %12, align 4
  %20 = add i32 %14, 11012
  %21 = getelementptr i8, ptr %19, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #9, !srcloc !11
  %22 = load ptr, ptr %12, align 4
  %23 = add i32 %14, 11016
  %24 = getelementptr i8, ptr %22, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %3) #9, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_runlist_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gk104_fifo_dtor(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_oneinit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_info(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_fini(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_fifo_intr(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = getelementptr %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8512
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 8448
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %13 = and i32 %12, %9
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  tail call void @gk104_fifo_intr_bind(ptr noundef %3) #9
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr i8, ptr %17, i32 8448
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 1) #9, !srcloc !11
  %19 = and i32 %13, -2
  br label %20

20:                                               ; preds = %16, %1
  %21 = phi i32 [ %19, %16 ], [ %13, %1 ]
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %26 = getelementptr i8, ptr %0, i32 616
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #9
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 10800
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  store i32 %31, ptr %2, align 4
  %32 = load ptr, ptr %28, align 4
  %33 = getelementptr i8, ptr %32, i32 10800
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #9, !srcloc !11
  %34 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #9
  %35 = icmp ult i32 %34, 32
  br i1 %35, label %36, label %41

36:                                               ; preds = %36, %24
  %37 = phi i32 [ %39, %36 ], [ %34, %24 ]
  call fastcc void @tu102_fifo_recover_engn(ptr noundef %3, i32 noundef %37) #9
  %38 = add nuw nsw i32 %37, 1
  %39 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %38) #9
  %40 = icmp ult i32 %39, 32
  br i1 %40, label %36, label %41

41:                                               ; preds = %36, %24
  call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %42 = and i32 %21, -3
  br label %43

43:                                               ; preds = %41, %20
  %44 = phi i32 [ %42, %41 ], [ %21, %20 ]
  %45 = and i32 %44, 256
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 11
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 9548
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %53 = getelementptr i8, ptr %0, i32 40
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %47
  %57 = and i32 %52, 255
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr inbounds %struct.nvkm_device, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr i8, ptr %0, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.27, ptr noundef %61, i32 noundef %57) #10
  br label %62

62:                                               ; preds = %56, %47
  %63 = load ptr, ptr %6, align 4
  %64 = getelementptr i8, ptr %63, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 256) #9, !srcloc !11
  %65 = and i32 %44, -257
  br label %66

66:                                               ; preds = %62, %43
  %67 = phi i32 [ %65, %62 ], [ %44, %43 ]
  %68 = and i32 %67, 65536
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  call void @gk104_fifo_intr_chsw(ptr noundef %3) #9
  %71 = load ptr, ptr %6, align 4
  %72 = getelementptr i8, ptr %71, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 65536) #9, !srcloc !11
  %73 = and i32 %67, -65537
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i32 [ %73, %70 ], [ %67, %66 ]
  %76 = and i32 %75, 536870912
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %6, align 4
  %80 = getelementptr i8, ptr %79, i32 9632
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %83, %78
  %84 = phi i32 [ %90, %83 ], [ %81, %78 ]
  %85 = call i32 @llvm.cttz.i32(i32 %84, i1 true) #9, !range !12
  call void @gk104_fifo_intr_pbdma_0(ptr noundef %3, i32 noundef %85) #9
  call void @gk104_fifo_intr_pbdma_1(ptr noundef %3, i32 noundef %85) #9
  %86 = shl nuw i32 1, %85
  %87 = load ptr, ptr %6, align 4
  %88 = getelementptr i8, ptr %87, i32 9632
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #9, !srcloc !11
  %89 = xor i32 %86, -1
  %90 = and i32 %84, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %83

92:                                               ; preds = %83, %78
  %93 = and i32 %75, -536870913
  br label %94

94:                                               ; preds = %92, %74
  %95 = phi i32 [ %93, %92 ], [ %75, %74 ]
  %96 = and i32 %95, 1073741824
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  call void @gk104_fifo_intr_runlist(ptr noundef %3) #9
  %99 = and i32 %95, -1073741825
  br label %100

100:                                              ; preds = %98, %94
  %101 = phi i32 [ %99, %98 ], [ %95, %94 ]
  %102 = icmp sgt i32 %101, -1
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %6, align 4
  %105 = getelementptr i8, ptr %104, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 -2147483648) #9, !srcloc !11
  call void @gk104_fifo_intr_engine(ptr noundef %3) #9
  %106 = and i32 %101, 2147483647
  br label %107

107:                                              ; preds = %103, %100
  %108 = phi i32 [ %106, %103 ], [ %101, %100 ]
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %129, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %4, align 4
  %116 = getelementptr inbounds %struct.nvkm_device, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.24, ptr noundef %118, i32 noundef %108) #10
  br label %119

119:                                              ; preds = %114, %110
  %120 = load ptr, ptr %6, align 4
  %121 = getelementptr i8, ptr %120, i32 8512
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %123 = xor i32 %108, -1
  %124 = and i32 %122, %123
  %125 = load ptr, ptr %6, align 4
  %126 = getelementptr i8, ptr %125, i32 8512
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #9, !srcloc !11
  %127 = load ptr, ptr %6, align 4
  %128 = getelementptr i8, ptr %127, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %108) #9, !srcloc !11
  br label %129

129:                                              ; preds = %119, %107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_fifo_fault(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [8 x i8], align 8
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 792876360, ptr %3, align 8
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.gk104_fifo_func, ptr %7, i32 0, i32 2, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 9
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = tail call ptr @nvkm_enum_find(ptr noundef %9, i32 noundef %12) #9
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.gk104_fifo_func, ptr %14, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 3
  %18 = load i8, ptr %17, align 8
  %19 = zext i8 %18 to i32
  %20 = tail call ptr @nvkm_enum_find(ptr noundef %16, i32 noundef %19) #9
  %21 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  %24 = load ptr, ptr %4, align 4
  br i1 %23, label %32, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.gk104_fifo_func, ptr %24, i32 0, i32 2, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 8
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = tail call ptr @nvkm_enum_find(ptr noundef %27, i32 noundef %30) #9
  br label %43

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.gk104_fifo_func, ptr %24, i32 0, i32 2, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 8
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = tail call ptr @nvkm_enum_find(ptr noundef %34, i32 noundef %37) #9
  %39 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 5
  %40 = load i8, ptr %39, align 2
  %41 = zext i8 %40 to i32
  %42 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull @.str.29, i32 noundef %41)
  br label %43

43:                                               ; preds = %32, %25
  %44 = phi ptr [ %31, %25 ], [ %38, %32 ]
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr inbounds %struct.gk104_fifo_func, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 7
  %49 = load i8, ptr %48, align 4
  %50 = zext i8 %49 to i32
  %51 = tail call ptr @nvkm_enum_find(ptr noundef %47, i32 noundef %50) #9
  %52 = icmp eq ptr %20, null
  br i1 %52, label %67, label %53

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.nvkm_enum, ptr %20, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  switch i32 %55, label %65 [
    i32 0, label %78
    i32 16, label %56
    i32 12, label %57
    i32 34, label %58
  ]

56:                                               ; preds = %53
  tail call void @nvkm_bar_bar1_reset(ptr noundef %6) #9
  br label %78

57:                                               ; preds = %53
  tail call void @nvkm_bar_bar2_reset(ptr noundef %6) #9
  br label %78

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 5912
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %63 = load ptr, ptr %59, align 4
  %64 = getelementptr i8, ptr %63, i32 5912
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #9, !srcloc !11
  br label %78

65:                                               ; preds = %53
  %66 = tail call ptr @nvkm_device_engine(ptr noundef %6, i32 noundef %55, i32 noundef 0) #9
  br label %78

67:                                               ; preds = %43
  %68 = load i8, ptr %17, align 8
  %69 = zext i8 %68 to i32
  %70 = tail call ptr @nvkm_top_fault(ptr noundef %6, i32 noundef %69) #9
  %71 = icmp eq ptr %70, null
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr %70, align 4
  %74 = icmp eq ptr %73, @nvkm_engine
  %75 = getelementptr i8, ptr %70, i32 -4
  %76 = select i1 %74, ptr %75, ptr null
  %77 = getelementptr inbounds %struct.nvkm_engine, ptr %76, i32 0, i32 1, i32 4
  br label %82

78:                                               ; preds = %65, %58, %57, %56, %53
  %79 = phi ptr [ null, %53 ], [ null, %56 ], [ null, %57 ], [ null, %58 ], [ %66, %65 ]
  %80 = getelementptr inbounds %struct.nvkm_enum, ptr %20, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  br label %82

82:                                               ; preds = %78, %72, %67
  %83 = phi ptr [ %79, %78 ], [ %76, %72 ], [ null, %67 ]
  %84 = phi ptr [ %81, %78 ], [ %77, %72 ], [ @.str.28, %67 ]
  %85 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 5
  %86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %85) #9
  %87 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 1
  %88 = load i64, ptr %87, align 8
  %89 = tail call ptr @nvkm_fifo_chan_inst_locked(ptr noundef %0, i64 noundef %88) #9
  %90 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %143, label %93

93:                                               ; preds = %82
  %94 = load ptr, ptr %5, align 4
  %95 = getelementptr inbounds %struct.nvkm_device, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  %98 = load i8, ptr %48, align 4
  %99 = zext i8 %98 to i32
  %100 = icmp eq ptr %51, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.nvkm_enum, ptr %51, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  br label %104

104:                                              ; preds = %101, %93
  %105 = phi ptr [ %103, %101 ], [ @.str.28, %93 ]
  %106 = load i64, ptr %1, align 8
  %107 = load i8, ptr %17, align 8
  %108 = zext i8 %107 to i32
  br i1 %52, label %112, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.nvkm_enum, ptr %20, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  br label %112

112:                                              ; preds = %109, %104
  %113 = phi ptr [ %111, %109 ], [ %84, %104 ]
  %114 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 8
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq ptr %44, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.nvkm_enum, ptr %44, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  br label %121

121:                                              ; preds = %118, %112
  %122 = phi ptr [ %120, %118 ], [ @.str.28, %112 ]
  %123 = load i8, ptr %10, align 2
  %124 = zext i8 %123 to i32
  %125 = icmp eq ptr %13, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.nvkm_enum, ptr %13, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  br label %129

129:                                              ; preds = %126, %121
  %130 = phi ptr [ %128, %126 ], [ @.str.28, %121 ]
  %131 = icmp eq ptr %89, null
  br i1 %131, label %139, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %89, i32 0, i32 5
  %134 = load i16, ptr %133, align 8
  %135 = zext i16 %134 to i32
  %136 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %89, i32 0, i32 3, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.nvkm_client, ptr %137, i32 0, i32 1
  br label %139

139:                                              ; preds = %132, %129
  %140 = phi i32 [ %135, %132 ], [ -1, %129 ]
  %141 = phi ptr [ %138, %132 ], [ @.str.31, %129 ]
  %142 = load i64, ptr %87, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.30, ptr noundef %97, i32 noundef %99, ptr noundef %105, i64 noundef %106, i32 noundef %108, ptr noundef %113, i32 noundef %116, ptr noundef nonnull %3, ptr noundef %122, i32 noundef %124, ptr noundef %130, i32 noundef %140, i64 noundef %142, ptr noundef %141) #10
  br label %143

143:                                              ; preds = %139, %82
  %144 = icmp eq ptr %89, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %89, i32 0, i32 5
  %147 = load i16, ptr %146, align 8
  %148 = zext i16 %147 to i32
  call void @tu102_fifo_recover_chan(ptr noundef %0, i32 noundef %148)
  br label %149

149:                                              ; preds = %145, %143
  %150 = getelementptr i8, ptr %0, i32 956
  %151 = load i32, ptr %150, align 4
  %152 = icmp ne ptr %83, null
  %153 = icmp sgt i32 %151, 0
  %154 = select i1 %153, i1 %152, i1 false
  br i1 %154, label %155, label %166

155:                                              ; preds = %149
  %156 = getelementptr i8, ptr %0, i32 764
  br label %157

157:                                              ; preds = %163, %155
  %158 = phi i32 [ 0, %155 ], [ %164, %163 ]
  %159 = getelementptr [16 x %struct.anon.136], ptr %156, i32 0, i32 %158
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, %83
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  call fastcc void @tu102_fifo_recover_engn(ptr noundef %4, i32 noundef %158)
  br label %166

163:                                              ; preds = %157
  %164 = add nuw nsw i32 %158, 1
  %165 = icmp slt i32 %164, %151
  br i1 %165, label %157, label %166

166:                                              ; preds = %163, %162, %149
  call void @_raw_spin_unlock_irqrestore(ptr noundef %85, i32 noundef %86) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_engine_id(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gk104_fifo_id_engine(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_uevent_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_uevent_fini(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_fifo_recover_chan(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gk104_fifo_engine_status, align 4
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = shl i32 %1, 3
  %12 = add i32 %11, 8388612
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %17 = getelementptr i8, ptr %0, i32 960
  %18 = getelementptr [16 x %struct.anon.137], ptr %17, i32 0, i32 %16
  %19 = getelementptr inbounds %struct.anon.137, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %4, align 4
  %21 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %22 = load volatile i32, ptr %21, align 4
  store volatile i32 %22, ptr %3, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %22, 65535
  %25 = icmp eq i32 %24, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %25, label %26, label %27, !prof !14

26:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 210, 0\0A.popsection", ""() #9, !srcloc !15
  unreachable

27:                                               ; preds = %2
  %28 = and i32 %14, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %114, label %30

30:                                               ; preds = %27
  %31 = getelementptr %struct.gk104_fifo, ptr %6, i32 0, i32 6, i32 %16, i32 4
  br label %32

32:                                               ; preds = %36, %30
  %33 = phi ptr [ %31, %30 ], [ %34, %36 ]
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %31
  br i1 %35, label %47, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %34, i32 -244
  %38 = load i16, ptr %37, align 8
  %39 = zext i16 %38 to i32
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %41, label %32

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %34, i32 -340
  %43 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %34, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store volatile ptr %34, ptr %34, align 4
  store ptr %34, ptr %43, align 4
  br label %74

47:                                               ; preds = %32
  %48 = getelementptr %struct.gk104_fifo, ptr %6, i32 0, i32 6, i32 %16, i32 3
  br label %49

49:                                               ; preds = %53, %47
  %50 = phi ptr [ %48, %47 ], [ %51, %53 ]
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %48
  br i1 %52, label %79, label %53

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %51, i32 -4
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, %1
  br i1 %56, label %57, label %49

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %51, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 -340
  %61 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %59, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %62, ptr %64, align 4
  store volatile ptr %63, ptr %62, align 4
  store volatile ptr %59, ptr %59, align 4
  store ptr %59, ptr %61, align 4
  %65 = getelementptr i8, ptr %51, i32 16
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, -1
  store i32 %67, ptr %65, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %51, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %71, ptr %73, align 4
  store volatile ptr %72, ptr %71, align 4
  store volatile ptr %51, ptr %51, align 4
  store ptr %51, ptr %70, align 4
  br label %74

74:                                               ; preds = %69, %57, %41
  %75 = phi ptr [ %42, %41 ], [ %60, %69 ], [ %60, %57 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %75, i32 0, i32 5
  store i8 1, ptr %78, align 4
  tail call void @nvkm_fifo_kevent(ptr noundef %0, i32 noundef %1) #9
  br label %79

79:                                               ; preds = %77, %74, %49
  %80 = or i32 %14, 2048
  %81 = load ptr, ptr %9, align 4
  %82 = getelementptr i8, ptr %81, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #9, !srcloc !11
  %83 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = icmp ugt i32 %84, 1
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load ptr, ptr %7, align 4
  %88 = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %89, ptr noundef nonnull @.str.32, ptr noundef %90, i32 noundef %1) #10
  br label %91

91:                                               ; preds = %86, %79
  tail call fastcc void @tu102_fifo_recover_runl(ptr noundef %6, i32 noundef %16)
  %92 = getelementptr i8, ptr %0, i32 956
  %93 = load i32, ptr %92, align 4
  %94 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %93, i32 noundef 0) #9
  %95 = load i32, ptr %92, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %5, i32 0, i32 7
  br label %99

99:                                               ; preds = %108, %97
  %100 = phi i32 [ %94, %97 ], [ %111, %108 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false), !annotation !16
  call void @gk104_fifo_engine_status(ptr noundef %6, i32 noundef %100, ptr noundef nonnull %5) #9
  %101 = load ptr, ptr %98, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.anon.139, ptr %101, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, %1
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  call fastcc void @tu102_fifo_recover_engn(ptr noundef %6, i32 noundef %100)
  br label %108

108:                                              ; preds = %107, %103, %99
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #9
  %109 = load i32, ptr %92, align 4
  %110 = add nuw i32 %100, 1
  %111 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %109, i32 noundef %110) #9
  %112 = load i32, ptr %92, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %99, label %114

114:                                              ; preds = %108, %91, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_class_get(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_class_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_intr_bind(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_intr_chsw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_intr_pbdma_0(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_intr_pbdma_1(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_intr_runlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_intr_engine(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tu102_fifo_recover_engn(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gk104_fifo_engine_status, align 4
  %5 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.gk104_fifo, ptr %0, i32 0, i32 4, i32 %1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = shl nuw i32 1, %1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !16
  %11 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %12 = load volatile i32, ptr %11, align 4
  store volatile i32 %12, ptr %3, align 4
  %13 = lshr i32 %12, 16
  %14 = and i32 %12, 65535
  %15 = icmp eq i32 %14, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %15, label %16, label %17, !prof !14

16:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #9, !srcloc !17
  unreachable

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 2
  %19 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, %10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %17
  %24 = or i32 %20, %10
  store i32 %24, ptr %19, align 4
  tail call fastcc void @tu102_fifo_recover_runl(ptr noundef %0, i32 noundef %9)
  call void @gk104_fifo_engine_status(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #9
  %25 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %4, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.anon.139, ptr %26, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  call void @tu102_fifo_recover_chan(ptr noundef %5, i32 noundef %30)
  br label %31

31:                                               ; preds = %28, %23
  %32 = shl nuw i32 1, %9
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 9784
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #9, !srcloc !11
  %36 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %42, ptr noundef nonnull @.str.25, ptr noundef %43, i32 noundef %1) #10
  br label %44

44:                                               ; preds = %39, %31
  %45 = load ptr, ptr @system_wq, align 4
  %46 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %45, ptr noundef %18) #9
  br label %47

47:                                               ; preds = %44, %17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tu102_fifo_recover_runl(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = shl nuw i32 1, %1
  %7 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %8 = load volatile i32, ptr %7, align 4
  store volatile i32 %8, ptr %3, align 4
  %9 = lshr i32 %8, 16
  %10 = and i32 %8, 65535
  %11 = icmp eq i32 %10, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %11, label %12, label %13, !prof !14

12:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #9, !srcloc !18
  unreachable

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 2, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = or i32 %16, %6
  store i32 %20, ptr %15, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 9776
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %25 = or i32 %24, %6
  %26 = load ptr, ptr %21, align 4
  %27 = getelementptr i8, ptr %26, i32 9776
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #9, !srcloc !11
  %28 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %34, ptr noundef nonnull @.str.26, ptr noundef %35, i32 noundef %1) #10
  br label %36

36:                                               ; preds = %31, %19
  %37 = load ptr, ptr @system_wq, align 4
  %38 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %37, ptr noundef %14) #9
  br label %39

39:                                               ; preds = %36, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_engine_status(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar1_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar2_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_engine(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_top_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_inst_locked(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_kevent(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 3961738}
!9 = !{i64 2151501191}
!10 = !{i64 2151502413}
!11 = !{i64 3961320}
!12 = !{i32 0, i32 33}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2154828433, i64 2154828946, i64 2154828470, i64 2154828526, i64 2154828560, i64 2154828584, i64 2154828625, i64 2154828646, i64 2154828674, i64 2154828708}
!16 = !{!"auto-init"}
!17 = !{i64 2154831514, i64 2154832027, i64 2154831551, i64 2154831607, i64 2154831641, i64 2154831665, i64 2154831706, i64 2154831727, i64 2154831755, i64 2154831789}
!18 = !{i64 2154815532, i64 2154816045, i64 2154815569, i64 2154815625, i64 2154815659, i64 2154815683, i64 2154815724, i64 2154815745, i64 2154815773, i64 2154815807}
