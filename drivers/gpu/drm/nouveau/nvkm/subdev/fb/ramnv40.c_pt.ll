; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv40.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ram_func = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.136, %struct.anon.137, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.136 = type { %struct.mutex, %struct.nvkm_mm }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.137 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.124, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.124 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.125, i32, i32, i32, i32, i32, i32, %union.anon.129, i32, i32, [11 x i32], %union.anon.133 }>
%union.anon.125 = type { %struct.anon.128 }
%struct.anon.128 = type { i64 }
%union.anon.129 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, i32, i8 }
%union.anon.133 = type <{ %struct.anon.135, [12 x i8] }>
%struct.anon.135 = type { i48 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.144, %struct.anon.144 }
%struct.anon.144 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nv40_ram = type { %struct.nvkm_ram, i32, i32 }
%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvbios_init = type { ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@nv40_ram_func = internal constant %struct.nvkm_ram_func { i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv40_ram_calc, ptr @nv40_ram_prog, ptr @nv40_ram_tidy }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: mclk pll data not found\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv40.c\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@switch.table.nv40_ram_new = private unnamed_addr constant [4 x i32] [i32 3, i32 4, i32 8, i32 5], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv40_ram_new_(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 608) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  %9 = tail call i32 @nvkm_ram_ctor(ptr noundef nonnull @nv40_ram_func, ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef nonnull %6) #9
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ -12, %4 ]
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_ctor(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv40_ram_new(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4632
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr i8, ptr %9, i32 1049100
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %12 = lshr i32 %8, 8
  %13 = and i32 %12, 3
  %14 = getelementptr inbounds [4 x i32], ptr @switch.table.nv40_ram_new, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 608) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %2
  %20 = and i32 %11, -16777216
  %21 = zext i32 %20 to i64
  store ptr %17, ptr %1, align 4
  %22 = tail call i32 @nvkm_ram_ctor(ptr noundef nonnull @nv40_ram_func, ptr noundef %0, i32 noundef %15, i64 noundef %21, ptr noundef nonnull %17) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr i8, ptr %25, i32 1049088
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %28 = and i32 %27, 3
  %29 = add nuw nsw i32 %28, 1
  %30 = load ptr, ptr %1, align 4
  %31 = getelementptr inbounds %struct.nvkm_ram, ptr %30, i32 0, i32 8
  store i32 %29, ptr %31, align 8
  br label %32

32:                                               ; preds = %24, %19, %2
  %33 = phi i32 [ 0, %24 ], [ %22, %19 ], [ -12, %2 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_ram_calc(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.nvbios_pll, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_fb, ptr %10, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 21
  %14 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i32 56, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !10
  %15 = call i32 @nvbios_pll_parse(ptr noundef %14, i32 noundef 4, ptr noundef nonnull %3) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.nvkm_fb, ptr %10, i32 0, i32 1, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %66, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvkm_fb, ptr %10, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str, ptr noundef %25) #10
  br label %66

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.nvkm_fb, ptr %10, i32 0, i32 1
  %28 = call i32 @nv04_pll_calc(ptr noundef %27, ptr noundef nonnull %3, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %66, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %8, align 4
  %32 = shl i32 %31, 16
  %33 = or i32 %32, -2147483648
  %34 = getelementptr inbounds %struct.nv40_ram, ptr %0, i32 0, i32 1
  %35 = getelementptr inbounds %struct.nvbios_pll, ptr %3, i32 0, i32 5
  %36 = load i8, ptr %35, align 2
  %37 = zext i8 %36 to i32
  %38 = add i32 %31, %37
  %39 = getelementptr inbounds %struct.nvbios_pll, ptr %3, i32 0, i32 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = call i32 @llvm.smin.i32(i32 %38, i32 %41)
  %43 = shl i32 %42, 20
  %44 = or i32 %43, %33
  %45 = load i32, ptr %6, align 4
  %46 = load i32, ptr %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %30
  %49 = or i32 %44, 256
  store i32 %49, ptr %34, align 8
  %50 = load i32, ptr %4, align 4
  %51 = shl i32 %50, 8
  %52 = load i32, ptr %5, align 4
  %53 = or i32 %51, %52
  %54 = getelementptr inbounds %struct.nv40_ram, ptr %0, i32 0, i32 2
  store i32 %53, ptr %54, align 4
  br label %66

55:                                               ; preds = %30
  %56 = or i32 %44, 1073741824
  store i32 %56, ptr %34, align 8
  %57 = shl i32 %45, 24
  %58 = shl i32 %46, 16
  %59 = or i32 %58, %57
  %60 = load i32, ptr %4, align 4
  %61 = shl i32 %60, 8
  %62 = or i32 %59, %61
  %63 = load i32, ptr %5, align 4
  %64 = or i32 %62, %63
  %65 = getelementptr inbounds %struct.nv40_ram, ptr %0, i32 0, i32 2
  store i32 %64, ptr %65, align 4
  br label %66

66:                                               ; preds = %55, %48, %26, %21, %17
  %67 = phi i32 [ %15, %21 ], [ %15, %17 ], [ %28, %26 ], [ 0, %55 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #9
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_ram_prog(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.bit_entry, align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.nvkm_timer_wait, align 8
  %5 = alloca %struct.nvkm_timer_wait, align 8
  %6 = alloca %struct.nvbios_init, align 4
  %7 = alloca %struct.nvkm_timer_wait, align 8
  %8 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_fb, ptr %9, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 21
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 0, ptr %3, align 2, !annotation !10
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 6293512
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %18

18:                                               ; preds = %34, %1
  %19 = phi i32 [ 0, %1 ], [ %36, %34 ]
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr i8, ptr %20, i32 6293512
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %14, align 4
  %26 = getelementptr i8, ptr %25, i32 787396
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 1) #9, !srcloc !12
  %27 = load ptr, ptr %14, align 4
  %28 = getelementptr i8, ptr %27, i32 787397
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %28) #9, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  store i8 %29, ptr %3, align 2
  %30 = lshr i8 %29, 5
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = zext i8 %32 to i32
  br label %38

34:                                               ; preds = %18
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #9
  %36 = add nuw nsw i32 %19, 1
  %37 = icmp eq i32 %36, 33
  br i1 %37, label %38, label %18

38:                                               ; preds = %34, %24
  %39 = phi i8 [ %29, %24 ], [ 0, %34 ]
  %40 = phi i32 [ %33, %24 ], [ 0, %34 ]
  %41 = load ptr, ptr %14, align 4
  %42 = getelementptr i8, ptr %41, i32 6301704
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %44

44:                                               ; preds = %61, %38
  %45 = phi i32 [ 0, %38 ], [ %63, %61 ]
  %46 = load ptr, ptr %14, align 4
  %47 = getelementptr i8, ptr %46, i32 6301704
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %49 = icmp eq i32 %43, %48
  br i1 %49, label %61, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %14, align 4
  %52 = getelementptr i8, ptr %51, i32 795588
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %52, i8 1) #9, !srcloc !12
  %53 = load ptr, ptr %14, align 4
  %54 = getelementptr i8, ptr %53, i32 795589
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %54) #9, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  %56 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %55, ptr %56, align 1
  %57 = and i8 %55, 32
  %58 = icmp eq i8 %57, 0
  %59 = or i32 %40, 2
  %60 = select i1 %58, i32 %59, i32 %40
  br label %65

61:                                               ; preds = %44
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748) #9
  %63 = add nuw nsw i32 %45, 1
  %64 = icmp eq i32 %63, 33
  br i1 %64, label %65, label %44

65:                                               ; preds = %61, %50
  %66 = phi i8 [ %55, %50 ], [ 0, %61 ]
  %67 = phi i32 [ %60, %50 ], [ %40, %61 ]
  br label %68

68:                                               ; preds = %143, %65
  %69 = phi i32 [ 0, %65 ], [ %144, %143 ]
  %70 = shl nuw nsw i32 1, %69
  %71 = and i32 %70, %67
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %143, label %73

73:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %11, i64 noundef 2000000000, ptr noundef nonnull %4) #9
  %74 = shl i32 %69, 13
  %75 = add nuw nsw i32 %74, 6293512
  br label %76

76:                                               ; preds = %82, %73
  %77 = load ptr, ptr %14, align 4
  %78 = getelementptr i8, ptr %77, i32 %75
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %80 = and i32 %79, 65536
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %104, label %82

82:                                               ; preds = %76
  %83 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %4) #9
  %84 = icmp sgt i64 %83, -1
  br i1 %84, label %76, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %4, align 8
  %87 = getelementptr inbounds %struct.nvkm_timer, ptr %86, i32 0, i32 1, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.nvkm_device, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 8
  %91 = call ptr @dev_driver_string(ptr noundef %90) #9
  %92 = load ptr, ptr %4, align 8
  %93 = getelementptr inbounds %struct.nvkm_timer, ptr %92, i32 0, i32 1, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.nvkm_device, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.device, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %85
  %101 = load ptr, ptr %96, align 4
  br label %102

102:                                              ; preds = %100, %85
  %103 = phi ptr [ %101, %100 ], [ %98, %85 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 103, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %91, ptr noundef %103) #9
  br label %104

104:                                              ; preds = %102, %76
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %11, i64 noundef 2000000000, ptr noundef nonnull %5) #9
  br label %105

105:                                              ; preds = %111, %104
  %106 = load ptr, ptr %14, align 4
  %107 = getelementptr i8, ptr %106, i32 %75
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %109 = and i32 %108, 65536
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %133

111:                                              ; preds = %105
  %112 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %5) #9
  %113 = icmp sgt i64 %112, -1
  br i1 %113, label %105, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %5, align 8
  %116 = getelementptr inbounds %struct.nvkm_timer, ptr %115, i32 0, i32 1, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.nvkm_device, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8
  %120 = call ptr @dev_driver_string(ptr noundef %119) #9
  %121 = load ptr, ptr %5, align 8
  %122 = getelementptr inbounds %struct.nvkm_timer, ptr %121, i32 0, i32 1, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nvkm_device, ptr %123, i32 0, i32 2
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.device, ptr %125, i32 0, i32 3
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %114
  %130 = load ptr, ptr %125, align 4
  br label %131

131:                                              ; preds = %129, %114
  %132 = phi ptr [ %130, %129 ], [ %127, %114 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 109, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %120, ptr noundef %132) #9
  br label %133

133:                                              ; preds = %131, %105
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  %134 = load ptr, ptr %14, align 4
  %135 = add nuw nsw i32 %74, 787396
  %136 = getelementptr i8, ptr %134, i32 %135
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %136, i8 1) #9, !srcloc !12
  %137 = getelementptr [2 x i8], ptr %3, i32 0, i32 %69
  %138 = load i8, ptr %137, align 1
  %139 = or i8 %138, 32
  %140 = load ptr, ptr %14, align 4
  %141 = add nuw nsw i32 %74, 787397
  %142 = getelementptr i8, ptr %140, i32 %141
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %142, i8 %139) #9, !srcloc !12
  br label %143

143:                                              ; preds = %133, %68
  %144 = add nuw nsw i32 %69, 1
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %146, label %68

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.nvkm_fb, ptr %9, i32 0, i32 1
  %148 = load ptr, ptr %14, align 4
  %149 = getelementptr i8, ptr %148, i32 1049300
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 1) #9, !srcloc !16
  %150 = load ptr, ptr %14, align 4
  %151 = getelementptr i8, ptr %150, i32 1049296
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 1) #9, !srcloc !16
  %152 = load ptr, ptr %14, align 4
  %153 = getelementptr i8, ptr %152, i32 1049296
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 1) #9, !srcloc !16
  %154 = load ptr, ptr %14, align 4
  %155 = getelementptr i8, ptr %154, i32 1049104
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %157 = and i32 %156, 2147483647
  %158 = load ptr, ptr %14, align 4
  %159 = getelementptr i8, ptr %158, i32 1049104
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %157) #9, !srcloc !16
  %160 = load ptr, ptr %14, align 4
  %161 = getelementptr i8, ptr %160, i32 1049308
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 1) #9, !srcloc !16
  %162 = load ptr, ptr %14, align 4
  %163 = getelementptr i8, ptr %162, i32 49216
  %164 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %165 = and i32 %164, -49153
  %166 = load ptr, ptr %14, align 4
  %167 = getelementptr i8, ptr %166, i32 49216
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %165) #9, !srcloc !16
  %168 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 16
  %169 = load i32, ptr %168, align 4
  switch i32 %169, label %209 [
    i32 64, label %170
    i32 69, label %170
    i32 65, label %170
    i32 66, label %170
    i32 71, label %170
    i32 67, label %195
    i32 73, label %195
    i32 75, label %195
  ]

170:                                              ; preds = %146, %146, %146, %146, %146
  %171 = load ptr, ptr %14, align 4
  %172 = getelementptr i8, ptr %171, i32 16452
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %174 = and i32 %173, 1065938687
  %175 = getelementptr inbounds %struct.nv40_ram, ptr %0, i32 0, i32 1
  %176 = load i32, ptr %175, align 8
  %177 = or i32 %176, %174
  %178 = load ptr, ptr %14, align 4
  %179 = getelementptr i8, ptr %178, i32 16452
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %177) #9, !srcloc !16
  %180 = load ptr, ptr %14, align 4
  %181 = getelementptr i8, ptr %180, i32 16428
  %182 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %183 = and i32 %182, 1065938687
  %184 = load i32, ptr %175, align 8
  %185 = or i32 %184, %183
  %186 = load ptr, ptr %14, align 4
  %187 = getelementptr i8, ptr %186, i32 16428
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %185) #9, !srcloc !16
  %188 = getelementptr inbounds %struct.nv40_ram, ptr %0, i32 0, i32 2
  %189 = load i32, ptr %188, align 4
  %190 = load ptr, ptr %14, align 4
  %191 = getelementptr i8, ptr %190, i32 16456
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 %189) #9, !srcloc !16
  %192 = load i32, ptr %188, align 4
  %193 = load ptr, ptr %14, align 4
  %194 = getelementptr i8, ptr %193, i32 16432
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 %192) #9, !srcloc !16
  br label %195

195:                                              ; preds = %170, %146, %146, %146
  %196 = load ptr, ptr %14, align 4
  %197 = getelementptr i8, ptr %196, i32 16440
  %198 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %197) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %199 = and i32 %198, 1065938687
  %200 = getelementptr inbounds %struct.nv40_ram, ptr %0, i32 0, i32 1
  %201 = load i32, ptr %200, align 8
  %202 = or i32 %201, %199
  %203 = load ptr, ptr %14, align 4
  %204 = getelementptr i8, ptr %203, i32 16440
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %202) #9, !srcloc !16
  %205 = getelementptr inbounds %struct.nv40_ram, ptr %0, i32 0, i32 2
  %206 = load i32, ptr %205, align 4
  %207 = load ptr, ptr %14, align 4
  %208 = getelementptr i8, ptr %207, i32 16444
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 %206) #9, !srcloc !16
  br label %209

209:                                              ; preds = %195, %146
  %210 = load ptr, ptr %14, align 4
  %211 = getelementptr i8, ptr %210, i32 16416
  %212 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %213 = and i32 %212, 1065938687
  %214 = getelementptr inbounds %struct.nv40_ram, ptr %0, i32 0, i32 1
  %215 = load i32, ptr %214, align 8
  %216 = or i32 %215, %213
  %217 = load ptr, ptr %14, align 4
  %218 = getelementptr i8, ptr %217, i32 16416
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 %216) #9, !srcloc !16
  %219 = getelementptr inbounds %struct.nv40_ram, ptr %0, i32 0, i32 2
  %220 = load i32, ptr %219, align 4
  %221 = load ptr, ptr %14, align 4
  %222 = getelementptr i8, ptr %221, i32 16420
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 %220) #9, !srcloc !16
  %223 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %223(i32 noundef 21474800) #9
  %224 = load ptr, ptr %14, align 4
  %225 = getelementptr i8, ptr %224, i32 49216
  %226 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %225) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %227 = or i32 %226, 49152
  %228 = load ptr, ptr %14, align 4
  %229 = getelementptr i8, ptr %228, i32 49216
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 %227) #9, !srcloc !16
  %230 = load ptr, ptr %14, align 4
  %231 = getelementptr i8, ptr %230, i32 1049308
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 0) #9, !srcloc !16
  %232 = load ptr, ptr %14, align 4
  %233 = getelementptr i8, ptr %232, i32 1049104
  %234 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %235 = or i32 %234, -2147483648
  %236 = load ptr, ptr %14, align 4
  %237 = getelementptr i8, ptr %236, i32 1049104
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %235) #9, !srcloc !16
  %238 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %238(i32 noundef 21474800) #9
  %239 = call i32 @bit_entry(ptr noundef %13, i8 noundef zeroext 77, ptr noundef nonnull %2) #9
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %256

241:                                              ; preds = %209
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %6) #9
  %242 = getelementptr inbounds i8, ptr %6, i32 24
  store i32 0, ptr %242, align 4, !annotation !10
  store ptr %147, ptr %6, align 4
  %243 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 1
  %244 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 3
  %245 = load i16, ptr %244, align 2
  %246 = zext i16 %245 to i32
  %247 = call zeroext i16 @nvbios_rd16(ptr noundef %13, i32 noundef %246) #9
  %248 = zext i16 %247 to i32
  store i32 %248, ptr %243, align 4
  %249 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 2
  store ptr null, ptr %249, align 4
  %250 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 3
  store i32 -1, ptr %250, align 4
  %251 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 4
  store i32 0, ptr %251, align 4
  %252 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 5
  store i32 -1, ptr %252, align 4
  %253 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 6
  store i8 1, ptr %253, align 4
  %254 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %254, i8 0, i64 16, i1 false)
  %255 = call i32 @nvbios_exec(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #9
  br label %256

256:                                              ; preds = %241, %209
  %257 = and i32 %67, 1
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %293, label %259

259:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %11, i64 noundef 2000000000, ptr noundef nonnull %7) #9
  br label %260

260:                                              ; preds = %266, %259
  %261 = load ptr, ptr %14, align 4
  %262 = getelementptr i8, ptr %261, i32 6293512
  %263 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %262) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %264 = and i32 %263, 65536
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %288

266:                                              ; preds = %260
  %267 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %7) #9
  %268 = icmp sgt i64 %267, -1
  br i1 %268, label %260, label %269

269:                                              ; preds = %266
  %270 = load ptr, ptr %7, align 8
  %271 = getelementptr inbounds %struct.nvkm_timer, ptr %270, i32 0, i32 1, i32 1
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.nvkm_device, ptr %272, i32 0, i32 2
  %274 = load ptr, ptr %273, align 8
  %275 = call ptr @dev_driver_string(ptr noundef %274) #9
  %276 = load ptr, ptr %7, align 8
  %277 = getelementptr inbounds %struct.nvkm_timer, ptr %276, i32 0, i32 1, i32 1
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr inbounds %struct.nvkm_device, ptr %278, i32 0, i32 2
  %280 = load ptr, ptr %279, align 8
  %281 = getelementptr inbounds %struct.device, ptr %280, i32 0, i32 3
  %282 = load ptr, ptr %281, align 4
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %286

284:                                              ; preds = %269
  %285 = load ptr, ptr %280, align 4
  br label %286

286:                                              ; preds = %284, %269
  %287 = phi ptr [ %285, %284 ], [ %282, %269 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %275, ptr noundef %287) #9
  br label %288

288:                                              ; preds = %286, %260
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #9
  %289 = load ptr, ptr %14, align 4
  %290 = getelementptr i8, ptr %289, i32 787396
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %290, i8 1) #9, !srcloc !12
  %291 = load ptr, ptr %14, align 4
  %292 = getelementptr i8, ptr %291, i32 787397
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %292, i8 %39) #9, !srcloc !12
  br label %293

293:                                              ; preds = %288, %256
  %294 = and i32 %67, 2
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %330, label %296

296:                                              ; preds = %293
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %11, i64 noundef 2000000000, ptr noundef nonnull %7) #9
  br label %297

297:                                              ; preds = %303, %296
  %298 = load ptr, ptr %14, align 4
  %299 = getelementptr i8, ptr %298, i32 6301704
  %300 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %299) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %301 = and i32 %300, 65536
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %325

303:                                              ; preds = %297
  %304 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %7) #9
  %305 = icmp sgt i64 %304, -1
  br i1 %305, label %297, label %306

306:                                              ; preds = %303
  %307 = load ptr, ptr %7, align 8
  %308 = getelementptr inbounds %struct.nvkm_timer, ptr %307, i32 0, i32 1, i32 1
  %309 = load ptr, ptr %308, align 4
  %310 = getelementptr inbounds %struct.nvkm_device, ptr %309, i32 0, i32 2
  %311 = load ptr, ptr %310, align 8
  %312 = call ptr @dev_driver_string(ptr noundef %311) #9
  %313 = load ptr, ptr %7, align 8
  %314 = getelementptr inbounds %struct.nvkm_timer, ptr %313, i32 0, i32 1, i32 1
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.nvkm_device, ptr %315, i32 0, i32 2
  %317 = load ptr, ptr %316, align 8
  %318 = getelementptr inbounds %struct.device, ptr %317, i32 0, i32 3
  %319 = load ptr, ptr %318, align 4
  %320 = icmp eq ptr %319, null
  br i1 %320, label %321, label %323

321:                                              ; preds = %306
  %322 = load ptr, ptr %317, align 4
  br label %323

323:                                              ; preds = %321, %306
  %324 = phi ptr [ %322, %321 ], [ %319, %306 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %312, ptr noundef %324) #9
  br label %325

325:                                              ; preds = %323, %297
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #9
  %326 = load ptr, ptr %14, align 4
  %327 = getelementptr i8, ptr %326, i32 795588
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %327, i8 1) #9, !srcloc !12
  %328 = load ptr, ptr %14, align 4
  %329 = getelementptr i8, ptr %328, i32 795589
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %329, i8 %66) #9, !srcloc !12
  br label %330

330:                                              ; preds = %325, %293
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @nv40_ram_tidy(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_exec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 3954888}
!9 = !{i64 2151494341}
!10 = !{!"auto-init"}
!11 = !{i64 2151494693}
!12 = !{i64 3954273}
!13 = !{i64 3954668}
!14 = !{i64 2151493395}
!15 = !{i64 2151495563}
!16 = !{i64 3954470}
