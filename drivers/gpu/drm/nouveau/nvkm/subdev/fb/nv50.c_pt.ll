; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fb_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i8, ptr }
%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { i32, ptr, ptr, ptr, ptr }
%struct.nv50_fb_func = type { ptr, ptr, i32 }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nv50_fb = type { ptr, %struct.nvkm_fb, ptr, i32 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.133, %struct.anon.134, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.133 = type { %struct.mutex, %struct.nvkm_mm }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.134 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }

@nv50_fb_ = internal constant %struct.nvkm_fb_func { ptr @nv50_fb_dtor, ptr @nv50_fb_tags, ptr @nv50_fb_oneinit, ptr @nv50_fb_init, ptr null, ptr null, ptr null, ptr @nv50_fb_intr, %struct.anon zeroinitializer, %struct.anon.0 zeroinitializer, ptr @nv50_fb_ram_new, i8 0, ptr null }, align 4
@nv50_fb = internal constant %struct.nv50_fb_func { ptr @nv50_ram_new, ptr @nv20_fb_tags, i32 460799 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@vm_engine = internal constant [14 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.5, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.6, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.7, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.8, ptr @vm_pfifo_subclients, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.9, ptr @vm_bar_subclients, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.10, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.11, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.12, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.13, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.14, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.15, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.16, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.17, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@vm_fault = internal constant [10 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.22, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.23, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.24, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.25, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.26, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.27, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.28, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.29, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.30, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@vm_client = internal constant [16 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.31, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.32, ptr @vm_dispatch_subclients, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.33, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.34, ptr @vm_ccache_subclients, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.10, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.35, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.36, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.37, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.38, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.39, ptr @vm_prop_subclients, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.6, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.12, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.13, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.14, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.40, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str = private unnamed_addr constant [127 x i8] c"%s: trapped %s at %02x%04x%04x on channel %d [%08x %s] engine %02x [%s] client %02x [%s] subclient %02x [%s] reason %08x [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"PGRAPH\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"PVP\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"PEEPHOLE\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"PFIFO\00", align 1
@vm_pfifo_subclients = internal constant [3 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.18, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.19, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"BAR\00", align 1
@vm_bar_subclients = internal constant [3 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.20, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.21, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"PMSPPP\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"PMPEG\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"PBSP\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"PCRYPT\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"PCOUNTER\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"SEMAPHORE_BG\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"PCE0\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"PMU\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"PUSHBUF\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"SEMAPHORE\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"FB\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"PT_NOT_PRESENT\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"PT_TOO_SHORT\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"PAGE_NOT_PRESENT\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"PAGE_SYSTEM_ONLY\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"PAGE_READ_ONLY\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"NULL_DMAOBJ\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"WRONG_MEMTYPE\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"VRAM_LIMIT\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"DMAOBJ_LIMIT\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"STRMOUT\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"DISPATCH\00", align 1
@vm_dispatch_subclients = internal constant [8 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.41, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.42, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.43, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.44, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.45, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.46, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.47, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.33 = private unnamed_addr constant [12 x i8] c"PFIFO_WRITE\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"CCACHE\00", align 1
@vm_ccache_subclients = internal constant [4 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.48, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.49, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.50, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.35 = private unnamed_addr constant [7 x i8] c"CLIPID\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"PFIFO_READ\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"VFETCH\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"TEXTURE\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"PROP\00", align 1
@vm_prop_subclients = internal constant [14 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.51, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.52, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.53, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.54, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.55, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.56, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.57, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.58, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.59, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.60, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.61, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.62, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.63, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.40 = private unnamed_addr constant [8 x i8] c"PDAEMON\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"GRCTX\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"NOTIFY\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"QUERY\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"COND\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"M2M_IN\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"M2M_OUT\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"M2M_NOTIFY\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"CB\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"TIC\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"TSC\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"RT0\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"RT1\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"RT2\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"RT3\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"RT4\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"RT5\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"RT6\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"RT7\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"ZETA\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"GLOBAL\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"STACK\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"DST2D\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_fb_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 460) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nv50_fb, ptr %7, i32 0, i32 1
  tail call void @nvkm_fb_ctor(ptr noundef nonnull @nv50_fb_, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %10) #6
  store ptr %0, ptr %7, align 8
  store ptr %10, ptr %4, align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fb_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_fb_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 460) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nv50_fb, ptr %6, i32 0, i32 1
  tail call void @nvkm_fb_ctor(ptr noundef nonnull @nv50_fb_, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %9) #6
  store ptr @nv50_fb, ptr %6, align 8
  store ptr %9, ptr %3, align 4
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nv50_fb_dtor(ptr noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 448
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %0, i32 452
  %11 = load i32, ptr %10, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %11, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #6
  %12 = load ptr, ptr %2, align 4
  tail call void @__free_pages(ptr noundef %12, i32 noundef 0) #6
  br label %13

13:                                               ; preds = %5, %1
  %14 = getelementptr i8, ptr %0, i32 -4
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_fb_tags(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nv50_fb_func, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #6
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_fb_oneinit(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef 0, i32 noundef 0, ptr noundef null) #6
  %5 = getelementptr i8, ptr %0, i32 448
  store ptr %4, ptr %5, align 4
  %6 = icmp eq ptr %4, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @dma_map_page_attrs(ptr noundef %9, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #6
  %11 = getelementptr i8, ptr %0, i32 452
  store i32 %10, ptr %11, align 4
  %12 = icmp eq i32 %10, -1
  br i1 %12, label %14, label %13

13:                                               ; preds = %7, %1
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i32 [ 0, %13 ], [ -14, %7 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_fb_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 452
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 8
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 1051656
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #6, !srcloc !9
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.nv50_fb_func, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr i8, ptr %14, i32 1051792
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_fb_intr(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 52
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !10
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 1051792
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %152, label %13

13:                                               ; preds = %1
  %14 = and i32 %11, 16777215
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr i8, ptr %15, i32 1051792
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #6, !srcloc !9
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr i8, ptr %17, i32 1051796
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %20 = or i32 %14, 16777216
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr i8, ptr %21, i32 1051792
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #6, !srcloc !9
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr i8, ptr %23, i32 1051796
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %26 = or i32 %14, 33554432
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr i8, ptr %27, i32 1051792
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #6, !srcloc !9
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr i8, ptr %29, i32 1051796
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %32 = or i32 %14, 50331648
  %33 = load ptr, ptr %8, align 4
  %34 = getelementptr i8, ptr %33, i32 1051792
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #6, !srcloc !9
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr i8, ptr %35, i32 1051796
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %38 = or i32 %14, 67108864
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr i8, ptr %39, i32 1051792
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #6, !srcloc !9
  %41 = load ptr, ptr %8, align 4
  %42 = getelementptr i8, ptr %41, i32 1051796
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %44 = or i32 %14, 83886080
  %45 = load ptr, ptr %8, align 4
  %46 = getelementptr i8, ptr %45, i32 1051792
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #6, !srcloc !9
  %47 = load ptr, ptr %8, align 4
  %48 = getelementptr i8, ptr %47, i32 1051796
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %50 = or i32 %14, -2147483648
  %51 = load ptr, ptr %8, align 4
  %52 = getelementptr i8, ptr %51, i32 1051792
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #6, !srcloc !9
  %53 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 16
  %54 = load i32, ptr %53, align 4
  %55 = freeze i32 %54
  %56 = icmp ult i32 %55, 163
  br i1 %56, label %58, label %57

57:                                               ; preds = %13
  switch i32 %55, label %66 [
    i32 172, label %58
    i32 170, label %58
  ]

58:                                               ; preds = %57, %57, %13
  %59 = and i32 %19, 15
  %60 = lshr i32 %19, 4
  %61 = and i32 %60, 15
  %62 = lshr i32 %19, 8
  %63 = and i32 %62, 15
  %64 = lshr i32 %19, 12
  %65 = and i32 %64, 15
  br label %70

66:                                               ; preds = %57
  %67 = lshr i32 %19, 8
  %68 = lshr i32 %19, 16
  %69 = lshr i32 %19, 24
  br label %70

70:                                               ; preds = %66, %58
  %71 = phi i32 [ %59, %58 ], [ %19, %66 ]
  %72 = phi i32 [ %61, %58 ], [ %67, %66 ]
  %73 = phi i32 [ %63, %58 ], [ %68, %66 ]
  %74 = phi i32 [ %65, %58 ], [ %69, %66 ]
  %75 = shl i32 %31, 28
  %76 = shl i32 %25, 12
  %77 = or i32 %76, %75
  %78 = and i32 %71, 255
  %79 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @vm_engine, i32 noundef %78) #6
  %80 = and i32 %72, 255
  %81 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @vm_fault, i32 noundef %80) #6
  %82 = and i32 %73, 255
  %83 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @vm_client, i32 noundef %82) #6
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %70
  %86 = getelementptr inbounds %struct.nvkm_enum, ptr %83, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %85, %70
  %90 = icmp eq ptr %79, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.nvkm_enum, ptr %79, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %91, %85
  %96 = phi ptr [ %87, %85 ], [ %93, %91 ]
  %97 = tail call ptr @nvkm_enum_find(ptr noundef nonnull %96, i32 noundef %74) #6
  br label %98

98:                                               ; preds = %95, %91, %89
  %99 = phi ptr [ null, %91 ], [ null, %89 ], [ %97, %95 ]
  %100 = zext i32 %77 to i64
  %101 = call ptr @nvkm_fifo_chan_inst(ptr noundef %7, i64 noundef %100, ptr noundef nonnull %3) #6
  store ptr %101, ptr %2, align 4
  %102 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 1, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %150, label %105

105:                                              ; preds = %98
  %106 = load ptr, ptr %4, align 4
  %107 = getelementptr inbounds %struct.nvkm_device, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 1, i32 4
  %110 = and i32 %49, 256
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, ptr @.str.2, ptr @.str.1
  %113 = and i32 %49, 255
  %114 = and i32 %43, 65535
  %115 = and i32 %37, 65535
  %116 = icmp eq ptr %101, null
  br i1 %116, label %124, label %117

117:                                              ; preds = %105
  %118 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %101, i32 0, i32 5
  %119 = load i16, ptr %118, align 8
  %120 = zext i16 %119 to i32
  %121 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %101, i32 0, i32 3, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.nvkm_client, ptr %122, i32 0, i32 1
  br label %124

124:                                              ; preds = %117, %105
  %125 = phi i32 [ %120, %117 ], [ -1, %105 ]
  %126 = phi ptr [ %123, %117 ], [ @.str.3, %105 ]
  %127 = icmp eq ptr %79, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.nvkm_enum, ptr %79, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  br label %131

131:                                              ; preds = %128, %124
  %132 = phi ptr [ %130, %128 ], [ @.str.4, %124 ]
  br i1 %84, label %136, label %133

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.nvkm_enum, ptr %83, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  br label %136

136:                                              ; preds = %133, %131
  %137 = phi ptr [ %135, %133 ], [ @.str.4, %131 ]
  %138 = icmp eq ptr %99, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.nvkm_enum, ptr %99, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  br label %142

142:                                              ; preds = %139, %136
  %143 = phi ptr [ %141, %139 ], [ @.str.4, %136 ]
  %144 = icmp eq ptr %81, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.nvkm_enum, ptr %81, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  br label %148

148:                                              ; preds = %145, %142
  %149 = phi ptr [ %147, %145 ], [ @.str.4, %142 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str, ptr noundef %109, ptr noundef nonnull %112, i32 noundef %113, i32 noundef %114, i32 noundef %115, i32 noundef %125, i32 noundef %77, ptr noundef %126, i32 noundef %78, ptr noundef %132, i32 noundef %82, ptr noundef %137, i32 noundef %74, ptr noundef %143, i32 noundef %80, ptr noundef %149) #7
  br label %150

150:                                              ; preds = %148, %98
  %151 = load i32, ptr %3, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %7, i32 noundef %151, ptr noundef nonnull %2) #6
  br label %152

152:                                              ; preds = %150, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_fb_ram_new(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0, ptr noundef %1) #6
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_inst(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_chan_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_ram_new(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_fb_tags(ptr noundef) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 2151494310}
!9 = !{i64 3953217}
!10 = !{!"auto-init"}
!11 = !{i64 3953635}
!12 = !{i64 2151493088}
