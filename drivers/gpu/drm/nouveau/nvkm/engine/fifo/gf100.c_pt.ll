; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nvkm_bitfield = type { i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.126 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.126 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.gf100_fifo = type { %struct.nvkm_fifo, %struct.list_head, %struct.anon.127, i32, %struct.anon.128, %struct.anon.129 }
%struct.anon.127 = type { %struct.work_struct, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.128 = type { [2 x ptr], i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.129 = type { ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gf100_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, %struct.list_head, i8, [16 x %struct.gf100_fifo_engn] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.gf100_fifo_engn = type { ptr, ptr }
%struct.nvkm_fault_data = type { i64, i64, i64, i8, i8, i8, i8, i8, i8, i8 }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon.1, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.1 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }

@.str = private unnamed_addr constant [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: runlist update timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: ENGINE %d %d %01x\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@gf100_fifo_gpfifo_oclass = external dso_local constant %struct.nvkm_fifo_chan_oclass, align 4
@gf100_fifo = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] } { ptr @gf100_fifo_dtor, ptr @gf100_fifo_oneinit, ptr null, ptr @gf100_fifo_init, ptr @gf100_fifo_fini, ptr @gf100_fifo_intr, ptr @gf100_fifo_fault, ptr @gf100_fifo_engine_id, ptr @gf100_fifo_id_engine, ptr null, ptr null, ptr @gf100_fifo_uevent_init, ptr @gf100_fifo_uevent_fini, ptr null, ptr null, ptr null, [2 x ptr] [ptr @gf100_fifo_gpfifo_oclass, ptr null] }, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"%s: %d PBDMA(s)\0A\00", align 1
@gf100_fifo_oneinit.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"&fifo->runlist.wait\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"%s: INTR 00000001: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"%s: INTR 00010000: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s: INTR 01000000: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"%s: INTR %08x\0A\00", align 1
@gf100_fifo_sched_reason = internal constant [2 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 10, ptr @.str.12, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"%s: SCHED_ERROR %02x [%s]\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"CTXSW_TIMEOUT\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"%s: %s engine fault on channel %d, recovering...\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@gf100_fifo_pbdma_intr = internal constant [3 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 2097152, ptr @.str.16 }, %struct.nvkm_bitfield { i32 8388608, ptr @.str.17 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.14 = private unnamed_addr constant [71 x i8] c"%s: PBDMA%d: %08x [%s] ch %d [%010llx %s] subc %d mthd %04x data %08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"ILLEGAL_MTHD\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"EMPTY_SUBC\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"%s: RUNLIST %08x\0A\00", align 1
@gf100_fifo_fault_reason = internal constant [10 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.23, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.24, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.25, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.26, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.27, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.28, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.29, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.30, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.31, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@gf100_fifo_fault_engine = internal constant [13 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.32, ptr null, i32 33, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.33, ptr null, i32 34, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.34, ptr null, i32 16, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.35, ptr null, i32 12, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.36, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 16, ptr @.str.37, ptr null, i32 40, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.38, ptr null, i32 39, i32 0 }, %struct.nvkm_enum { i32 19, ptr @.str.39, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 20, ptr @.str.40, ptr null, i32 38, i32 0 }, %struct.nvkm_enum { i32 21, ptr @.str.41, ptr null, i32 28, i32 0 }, %struct.nvkm_enum { i32 22, ptr @.str.42, ptr null, i32 28, i32 1 }, %struct.nvkm_enum { i32 23, ptr @.str.43, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@gf100_fifo_fault_hubclient = internal constant [15 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 1, ptr @.str.44, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.45, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.46, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.47, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.36, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.48, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.49, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.50, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.38, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.37, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.39, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 18, ptr @.str.43, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 20, ptr @.str.51, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 21, ptr @.str.52, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@gf100_fifo_fault_gpcclient = internal constant [5 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 1, ptr @.str.53, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.54, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.47, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.55, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"GPC%d/\00", align 1
@.str.20 = private unnamed_addr constant [105 x i8] c"%s: %s fault at %010llx engine %02x [%s] client %02x [%s%s] reason %02x [%s] on channel %d [%010llx %s]\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"PT_NOT_PRESENT\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"PT_TOO_SHORT\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"PAGE_NOT_PRESENT\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"VM_LIMIT_EXCEEDED\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"NO_CHANNEL\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"PAGE_SYSTEM_ONLY\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"PAGE_READ_ONLY\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"COMPRESSED_SYSRAM\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"INVALID_STORAGE_TYPE\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"PGRAPH\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"PEEPHOLE\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"BAR1\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"BAR3\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"PFIFO\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"PMSVLD\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"PMSPPP\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"PCOUNTER\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"PMSPDEC\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"PCE0\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"PCE1\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"PMU\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"PCOPY0\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"PCOPY1\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"DISPATCH\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"CTXCTL\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"BAR_READ\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"BAR_WRITE\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"PVP\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"CCACHE\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"CCACHE_POST\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"TEX\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"ESETUP\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"PROP\00", align 1
@switch.table.gf100_fifo_intr = private unnamed_addr constant [16 x i32] [i32 33, i32 38, i32 39, i32 40, i32 28, i32 28, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 48], align 4
@switch.table.gf100_fifo_intr.58 = private unnamed_addr constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_fifo_runlist_commit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 4, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [2 x ptr], ptr %6, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq i32 %8, 0
  %12 = zext i1 %11 to i32
  store i32 %12, ptr %7, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.nvkm_memory_func, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr %15(ptr noundef %10) #8
  %17 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %43, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.nvkm_memory, ptr %10, i32 0, i32 1
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi ptr [ %18, %20 ], [ %39, %22 ]
  %24 = phi i32 [ 0, %20 ], [ %38, %22 ]
  %25 = load ptr, ptr %21, align 4
  %26 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = shl i32 %24, 3
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, ptr %23, i32 -236
  %31 = load i16, ptr %30, align 8
  %32 = zext i16 %31 to i32
  tail call void %27(ptr noundef %10, i64 noundef %29, i32 noundef %32) #8
  %33 = load ptr, ptr %21, align 4
  %34 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = or i32 %28, 4
  %37 = sext i32 %36 to i64
  tail call void %35(ptr noundef %10, i64 noundef %37, i32 noundef 4) #8
  %38 = add i32 %24, 1
  %39 = load ptr, ptr %23, align 4
  %40 = icmp eq ptr %39, %17
  br i1 %40, label %41, label %22

41:                                               ; preds = %22
  %42 = or i32 %38, 32505856
  br label %43

43:                                               ; preds = %41, %1
  %44 = phi i32 [ 32505856, %1 ], [ %42, %41 ]
  %45 = load ptr, ptr %10, align 4
  %46 = getelementptr inbounds %struct.nvkm_memory_func, ptr %45, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  tail call void %47(ptr noundef %10) #8
  %48 = load ptr, ptr %10, align 4
  %49 = getelementptr inbounds %struct.nvkm_memory_func, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef %10) #8
  switch i32 %51, label %53 [
    i32 1, label %54
    i32 3, label %52
  ]

52:                                               ; preds = %43
  br label %54

53:                                               ; preds = %43
  tail call void @mutex_unlock(ptr noundef %5) #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #8
  br label %102

54:                                               ; preds = %52, %43
  %55 = phi i32 [ 805306368, %52 ], [ 0, %43 ]
  %56 = load ptr, ptr %10, align 4
  %57 = getelementptr inbounds %struct.nvkm_memory_func, ptr %56, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i64 %58(ptr noundef %10) #8
  %60 = lshr i64 %59, 12
  %61 = trunc i64 %60 to i32
  %62 = or i32 %55, %61
  %63 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 8816
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %62) #8, !srcloc !9
  %66 = load ptr, ptr %63, align 4
  %67 = getelementptr i8, ptr %66, i32 8820
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %44) #8, !srcloc !9
  %68 = load ptr, ptr %63, align 4
  %69 = getelementptr i8, ptr %68, i32 8828
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %71 = and i32 %70, 1048576
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %101, label %73

73:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !12
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #8
  %74 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 4, i32 2
  br label %75

75:                                               ; preds = %89, %73
  %76 = phi i32 [ 200, %73 ], [ %90, %89 ]
  %77 = call i32 @prepare_to_wait_event(ptr noundef %74, ptr noundef nonnull %2, i32 noundef 2) #8
  %78 = load ptr, ptr %63, align 4
  %79 = getelementptr i8, ptr %78, i32 8828
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %81 = and i32 %80, 1048576
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = icmp ne i32 %76, 0
  %85 = select i1 %82, i1 true, i1 %84
  %86 = select i1 %85, i32 %76, i32 1
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %83, i1 true, i1 %87
  br i1 %88, label %91, label %89

89:                                               ; preds = %75
  %90 = call i32 @schedule_timeout(i32 noundef %86) #8
  br label %75

91:                                               ; preds = %75
  call void @finish_wait(ptr noundef %74, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  br i1 %87, label %92, label %101

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %3, align 4
  %98 = getelementptr inbounds %struct.nvkm_device, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.1, ptr noundef %100) #9
  br label %101

101:                                              ; preds = %96, %92, %91, %54
  call void @mutex_unlock(ptr noundef %5) #8
  br label %102

102:                                              ; preds = %101, %53
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_fifo_runlist_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %1, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_fifo_runlist_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  store ptr %4, ptr %6, align 4
  store ptr %5, ptr %4, align 4
  %8 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %1, i32 0, i32 2, i32 1
  store ptr %7, ptr %8, align 4
  store volatile ptr %4, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_fifo_intr_fault(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvkm_fault_data, align 8
  %4 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = shl i32 %1, 4
  %9 = add i32 %8, 10240
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %12 = load ptr, ptr %6, align 4
  %13 = add i32 %8, 10244
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %16 = load ptr, ptr %6, align 4
  %17 = add i32 %8, 10248
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %20 = load ptr, ptr %6, align 4
  %21 = add i32 %8, 10252
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  %24 = getelementptr inbounds i8, ptr %3, i32 24
  store i64 0, ptr %24, align 8, !annotation !12
  %25 = zext i32 %11 to i64
  %26 = shl nuw nsw i64 %25, 12
  %27 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 1
  store i64 %26, ptr %27, align 8
  %28 = zext i32 %19 to i64
  %29 = shl nuw i64 %28, 32
  %30 = zext i32 %15 to i64
  %31 = or i64 %29, %30
  store i64 %31, ptr %3, align 8
  %32 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 2
  store i64 0, ptr %32, align 8
  %33 = trunc i32 %1 to i8
  %34 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 3
  store i8 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 4
  store i8 1, ptr %35, align 1
  %36 = lshr i32 %23, 24
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 31
  %39 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 5
  store i8 %38, ptr %39, align 2
  %40 = lshr i32 %23, 8
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 31
  %43 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 8
  store i8 %42, ptr %43, align 1
  %44 = trunc i32 %23 to i8
  %45 = lshr i8 %44, 7
  %46 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 7
  store i8 %45, ptr %46, align 4
  %47 = lshr i8 %44, 6
  %48 = and i8 %47, 1
  %49 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 6
  store i8 %48, ptr %49, align 1
  %50 = and i8 %44, 15
  %51 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 9
  store i8 %50, ptr %51, align 2
  call void @nvkm_fifo_fault(ptr noundef %0, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_fault(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_fifo_intr_engine(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 9636
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %62, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %11 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  br label %12

12:                                               ; preds = %57, %9
  %13 = phi i32 [ %7, %9 ], [ %60, %57 ]
  %14 = tail call i32 @llvm.cttz.i32(i32 %13, i1 true) #8, !range !13
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = shl nuw nsw i32 %14, 2
  %19 = add nuw nsw i32 %18, 9640
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr i8, ptr %22, i32 9768
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr i8, ptr %25, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %21) #8, !srcloc !9
  br label %27

27:                                               ; preds = %54, %12
  %28 = phi i32 [ 0, %12 ], [ %55, %54 ]
  %29 = shl nuw nsw i32 %28, 2
  %30 = lshr i32 %21, %29
  %31 = and i32 %30, %24
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  tail call void @nvkm_fifo_uevent(ptr noundef %0) #8
  %35 = and i32 %31, -2
  br label %36

36:                                               ; preds = %34, %27
  %37 = phi i32 [ %35, %34 ], [ %31, %27 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.2, ptr noundef %11, i32 noundef %14, i32 noundef %28, i32 noundef %37) #9
  br label %46

46:                                               ; preds = %42, %39
  %47 = load ptr, ptr %16, align 4
  %48 = getelementptr i8, ptr %47, i32 9768
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %50 = xor i32 %37, -1
  %51 = and i32 %49, %50
  %52 = load ptr, ptr %16, align 4
  %53 = getelementptr i8, ptr %52, i32 9768
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #8, !srcloc !9
  br label %54

54:                                               ; preds = %46, %36
  %55 = add nuw nsw i32 %28, 1
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %57, label %27

57:                                               ; preds = %54
  %58 = shl nuw i32 1, %14
  %59 = xor i32 %58, -1
  %60 = and i32 %13, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %12

62:                                               ; preds = %57, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_fifo_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 808) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gf100_fifo, ptr %6, i32 0, i32 1
  store volatile ptr %9, ptr %9, align 8
  %10 = getelementptr inbounds %struct.gf100_fifo, ptr %6, i32 0, i32 1, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.gf100_fifo, ptr %6, i32 0, i32 2
  store i32 -32, ptr %11, align 8
  %12 = getelementptr inbounds %struct.gf100_fifo, ptr %6, i32 0, i32 2, i32 0, i32 1
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.gf100_fifo, ptr %6, i32 0, i32 2, i32 0, i32 1, i32 1
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.gf100_fifo, ptr %6, i32 0, i32 2, i32 0, i32 2
  store ptr @gf100_fifo_recover_work, ptr %14, align 4
  store ptr %6, ptr %3, align 4
  %15 = tail call i32 @nvkm_fifo_ctor(ptr noundef nonnull @gf100_fifo, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 128, ptr noundef nonnull %6) #8
  br label %16

16:                                               ; preds = %8, %4
  %17 = phi i32 [ %15, %8 ], [ -12, %4 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_fifo_recover_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -732
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -128
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.anon.127, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  store i64 0, ptr %6, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 9776
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %13 = or i32 %12, %8
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 9776
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #8, !srcloc !9
  %16 = icmp eq i32 %8, 0
  br i1 %16, label %51, label %17

17:                                               ; preds = %1
  %18 = tail call i32 @llvm.cttz.i32(i32 %8, i1 true) #8, !range !13
  br label %19

19:                                               ; preds = %43, %17
  %20 = phi i32 [ %18, %17 ], [ %49, %43 ]
  %21 = phi i32 [ %8, %17 ], [ %48, %43 ]
  %22 = icmp ult i32 %20, 16
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = trunc i32 %20 to i16
  %25 = lshr i16 -32705, %24
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds [16 x i32], ptr @switch.table.gf100_fifo_intr, i32 0, i32 %20
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds [16 x i32], ptr @switch.table.gf100_fifo_intr.58, i32 0, i32 %20
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %2, align 4
  %34 = tail call ptr @nvkm_device_engine(ptr noundef %33, i32 noundef %30, i32 noundef %32) #8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.nvkm_engine, ptr %34, i32 0, i32 1
  %38 = tail call i32 @nvkm_subdev_fini(ptr noundef %37, i1 noundef zeroext false) #8
  %39 = tail call i32 @nvkm_subdev_init(ptr noundef %37) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41, !prof !14

41:                                               ; preds = %36, %23, %19
  %42 = phi i32 [ 123, %19 ], [ 165, %36 ], [ 123, %23 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %42, i32 noundef 9, ptr noundef null) #8
  br label %43

43:                                               ; preds = %41, %36, %28
  %44 = zext i32 %20 to i64
  %45 = shl nuw nsw i64 1, %44
  %46 = trunc i64 %45 to i32
  %47 = xor i32 %46, -1
  %48 = and i32 %21, %47
  %49 = tail call i32 @llvm.cttz.i32(i32 %48, i1 false) #8, !range !13
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %51, label %19

51:                                               ; preds = %43, %1
  %52 = getelementptr i8, ptr %0, i32 -744
  %53 = xor i32 %8, -1
  tail call void @gf100_fifo_runlist_commit(ptr noundef %52)
  %54 = load ptr, ptr %9, align 4
  %55 = getelementptr i8, ptr %54, i32 9772
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %8) #8, !srcloc !9
  %56 = load ptr, ptr %9, align 4
  %57 = getelementptr i8, ptr %56, i32 9776
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %59 = and i32 %58, %53
  %60 = load ptr, ptr %9, align 4
  %61 = getelementptr i8, ptr %60, i32 9776
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #8, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_uevent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gf100_fifo_id_engine(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp ult i32 %1, 16
  br i1 %3, label %5, label %4

4:                                                ; preds = %5, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef null) #8
  br label %18

5:                                                ; preds = %2
  %6 = trunc i32 %1 to i16
  %7 = lshr i16 -32705, %6
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %4, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds [16 x i32], ptr @switch.table.gf100_fifo_intr, i32 0, i32 %1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds [16 x i32], ptr @switch.table.gf100_fifo_intr.58, i32 0, i32 %1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @nvkm_device_engine(ptr noundef %16, i32 noundef %12, i32 noundef %14) #8
  br label %18

18:                                               ; preds = %10, %4
  %19 = phi ptr [ null, %4 ], [ %17, %10 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_engine(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gf100_fifo_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @nvkm_bar_bar1_vmm(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 5
  %6 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 5, i32 1
  tail call void @nvkm_vmm_put(ptr noundef %4, ptr noundef %6) #8
  tail call void @nvkm_memory_unref(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 4
  tail call void @nvkm_memory_unref(ptr noundef %7) #8
  %8 = getelementptr %struct.gf100_fifo, ptr %0, i32 0, i32 4, i32 0, i32 1
  tail call void @nvkm_memory_unref(ptr noundef %8) #8
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_fifo_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @nvkm_bar_bar1_vmm(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8708
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -1) #8, !srcloc !9
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 8708
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %11 = tail call i32 @__sw_hweight32(i32 noundef %10) #8
  %12 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 3
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 3
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.4, ptr noundef %20, i32 noundef %11) #9
  br label %21

21:                                               ; preds = %16, %1
  %22 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 4
  %23 = tail call i32 @nvkm_memory_new(ptr noundef %3, i32 noundef 0, i64 noundef 4096, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %22) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %21
  %26 = getelementptr %struct.gf100_fifo, ptr %0, i32 0, i32 4, i32 0, i32 1
  %27 = tail call i32 @nvkm_memory_new(ptr noundef %3, i32 noundef 0, i64 noundef 4096, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %26) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 4, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %30, ptr noundef nonnull @.str.5, ptr noundef nonnull @gf100_fifo_oneinit.__key) #8
  %31 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 5
  %32 = tail call i32 @nvkm_memory_new(ptr noundef %3, i32 noundef 0, i64 noundef 524288, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %31) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load ptr, ptr %31, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvkm_memory_func, ptr %36, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i64 %38(ptr noundef %35) #8
  %40 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 5, i32 1
  %41 = tail call i32 @nvkm_vmm_get(ptr noundef %4, i8 noundef zeroext 12, i64 noundef %39, ptr noundef %40) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load ptr, ptr %31, align 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_memory_func, ptr %45, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %40, align 4
  %49 = tail call i32 %47(ptr noundef %44, i64 noundef 0, ptr noundef %4, ptr noundef %48, ptr noundef null, i32 noundef 0) #8
  br label %50

50:                                               ; preds = %43, %34, %29, %25, %21
  %51 = phi i32 [ %49, %43 ], [ %23, %21 ], [ %27, %25 ], [ %32, %29 ], [ %41, %34 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_fifo_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = shl nsw i32 -1, %5
  %7 = xor i32 %6, -1
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 516
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #8, !srcloc !9
  %11 = load i32, ptr %4, align 8
  %12 = shl nsw i32 -1, %11
  %13 = xor i32 %12, -1
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr i8, ptr %14, i32 8708
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #8, !srcloc !9
  %16 = load i32, ptr %4, align 8
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 8712
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 -2) #8, !srcloc !9
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr i8, ptr %21, i32 8716
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 -3) #8, !srcloc !9
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr i8, ptr %23, i32 8720
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -3) #8, !srcloc !9
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr i8, ptr %25, i32 8724
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 -3) #8, !srcloc !9
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr i8, ptr %27, i32 8728
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 -5) #8, !srcloc !9
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr i8, ptr %29, i32 8732
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 -3) #8, !srcloc !9
  %31 = load i32, ptr %4, align 8
  br label %32

32:                                               ; preds = %18, %1
  %33 = phi i32 [ %31, %18 ], [ %16, %1 ]
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %35, %32
  %36 = phi i32 [ %51, %35 ], [ 0, %32 ]
  %37 = shl i32 %36, 13
  %38 = add i32 %37, 262460
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr i8, ptr %39, i32 %38
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %42 = and i32 %41, -268435713
  %43 = load ptr, ptr %8, align 4
  %44 = getelementptr i8, ptr %43, i32 %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #8, !srcloc !9
  %45 = load ptr, ptr %8, align 4
  %46 = add i32 %37, 262408
  %47 = getelementptr i8, ptr %45, i32 %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 -1) #8, !srcloc !9
  %48 = load ptr, ptr %8, align 4
  %49 = add i32 %37, 262412
  %50 = getelementptr i8, ptr %48, i32 %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 -257) #8, !srcloc !9
  %51 = add nuw nsw i32 %36, 1
  %52 = load i32, ptr %4, align 8
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %35, label %54

54:                                               ; preds = %35, %32
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr i8, ptr %55, i32 8704
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %58 = or i32 %57, 1
  %59 = load ptr, ptr %8, align 4
  %60 = getelementptr i8, ptr %59, i32 8704
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #8, !srcloc !9
  %61 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 5, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nvkm_vma, ptr %62, i32 0, i32 2
  %64 = load i64, ptr %63, align 8
  %65 = lshr i64 %64, 12
  %66 = trunc i64 %65 to i32
  %67 = or i32 %66, 268435456
  %68 = load ptr, ptr %8, align 4
  %69 = getelementptr i8, ptr %68, i32 8788
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #8, !srcloc !9
  %70 = load ptr, ptr %8, align 4
  %71 = getelementptr i8, ptr %70, i32 8448
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 -1) #8, !srcloc !9
  %72 = load ptr, ptr %8, align 4
  %73 = getelementptr i8, ptr %72, i32 8512
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 2147483647) #8, !srcloc !9
  %74 = load ptr, ptr %8, align 4
  %75 = getelementptr i8, ptr %74, i32 9768
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 1) #8, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_fifo_fini(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 2
  %3 = tail call zeroext i1 @flush_work(ptr noundef %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_fifo_intr(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca [128 x i8], align 1
  %5 = alloca %struct.nvkm_fault_data, align 8
  %6 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 8512
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr i8, ptr %12, i32 8448
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %15 = and i32 %14, %11
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 9516
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %22 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %28, ptr noundef nonnull @.str.6, ptr noundef %29, i32 noundef %21) #9
  br label %30

30:                                               ; preds = %25, %18
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr i8, ptr %31, i32 8448
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 1) #8, !srcloc !9
  %33 = and i32 %15, -2
  br label %34

34:                                               ; preds = %30, %1
  %35 = phi i32 [ %33, %30 ], [ %15, %1 ]
  %36 = and i32 %35, 256
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %113, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 11
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 9548
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %44 = and i32 %43, 255
  %45 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gf100_fifo_sched_reason, i32 noundef %44) #8
  %46 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %38
  %50 = load ptr, ptr %6, align 4
  %51 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  %54 = icmp eq ptr %45, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.nvkm_enum, ptr %45, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi ptr [ %57, %55 ], [ @.str.11, %49 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.10, ptr noundef %53, i32 noundef %44, ptr noundef %59) #9
  br label %60

60:                                               ; preds = %58, %38
  %61 = icmp eq i32 %44, 10
  br i1 %61, label %62, label %109

62:                                               ; preds = %60
  %63 = load ptr, ptr %6, align 4
  %64 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 5
  %65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %64) #8
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %63, i32 0, i32 11
  %67 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 1
  br label %68

68:                                               ; preds = %105, %62
  %69 = phi i32 [ 0, %62 ], [ %106, %105 ]
  %70 = load ptr, ptr %66, align 4
  %71 = shl nuw nsw i32 %69, 2
  %72 = add nuw nsw i32 %71, 9792
  %73 = getelementptr i8, ptr %70, i32 %72
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %75 = and i32 %74, 127
  %76 = and i32 %74, -2147217408
  %77 = icmp eq i32 %76, -2147217408
  br i1 %77, label %78, label %105

78:                                               ; preds = %82, %68
  %79 = phi ptr [ %80, %82 ], [ %67, %68 ]
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %67
  br i1 %81, label %105, label %82

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %80, i32 -236
  %84 = load i16, ptr %83, align 8
  %85 = zext i16 %84 to i32
  %86 = icmp eq i32 %75, %85
  br i1 %86, label %87, label %78

87:                                               ; preds = %82
  %88 = getelementptr i8, ptr %80, i32 -332
  %89 = icmp ult i32 %69, 16
  br i1 %89, label %91, label %90

90:                                               ; preds = %91, %87
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef null) #8
  br label %105

91:                                               ; preds = %87
  %92 = trunc i32 %69 to i16
  %93 = lshr i16 -32705, %92
  %94 = and i16 %93, 1
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %90, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds [16 x i32], ptr @switch.table.gf100_fifo_intr, i32 0, i32 %69
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds [16 x i32], ptr @switch.table.gf100_fifo_intr.58, i32 0, i32 %69
  %100 = load i32, ptr %99, align 4
  %101 = load ptr, ptr %6, align 4
  %102 = tail call ptr @nvkm_device_engine(ptr noundef %101, i32 noundef %98, i32 noundef %100) #8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %96
  tail call fastcc void @gf100_fifo_recover(ptr noundef %0, ptr noundef nonnull %102, ptr noundef %88) #8
  br label %105

105:                                              ; preds = %104, %96, %90, %78, %68
  %106 = add nuw nsw i32 %69, 1
  %107 = icmp eq i32 %106, 6
  br i1 %107, label %108, label %68

108:                                              ; preds = %105
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %65) #8
  br label %109

109:                                              ; preds = %108, %60
  %110 = load ptr, ptr %8, align 4
  %111 = getelementptr i8, ptr %110, i32 8448
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 256) #8, !srcloc !9
  %112 = and i32 %35, -257
  br label %113

113:                                              ; preds = %109, %34
  %114 = phi i32 [ %112, %109 ], [ %35, %34 ]
  %115 = and i32 %114, 65536
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %133, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr %8, align 4
  %119 = getelementptr i8, ptr %118, i32 9580
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %121 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %122 = load i32, ptr %121, align 4
  %123 = icmp ugt i32 %122, 1
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load ptr, ptr %6, align 4
  %126 = getelementptr inbounds %struct.nvkm_device, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %127, ptr noundef nonnull @.str.7, ptr noundef %128, i32 noundef %120) #9
  br label %129

129:                                              ; preds = %124, %117
  %130 = load ptr, ptr %8, align 4
  %131 = getelementptr i8, ptr %130, i32 8448
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 65536) #8, !srcloc !9
  %132 = and i32 %114, -65537
  br label %133

133:                                              ; preds = %129, %113
  %134 = phi i32 [ %132, %129 ], [ %114, %113 ]
  %135 = and i32 %134, 16777216
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %153, label %137

137:                                              ; preds = %133
  %138 = load ptr, ptr %8, align 4
  %139 = getelementptr i8, ptr %138, i32 9612
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %141 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %142 = load i32, ptr %141, align 4
  %143 = icmp ugt i32 %142, 1
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load ptr, ptr %6, align 4
  %146 = getelementptr inbounds %struct.nvkm_device, ptr %145, i32 0, i32 2
  %147 = load ptr, ptr %146, align 8
  %148 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %147, ptr noundef nonnull @.str.8, ptr noundef %148, i32 noundef %140) #9
  br label %149

149:                                              ; preds = %144, %137
  %150 = load ptr, ptr %8, align 4
  %151 = getelementptr i8, ptr %150, i32 8448
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 16777216) #8, !srcloc !9
  %152 = and i32 %134, -16777217
  br label %153

153:                                              ; preds = %149, %133
  %154 = phi i32 [ %152, %149 ], [ %134, %133 ]
  %155 = and i32 %154, 268435456
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %219, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %8, align 4
  %159 = getelementptr i8, ptr %158, i32 9628
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %217, label %162

162:                                              ; preds = %157
  %163 = getelementptr inbounds i8, ptr %5, i32 24
  %164 = getelementptr inbounds %struct.nvkm_fault_data, ptr %5, i32 0, i32 1
  %165 = getelementptr inbounds %struct.nvkm_fault_data, ptr %5, i32 0, i32 2
  %166 = getelementptr inbounds %struct.nvkm_fault_data, ptr %5, i32 0, i32 5
  %167 = getelementptr inbounds %struct.nvkm_fault_data, ptr %5, i32 0, i32 8
  %168 = getelementptr inbounds %struct.nvkm_fault_data, ptr %5, i32 0, i32 7
  %169 = getelementptr inbounds %struct.nvkm_fault_data, ptr %5, i32 0, i32 6
  %170 = getelementptr inbounds %struct.nvkm_fault_data, ptr %5, i32 0, i32 9
  br label %171

171:                                              ; preds = %171, %162
  %172 = phi i32 [ %160, %162 ], [ %215, %171 ]
  %173 = call i32 @llvm.cttz.i32(i32 %172, i1 true) #8, !range !13
  %174 = load ptr, ptr %6, align 4
  %175 = getelementptr inbounds %struct.nvkm_device, ptr %174, i32 0, i32 11
  %176 = load ptr, ptr %175, align 4
  %177 = shl nuw nsw i32 %173, 4
  %178 = or i32 %177, 10240
  %179 = getelementptr i8, ptr %176, i32 %178
  %180 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %181 = load ptr, ptr %175, align 4
  %182 = or i32 %177, 10244
  %183 = getelementptr i8, ptr %181, i32 %182
  %184 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %185 = load ptr, ptr %175, align 4
  %186 = or i32 %177, 10248
  %187 = getelementptr i8, ptr %185, i32 %186
  %188 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %187) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %189 = load ptr, ptr %175, align 4
  %190 = or i32 %177, 10252
  %191 = getelementptr i8, ptr %189, i32 %190
  %192 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  store i64 256, ptr %163, align 8, !annotation !12
  %193 = zext i32 %180 to i64
  %194 = shl nuw nsw i64 %193, 12
  store i64 %194, ptr %164, align 8
  %195 = zext i32 %188 to i64
  %196 = shl nuw i64 %195, 32
  %197 = zext i32 %184 to i64
  %198 = or i64 %196, %197
  store i64 %198, ptr %5, align 8
  store i64 0, ptr %165, align 8
  %199 = trunc i32 %173 to i8
  store i8 %199, ptr %163, align 8
  %200 = lshr i32 %192, 24
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 31
  store i8 %202, ptr %166, align 2
  %203 = lshr i32 %192, 8
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 31
  store i8 %205, ptr %167, align 1
  %206 = trunc i32 %192 to i8
  %207 = lshr i8 %206, 7
  store i8 %207, ptr %168, align 4
  %208 = lshr i8 %206, 6
  %209 = and i8 %208, 1
  store i8 %209, ptr %169, align 1
  %210 = and i8 %206, 15
  store i8 %210, ptr %170, align 2
  call void @nvkm_fifo_fault(ptr noundef %0, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  %211 = shl nuw i32 1, %173
  %212 = load ptr, ptr %8, align 4
  %213 = getelementptr i8, ptr %212, i32 9628
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %211) #8, !srcloc !9
  %214 = xor i32 %211, -1
  %215 = and i32 %172, %214
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %171

217:                                              ; preds = %171, %157
  %218 = and i32 %154, -268435457
  br label %219

219:                                              ; preds = %217, %153
  %220 = phi i32 [ %218, %217 ], [ %154, %153 ]
  %221 = and i32 %220, 536870912
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %305, label %223

223:                                              ; preds = %219
  %224 = load ptr, ptr %8, align 4
  %225 = getelementptr i8, ptr %224, i32 9632
  %226 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %225) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %303, label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %230 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  br label %231

231:                                              ; preds = %292, %228
  %232 = phi i32 [ %226, %228 ], [ %301, %292 ]
  %233 = call i32 @llvm.cttz.i32(i32 %232, i1 true) #8, !range !13
  %234 = load ptr, ptr %6, align 4
  %235 = getelementptr inbounds %struct.nvkm_device, ptr %234, i32 0, i32 11
  %236 = load ptr, ptr %235, align 4
  %237 = shl nuw nsw i32 %233, 13
  %238 = or i32 %237, 262408
  %239 = getelementptr i8, ptr %236, i32 %238
  %240 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %239) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %241 = load ptr, ptr %235, align 4
  %242 = or i32 %237, 262336
  %243 = getelementptr i8, ptr %241, i32 %242
  %244 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %243) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %245 = load ptr, ptr %235, align 4
  %246 = or i32 %237, 262340
  %247 = getelementptr i8, ptr %245, i32 %246
  %248 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %249 = load ptr, ptr %235, align 4
  %250 = or i32 %237, 262432
  %251 = getelementptr i8, ptr %249, i32 %250
  %252 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %251) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %253 = and i32 %252, 127
  %254 = lshr i32 %244, 16
  %255 = and i32 %254, 7
  %256 = and i32 %244, 16380
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false) #8, !annotation !12
  %257 = and i32 %240, 8388608
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %266, label %259

259:                                              ; preds = %231
  %260 = getelementptr inbounds %struct.nvkm_device, ptr %234, i32 0, i32 68
  %261 = load ptr, ptr %260, align 8
  %262 = icmp eq ptr %261, null
  br i1 %262, label %269, label %263

263:                                              ; preds = %259
  %264 = call zeroext i1 @nvkm_sw_mthd(ptr noundef nonnull %261, i32 noundef %253, i32 noundef %255, i32 noundef %256, i32 noundef %248) #8
  %265 = and i32 %240, -8388609
  br i1 %264, label %266, label %269

266:                                              ; preds = %263, %231
  %267 = phi i32 [ %240, %231 ], [ %265, %263 ]
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %292, label %269

269:                                              ; preds = %266, %263, %259
  %270 = phi i32 [ %267, %266 ], [ %240, %259 ], [ %240, %263 ]
  call void @nvkm_snprintbf(ptr noundef nonnull %4, i32 noundef 128, ptr noundef nonnull @gf100_fifo_pbdma_intr, i32 noundef %270) #8
  %271 = call ptr @nvkm_fifo_chan_chid(ptr noundef %0, i32 noundef %253, ptr noundef nonnull %3) #8
  store ptr %271, ptr %2, align 4
  %272 = load i32, ptr %229, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %290, label %274

274:                                              ; preds = %269
  %275 = load ptr, ptr %6, align 4
  %276 = getelementptr inbounds %struct.nvkm_device, ptr %275, i32 0, i32 2
  %277 = load ptr, ptr %276, align 8
  %278 = icmp eq ptr %271, null
  br i1 %278, label %287, label %279

279:                                              ; preds = %274
  %280 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %271, i32 0, i32 6
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %281, i32 0, i32 4
  %283 = load i64, ptr %282, align 8
  %284 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %271, i32 0, i32 3, i32 1
  %285 = load ptr, ptr %284, align 4
  %286 = getelementptr inbounds %struct.nvkm_client, ptr %285, i32 0, i32 1
  br label %287

287:                                              ; preds = %279, %274
  %288 = phi i64 [ %283, %279 ], [ 0, %274 ]
  %289 = phi ptr [ %286, %279 ], [ @.str.15, %274 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %277, ptr noundef nonnull @.str.14, ptr noundef %230, i32 noundef %233, i32 noundef %270, ptr noundef nonnull %4, i32 noundef %253, i64 noundef %288, ptr noundef %289, i32 noundef %255, i32 noundef %256, i32 noundef %248) #9
  br label %290

290:                                              ; preds = %287, %269
  %291 = load i32, ptr %3, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %0, i32 noundef %291, ptr noundef nonnull %2) #8
  br label %292

292:                                              ; preds = %290, %266
  %293 = load ptr, ptr %235, align 4
  %294 = getelementptr i8, ptr %293, i32 %242
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %294, i32 -2141192184) #8, !srcloc !9
  %295 = load ptr, ptr %235, align 4
  %296 = getelementptr i8, ptr %295, i32 %238
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %296, i32 %240) #8, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %297 = shl nuw i32 1, %233
  %298 = load ptr, ptr %8, align 4
  %299 = getelementptr i8, ptr %298, i32 9632
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %299, i32 %297) #8, !srcloc !9
  %300 = xor i32 %297, -1
  %301 = and i32 %232, %300
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %231

303:                                              ; preds = %292, %223
  %304 = and i32 %220, -536870913
  br label %305

305:                                              ; preds = %303, %219
  %306 = phi i32 [ %304, %303 ], [ %220, %219 ]
  %307 = and i32 %306, 1073741824
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %339, label %309

309:                                              ; preds = %305
  %310 = load ptr, ptr %6, align 4
  %311 = getelementptr inbounds %struct.nvkm_device, ptr %310, i32 0, i32 11
  %312 = load ptr, ptr %311, align 4
  %313 = getelementptr i8, ptr %312, i32 10752
  %314 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %313) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %315 = and i32 %314, 268435456
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %322, label %317

317:                                              ; preds = %309
  %318 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 4, i32 2
  call void @__wake_up(ptr noundef %318, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %319 = load ptr, ptr %311, align 4
  %320 = getelementptr i8, ptr %319, i32 10752
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %320, i32 268435456) #8, !srcloc !9
  %321 = and i32 %314, -268435457
  br label %322

322:                                              ; preds = %317, %309
  %323 = phi i32 [ %321, %317 ], [ %314, %309 ]
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %337, label %325

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %327 = load i32, ptr %326, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %325
  %330 = load ptr, ptr %6, align 4
  %331 = getelementptr inbounds %struct.nvkm_device, ptr %330, i32 0, i32 2
  %332 = load ptr, ptr %331, align 8
  %333 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %332, ptr noundef nonnull @.str.18, ptr noundef %333, i32 noundef %323) #9
  br label %334

334:                                              ; preds = %329, %325
  %335 = load ptr, ptr %311, align 4
  %336 = getelementptr i8, ptr %335, i32 10752
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %336, i32 %323) #8, !srcloc !9
  br label %337

337:                                              ; preds = %334, %322
  %338 = and i32 %306, -1073741825
  br label %339

339:                                              ; preds = %337, %305
  %340 = phi i32 [ %338, %337 ], [ %306, %305 ]
  %341 = icmp sgt i32 %340, -1
  br i1 %341, label %344, label %342

342:                                              ; preds = %339
  call void @gf100_fifo_intr_engine(ptr noundef %0)
  %343 = and i32 %340, 2147483647
  br label %344

344:                                              ; preds = %342, %339
  %345 = phi i32 [ %343, %342 ], [ %340, %339 ]
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %366, label %347

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %349 = load i32, ptr %348, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %356, label %351

351:                                              ; preds = %347
  %352 = load ptr, ptr %6, align 4
  %353 = getelementptr inbounds %struct.nvkm_device, ptr %352, i32 0, i32 2
  %354 = load ptr, ptr %353, align 8
  %355 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %354, ptr noundef nonnull @.str.9, ptr noundef %355, i32 noundef %345) #9
  br label %356

356:                                              ; preds = %351, %347
  %357 = load ptr, ptr %8, align 4
  %358 = getelementptr i8, ptr %357, i32 8512
  %359 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %358) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %360 = xor i32 %345, -1
  %361 = and i32 %359, %360
  %362 = load ptr, ptr %8, align 4
  %363 = getelementptr i8, ptr %362, i32 8512
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %363, i32 %361) #8, !srcloc !9
  %364 = load ptr, ptr %8, align 4
  %365 = getelementptr i8, ptr %364, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %365, i32 %345) #8, !srcloc !9
  br label %366

366:                                              ; preds = %356, %344
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_fifo_fault(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca [8 x i8], align 8
  %6 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 0, ptr %5, align 8
  %8 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 9
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gf100_fifo_fault_reason, i32 noundef %10) #8
  %12 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 3
  %13 = load i8, ptr %12, align 8
  %14 = zext i8 %13 to i32
  %15 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gf100_fifo_fault_engine, i32 noundef %14) #8
  %16 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 6
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 8
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  br i1 %18, label %24, label %22

22:                                               ; preds = %2
  %23 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gf100_fifo_fault_hubclient, i32 noundef %21) #8
  br label %30

24:                                               ; preds = %2
  %25 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gf100_fifo_fault_gpcclient, i32 noundef %21) #8
  %26 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 5
  %27 = load i8, ptr %26, align 2
  %28 = zext i8 %27 to i32
  %29 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 8, ptr noundef nonnull @.str.19, i32 noundef %28)
  br label %30

30:                                               ; preds = %24, %22
  %31 = phi ptr [ %23, %22 ], [ %25, %24 ]
  %32 = icmp eq ptr %15, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.nvkm_enum, ptr %15, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %45 [
    i32 0, label %49
    i32 16, label %36
    i32 12, label %37
    i32 34, label %38
  ]

36:                                               ; preds = %33
  tail call void @nvkm_bar_bar1_reset(ptr noundef %7) #8
  br label %49

37:                                               ; preds = %33
  tail call void @nvkm_bar_bar2_reset(ptr noundef %7) #8
  br label %49

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 5912
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %43 = load ptr, ptr %39, align 4
  %44 = getelementptr i8, ptr %43, i32 5912
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #8, !srcloc !9
  br label %49

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.nvkm_enum, ptr %15, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = tail call ptr @nvkm_device_engine(ptr noundef %7, i32 noundef %35, i32 noundef %47) #8
  br label %49

49:                                               ; preds = %45, %38, %37, %36, %33, %30
  %50 = phi ptr [ %48, %45 ], [ null, %38 ], [ null, %37 ], [ null, %36 ], [ null, %33 ], [ null, %30 ]
  %51 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 1
  %52 = load i64, ptr %51, align 8
  %53 = call ptr @nvkm_fifo_chan_inst(ptr noundef %0, i64 noundef %52, ptr noundef nonnull %4) #8
  store ptr %53, ptr %3, align 4
  %54 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %103, label %57

57:                                               ; preds = %49
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr inbounds %struct.nvkm_device, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  %62 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 7
  %63 = load i8, ptr %62, align 4
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %64, ptr @.str.22, ptr @.str.21
  %66 = load i64, ptr %1, align 8
  %67 = load i8, ptr %12, align 8
  %68 = zext i8 %67 to i32
  br i1 %32, label %72, label %69

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.nvkm_enum, ptr %15, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %57
  %73 = phi ptr [ %71, %69 ], [ @.str.11, %57 ]
  %74 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 8
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq ptr %31, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.nvkm_enum, ptr %31, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  br label %81

81:                                               ; preds = %78, %72
  %82 = phi ptr [ %80, %78 ], [ @.str.11, %72 ]
  %83 = load i8, ptr %8, align 2
  %84 = zext i8 %83 to i32
  %85 = icmp eq ptr %11, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.nvkm_enum, ptr %11, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = phi ptr [ %88, %86 ], [ @.str.11, %81 ]
  %91 = icmp eq ptr %53, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %53, i32 0, i32 5
  %94 = load i16, ptr %93, align 8
  %95 = zext i16 %94 to i32
  %96 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %53, i32 0, i32 3, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nvkm_client, ptr %97, i32 0, i32 1
  br label %99

99:                                               ; preds = %92, %89
  %100 = phi i32 [ %95, %92 ], [ -1, %89 ]
  %101 = phi ptr [ %98, %92 ], [ @.str.15, %89 ]
  %102 = load i64, ptr %51, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.20, ptr noundef %61, ptr noundef nonnull %65, i64 noundef %66, i32 noundef %68, ptr noundef %73, i32 noundef %76, ptr noundef nonnull %5, ptr noundef %82, i32 noundef %84, ptr noundef %90, i32 noundef %100, i64 noundef %102, ptr noundef %101) #9
  br label %103

103:                                              ; preds = %99, %49
  %104 = icmp ne ptr %50, null
  %105 = icmp ne ptr %53, null
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  call fastcc void @gf100_fifo_recover(ptr noundef %0, ptr noundef nonnull %50, ptr noundef nonnull %53)
  br label %108

108:                                              ; preds = %107, %103
  %109 = load i32, ptr %4, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %0, i32 noundef %109, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_fifo_engine_id(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %13 [
    i32 33, label %14
    i32 38, label %5
    i32 39, label %6
    i32 40, label %7
    i32 28, label %8
    i32 48, label %12
  ]

5:                                                ; preds = %2
  br label %14

6:                                                ; preds = %2
  br label %14

7:                                                ; preds = %2
  br label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 4
  br label %14

12:                                               ; preds = %2
  br label %14

13:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef null) #8
  br label %14

14:                                               ; preds = %13, %12, %8, %7, %6, %5, %2
  %15 = phi i32 [ -1, %13 ], [ 15, %12 ], [ %11, %8 ], [ 3, %7 ], [ 2, %6 ], [ 1, %5 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_fifo_uevent_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %8 = or i32 %7, -2147483648
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 8512
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_fifo_uevent_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %8 = and i32 %7, 2147483647
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 8512
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_bar_bar1_vmm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gf100_fifo_recover(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %2, i32 0, i32 5
  %8 = load i16, ptr %7, align 8
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %20 [
    i32 33, label %21
    i32 38, label %12
    i32 39, label %13
    i32 40, label %14
    i32 28, label %15
    i32 48, label %19
  ]

12:                                               ; preds = %3
  br label %21

13:                                               ; preds = %3
  br label %21

14:                                               ; preds = %3
  br label %21

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 4
  br label %21

19:                                               ; preds = %3
  br label %21

20:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef null) #8
  br label %21

21:                                               ; preds = %20, %19, %15, %14, %13, %12, %3
  %22 = phi i32 [ -1, %20 ], [ 15, %19 ], [ %18, %15 ], [ 3, %14 ], [ 2, %13 ], [ 1, %12 ], [ 0, %3 ]
  %23 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  %31 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.13, ptr noundef %30, ptr noundef %31, i32 noundef %9) #9
  br label %32

32:                                               ; preds = %26, %21
  %33 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %34 = load volatile i32, ptr %33, align 4
  store volatile i32 %34, ptr %4, align 4
  %35 = lshr i32 %34, 16
  %36 = and i32 %34, 65535
  %37 = icmp eq i32 %36, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %37, label %38, label %39, !prof !15

38:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 185, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

39:                                               ; preds = %32
  %40 = shl nuw nsw i32 %9, 3
  %41 = add nuw nsw i32 %40, 12292
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 %41
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %46 = and i32 %45, -2
  %47 = load ptr, ptr %42, align 4
  %48 = getelementptr i8, ptr %47, i32 %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #8, !srcloc !9
  %49 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %2, i32 0, i32 2
  %50 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %2, i32 0, i32 2, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %49, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %51, ptr %53, align 4
  store volatile ptr %52, ptr %51, align 4
  store volatile ptr %49, ptr %49, align 4
  store ptr %49, ptr %50, align 4
  %54 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %2, i32 0, i32 3
  store i8 1, ptr %54, align 4
  %55 = icmp sgt i32 %22, -1
  %56 = icmp ne i32 %22, 15
  %57 = and i1 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %39
  %59 = shl nuw i32 1, %22
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 2, i32 1
  %62 = load i64, ptr %61, align 8
  %63 = or i64 %62, %60
  store i64 %63, ptr %61, align 8
  br label %64

64:                                               ; preds = %58, %39
  %65 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 2
  %66 = load ptr, ptr @system_wq, align 4
  %67 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %66, ptr noundef %65) #8
  tail call void @nvkm_fifo_kevent(ptr noundef %0, i32 noundef %9) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_kevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_sw_mthd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_chid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_chan_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar1_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar2_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_inst(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{i64 2151504091}
!9 = !{i64 3962998}
!10 = !{i64 3963416}
!11 = !{i64 2151502869}
!12 = !{!"auto-init"}
!13 = !{i32 0, i32 33}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2154821247, i64 2154821760, i64 2154821284, i64 2154821340, i64 2154821374, i64 2154821398, i64 2154821439, i64 2154821460, i64 2154821488, i64 2154821522}
