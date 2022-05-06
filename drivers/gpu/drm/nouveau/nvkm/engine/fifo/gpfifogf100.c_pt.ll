; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogf100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
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
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.fermi_channel_gpfifo_v0 = type { i8, i8, [2 x i8], i32, i64, i64 }
%struct.gf100_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, %struct.list_head, i8, [16 x %struct.gf100_fifo_engn] }
%struct.gf100_fifo_engn = type { ptr, ptr }
%struct.gf100_fifo = type { %struct.nvkm_fifo, %struct.list_head, %struct.anon.148, i32, %struct.anon.149, %struct.anon.150 }
%struct.anon.148 = type { %struct.work_struct, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.149 = type { [2 x ptr], i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.150 = type { ptr, ptr }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon.1, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.1 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@gf100_fifo_gpfifo_oclass = dso_local local_unnamed_addr constant %struct.nvkm_fifo_chan_oclass { ptr @gf100_fifo_gpfifo_new, %struct.nvkm_sclass { i32 0, i32 0, i32 36975, ptr null, ptr null } }, align 4
@.str = private unnamed_addr constant [63 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [101 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo vers %d vmm %llx ioffset %016llx ilength %08x\0A\00", align 1
@gf100_fifo_gpfifo_func = internal constant %struct.nvkm_fifo_chan_func { ptr @gf100_fifo_gpfifo_dtor, ptr @gf100_fifo_gpfifo_init, ptr @gf100_fifo_gpfifo_fini, ptr @gf100_fifo_chan_ntfy, ptr @gf100_fifo_gpfifo_engine_ctor, ptr @gf100_fifo_gpfifo_engine_dtor, ptr @gf100_fifo_gpfifo_engine_init, ptr @gf100_fifo_gpfifo_engine_fini, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogf100.c\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%s: channel %d [%s] kick timeout\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @gf100_fifo_chan_ntfy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  switch i32 %1, label %14 [
    i32 0, label %4
    i32 1, label %8
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_fifo, ptr %6, i32 0, i32 7
  br label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_fifo, ptr %10, i32 0, i32 9
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %11, %8 ], [ %7, %4 ]
  store ptr %13, ptr %2, align 4
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i32 [ -22, %3 ], [ 0, %12 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_fifo_gpfifo_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #1 {
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 4
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 1
  %15 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %3) #9
  br label %20

20:                                               ; preds = %13, %5
  %21 = icmp ugt i32 %3, 23
  br i1 %21, label %22, label %194

22:                                               ; preds = %20
  %23 = load i8, ptr %2, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %194

25:                                               ; preds = %22
  %26 = icmp eq i32 %3, 24
  br i1 %26, label %27, label %194

27:                                               ; preds = %25
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.nvkm_client, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  %31 = icmp ugt i32 %30, 4
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.nvkm_client, ptr %28, i32 0, i32 1
  %34 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.fermi_channel_gpfifo_v0, ptr %2, i32 0, i32 5
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds %struct.fermi_channel_gpfifo_v0, ptr %2, i32 0, i32 4
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.fermi_channel_gpfifo_v0, ptr %2, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef 0, i64 noundef %39, i64 noundef %41, i32 noundef %43) #9
  br label %45

45:                                               ; preds = %32, %27
  %46 = getelementptr inbounds %struct.fermi_channel_gpfifo_v0, ptr %2, i32 0, i32 5
  %47 = load i64, ptr %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %194, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 472) #10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %194, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %51, i32 0, i32 3
  store ptr %54, ptr %4, align 4
  %55 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %51, i32 0, i32 1
  store ptr %0, ptr %55, align 8
  %56 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %51, i32 0, i32 2
  store volatile ptr %56, ptr %56, align 4
  %57 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %51, i32 0, i32 2, i32 1
  store ptr %56, ptr %57, align 8
  %58 = load i64, ptr %46, align 8
  %59 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 5
  %60 = getelementptr inbounds %struct.gf100_fifo, ptr %0, i32 0, i32 5, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.nvkm_vma, ptr %61, i32 0, i32 2
  %63 = load i64, ptr %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = tail call i32 @nvkm_fifo_chan_ctor(ptr noundef nonnull @gf100_fifo_gpfifo_func, ptr noundef %0, i32 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, i64 noundef %58, i64 noundef 0, i32 noundef 32831, i32 noundef 1, i32 noundef %64, i32 noundef 4096, ptr noundef %1, ptr noundef nonnull %51) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %194

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %51, i32 0, i32 5
  %69 = load i16, ptr %68, align 8
  %70 = trunc i16 %69 to i8
  %71 = getelementptr inbounds %struct.fermi_channel_gpfifo_v0, ptr %2, i32 0, i32 1
  store i8 %70, ptr %71, align 1
  %72 = zext i16 %69 to i32
  %73 = shl nuw nsw i32 %72, 12
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.fermi_channel_gpfifo_v0, ptr %2, i32 0, i32 4
  %76 = load i64, ptr %75, align 8
  %77 = getelementptr inbounds %struct.fermi_channel_gpfifo_v0, ptr %2, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = lshr i32 %78, 3
  %80 = icmp ugt i32 %78, 15
  %81 = add nsw i32 %79, -1
  %82 = tail call i32 @llvm.ctlz.i32(i32 %81, i1 false) #11, !range !8
  %83 = sub nuw nsw i32 32, %82
  %84 = select i1 %80, i32 %83, i32 0
  %85 = load ptr, ptr %59, align 4
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nvkm_memory_func, ptr %86, i32 0, i32 7
  %88 = load ptr, ptr %87, align 4
  %89 = tail call ptr %88(ptr noundef %85) #11
  br label %90

90:                                               ; preds = %90, %67
  %91 = phi i32 [ 0, %67 ], [ %99, %90 ]
  %92 = load ptr, ptr %59, align 4
  %93 = getelementptr inbounds %struct.nvkm_memory, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = add nuw nsw i32 %91, %73
  %98 = zext i32 %97 to i64
  tail call void %96(ptr noundef %92, i64 noundef %98, i32 noundef 0) #11
  %99 = add nuw nsw i32 %91, 4
  %100 = icmp ult i32 %91, 4092
  br i1 %100, label %90, label %101

101:                                              ; preds = %90
  %102 = sext i32 %84 to i64
  %103 = load ptr, ptr %59, align 4
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.nvkm_memory_func, ptr %104, i32 0, i32 8
  %106 = load ptr, ptr %105, align 4
  tail call void %106(ptr noundef %103) #11
  %107 = load ptr, ptr %59, align 4
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nvkm_memory_func, ptr %108, i32 0, i32 4
  %110 = load ptr, ptr %109, align 4
  %111 = tail call i64 %110(ptr noundef %107) #11
  %112 = add i64 %111, %74
  %113 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %51, i32 0, i32 6
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %114, align 8
  %116 = load ptr, ptr %115, align 4
  %117 = tail call ptr %116(ptr noundef %114) #11
  %118 = load ptr, ptr %113, align 4
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %119, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = trunc i64 %112 to i32
  tail call void %121(ptr noundef %118, i32 noundef 8, i32 noundef %122) #11
  %123 = load ptr, ptr %113, align 4
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %124, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = lshr i64 %112, 32
  %128 = trunc i64 %127 to i32
  tail call void %126(ptr noundef %123, i32 noundef 12, i32 noundef %128) #11
  %129 = load ptr, ptr %113, align 4
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %130, i32 0, i32 3
  %132 = load ptr, ptr %131, align 4
  tail call void %132(ptr noundef %129, i32 noundef 16, i32 noundef 64206) #11
  %133 = load ptr, ptr %113, align 4
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %134, i32 0, i32 3
  %136 = load ptr, ptr %135, align 4
  tail call void %136(ptr noundef %133, i32 noundef 48, i32 noundef -1790) #11
  %137 = load ptr, ptr %113, align 4
  %138 = load ptr, ptr %137, align 8
  %139 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %138, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = trunc i64 %76 to i32
  tail call void %140(ptr noundef %137, i32 noundef 72, i32 noundef %141) #11
  %142 = load ptr, ptr %113, align 4
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %143, i32 0, i32 3
  %145 = load ptr, ptr %144, align 4
  %146 = lshr i64 %76, 32
  %147 = shl nsw i64 %102, 16
  %148 = or i64 %147, %146
  %149 = trunc i64 %148 to i32
  tail call void %145(ptr noundef %142, i32 noundef 76, i32 noundef %149) #11
  %150 = load ptr, ptr %113, align 4
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %151, i32 0, i32 3
  %153 = load ptr, ptr %152, align 4
  tail call void %153(ptr noundef %150, i32 noundef 84, i32 noundef 2) #11
  %154 = load ptr, ptr %113, align 4
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %155, i32 0, i32 3
  %157 = load ptr, ptr %156, align 4
  tail call void %157(ptr noundef %154, i32 noundef 132, i32 noundef 541065216) #11
  %158 = load ptr, ptr %113, align 4
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %159, i32 0, i32 3
  %161 = load ptr, ptr %160, align 4
  tail call void %161(ptr noundef %158, i32 noundef 148, i32 noundef 805306369) #11
  %162 = load ptr, ptr %113, align 4
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %163, i32 0, i32 3
  %165 = load ptr, ptr %164, align 4
  tail call void %165(ptr noundef %162, i32 noundef 156, i32 noundef 256) #11
  %166 = load ptr, ptr %113, align 4
  %167 = load ptr, ptr %166, align 8
  %168 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %167, i32 0, i32 3
  %169 = load ptr, ptr %168, align 4
  tail call void %169(ptr noundef %166, i32 noundef 164, i32 noundef 522133279) #11
  %170 = load ptr, ptr %113, align 4
  %171 = load ptr, ptr %170, align 8
  %172 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %171, i32 0, i32 3
  %173 = load ptr, ptr %172, align 4
  tail call void %173(ptr noundef %170, i32 noundef 168, i32 noundef 522133279) #11
  %174 = load ptr, ptr %113, align 4
  %175 = load ptr, ptr %174, align 8
  %176 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %175, i32 0, i32 3
  %177 = load ptr, ptr %176, align 4
  tail call void %177(ptr noundef %174, i32 noundef 172, i32 noundef 31) #11
  %178 = load ptr, ptr %113, align 4
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %179, i32 0, i32 3
  %181 = load ptr, ptr %180, align 4
  tail call void %181(ptr noundef %178, i32 noundef 184, i32 noundef -134217728) #11
  %182 = load ptr, ptr %113, align 4
  %183 = load ptr, ptr %182, align 8
  %184 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %183, i32 0, i32 3
  %185 = load ptr, ptr %184, align 4
  tail call void %185(ptr noundef %182, i32 noundef 248, i32 noundef 268447872) #11
  %186 = load ptr, ptr %113, align 4
  %187 = load ptr, ptr %186, align 8
  %188 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %187, i32 0, i32 3
  %189 = load ptr, ptr %188, align 4
  tail call void %189(ptr noundef %186, i32 noundef 252, i32 noundef 268435472) #11
  %190 = load ptr, ptr %113, align 4
  %191 = load ptr, ptr %190, align 8
  %192 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %191, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  tail call void %193(ptr noundef %190) #11
  br label %194

194:                                              ; preds = %101, %53, %49, %45, %25, %22, %20
  %195 = phi i32 [ 0, %101 ], [ -22, %45 ], [ -12, %49 ], [ %65, %53 ], [ -38, %20 ], [ -38, %22 ], [ -7, %25 ]
  ret i32 %195
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_chan_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @gf100_fifo_gpfifo_dtor(ptr noundef readnone returned %0) #7 {
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_fifo_gpfifo_init(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fifo, ptr %3, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %7, i32 0, i32 4
  %9 = load i64, ptr %8, align 8
  %10 = lshr i64 %9, 12
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %13 = load i16, ptr %12, align 8
  %14 = zext i16 %13 to i32
  %15 = shl nuw nsw i32 %14, 3
  %16 = or i32 %11, -1073741824
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = add nuw nsw i32 %15, 12288
  %20 = getelementptr i8, ptr %18, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %16) #11, !srcloc !10
  %21 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %0, i32 0, i32 2
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %0, i32 0, i32 3
  %26 = load i8, ptr %25, align 4, !range !11
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  tail call void @gf100_fifo_runlist_insert(ptr noundef %3, ptr noundef %0) #11
  %29 = load ptr, ptr %17, align 4
  %30 = add nuw nsw i32 %15, 12292
  %31 = getelementptr i8, ptr %29, i32 %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 2031617) #11, !srcloc !10
  tail call void @gf100_fifo_runlist_commit(ptr noundef %3) #11
  br label %32

32:                                               ; preds = %28, %24, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_fifo_gpfifo_fini(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fifo, ptr %3, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %7 = load i16, ptr %6, align 8
  %8 = zext i16 %7 to i32
  %9 = shl nuw nsw i32 %8, 3
  %10 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %0, i32 0, i32 2
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %0, i32 0, i32 3
  %15 = load i8, ptr %14, align 4, !range !11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  tail call void @gf100_fifo_runlist_remove(ptr noundef %3, ptr noundef %0) #11
  %18 = add nuw nsw i32 %9, 12292
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %18
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %23 = and i32 %22, -2
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr i8, ptr %24, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #11, !srcloc !10
  tail call void @gf100_fifo_runlist_commit(ptr noundef %3) #11
  br label %26

26:                                               ; preds = %17, %13, %1
  tail call void @gf100_fifo_intr_engine(ptr noundef %3) #11
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = add nuw nsw i32 %9, 12288
  %30 = getelementptr i8, ptr %28, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #11, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_fifo_gpfifo_engine_ctor(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %5, ptr noundef %1) #11
  %10 = icmp sgt i32 %9, -1
  %11 = getelementptr %struct.gf100_fifo_chan, ptr %0, i32 0, i32 4, i32 %9
  %12 = select i1 %10, ptr %11, ptr null
  %13 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %15 [
    i32 48, label %42
    i32 33, label %21
    i32 28, label %16
    i32 38, label %21
    i32 39, label %21
    i32 40, label %21
  ]

15:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 63, i32 noundef 9, ptr noundef null) #11
  br label %42

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 268435455
  %20 = icmp eq i32 %19, 268435421
  br i1 %20, label %42, label %21

21:                                               ; preds = %16, %3, %3, %3, %3
  %22 = tail call i32 @nvkm_object_bind(ptr noundef %2, ptr noundef null, i32 noundef 0, ptr noundef %12) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %12, align 4
  %28 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %27, i32 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.gf100_fifo_engn, ptr %12, i32 0, i32 1
  %32 = tail call i32 @nvkm_vmm_get(ptr noundef %26, i8 noundef zeroext 12, i64 noundef %30, ptr noundef %31) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load ptr, ptr %12, align 4
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %36, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %25, align 4
  %40 = load ptr, ptr %31, align 4
  %41 = tail call i32 %38(ptr noundef %35, i64 noundef 0, ptr noundef %39, ptr noundef %40, ptr noundef null, i32 noundef 0) #11
  br label %42

42:                                               ; preds = %34, %24, %21, %16, %15, %3
  %43 = phi i32 [ %41, %34 ], [ 0, %16 ], [ %22, %21 ], [ %32, %24 ], [ 0, %15 ], [ 0, %3 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_fifo_gpfifo_engine_dtor(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %4, ptr noundef %1) #11
  %9 = icmp sgt i32 %8, -1
  %10 = getelementptr %struct.gf100_fifo_chan, ptr %0, i32 0, i32 4, i32 %8
  %11 = select i1 %9, ptr %10, ptr null
  %12 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.gf100_fifo_engn, ptr %11, i32 0, i32 1
  tail call void @nvkm_vmm_put(ptr noundef %13, ptr noundef %14) #11
  tail call void @nvkm_gpuobj_del(ptr noundef %11) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_fifo_gpfifo_engine_init(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %14 [
    i32 48, label %15
    i32 33, label %5
    i32 28, label %6
    i32 38, label %11
    i32 39, label %12
    i32 40, label %13
  ]

5:                                                ; preds = %2
  br label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 4
  %10 = add i32 %9, 560
  br label %15

11:                                               ; preds = %2
  br label %15

12:                                               ; preds = %2
  br label %15

13:                                               ; preds = %2
  br label %15

14:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 63, i32 noundef 9, ptr noundef null) #11
  br label %15

15:                                               ; preds = %14, %13, %12, %11, %6, %5, %2
  %16 = phi i32 [ 0, %14 ], [ 624, %13 ], [ 608, %12 ], [ 592, %11 ], [ %10, %6 ], [ 528, %5 ], [ 0, %2 ]
  %17 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %18, ptr noundef %1) #11
  %23 = icmp eq i32 %16, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %15
  %25 = icmp sgt i32 %22, -1
  %26 = getelementptr %struct.gf100_fifo_chan, ptr %0, i32 0, i32 4, i32 %22
  %27 = select i1 %25, ptr %26, ptr null
  %28 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %30, align 4
  %32 = tail call ptr %31(ptr noundef %29) #11
  %33 = load ptr, ptr %29, align 8
  %34 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.gf100_fifo_engn, ptr %27, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nvkm_vma, ptr %37, i32 0, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = or i32 %40, 4
  tail call void %35(ptr noundef %29, i32 noundef %16, i32 noundef %41) #11
  %42 = load ptr, ptr %29, align 8
  %43 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = add i32 %16, 4
  %46 = load ptr, ptr %36, align 4
  %47 = getelementptr inbounds %struct.nvkm_vma, ptr %46, i32 0, i32 2
  %48 = load i64, ptr %47, align 8
  %49 = lshr i64 %48, 32
  %50 = trunc i64 %49 to i32
  tail call void %44(ptr noundef %29, i32 noundef %45, i32 noundef %50) #11
  %51 = load ptr, ptr %29, align 8
  %52 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %29) #11
  br label %54

54:                                               ; preds = %24, %15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_fifo_gpfifo_engine_fini(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #1 {
  %4 = alloca %struct.nvkm_timer_wait, align 8
  %5 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %16 [
    i32 48, label %17
    i32 33, label %7
    i32 28, label %8
    i32 38, label %13
    i32 39, label %14
    i32 40, label %15
  ]

7:                                                ; preds = %3
  br label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 4
  %12 = add i32 %11, 560
  br label %17

13:                                               ; preds = %3
  br label %17

14:                                               ; preds = %3
  br label %17

15:                                               ; preds = %3
  br label %17

16:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 63, i32 noundef 9, ptr noundef null) #11
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %8, %7, %3
  %18 = phi i32 [ 0, %16 ], [ 624, %15 ], [ 608, %14 ], [ 592, %13 ], [ %12, %8 ], [ 528, %7 ], [ 0, %3 ]
  %19 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nvkm_fifo, ptr %20, i32 0, i32 1, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_fifo, ptr %20, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %25) #11
  %26 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %27 = load i16, ptr %26, align 8
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 9780
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #11, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !14
  call void @nvkm_timer_wait_init(ptr noundef %22, i64 noundef 2000000000, ptr noundef nonnull %4) #11
  br label %32

32:                                               ; preds = %39, %17
  %33 = load ptr, ptr %29, align 4
  %34 = getelementptr i8, ptr %33, i32 9780
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %36 = load i16, ptr %26, align 8
  %37 = zext i16 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %74, label %39

39:                                               ; preds = %32
  %40 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %4) #11
  %41 = icmp sgt i64 %40, -1
  br i1 %41, label %32, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.nvkm_timer, ptr %43, i32 0, i32 1, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = call ptr @dev_driver_string(ptr noundef %47) #11
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds %struct.nvkm_timer, ptr %49, i32 0, i32 1, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nvkm_device, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load ptr, ptr %53, align 4
  br label %59

59:                                               ; preds = %57, %42
  %60 = phi ptr [ %58, %57 ], [ %55, %42 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %48, ptr noundef %60) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  %61 = getelementptr inbounds %struct.nvkm_fifo, ptr %20, i32 0, i32 1, i32 1, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %21, align 4
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.nvkm_fifo, ptr %20, i32 0, i32 1, i32 1, i32 4
  %69 = load i16, ptr %26, align 8
  %70 = zext i16 %69 to i32
  %71 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 3, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nvkm_client, ptr %72, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.4, ptr noundef %68, i32 noundef %70, ptr noundef %73) #9
  br label %75

74:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  br label %75

75:                                               ; preds = %74, %64, %59
  %76 = phi i32 [ 0, %74 ], [ -110, %64 ], [ -110, %59 ]
  %77 = load ptr, ptr %19, align 8
  %78 = getelementptr inbounds %struct.nvkm_fifo, ptr %77, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %78) #11
  %79 = xor i1 %38, true
  %80 = and i1 %79, %2
  %81 = icmp eq i32 %18, 0
  %82 = select i1 %80, i1 true, i1 %81
  br i1 %82, label %97, label %83

83:                                               ; preds = %75
  %84 = load ptr, ptr %24, align 8
  %85 = load ptr, ptr %84, align 4
  %86 = call ptr %85(ptr noundef %24) #11
  %87 = load ptr, ptr %24, align 8
  %88 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %87, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  call void %89(ptr noundef %24, i32 noundef %18, i32 noundef 0) #11
  %90 = load ptr, ptr %24, align 8
  %91 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %90, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = add i32 %18, 4
  call void %92(ptr noundef %24, i32 noundef %93, i32 noundef 0) #11
  %94 = load ptr, ptr %24, align 8
  %95 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  call void %96(ptr noundef %24) #11
  br label %97

97:                                               ; preds = %83, %75
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fifo_runlist_insert(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fifo_runlist_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fifo_runlist_remove(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fifo_intr_engine(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{i64 2151494990}
!10 = !{i64 3953897}
!11 = !{i8 0, i8 2}
!12 = !{i64 3954315}
!13 = !{i64 2151493768}
!14 = !{!"auto-init"}
