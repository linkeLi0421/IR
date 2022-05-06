; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bar/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bar/gf100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.nvkm_bar_func = type { ptr, ptr, ptr, %struct.anon.123, %struct.anon.123, ptr }
%struct.anon.123 = type { ptr, ptr, ptr, ptr }
%struct.gf100_bar = type { %struct.nvkm_bar, i8, [2 x %struct.gf100_barN] }
%struct.nvkm_bar = type { ptr, %struct.nvkm_subdev, %struct.spinlock, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gf100_barN = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rb_root = type { ptr }

@gf100_bar_oneinit.bar1_lock = internal global %struct.lock_class_key zeroinitializer, align 1
@gf100_bar_oneinit.bar2_lock = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [12 x i8] c"NvBar2Halve\00", align 1
@gf100_bar_func = internal constant %struct.nvkm_bar_func { ptr @gf100_bar_dtor, ptr @gf100_bar_oneinit, ptr null, %struct.anon.123 { ptr @gf100_bar_bar1_init, ptr @gf100_bar_bar1_fini, ptr @gf100_bar_bar1_wait, ptr @gf100_bar_bar1_vmm }, %struct.anon.123 { ptr @gf100_bar_bar2_init, ptr @gf100_bar_bar2_fini, ptr @gf100_bar_bar1_wait, ptr @gf100_bar_bar2_vmm }, ptr @g84_bar_flush }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"bar2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bar1\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @gf100_bar_bar1_vmm(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr %struct.gf100_bar, ptr %0, i32 0, i32 2, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_bar_bar1_wait(ptr noundef %0) #1 {
  tail call void @nvkm_bar_flush(ptr noundef %0) #4
  tail call void @nvkm_bar_flush(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_bar_bar1_fini(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 5892
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %8 = and i32 %7, 2147483647
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 5892
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_bar_bar1_init(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.gf100_bar, ptr %0, i32 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_memory_func, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i64 %8(ptr noundef %5) #4
  %10 = lshr i64 %9, 12
  %11 = trunc i64 %10 to i32
  %12 = or i32 %11, -2147483648
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 5892
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #4, !srcloc !11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @gf100_bar_bar2_vmm(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_bar, ptr %0, i32 0, i32 2, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_bar_bar2_fini(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 5908
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %8 = and i32 %7, 2147483647
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 5908
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_bar_bar2_init(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gf100_bar, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_memory_func, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i64 %8(ptr noundef %5) #4
  %10 = lshr i64 %9, 12
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.gf100_bar, ptr %0, i32 0, i32 1
  %13 = load i8, ptr %12, align 4, !range !12
  %14 = icmp eq i8 %13, 0
  %15 = or i32 %11, 1073741824
  %16 = select i1 %14, i32 %11, i32 %15
  %17 = or i32 %16, -2147483648
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 5908
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %17) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_bar_oneinit(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_bar_func, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gf100_bar, ptr %0, i32 0, i32 2
  %8 = tail call fastcc i32 @gf100_bar_oneinit_bar(ptr noundef %0, ptr noundef %7, ptr noundef nonnull @gf100_bar_oneinit.bar2_lock, i32 noundef 3)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 8
  store i8 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @nvkm_bar_bar2_init(ptr noundef %13) #4
  br label %14

14:                                               ; preds = %10, %1
  %15 = getelementptr %struct.gf100_bar, ptr %0, i32 0, i32 2, i32 1
  %16 = tail call fastcc i32 @gf100_bar_oneinit_bar(ptr noundef %0, ptr noundef %15, ptr noundef nonnull @gf100_bar_oneinit.bar1_lock, i32 noundef 1)
  br label %17

17:                                               ; preds = %14, %6
  %18 = phi i32 [ %8, %6 ], [ %16, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gf100_bar_oneinit_bar(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @nvkm_memory_new(ptr noundef %6, i32 noundef 0, i64 noundef 4096, i32 noundef 0, i1 noundef zeroext false, ptr noundef %1) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %4
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.nvkm_device_func, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %6, i32 noundef %3) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %9
  %16 = icmp eq i32 %3, 3
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.gf100_bar, ptr %0, i32 0, i32 1
  %19 = load i8, ptr %18, align 4, !range !12
  %20 = zext i8 %19 to i32
  %21 = lshr i32 %13, %20
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi ptr [ @.str.2, %15 ], [ @.str.1, %17 ]
  %24 = phi i32 [ %13, %15 ], [ %21, %17 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.gf100_barN, ptr %1, i32 0, i32 1
  %27 = tail call i32 @nvkm_vmm_new(ptr noundef %6, i64 noundef 0, i64 noundef %25, ptr noundef null, i32 noundef 0, ptr noundef %2, ptr noundef nonnull %23, ptr noundef %26) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load ptr, ptr %26, align 4
  %31 = getelementptr %struct.nvkm_vmm, ptr %30, i32 0, i32 14, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #4, !srcloc !13
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #4, !srcloc !14
  %33 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %26, align 4
  %36 = getelementptr inbounds %struct.nvkm_vmm, ptr %35, i32 0, i32 3
  store i32 %34, ptr %36, align 4
  br i1 %16, label %37, label %41

37:                                               ; preds = %29
  %38 = load ptr, ptr %26, align 4
  %39 = tail call i32 @nvkm_vmm_boot(ptr noundef %38) #4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %29
  %42 = load ptr, ptr %26, align 4
  %43 = load ptr, ptr %1, align 4
  %44 = tail call i32 @nvkm_vmm_join(ptr noundef %42, ptr noundef %43) #4
  br label %45

45:                                               ; preds = %41, %37, %22, %9, %4
  %46 = phi i32 [ %44, %41 ], [ %7, %4 ], [ -12, %9 ], [ %27, %22 ], [ %39, %37 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar2_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gf100_bar_dtor(ptr noundef returned %0) #1 {
  %2 = getelementptr inbounds %struct.gf100_bar, ptr %0, i32 0, i32 2
  %3 = getelementptr %struct.gf100_bar, ptr %0, i32 0, i32 2, i32 1
  %4 = getelementptr %struct.gf100_bar, ptr %0, i32 0, i32 2, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  tail call void @nvkm_vmm_part(ptr noundef %5, ptr noundef %6) #4
  tail call void @nvkm_vmm_unref(ptr noundef %4) #4
  tail call void @nvkm_memory_unref(ptr noundef %3) #4
  %7 = getelementptr inbounds %struct.gf100_bar, ptr %0, i32 0, i32 2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %2, align 4
  tail call void @nvkm_vmm_part(ptr noundef %8, ptr noundef %9) #4
  tail call void @nvkm_vmm_unref(ptr noundef %7) #4
  tail call void @nvkm_memory_unref(ptr noundef %2) #4
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_part(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_bar_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #1 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 84) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  tail call void @nvkm_bar_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %7) #4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %11, ptr noundef nonnull @.str, i1 noundef zeroext false) #4
  %13 = getelementptr inbounds %struct.gf100_bar, ptr %7, i32 0, i32 1
  %14 = zext i1 %12 to i8
  store i8 %14, ptr %13, align 8
  store ptr %7, ptr %4, align 4
  br label %15

15:                                               ; preds = %9, %5
  %16 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_bar_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 84) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  tail call void @nvkm_bar_ctor(ptr noundef nonnull @gf100_bar_func, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6) #4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %10, ptr noundef nonnull @.str, i1 noundef zeroext false) #4
  %12 = getelementptr inbounds %struct.gf100_bar, ptr %6, i32 0, i32 1
  %13 = zext i1 %11 to i8
  store i8 %13, ptr %12, align 8
  store ptr %6, ptr %3, align 4
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_new(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_boot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_join(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @g84_bar_flush(ptr noundef) #2

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
!8 = !{i64 3944017}
!9 = !{i64 2151483470}
!10 = !{i64 2151484692}
!11 = !{i64 3943599}
!12 = !{i8 0, i8 2}
!13 = !{i64 770961, i64 2148260932, i64 2148260958, i64 2148261005, i64 2148261027, i64 2148261055, i64 2148261075}
!14 = !{i64 2148272347, i64 2148272373, i64 2148272402, i64 2148272436, i64 2148272467, i64 2148272490}
