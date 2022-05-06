; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_instmem_func = type { ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nv50_instmem = type { %struct.nvkm_instmem, i64, %struct.list_head }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nv50_instobj = type { %struct.nvkm_instobj, ptr, ptr, ptr, %struct.refcount_struct, ptr, %struct.list_head }
%struct.nvkm_instobj = type { %struct.nvkm_memory, %struct.list_head, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@nv50_instmem = internal constant %struct.nvkm_instmem_func { ptr null, ptr null, ptr @nv50_instmem_fini, ptr null, ptr null, ptr @nv50_instobj_new, i8 0 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nv50_instobj_func = internal constant %struct.nvkm_memory_func { ptr @nv50_instobj_dtor, ptr @nv50_instobj_target, ptr null, ptr @nv50_instobj_bar2, ptr @nv50_instobj_addr, ptr @nv50_instobj_size, ptr @nv50_instobj_boot, ptr @nv50_instobj_acquire, ptr @nv50_instobj_release, ptr @nv50_instobj_map }, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: evict %016llx %016llx @ %016llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: PRAMIN ioremap failed\0A\00", align 1
@nv50_instobj_fast = internal constant %struct.nvkm_memory_ptrs { ptr @nv50_instobj_rd32, ptr @nv50_instobj_wr32 }, align 4
@nv50_instobj_slow = internal constant %struct.nvkm_memory_ptrs { ptr @nv50_instobj_rd32_slow, ptr @nv50_instobj_wr32_slow }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_instmem_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 136) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  tail call void @nvkm_instmem_ctor(ptr noundef nonnull @nv50_instmem, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6) #8
  %9 = getelementptr inbounds %struct.nv50_instmem, ptr %6, i32 0, i32 2
  store volatile ptr %9, ptr %9, align 8
  %10 = getelementptr inbounds %struct.nv50_instmem, ptr %6, i32 0, i32 2, i32 1
  store ptr %9, ptr %10, align 4
  store ptr %6, ptr %3, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instmem_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @nv50_instmem_fini(ptr nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.nv50_instmem, ptr %0, i32 0, i32 1
  store i64 -1, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_instobj_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 56) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %5
  %12 = icmp ugt i32 %2, 1
  %13 = add i32 %2, -1
  %14 = tail call i32 @llvm.ctlz.i32(i32 %13, i1 false) #8, !range !8
  %15 = sub nuw nsw i32 32, %14
  %16 = call i32 @llvm.smax.i32(i32 %15, i32 12)
  %17 = trunc i32 %16 to i8
  %18 = select i1 %12, i8 %17, i8 12
  store ptr %9, ptr %4, align 4
  tail call void @nvkm_instobj_ctor(ptr noundef nonnull @nv50_instobj_func, ptr noundef %0, ptr noundef nonnull %9) #8
  %19 = getelementptr inbounds %struct.nv50_instobj, ptr %9, i32 0, i32 1
  store ptr %0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nv50_instobj, ptr %9, i32 0, i32 4
  store volatile i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.nv50_instobj, ptr %9, i32 0, i32 6
  store volatile ptr %21, ptr %21, align 8
  %22 = getelementptr inbounds %struct.nv50_instobj, ptr %9, i32 0, i32 6, i32 1
  store ptr %21, ptr %22, align 4
  %23 = zext i32 %1 to i64
  %24 = getelementptr inbounds %struct.nv50_instobj, ptr %9, i32 0, i32 2
  %25 = tail call i32 @nvkm_ram_get(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext %18, i64 noundef %23, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %24) #8
  br label %26

26:                                               ; preds = %11, %5
  %27 = phi i32 [ %25, %11 ], [ -12, %5 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instobj_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nv50_instobj_dtor(ptr noundef returned %0) #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %5 = getelementptr inbounds %struct.nvkm_instmem, ptr %4, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %7, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  store ptr %17, ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef %5) #8
  %18 = icmp eq ptr %15, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.nvkm_instmem, ptr %4, i32 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @nvkm_bar_bar2_vmm(ptr noundef %21) #8
  tail call void @iounmap(ptr noundef nonnull %15) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !9

24:                                               ; preds = %19
  call void @nvkm_vmm_put(ptr noundef nonnull %22, ptr noundef nonnull %2) #8
  br label %25

25:                                               ; preds = %24, %19, %13
  %26 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 2
  call void @nvkm_memory_unref(ptr noundef %26) #8
  call void @nvkm_instobj_dtor(ptr noundef %4, ptr noundef %0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_instobj_target(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_memory_func, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %3) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @nv50_instobj_bar2(ptr noundef %0) #0 {
  %2 = tail call ptr @nv50_instobj_acquire(ptr noundef %0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 6
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_vma, ptr %7, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i64 [ %9, %4 ], [ -1, %1 ]
  %12 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %14 = getelementptr inbounds %struct.nvkm_instmem, ptr %13, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 36
  %17 = load ptr, ptr %16, align 4
  tail call void @nvkm_bar_flush(ptr noundef %17) #8
  %18 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 4
  %19 = getelementptr inbounds %struct.nvkm_instmem, ptr %13, i32 0, i32 6
  %20 = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %18, ptr noundef %19) #8
  br i1 %20, label %21, label %40

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25, !prof !9

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = load volatile ptr, ptr %22, align 4
  %31 = icmp eq ptr %30, %22
  br i1 %31, label %33, label %32, !prof !11

32:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv50.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 205, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.nv50_instmem, ptr %13, i32 0, i32 2
  %35 = getelementptr inbounds %struct.nv50_instmem, ptr %13, i32 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 4
  store ptr %22, ptr %35, align 4
  store ptr %34, ptr %22, align 4
  %37 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 6, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %22, ptr %36, align 4
  br label %38

38:                                               ; preds = %33, %25, %21
  %39 = getelementptr inbounds %struct.nvkm_memory, ptr %0, i32 0, i32 1
  store ptr null, ptr %39, align 4
  tail call void @mutex_unlock(ptr noundef %19) #8
  br label %40

40:                                               ; preds = %38, %10
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @nv50_instobj_addr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_memory_func, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i64 %6(ptr noundef %3) #8
  ret i64 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @nv50_instobj_size(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_memory_func, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i64 %6(ptr noundef %3) #8
  ret i64 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_instobj_boot(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_instmem, ptr %4, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %7, ptr %11, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %10, align 4
  store ptr null, ptr %6, align 4
  br label %13

13:                                               ; preds = %9, %2
  tail call fastcc void @nv50_instobj_kmap(ptr noundef %0, ptr noundef %1)
  tail call void @nvkm_instmem_boot(ptr noundef %4) #8
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nv50_instobj_acquire(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 4
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %17, %1
  %8 = phi i32 [ %15, %17 ], [ %5, %1 ]
  %9 = add i32 %8, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #8, !srcloc !13
  br label %10

10:                                               ; preds = %10, %7
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %8, i32 %9, ptr elementtype(i32) %4) #8, !srcloc !14
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10
  %15 = extractvalue { i32, i32 } %11, 1
  %16 = icmp eq i32 %15, %8
  br i1 %16, label %19, label %17, !prof !11

17:                                               ; preds = %14
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %17, %14, %1
  %20 = phi i32 [ 0, %1 ], [ 0, %17 ], [ %8, %14 ]
  %21 = add i32 %20, 1
  %22 = or i32 %21, %20
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %25, label %24, !prof !11

24:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 0) #8
  br label %25

25:                                               ; preds = %24, %19
  %26 = icmp eq i32 %20, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  br label %105

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %31) #8
  %32 = load volatile i32, ptr %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %44, %30
  %35 = phi i32 [ %42, %44 ], [ %32, %30 ]
  %36 = add i32 %35, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #8, !srcloc !13
  br label %37

37:                                               ; preds = %37, %34
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %35, i32 %36, ptr elementtype(i32) %4) #8, !srcloc !14
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %37

41:                                               ; preds = %37
  %42 = extractvalue { i32, i32 } %38, 1
  %43 = icmp eq i32 %42, %35
  br i1 %43, label %46, label %44, !prof !11

44:                                               ; preds = %41
  %45 = icmp eq i32 %42, 0
  br i1 %45, label %46, label %34

46:                                               ; preds = %44, %41, %30
  %47 = phi i32 [ 0, %30 ], [ 0, %44 ], [ %35, %41 ]
  %48 = add i32 %47, 1
  %49 = or i32 %48, %47
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %52, label %51, !prof !11

51:                                               ; preds = %46
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 0) #8
  br label %52

52:                                               ; preds = %51, %46
  %53 = icmp eq i32 %47, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %52
  tail call void @mutex_unlock(ptr noundef %31) #8
  %55 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  br label %105

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 1, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = tail call ptr @nvkm_bar_bar2_vmm(ptr noundef %59) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  tail call fastcc void @nv50_instobj_kmap(ptr noundef %0, ptr noundef nonnull %60)
  %67 = load ptr, ptr %63, align 4
  br label %68

68:                                               ; preds = %66, %62, %57
  %69 = phi ptr [ null, %57 ], [ %67, %66 ], [ %64, %62 ]
  %70 = load volatile i32, ptr %4, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %82, %68
  %73 = phi i32 [ %80, %82 ], [ %70, %68 ]
  %74 = add i32 %73, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #8, !srcloc !13
  br label %75

75:                                               ; preds = %75, %72
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %73, i32 %74, ptr elementtype(i32) %4) #8, !srcloc !14
  %77 = extractvalue { i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %75

79:                                               ; preds = %75
  %80 = extractvalue { i32, i32 } %76, 1
  %81 = icmp eq i32 %80, %73
  br i1 %81, label %84, label %82, !prof !11

82:                                               ; preds = %79
  %83 = icmp eq i32 %80, 0
  br i1 %83, label %84, label %72

84:                                               ; preds = %82, %79, %68
  %85 = phi i32 [ 0, %68 ], [ 0, %82 ], [ %73, %79 ]
  %86 = add i32 %85, 1
  %87 = or i32 %86, %85
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %90, label %89, !prof !11

89:                                               ; preds = %84
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 0) #8
  br label %90

90:                                               ; preds = %89, %84
  %91 = icmp eq i32 %85, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 6
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96, !prof !9

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 6, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  store ptr %98, ptr %99, align 4
  store volatile ptr %94, ptr %98, align 4
  store volatile ptr %93, ptr %93, align 4
  store ptr %93, ptr %97, align 4
  br label %100

100:                                              ; preds = %96, %92
  %101 = icmp eq ptr %69, null
  %102 = select i1 %101, ptr @nv50_instobj_slow, ptr @nv50_instobj_fast
  %103 = getelementptr inbounds %struct.nvkm_memory, ptr %0, i32 0, i32 1
  store ptr %102, ptr %103, align 4
  store volatile i32 1, ptr %4, align 4
  br label %104

104:                                              ; preds = %100, %90
  tail call void @mutex_unlock(ptr noundef %31) #8
  br label %105

105:                                              ; preds = %104, %54, %27
  %106 = phi ptr [ %29, %27 ], [ %56, %54 ], [ %69, %104 ]
  ret ptr %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_instobj_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %4 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 36
  %7 = load ptr, ptr %6, align 4
  tail call void @nvkm_bar_flush(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 6
  %10 = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %8, ptr noundef %9) #8
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15, !prof !9

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = load volatile ptr, ptr %12, align 4
  %21 = icmp eq ptr %20, %12
  br i1 %21, label %23, label %22, !prof !11

22:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv50.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 205, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nv50_instmem, ptr %3, i32 0, i32 2
  %25 = getelementptr inbounds %struct.nv50_instmem, ptr %3, i32 0, i32 2, i32 1
  %26 = load ptr, ptr %25, align 4
  store ptr %12, ptr %25, align 4
  store ptr %24, ptr %12, align 4
  %27 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 6, i32 1
  store ptr %26, ptr %27, align 4
  store volatile ptr %12, ptr %26, align 4
  br label %28

28:                                               ; preds = %23, %15, %11
  %29 = getelementptr inbounds %struct.nvkm_memory, ptr %0, i32 0, i32 1
  store ptr null, ptr %29, align 4
  tail call void @mutex_unlock(ptr noundef %9) #8
  br label %30

30:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_instobj_map(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_memory_func, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %8, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_bar_bar2_vmm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instobj_dtor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_instobj_kmap(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_instmem, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !15
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.nvkm_memory_func, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i64 %11(ptr noundef %0) #8
  %13 = getelementptr inbounds %struct.nvkm_instmem, ptr %6, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %13) #8
  %14 = call i32 @nvkm_vmm_get(ptr noundef %1, i8 noundef zeroext 12, i64 noundef %12, ptr noundef nonnull %3) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %57, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.nv50_instmem, ptr %6, i32 0, i32 2
  %18 = getelementptr inbounds %struct.nvkm_instmem, ptr %6, i32 0, i32 1, i32 5
  %19 = getelementptr inbounds %struct.nvkm_instmem, ptr %6, i32 0, i32 1, i32 4
  br label %20

20:                                               ; preds = %45, %16
  call void @mutex_lock(ptr noundef %13) #8
  %21 = load volatile ptr, ptr %17, align 4
  %22 = icmp eq ptr %21, %17
  %23 = getelementptr i8, ptr %21, i32 -48
  %24 = icmp eq ptr %23, null
  %25 = or i1 %22, %24
  br i1 %25, label %56, label %26

26:                                               ; preds = %20
  %27 = load i32, ptr %18, align 4
  %28 = icmp ugt i32 %27, 3
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr inbounds %struct.nvkm_memory_func, ptr %33, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = call i64 %35(ptr noundef nonnull %23) #8
  %37 = load ptr, ptr %23, align 4
  %38 = getelementptr inbounds %struct.nvkm_memory_func, ptr %37, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = call i64 %39(ptr noundef nonnull %23) #8
  %41 = getelementptr i8, ptr %21, i32 -12
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_vma, ptr %42, i32 0, i32 2
  %44 = load i64, ptr %43, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str, ptr noundef %19, i64 noundef %36, i64 noundef %40, i64 noundef %44) #9
  br label %45

45:                                               ; preds = %29, %26
  %46 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %21, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 4
  store volatile ptr %48, ptr %47, align 4
  store volatile ptr %21, ptr %21, align 4
  store ptr %21, ptr %46, align 4
  %50 = getelementptr i8, ptr %21, i32 -12
  %51 = load ptr, ptr %50, align 4
  store ptr %51, ptr %4, align 4
  store ptr null, ptr %50, align 4
  %52 = getelementptr i8, ptr %21, i32 -4
  %53 = load ptr, ptr %52, align 4
  store ptr null, ptr %52, align 4
  call void @mutex_unlock(ptr noundef %13) #8
  call void @iounmap(ptr noundef %53) #8
  call void @nvkm_vmm_put(ptr noundef %1, ptr noundef nonnull %4) #8
  %54 = call i32 @nvkm_vmm_get(ptr noundef %1, i8 noundef zeroext 12, i64 noundef %12, ptr noundef nonnull %3) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %20

56:                                               ; preds = %20
  call void @mutex_unlock(ptr noundef %13) #8
  call void @mutex_lock(ptr noundef %13) #8
  br label %68

57:                                               ; preds = %45, %2
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr inbounds %struct.nvkm_memory_func, ptr %58, i32 0, i32 9
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %3, align 4
  %62 = call i32 %60(ptr noundef %0, i64 noundef 0, ptr noundef %1, ptr noundef %61, ptr noundef null, i32 noundef 0) #8
  call void @mutex_lock(ptr noundef %13) #8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %57, %56
  call void @mutex_unlock(ptr noundef %13) #8
  call void @nvkm_vmm_put(ptr noundef %1, ptr noundef nonnull %3) #8
  call void @mutex_lock(ptr noundef %13) #8
  br label %94

69:                                               ; preds = %64
  %70 = load ptr, ptr %3, align 4
  store ptr %70, ptr %65, align 4
  %71 = load ptr, ptr %8, align 8
  %72 = getelementptr inbounds %struct.nvkm_device_func, ptr %71, i32 0, i32 6
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 %73(ptr noundef %8, i32 noundef 3) #8
  %75 = load ptr, ptr %65, align 4
  %76 = getelementptr inbounds %struct.nvkm_vma, ptr %75, i32 0, i32 2
  %77 = load i64, ptr %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = add i32 %74, %78
  %80 = trunc i64 %12 to i32
  %81 = call ptr @ioremap_wc(i32 noundef %79, i32 noundef %80) #8
  %82 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 5
  store ptr %81, ptr %82, align 4
  %83 = icmp eq ptr %81, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %69
  %85 = getelementptr inbounds %struct.nvkm_instmem, ptr %6, i32 0, i32 1, i32 5
  %86 = load i32, ptr %85, align 4
  %87 = icmp ugt i32 %86, 1
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load ptr, ptr %7, align 4
  %90 = getelementptr inbounds %struct.nvkm_device, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.nvkm_instmem, ptr %6, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %91, ptr noundef nonnull @.str.1, ptr noundef %92) #9
  br label %93

93:                                               ; preds = %88, %84
  call void @nvkm_vmm_put(ptr noundef %1, ptr noundef %65) #8
  br label %94

94:                                               ; preds = %93, %69, %68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instmem_boot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_instobj_rd32(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = trunc i64 %1 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_instobj_wr32(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = trunc i64 %1 to i32
  %7 = getelementptr i8, ptr %5, i32 %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %2) #8, !srcloc !19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_instobj_rd32_slow(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_instmem, ptr %4, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_memory_func, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i64 %11(ptr noundef %8) #8
  %13 = add i64 %12, %1
  %14 = and i64 %13, 17592184995840
  %15 = load ptr, ptr %7, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_memory_func, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i64 %18(ptr noundef %15) #8
  %20 = getelementptr inbounds %struct.nvkm_instmem, ptr %4, i32 0, i32 2
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #8
  %22 = getelementptr inbounds %struct.nv50_instmem, ptr %4, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = icmp eq i64 %23, %14
  br i1 %24, label %31, label %25, !prof !11

25:                                               ; preds = %2
  %26 = lshr exact i64 %14, 16
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 5888
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %27) #8, !srcloc !19
  store i64 %14, ptr %22, align 8
  br label %31

31:                                               ; preds = %25, %2
  %32 = add i64 %19, %1
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = trunc i64 %32 to i32
  %36 = and i32 %35, 1048575
  %37 = or i32 %36, 7340032
  %38 = getelementptr i8, ptr %34, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #8, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #8
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_instobj_wr32_slow(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nv50_instobj, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_memory_func, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i64 %12(ptr noundef %9) #8
  %14 = add i64 %13, %1
  %15 = and i64 %14, 17592184995840
  %16 = load ptr, ptr %8, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_memory_func, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i64 %19(ptr noundef %16) #8
  %21 = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 2
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #8
  %23 = getelementptr inbounds %struct.nv50_instmem, ptr %5, i32 0, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = icmp eq i64 %24, %15
  br i1 %25, label %32, label %26, !prof !11

26:                                               ; preds = %3
  %27 = lshr exact i64 %15, 16
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 5888
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #8, !srcloc !19
  store i64 %15, ptr %23, align 8
  br label %32

32:                                               ; preds = %26, %3
  %33 = add i64 %20, %1
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %35 = load ptr, ptr %34, align 4
  %36 = trunc i64 %33 to i32
  %37 = and i32 %36, 1048575
  %38 = or i32 %37, 7340032
  %39 = getelementptr i8, ptr %35, i32 %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %2) #8, !srcloc !19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2154794658}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2154795093, i64 2154795608, i64 2154795130, i64 2154795186, i64 2154795220, i64 2154795244, i64 2154795285, i64 2154795306, i64 2154795334, i64 2154795368}
!13 = !{i64 776191, i64 2148266162, i64 2148266188, i64 2148266235, i64 2148266257, i64 2148266285, i64 2148266305}
!14 = !{i64 762254, i64 762278, i64 762299, i64 762316, i64 762333}
!15 = !{!"auto-init"}
!16 = !{i64 3949247}
!17 = !{i64 2151488700}
!18 = !{i64 2151489922}
!19 = !{i64 3948829}
