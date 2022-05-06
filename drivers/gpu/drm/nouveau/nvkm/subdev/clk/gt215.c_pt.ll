; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/clk/gt215.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gt215.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.120, %struct.anon.120 }
%struct.anon.120 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.gt215_clk_info = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gt215_clk = type { %struct.nvkm_clk, [29 x %struct.gt215_clk_info] }

@.str = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/gt215.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"shader\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@gt215_clk = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [9 x %struct.nvkm_domain] } { ptr null, ptr null, ptr @gt215_clk_read, ptr @gt215_clk_calc, ptr @gt215_clk_prog, ptr @gt215_clk_tidy, ptr null, i32 0, [9 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 15, i8 0, i8 0, ptr @.str.2, i32 1000 }, %struct.nvkm_domain { i32 17, i8 1, i8 0, ptr @.str.3, i32 1000 }, %struct.nvkm_domain { i32 18, i8 2, i8 0, ptr @.str.4, i32 1000 }, %struct.nvkm_domain { i32 27, i8 3, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 26, i8 4, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 8, i8 5, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 16, i8 6, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"%s: unknown HOST clock source %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"%s: invalid clock source %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gt215_pll_info(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.nvbios_pll, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %6, i8 0, i32 56, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 0, ptr %9, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.gt215_clk_info, ptr %4, i32 0, i32 1
  store i32 0, ptr %11, align 4
  store i32 0, ptr %4, align 4
  switch i32 %3, label %14 [
    i32 27000, label %33
    i32 100000, label %12
    i32 108000, label %13
  ]

12:                                               ; preds = %5
  br label %33

13:                                               ; preds = %5
  br label %33

14:                                               ; preds = %5
  %15 = tail call fastcc i32 @read_vco(ptr noundef %0, i32 noundef %1) #8
  %16 = shl i32 %15, 1
  %17 = udiv i32 %16, %3
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 65) #8
  %19 = udiv i32 %16, %18
  %20 = add i32 %3, 3000
  %21 = sub i32 %20, %19
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = add nuw nsw i32 %18, 1
  %25 = udiv i32 %16, %24
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi i32 [ %24, %23 ], [ %18, %14 ]
  %28 = phi i32 [ %25, %23 ], [ %19, %14 ]
  %29 = icmp ugt i32 %27, 4
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = shl nuw nsw i32 %27, 16
  %32 = add nsw i32 %31, -118528
  br label %33

33:                                               ; preds = %30, %13, %12, %5
  %34 = phi i32 [ %32, %30 ], [ 8512, %13 ], [ 8448, %12 ], [ 256, %5 ]
  %35 = phi i32 [ %28, %30 ], [ %3, %13 ], [ %3, %12 ], [ %3, %5 ]
  store i32 %34, ptr %4, align 4
  br label %36

36:                                               ; preds = %33, %26
  %37 = phi i32 [ -34, %26 ], [ %35, %33 ]
  %38 = icmp eq i32 %2, 0
  br i1 %38, label %93, label %39

39:                                               ; preds = %36
  %40 = add i32 %3, 2000
  %41 = sub i32 %40, %37
  %42 = icmp ult i32 %41, 5000
  br i1 %42, label %93, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 21
  %47 = load ptr, ptr %46, align 8
  %48 = call i32 @nvbios_pll_parse(ptr noundef %47, i32 noundef %2, ptr noundef nonnull %6) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %101

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.nvbios_pll, ptr %6, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  store i32 0, ptr %4, align 4
  switch i32 %52, label %55 [
    i32 27000, label %75
    i32 100000, label %53
    i32 108000, label %54
  ]

53:                                               ; preds = %50
  br label %75

54:                                               ; preds = %50
  br label %75

55:                                               ; preds = %50
  %56 = add i32 %1, -16
  %57 = call fastcc i32 @read_vco(ptr noundef %0, i32 noundef %56) #8
  %58 = shl i32 %57, 1
  %59 = udiv i32 %58, %52
  %60 = call i32 @llvm.umin.i32(i32 %59, i32 65) #8
  %61 = udiv i32 %58, %60
  %62 = add i32 %52, 3000
  %63 = sub i32 %62, %61
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = add nuw nsw i32 %60, 1
  %67 = udiv i32 %58, %66
  br label %68

68:                                               ; preds = %65, %55
  %69 = phi i32 [ %66, %65 ], [ %60, %55 ]
  %70 = phi i32 [ %67, %65 ], [ %61, %55 ]
  %71 = icmp ugt i32 %69, 4
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = shl nuw nsw i32 %69, 16
  %74 = add nsw i32 %73, -118528
  br label %75

75:                                               ; preds = %72, %54, %53, %50
  %76 = phi i32 [ %74, %72 ], [ 8512, %54 ], [ 8448, %53 ], [ 256, %50 ]
  %77 = phi i32 [ %70, %72 ], [ %52, %54 ], [ %52, %53 ], [ %52, %50 ]
  store i32 %76, ptr %4, align 4
  br label %78

78:                                               ; preds = %75, %68
  %79 = phi i32 [ -34, %68 ], [ %77, %75 ]
  %80 = load i32, ptr %51, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = call i32 @gt215_pll_calc(ptr noundef %10, ptr noundef nonnull %6, i32 noundef %3, ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %9, ptr noundef nonnull %7) #8
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32, ptr %7, align 4
  %87 = shl i32 %86, 16
  %88 = load i32, ptr %8, align 4
  %89 = shl i32 %88, 8
  %90 = or i32 %89, %87
  %91 = load i32, ptr %9, align 4
  %92 = or i32 %90, %91
  store i32 %92, ptr %11, align 4
  br label %93

93:                                               ; preds = %85, %82, %39, %36
  %94 = phi i32 [ %37, %39 ], [ %83, %85 ], [ %83, %82 ], [ %37, %36 ]
  %95 = add i32 %3, 7566
  %96 = udiv i32 %95, 15133
  %97 = call i32 @llvm.umax.i32(i32 %96, i32 18)
  %98 = getelementptr inbounds %struct.gt215_clk_info, ptr %4, i32 0, i32 3
  store i32 %97, ptr %98, align 4
  %99 = icmp eq i32 %94, 0
  %100 = select i1 %99, i32 -34, i32 %94
  br label %101

101:                                              ; preds = %93, %78, %43
  %102 = phi i32 [ %100, %93 ], [ %48, %43 ], [ -22, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #8
  ret i32 %102
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gt215_clk_info(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  store i32 0, ptr %3, align 4
  switch i32 %2, label %7 [
    i32 27000, label %26
    i32 100000, label %5
    i32 108000, label %6
  ]

5:                                                ; preds = %4
  br label %26

6:                                                ; preds = %4
  br label %26

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @read_vco(ptr noundef %0, i32 noundef %1)
  %9 = shl i32 %8, 1
  %10 = udiv i32 %9, %2
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 65)
  %12 = udiv i32 %9, %11
  %13 = add i32 %2, 3000
  %14 = sub i32 %13, %12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = add nuw nsw i32 %11, 1
  %18 = udiv i32 %9, %17
  br label %19

19:                                               ; preds = %16, %7
  %20 = phi i32 [ %17, %16 ], [ %11, %7 ]
  %21 = phi i32 [ %18, %16 ], [ %12, %7 ]
  %22 = icmp ugt i32 %20, 4
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = shl nuw nsw i32 %20, 16
  %25 = add nsw i32 %24, -118528
  br label %26

26:                                               ; preds = %23, %6, %5, %4
  %27 = phi i32 [ %25, %23 ], [ 8512, %6 ], [ 8448, %5 ], [ 256, %4 ]
  %28 = phi i32 [ %21, %23 ], [ %2, %6 ], [ %2, %5 ], [ %2, %4 ]
  store i32 %27, ptr %3, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi i32 [ -34, %19 ], [ %28, %26 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gt215_clk_pre(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = alloca %struct.nvkm_timer_wait, align 8
  %5 = alloca %struct.nvkm_timer_wait, align 8
  %6 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 52
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 131168
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %14 = and i32 %13, -458753
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 131168
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #8, !srcloc !12
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr i8, ptr %17, i32 9476
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %20 = or i32 %19, 1
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr i8, ptr %21, i32 9476
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %3) #8
  br label %23

23:                                               ; preds = %28, %2
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr i8, ptr %24, i32 256
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %23
  %29 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #8
  %30 = icmp sgt i64 %29, -1
  br i1 %30, label %23, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.nvkm_timer, ptr %32, i32 0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = call ptr @dev_driver_string(ptr noundef %36) #8
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.nvkm_timer, ptr %38, i32 0, i32 1, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load ptr, ptr %42, align 4
  br label %48

48:                                               ; preds = %46, %31
  %49 = phi ptr [ %47, %46 ], [ %44, %31 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 319, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %37, ptr noundef %49) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #8
  br label %112

50:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #8
  %51 = icmp eq ptr %9, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  call void @nvkm_fifo_pause(ptr noundef nonnull %9, ptr noundef %1) #8
  br label %53

53:                                               ; preds = %52, %50
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %4) #8
  br label %54

54:                                               ; preds = %60, %53
  %55 = load ptr, ptr %10, align 4
  %56 = getelementptr i8, ptr %55, i32 9476
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %58 = and i32 %57, 16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %54
  %61 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %4) #8
  %62 = icmp sgt i64 %61, -1
  br i1 %62, label %54, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds %struct.nvkm_timer, ptr %64, i32 0, i32 1, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = call ptr @dev_driver_string(ptr noundef %68) #8
  %70 = load ptr, ptr %4, align 8
  %71 = getelementptr inbounds %struct.nvkm_timer, ptr %70, i32 0, i32 1, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = load ptr, ptr %74, align 4
  br label %80

80:                                               ; preds = %78, %63
  %81 = phi ptr [ %79, %78 ], [ %76, %63 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 328, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %69, ptr noundef %81) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #8
  br label %112

82:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false), !annotation !8
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %5) #8
  br label %83

83:                                               ; preds = %90, %82
  %84 = load ptr, ptr %10, align 4
  %85 = getelementptr i8, ptr %84, i32 9500
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %87 = and i32 %86, 63
  %88 = icmp eq i32 %87, 63
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #8
  br label %112

90:                                               ; preds = %83
  %91 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %5) #8
  %92 = icmp sgt i64 %91, -1
  br i1 %92, label %83, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %5, align 8
  %95 = getelementptr inbounds %struct.nvkm_timer, ptr %94, i32 0, i32 1, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.nvkm_device, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 8
  %99 = call ptr @dev_driver_string(ptr noundef %98) #8
  %100 = load ptr, ptr %5, align 8
  %101 = getelementptr inbounds %struct.nvkm_timer, ptr %100, i32 0, i32 1, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.nvkm_device, ptr %102, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %93
  %109 = load ptr, ptr %104, align 4
  br label %110

110:                                              ; preds = %108, %93
  %111 = phi ptr [ %109, %108 ], [ %106, %93 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 335, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %99, ptr noundef %111) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #8
  br label %112

112:                                              ; preds = %110, %89, %80, %48
  %113 = phi i32 [ -16, %48 ], [ -5, %80 ], [ -5, %110 ], [ 0, %89 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_pause(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gt215_clk_post(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 52
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @nvkm_fifo_start(ptr noundef nonnull %6, ptr noundef nonnull %1) #8
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 9476
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %16 = and i32 %15, -2
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr i8, ptr %17, i32 9476
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #8, !srcloc !12
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr i8, ptr %19, i32 131168
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %22 = and i32 %21, -458753
  %23 = or i32 %22, 262144
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr i8, ptr %24, i32 131168
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #8, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gt215_clk_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 828) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  %9 = tail call i32 @nvkm_clk_ctor(ptr noundef nonnull @gt215_clk, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef nonnull %6) #8
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ -12, %4 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_vco(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %1, 2
  %8 = add i32 %7, 16672
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %11 = and i32 %10, 48
  switch i32 %11, label %123 [
    i32 0, label %12
    i32 32, label %15
    i32 48, label %69
  ]

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %14 = load i32, ptr %13, align 4
  br label %123

15:                                               ; preds = %2
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 59424
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %15
  %24 = and i32 %20, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %63, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %17, align 4
  %28 = getelementptr i8, ptr %27, i32 59428
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %30 = and i32 %29, 255
  %31 = lshr i32 %29, 8
  %32 = and i32 %31, 255
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 16
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 175
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 18204
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %42 = mul i32 %41, 1000
  br label %60

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 18
  %45 = load i32, ptr %44, align 4
  br label %60

46:                                               ; preds = %15
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 16
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 175
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 11
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 18204
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %56 = mul i32 %55, 1000
  br label %63

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 18
  %59 = load i32, ptr %58, align 4
  br label %63

60:                                               ; preds = %43, %37
  %61 = phi i32 [ %42, %37 ], [ %45, %43 ]
  %62 = icmp eq i32 %30, 0
  br i1 %62, label %123, label %63

63:                                               ; preds = %60, %57, %51, %23
  %64 = phi i32 [ %30, %60 ], [ 1, %23 ], [ 1, %51 ], [ 1, %57 ]
  %65 = phi i32 [ %32, %60 ], [ 1, %23 ], [ 1, %51 ], [ 1, %57 ]
  %66 = phi i32 [ %61, %60 ], [ 0, %23 ], [ %56, %51 ], [ %59, %57 ]
  %67 = mul i32 %66, %65
  %68 = udiv i32 %67, %64
  br label %123

69:                                               ; preds = %2
  %70 = load ptr, ptr %3, align 4
  %71 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 11
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 59552
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %75 = and i32 %74, 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %69
  %78 = and i32 %74, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %117, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %71, align 4
  %82 = getelementptr i8, ptr %81, i32 59556
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %84 = and i32 %83, 255
  %85 = lshr i32 %83, 8
  %86 = and i32 %85, 255
  %87 = load ptr, ptr %3, align 4
  %88 = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 16
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 175
  br i1 %90, label %91, label %97

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 11
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 18204
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %96 = mul i32 %95, 1000
  br label %114

97:                                               ; preds = %80
  %98 = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 18
  %99 = load i32, ptr %98, align 4
  br label %114

100:                                              ; preds = %69
  %101 = load ptr, ptr %3, align 4
  %102 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 16
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 175
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 11
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %107, i32 18204
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %110 = mul i32 %109, 1000
  br label %117

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 18
  %113 = load i32, ptr %112, align 4
  br label %117

114:                                              ; preds = %97, %91
  %115 = phi i32 [ %96, %91 ], [ %99, %97 ]
  %116 = icmp eq i32 %84, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %114, %111, %105, %77
  %118 = phi i32 [ %84, %114 ], [ 1, %77 ], [ 1, %105 ], [ 1, %111 ]
  %119 = phi i32 [ %86, %114 ], [ 1, %77 ], [ 1, %105 ], [ 1, %111 ]
  %120 = phi i32 [ %115, %114 ], [ 0, %77 ], [ %110, %105 ], [ %113, %111 ]
  %121 = mul i32 %120, %119
  %122 = udiv i32 %121, %118
  br label %123

123:                                              ; preds = %117, %114, %63, %60, %12, %2
  %124 = phi i32 [ %14, %12 ], [ 0, %2 ], [ %68, %63 ], [ 0, %60 ], [ %122, %117 ], [ 0, %114 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_clk(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp sgt i32 %1, 63
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 175
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 18204
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %15 = mul i32 %14, 1000
  br label %53

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %18 = load i32, ptr %17, align 4
  br label %53

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = shl i32 %1, 2
  %23 = add i32 %22, 16672
  %24 = getelementptr i8, ptr %21, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %26 = and i32 %25, 256
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %19
  %29 = and i32 %25, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = and i32 %25, 12288
  switch i32 %32, label %53 [
    i32 0, label %33
    i32 8192, label %39
    i32 12288, label %43
  ]

33:                                               ; preds = %31
  %34 = and i32 %25, 512
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %38 = load i32, ptr %37, align 4
  br label %53

39:                                               ; preds = %31
  %40 = and i32 %25, 64
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 100000, i32 108000
  br label %53

43:                                               ; preds = %31
  %44 = and i32 %25, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = tail call fastcc i32 @read_vco(ptr noundef %0, i32 noundef %1)
  %48 = lshr i32 %25, 16
  %49 = and i32 %48, 63
  %50 = add nuw nsw i32 %49, 2
  %51 = shl i32 %47, 1
  %52 = udiv i32 %51, %50
  br label %53

53:                                               ; preds = %46, %43, %39, %36, %33, %31, %28, %19, %16, %10
  %54 = phi i32 [ %15, %10 ], [ %18, %16 ], [ %52, %46 ], [ %38, %36 ], [ 0, %19 ], [ 108000, %28 ], [ 0, %33 ], [ %42, %39 ], [ 0, %43 ], [ 0, %31 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gt215_clk_read(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  switch i32 %1, label %252 [
    i32 0, label %5
    i32 15, label %8
    i32 16, label %8
    i32 17, label %41
    i32 18, label %74
    i32 26, label %107
    i32 27, label %139
    i32 25, label %171
    i32 8, label %203
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  br label %260

8:                                                ; preds = %2, %2
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 16896
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %8
  %16 = and i32 %12, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i8, ptr %19, i32 16900
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %22 = and i32 %21, 255
  %23 = lshr i32 %21, 8
  %24 = and i32 %23, 255
  %25 = lshr i32 %21, 16
  %26 = and i32 %25, 63
  br label %27

27:                                               ; preds = %18, %8
  %28 = phi i32 [ 0, %18 ], [ 16, %8 ]
  %29 = phi i32 [ %26, %18 ], [ 1, %8 ]
  %30 = phi i32 [ %24, %18 ], [ 1, %8 ]
  %31 = phi i32 [ %22, %18 ], [ 1, %8 ]
  %32 = tail call fastcc i32 @read_clk(ptr noundef %0, i32 noundef %28) #8
  %33 = mul nuw nsw i32 %31, %29
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %260, label %35

35:                                               ; preds = %27, %15
  %36 = phi i32 [ %33, %27 ], [ 1, %15 ]
  %37 = phi i32 [ %30, %27 ], [ 1, %15 ]
  %38 = phi i32 [ %32, %27 ], [ 0, %15 ]
  %39 = mul i32 %38, %37
  %40 = udiv i32 %39, %36
  br label %260

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 16928
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = and i32 %45, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %42, align 4
  %53 = getelementptr i8, ptr %52, i32 16932
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %55 = and i32 %54, 255
  %56 = lshr i32 %54, 8
  %57 = and i32 %56, 255
  %58 = lshr i32 %54, 16
  %59 = and i32 %58, 63
  br label %60

60:                                               ; preds = %51, %41
  %61 = phi i32 [ 1, %51 ], [ 17, %41 ]
  %62 = phi i32 [ %59, %51 ], [ 1, %41 ]
  %63 = phi i32 [ %57, %51 ], [ 1, %41 ]
  %64 = phi i32 [ %55, %51 ], [ 1, %41 ]
  %65 = tail call fastcc i32 @read_clk(ptr noundef %0, i32 noundef %61) #8
  %66 = mul nuw nsw i32 %64, %62
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %260, label %68

68:                                               ; preds = %60, %48
  %69 = phi i32 [ %66, %60 ], [ 1, %48 ]
  %70 = phi i32 [ %63, %60 ], [ 1, %48 ]
  %71 = phi i32 [ %65, %60 ], [ 0, %48 ]
  %72 = mul i32 %71, %70
  %73 = udiv i32 %72, %69
  br label %260

74:                                               ; preds = %2
  %75 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 16384
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %74
  %82 = and i32 %78, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %75, align 4
  %86 = getelementptr i8, ptr %85, i32 16388
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %88 = and i32 %87, 255
  %89 = lshr i32 %87, 8
  %90 = and i32 %89, 255
  %91 = lshr i32 %87, 16
  %92 = and i32 %91, 63
  br label %93

93:                                               ; preds = %84, %74
  %94 = phi i32 [ 2, %84 ], [ 18, %74 ]
  %95 = phi i32 [ %92, %84 ], [ 1, %74 ]
  %96 = phi i32 [ %90, %84 ], [ 1, %74 ]
  %97 = phi i32 [ %88, %84 ], [ 1, %74 ]
  %98 = tail call fastcc i32 @read_clk(ptr noundef %0, i32 noundef %94) #8
  %99 = mul nuw nsw i32 %97, %95
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %260, label %101

101:                                              ; preds = %93, %81
  %102 = phi i32 [ %99, %93 ], [ 1, %81 ]
  %103 = phi i32 [ %96, %93 ], [ 1, %81 ]
  %104 = phi i32 [ %98, %93 ], [ 0, %81 ]
  %105 = mul i32 %104, %103
  %106 = udiv i32 %105, %102
  br label %260

107:                                              ; preds = %2
  %108 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr i8, ptr %109, i32 16800
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %112 = and i32 %111, 256
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %260, label %114

114:                                              ; preds = %107
  %115 = and i32 %111, 1024
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %260

117:                                              ; preds = %114
  %118 = and i32 %111, 12288
  switch i32 %118, label %260 [
    i32 0, label %119
    i32 8192, label %125
    i32 12288, label %129
  ]

119:                                              ; preds = %117
  %120 = and i32 %111, 512
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %260

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %124 = load i32, ptr %123, align 4
  br label %260

125:                                              ; preds = %117
  %126 = and i32 %111, 64
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 100000, i32 108000
  br label %260

129:                                              ; preds = %117
  %130 = and i32 %111, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %260, label %132

132:                                              ; preds = %129
  %133 = tail call fastcc i32 @read_vco(ptr noundef %0, i32 noundef 32) #8
  %134 = lshr i32 %111, 16
  %135 = and i32 %134, 63
  %136 = add nuw nsw i32 %135, 2
  %137 = shl i32 %133, 1
  %138 = udiv i32 %137, %136
  br label %260

139:                                              ; preds = %2
  %140 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr i8, ptr %141, i32 16804
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %144 = and i32 %143, 256
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %260, label %146

146:                                              ; preds = %139
  %147 = and i32 %143, 1024
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %260

149:                                              ; preds = %146
  %150 = and i32 %143, 12288
  switch i32 %150, label %260 [
    i32 0, label %151
    i32 8192, label %157
    i32 12288, label %161
  ]

151:                                              ; preds = %149
  %152 = and i32 %143, 512
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %260

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %156 = load i32, ptr %155, align 4
  br label %260

157:                                              ; preds = %149
  %158 = and i32 %143, 64
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %159, i32 100000, i32 108000
  br label %260

161:                                              ; preds = %149
  %162 = and i32 %143, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %260, label %164

164:                                              ; preds = %161
  %165 = tail call fastcc i32 @read_vco(ptr noundef %0, i32 noundef 33) #8
  %166 = lshr i32 %143, 16
  %167 = and i32 %166, 63
  %168 = add nuw nsw i32 %167, 2
  %169 = shl i32 %165, 1
  %170 = udiv i32 %169, %168
  br label %260

171:                                              ; preds = %2
  %172 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr i8, ptr %173, i32 16820
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %176 = and i32 %175, 256
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %260, label %178

178:                                              ; preds = %171
  %179 = and i32 %175, 1024
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %260

181:                                              ; preds = %178
  %182 = and i32 %175, 12288
  switch i32 %182, label %260 [
    i32 0, label %183
    i32 8192, label %189
    i32 12288, label %193
  ]

183:                                              ; preds = %181
  %184 = and i32 %175, 512
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %260

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %188 = load i32, ptr %187, align 4
  br label %260

189:                                              ; preds = %181
  %190 = and i32 %175, 64
  %191 = icmp eq i32 %190, 0
  %192 = select i1 %191, i32 100000, i32 108000
  br label %260

193:                                              ; preds = %181
  %194 = and i32 %175, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %260, label %196

196:                                              ; preds = %193
  %197 = tail call fastcc i32 @read_vco(ptr noundef %0, i32 noundef 37) #8
  %198 = lshr i32 %175, 16
  %199 = and i32 %198, 63
  %200 = add nuw nsw i32 %199, 2
  %201 = shl i32 %197, 1
  %202 = udiv i32 %201, %200
  br label %260

203:                                              ; preds = %2
  %204 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr i8, ptr %205, i32 49216
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %206) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %208 = lshr i32 %207, 28
  %209 = and i32 %208, 3
  switch i32 %209, label %243 [
    i32 0, label %210
    i32 2, label %260
    i32 3, label %260
  ]

210:                                              ; preds = %203
  %211 = load ptr, ptr %3, align 4
  %212 = getelementptr inbounds %struct.nvkm_device, ptr %211, i32 0, i32 11
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr i8, ptr %213, i32 16788
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %216 = and i32 %215, 256
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %260, label %218

218:                                              ; preds = %210
  %219 = and i32 %215, 1024
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %260

221:                                              ; preds = %218
  %222 = and i32 %215, 12288
  switch i32 %222, label %260 [
    i32 0, label %223
    i32 8192, label %229
    i32 12288, label %233
  ]

223:                                              ; preds = %221
  %224 = and i32 %215, 512
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %260

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.nvkm_device, ptr %211, i32 0, i32 18
  %228 = load i32, ptr %227, align 4
  br label %260

229:                                              ; preds = %221
  %230 = and i32 %215, 64
  %231 = icmp eq i32 %230, 0
  %232 = select i1 %231, i32 100000, i32 108000
  br label %260

233:                                              ; preds = %221
  %234 = and i32 %215, 1
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %260, label %236

236:                                              ; preds = %233
  %237 = tail call fastcc i32 @read_vco(ptr noundef %0, i32 noundef 29) #8
  %238 = lshr i32 %215, 16
  %239 = and i32 %238, 63
  %240 = add nuw nsw i32 %239, 2
  %241 = shl i32 %237, 1
  %242 = udiv i32 %241, %240
  br label %260

243:                                              ; preds = %203
  %244 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %245 = load i32, ptr %244, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %260, label %247

247:                                              ; preds = %243
  %248 = load ptr, ptr %3, align 4
  %249 = getelementptr inbounds %struct.nvkm_device, ptr %248, i32 0, i32 2
  %250 = load ptr, ptr %249, align 8
  %251 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %250, ptr noundef nonnull @.str.6, ptr noundef %251, i32 noundef %209) #10
  br label %260

252:                                              ; preds = %2
  %253 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %254 = load i32, ptr %253, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 2
  %258 = load ptr, ptr %257, align 8
  %259 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %258, ptr noundef nonnull @.str.7, ptr noundef %259, i32 noundef %1) #10
  br label %260

260:                                              ; preds = %256, %252, %247, %243, %236, %233, %229, %226, %223, %221, %218, %210, %203, %203, %196, %193, %189, %186, %183, %181, %178, %171, %164, %161, %157, %154, %151, %149, %146, %139, %132, %129, %125, %122, %119, %117, %114, %107, %101, %93, %68, %60, %35, %27, %5
  %261 = phi i32 [ %7, %5 ], [ 277000, %203 ], [ 277000, %203 ], [ -22, %247 ], [ -22, %243 ], [ -22, %256 ], [ -22, %252 ], [ %40, %35 ], [ 0, %27 ], [ %73, %68 ], [ 0, %60 ], [ %106, %101 ], [ 0, %93 ], [ %138, %132 ], [ %124, %122 ], [ 0, %107 ], [ 108000, %114 ], [ 0, %119 ], [ %128, %125 ], [ 0, %129 ], [ 0, %117 ], [ %170, %164 ], [ %156, %154 ], [ 0, %139 ], [ 108000, %146 ], [ 0, %151 ], [ %160, %157 ], [ 0, %161 ], [ 0, %149 ], [ %202, %196 ], [ %188, %186 ], [ 0, %171 ], [ 108000, %178 ], [ 0, %183 ], [ %192, %189 ], [ 0, %193 ], [ 0, %181 ], [ %242, %236 ], [ %228, %226 ], [ 0, %210 ], [ 108000, %218 ], [ 0, %223 ], [ %232, %229 ], [ 0, %233 ], [ 0, %221 ]
  ret i32 %261
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gt215_clk_calc(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 15
  %6 = tail call i32 @gt215_pll_info(ptr noundef %0, i32 noundef 16, i32 noundef 16896, i32 noundef %4, ptr noundef %5) #8
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 0) #8
  %8 = icmp sgt i32 %6, -1
  br i1 %8, label %9, label %144

9:                                                ; preds = %2
  %10 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 17
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 17
  %13 = tail call i32 @gt215_pll_info(ptr noundef %0, i32 noundef 17, i32 noundef 16928, i32 noundef %11, ptr noundef %12) #8
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 0) #8
  %15 = icmp sgt i32 %13, -1
  br i1 %15, label %16, label %144

16:                                               ; preds = %9
  %17 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 26
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 26
  %20 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 26, i32 1
  store i32 0, ptr %20, align 4
  store i32 0, ptr %19, align 4
  switch i32 %18, label %23 [
    i32 27000, label %47
    i32 100000, label %21
    i32 108000, label %22
  ]

21:                                               ; preds = %16
  br label %47

22:                                               ; preds = %16
  br label %47

23:                                               ; preds = %16
  %24 = tail call fastcc i32 @read_vco(ptr noundef %0, i32 noundef 32) #8
  %25 = shl i32 %24, 1
  %26 = udiv i32 %25, %18
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 65) #8
  %28 = udiv i32 %25, %27
  %29 = add i32 %18, 3000
  %30 = sub i32 %29, %28
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = add nuw nsw i32 %27, 1
  %34 = udiv i32 %25, %33
  br label %35

35:                                               ; preds = %32, %23
  %36 = phi i32 [ %33, %32 ], [ %27, %23 ]
  %37 = phi i32 [ %34, %32 ], [ %28, %23 ]
  %38 = icmp ugt i32 %36, 4
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = add i32 %18, 7566
  %41 = udiv i32 %40, 15133
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 18) #8
  %43 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 26, i32 3
  store i32 %42, ptr %43, align 4
  br label %144

44:                                               ; preds = %35
  %45 = shl nuw nsw i32 %36, 16
  %46 = add nsw i32 %45, -118528
  br label %47

47:                                               ; preds = %44, %22, %21, %16
  %48 = phi i32 [ %46, %44 ], [ 8512, %22 ], [ 8448, %21 ], [ 256, %16 ]
  %49 = phi i32 [ %37, %44 ], [ %18, %22 ], [ %18, %21 ], [ %18, %16 ]
  store i32 %48, ptr %19, align 4
  %50 = add i32 %18, 7566
  %51 = udiv i32 %50, 15133
  %52 = tail call i32 @llvm.umax.i32(i32 %51, i32 18) #8
  %53 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 26, i32 3
  store i32 %52, ptr %53, align 4
  %54 = icmp eq i32 %49, 0
  br i1 %54, label %144, label %55

55:                                               ; preds = %47
  %56 = tail call i32 @llvm.smin.i32(i32 %49, i32 0) #8
  %57 = icmp sgt i32 %49, -1
  br i1 %57, label %58, label %144

58:                                               ; preds = %55
  %59 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 27
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 27
  %62 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 27, i32 1
  store i32 0, ptr %62, align 4
  store i32 0, ptr %61, align 4
  switch i32 %60, label %65 [
    i32 27000, label %89
    i32 100000, label %63
    i32 108000, label %64
  ]

63:                                               ; preds = %58
  br label %89

64:                                               ; preds = %58
  br label %89

65:                                               ; preds = %58
  %66 = tail call fastcc i32 @read_vco(ptr noundef %0, i32 noundef 33) #8
  %67 = shl i32 %66, 1
  %68 = udiv i32 %67, %60
  %69 = tail call i32 @llvm.umin.i32(i32 %68, i32 65) #8
  %70 = udiv i32 %67, %69
  %71 = add i32 %60, 3000
  %72 = sub i32 %71, %70
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = add nuw nsw i32 %69, 1
  %76 = udiv i32 %67, %75
  br label %77

77:                                               ; preds = %74, %65
  %78 = phi i32 [ %75, %74 ], [ %69, %65 ]
  %79 = phi i32 [ %76, %74 ], [ %70, %65 ]
  %80 = icmp ugt i32 %78, 4
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = add i32 %60, 7566
  %83 = udiv i32 %82, 15133
  %84 = tail call i32 @llvm.umax.i32(i32 %83, i32 18) #8
  %85 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 27, i32 3
  store i32 %84, ptr %85, align 4
  br label %144

86:                                               ; preds = %77
  %87 = shl nuw nsw i32 %78, 16
  %88 = add nsw i32 %87, -118528
  br label %89

89:                                               ; preds = %86, %64, %63, %58
  %90 = phi i32 [ %88, %86 ], [ 8512, %64 ], [ 8448, %63 ], [ 256, %58 ]
  %91 = phi i32 [ %79, %86 ], [ %60, %64 ], [ %60, %63 ], [ %60, %58 ]
  store i32 %90, ptr %61, align 4
  %92 = add i32 %60, 7566
  %93 = udiv i32 %92, 15133
  %94 = tail call i32 @llvm.umax.i32(i32 %93, i32 18) #8
  %95 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 27, i32 3
  store i32 %94, ptr %95, align 4
  %96 = icmp eq i32 %91, 0
  br i1 %96, label %144, label %97

97:                                               ; preds = %89
  %98 = tail call i32 @llvm.smin.i32(i32 %91, i32 0) #8
  %99 = icmp sgt i32 %91, -1
  br i1 %99, label %100, label %144

100:                                              ; preds = %97
  %101 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 8
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 8
  %104 = icmp eq i32 %102, 277000
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  store i32 0, ptr %103, align 4
  %106 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 8, i32 2
  store i32 0, ptr %106, align 4
  br label %133

107:                                              ; preds = %100
  %108 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 8, i32 2
  store i32 1, ptr %108, align 4
  store i32 0, ptr %103, align 4
  switch i32 %102, label %111 [
    i32 27000, label %127
    i32 100000, label %109
    i32 108000, label %110
  ]

109:                                              ; preds = %107
  br label %127

110:                                              ; preds = %107
  br label %127

111:                                              ; preds = %107
  %112 = tail call fastcc i32 @read_vco(ptr noundef %0, i32 noundef 29) #8
  %113 = shl i32 %112, 1
  %114 = udiv i32 %113, %102
  %115 = tail call i32 @llvm.umin.i32(i32 %114, i32 65) #8
  %116 = udiv i32 %113, %115
  %117 = add i32 %102, 3000
  %118 = sub i32 %117, %116
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %111
  %121 = add nuw nsw i32 %115, 1
  %122 = udiv i32 %113, %121
  br label %123

123:                                              ; preds = %120, %111
  %124 = phi i32 [ %121, %120 ], [ %115, %111 ]
  %125 = phi i32 [ %122, %120 ], [ %116, %111 ]
  %126 = icmp ugt i32 %124, 4
  br i1 %126, label %129, label %144

127:                                              ; preds = %110, %109, %107
  %128 = phi i32 [ 256, %107 ], [ 8448, %109 ], [ 8512, %110 ]
  store i32 %128, ptr %103, align 4
  br label %133

129:                                              ; preds = %123
  %130 = shl nuw nsw i32 %124, 16
  %131 = add nsw i32 %130, -118528
  store i32 %131, ptr %103, align 4
  %132 = icmp sgt i32 %125, -1
  br i1 %132, label %133, label %144

133:                                              ; preds = %129, %127, %105
  %134 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 15, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %133
  %138 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 16
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 16
  %141 = tail call fastcc i32 @gt215_clk_info(ptr noundef %0, i32 noundef 16, i32 noundef %139, ptr noundef %140)
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %137, %133
  br label %144

144:                                              ; preds = %143, %137, %129, %123, %97, %89, %81, %55, %47, %39, %9, %2
  %145 = phi i32 [ 0, %143 ], [ %7, %2 ], [ %14, %9 ], [ %56, %55 ], [ %98, %97 ], [ %141, %137 ], [ %125, %129 ], [ -34, %123 ], [ -34, %39 ], [ -34, %47 ], [ -34, %81 ], [ -34, %89 ]
  ret i32 %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gt215_clk_prog(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = call i32 @gt215_clk_pre(ptr noundef %0, ptr noundef nonnull %2)
  switch i32 %3, label %124 [
    i32 0, label %4
    i32 -16, label %121
  ]

4:                                                ; preds = %1
  %5 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 15, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 1048620
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %15 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 16, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %8
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr i8, ptr %19, i32 1048620
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %16) #8, !srcloc !12
  br label %21

21:                                               ; preds = %18, %8
  call fastcc void @prog_pll(ptr noundef %0, i32 noundef 0, i32 noundef 16896, i32 noundef 16) #8
  %22 = load i32, ptr %15, align 4
  %23 = icmp ugt i32 %14, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load ptr, ptr %11, align 4
  %26 = getelementptr i8, ptr %25, i32 1048620
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %22) #8, !srcloc !12
  br label %27

27:                                               ; preds = %24, %21, %4
  %28 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 11
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 1048620
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %34 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 15, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load ptr, ptr %30, align 4
  %39 = getelementptr i8, ptr %38, i32 1048620
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %35) #8, !srcloc !12
  br label %40

40:                                               ; preds = %37, %27
  call fastcc void @prog_pll(ptr noundef %0, i32 noundef 0, i32 noundef 16896, i32 noundef 15) #8
  %41 = load i32, ptr %34, align 4
  %42 = icmp ugt i32 %33, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load ptr, ptr %30, align 4
  %45 = getelementptr i8, ptr %44, i32 1048620
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %41) #8, !srcloc !12
  br label %46

46:                                               ; preds = %43, %40
  call fastcc void @prog_pll(ptr noundef %0, i32 noundef 1, i32 noundef 16928, i32 noundef 17)
  %47 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 26
  %48 = load ptr, ptr %28, align 4
  %49 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 11
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 16800
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %53 = and i32 %52, -4141378
  %54 = load i32, ptr %47, align 4
  %55 = or i32 %53, %54
  %56 = or i32 %55, 257
  %57 = load ptr, ptr %49, align 4
  %58 = getelementptr i8, ptr %57, i32 16800
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #8, !srcloc !12
  %59 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 27
  %60 = load ptr, ptr %28, align 4
  %61 = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 11
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 16804
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %65 = and i32 %64, -4141378
  %66 = load i32, ptr %59, align 4
  %67 = or i32 %65, %66
  %68 = or i32 %67, 257
  %69 = load ptr, ptr %61, align 4
  %70 = getelementptr i8, ptr %69, i32 16804
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #8, !srcloc !12
  %71 = load ptr, ptr %28, align 4
  %72 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 11
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 49216
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %76 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 8, i32 2
  %77 = load i32, ptr %76, align 4
  switch i32 %77, label %118 [
    i32 0, label %78
    i32 1, label %99
  ]

78:                                               ; preds = %46
  %79 = and i32 %75, 805306368
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %78
  %82 = or i32 %75, 536870912
  %83 = load ptr, ptr %72, align 4
  %84 = getelementptr i8, ptr %83, i32 49216
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #8, !srcloc !12
  %85 = load ptr, ptr %28, align 4
  %86 = getelementptr inbounds %struct.nvkm_device, ptr %85, i32 0, i32 11
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %87, i32 16788
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %90 = and i32 %89, -257
  %91 = load ptr, ptr %86, align 4
  %92 = getelementptr i8, ptr %91, i32 16788
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #8, !srcloc !12
  %93 = load ptr, ptr %86, align 4
  %94 = getelementptr i8, ptr %93, i32 16788
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %96 = and i32 %95, -2
  %97 = load ptr, ptr %86, align 4
  %98 = getelementptr i8, ptr %97, i32 16788
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #8, !srcloc !12
  br label %118

99:                                               ; preds = %46
  %100 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 8
  %101 = load ptr, ptr %28, align 4
  %102 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 11
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr i8, ptr %103, i32 16788
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %106 = and i32 %105, -4141378
  %107 = load i32, ptr %100, align 4
  %108 = or i32 %106, %107
  %109 = or i32 %108, 257
  %110 = load ptr, ptr %102, align 4
  %111 = getelementptr i8, ptr %110, i32 16788
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #8, !srcloc !12
  %112 = and i32 %75, 536870912
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %99
  %115 = and i32 %75, -805306369
  %116 = load ptr, ptr %72, align 4
  %117 = getelementptr i8, ptr %116, i32 49216
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #8, !srcloc !12
  br label %118

118:                                              ; preds = %114, %99, %81, %78, %46
  %119 = load ptr, ptr %72, align 4
  %120 = getelementptr i8, ptr %119, i32 49220
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 62) #8, !srcloc !12
  br label %124

121:                                              ; preds = %1
  %122 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %123 = load ptr, ptr %122, align 4
  br label %131

124:                                              ; preds = %118, %1
  %125 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.nvkm_device, ptr %126, i32 0, i32 52
  %128 = load ptr, ptr %127, align 8
  %129 = icmp eq ptr %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %124
  call void @nvkm_fifo_start(ptr noundef nonnull %128, ptr noundef nonnull %2) #8
  br label %131

131:                                              ; preds = %130, %124, %121
  %132 = phi ptr [ %123, %121 ], [ %126, %124 ], [ %126, %130 ]
  %133 = getelementptr inbounds %struct.nvkm_device, ptr %132, i32 0, i32 11
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr i8, ptr %134, i32 9476
  %136 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %137 = and i32 %136, -2
  %138 = load ptr, ptr %133, align 4
  %139 = getelementptr i8, ptr %138, i32 9476
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %137) #8, !srcloc !12
  %140 = load ptr, ptr %133, align 4
  %141 = getelementptr i8, ptr %140, i32 131168
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %143 = and i32 %142, -458753
  %144 = or i32 %143, 262144
  %145 = load ptr, ptr %133, align 4
  %146 = getelementptr i8, ptr %145, i32 131168
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #8, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @gt215_clk_tidy(ptr nocapture noundef %0) #5 {
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @prog_pll(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.nvkm_timer_wait, align 8
  %6 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 %3
  %7 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %1, 2
  %10 = add i32 %9, 16672
  %11 = add i32 %9, 16736
  %12 = add i32 %2, 4
  %13 = getelementptr %struct.gt215_clk, ptr %0, i32 0, i32 1, i32 %3, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  br i1 %15, label %129, label %18

18:                                               ; preds = %4
  %19 = getelementptr i8, ptr %17, i32 %2
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load ptr, ptr %16, align 4
  %25 = getelementptr i8, ptr %24, i32 %11
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %27 = or i32 %26, 257
  %28 = load ptr, ptr %16, align 4
  %29 = getelementptr i8, ptr %28, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #8, !srcloc !12
  %30 = load ptr, ptr %16, align 4
  %31 = getelementptr i8, ptr %30, i32 %2
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %33 = or i32 %32, 8
  %34 = load ptr, ptr %16, align 4
  %35 = getelementptr i8, ptr %34, i32 %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #8, !srcloc !12
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 4294960) #8
  br label %37

37:                                               ; preds = %23, %18
  %38 = load ptr, ptr %16, align 4
  %39 = getelementptr i8, ptr %38, i32 %10
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %41 = and i32 %40, -4141378
  %42 = load i32, ptr %6, align 4
  %43 = or i32 %41, %42
  %44 = or i32 %43, 257
  %45 = load ptr, ptr %16, align 4
  %46 = getelementptr i8, ptr %45, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #8, !srcloc !12
  %47 = load i32, ptr %13, align 4
  %48 = load ptr, ptr %16, align 4
  %49 = getelementptr i8, ptr %48, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #8, !srcloc !12
  %50 = load ptr, ptr %16, align 4
  %51 = getelementptr i8, ptr %50, i32 %2
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %53 = or i32 %52, 21
  %54 = load ptr, ptr %16, align 4
  %55 = getelementptr i8, ptr %54, i32 %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #8, !srcloc !12
  %56 = load ptr, ptr %16, align 4
  %57 = getelementptr i8, ptr %56, i32 %2
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %59 = and i32 %58, -17
  %60 = load ptr, ptr %16, align 4
  %61 = getelementptr i8, ptr %60, i32 %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #8, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false), !annotation !8
  call void @nvkm_timer_wait_init(ptr noundef %8, i64 noundef 2000000000, ptr noundef nonnull %5) #8
  br label %62

62:                                               ; preds = %68, %37
  %63 = load ptr, ptr %16, align 4
  %64 = getelementptr i8, ptr %63, i32 %2
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %66 = and i32 %65, 131072
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %102

68:                                               ; preds = %62
  %69 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %5) #8
  %70 = icmp sgt i64 %69, -1
  br i1 %70, label %62, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %5, align 8
  %73 = getelementptr inbounds %struct.nvkm_timer, ptr %72, i32 0, i32 1, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.nvkm_device, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8
  %77 = call ptr @dev_driver_string(ptr noundef %76) #8
  %78 = load ptr, ptr %5, align 8
  %79 = getelementptr inbounds %struct.nvkm_timer, ptr %78, i32 0, i32 1, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.nvkm_device, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.device, ptr %82, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %71
  %87 = load ptr, ptr %82, align 4
  br label %88

88:                                               ; preds = %86, %71
  %89 = phi ptr [ %87, %86 ], [ %84, %71 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 389, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %77, ptr noundef %89) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #8
  %90 = load ptr, ptr %16, align 4
  %91 = getelementptr i8, ptr %90, i32 %2
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %93 = or i32 %92, 16
  %94 = load ptr, ptr %16, align 4
  %95 = getelementptr i8, ptr %94, i32 %2
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #8, !srcloc !12
  %96 = load ptr, ptr %16, align 4
  %97 = getelementptr i8, ptr %96, i32 %10
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %99 = and i32 %98, -258
  %100 = load ptr, ptr %16, align 4
  %101 = getelementptr i8, ptr %100, i32 %10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #8, !srcloc !12
  br label %165

102:                                              ; preds = %62
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #8
  %103 = load ptr, ptr %16, align 4
  %104 = getelementptr i8, ptr %103, i32 %2
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %106 = or i32 %105, 16
  %107 = load ptr, ptr %16, align 4
  %108 = getelementptr i8, ptr %107, i32 %2
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #8, !srcloc !12
  %109 = load ptr, ptr %16, align 4
  %110 = getelementptr i8, ptr %109, i32 %2
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %112 = and i32 %111, -9
  %113 = load ptr, ptr %16, align 4
  %114 = getelementptr i8, ptr %113, i32 %2
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #8, !srcloc !12
  %115 = load ptr, ptr %7, align 4
  %116 = getelementptr inbounds %struct.nvkm_device, ptr %115, i32 0, i32 11
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %117, i32 %11
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %120 = and i32 %119, -257
  %121 = load ptr, ptr %116, align 4
  %122 = getelementptr i8, ptr %121, i32 %11
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #8, !srcloc !12
  %123 = load ptr, ptr %116, align 4
  %124 = getelementptr i8, ptr %123, i32 %11
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %126 = and i32 %125, -2
  %127 = load ptr, ptr %116, align 4
  %128 = getelementptr i8, ptr %127, i32 %11
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %126) #8, !srcloc !12
  br label %165

129:                                              ; preds = %4
  %130 = getelementptr i8, ptr %17, i32 %11
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %132 = and i32 %131, -4141378
  %133 = load i32, ptr %6, align 4
  %134 = or i32 %132, %133
  %135 = or i32 %134, 257
  %136 = load ptr, ptr %16, align 4
  %137 = getelementptr i8, ptr %136, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %135) #8, !srcloc !12
  %138 = load ptr, ptr %16, align 4
  %139 = getelementptr i8, ptr %138, i32 %2
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %141 = or i32 %140, 24
  %142 = load ptr, ptr %16, align 4
  %143 = getelementptr i8, ptr %142, i32 %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %141) #8, !srcloc !12
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %144(i32 noundef 4294960) #8
  %145 = load ptr, ptr %16, align 4
  %146 = getelementptr i8, ptr %145, i32 %2
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %148 = and i32 %147, -2
  %149 = load ptr, ptr %16, align 4
  %150 = getelementptr i8, ptr %149, i32 %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #8, !srcloc !12
  %151 = load ptr, ptr %7, align 4
  %152 = getelementptr inbounds %struct.nvkm_device, ptr %151, i32 0, i32 11
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr i8, ptr %153, i32 %10
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %156 = and i32 %155, -257
  %157 = load ptr, ptr %152, align 4
  %158 = getelementptr i8, ptr %157, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #8, !srcloc !12
  %159 = load ptr, ptr %152, align 4
  %160 = getelementptr i8, ptr %159, i32 %10
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %162 = and i32 %161, -2
  %163 = load ptr, ptr %152, align 4
  %164 = getelementptr i8, ptr %163, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %162) #8, !srcloc !12
  br label %165

165:                                              ; preds = %129, %102, %88
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
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
!8 = !{!"auto-init"}
!9 = !{i64 3954639}
!10 = !{i64 2151494092}
!11 = !{i64 2151495314}
!12 = !{i64 3954221}
