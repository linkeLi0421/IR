; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv40.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.123, %struct.anon.123 }
%struct.anon.123 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nv40_clk = type { %struct.nvkm_clk, i32, i32, i32, i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"shader\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@nv40_clk = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [6 x %struct.nvkm_domain] } { ptr null, ptr null, ptr @nv40_clk_read, ptr @nv40_clk_calc, ptr @nv40_clk_prog, ptr @nv40_clk_tidy, ptr null, i32 0, [6 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 1, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 15, i8 -1, i8 0, ptr @.str, i32 1000 }, %struct.nvkm_domain { i32 17, i8 -1, i8 0, ptr @.str.1, i32 1000 }, %struct.nvkm_domain { i32 18, i8 -1, i8 0, ptr @.str.2, i32 1000 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"%s: unknown clock source %d %08x\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv40_clk_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 380) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_clk, ptr %6, i32 0, i32 21
  store ptr @nv04_clk_pll_calc, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvkm_clk, ptr %6, i32 0, i32 22
  store ptr @nv04_clk_pll_prog, ptr %10, align 8
  store ptr %6, ptr %3, align 4
  %11 = tail call i32 @nvkm_clk_ctor(ptr noundef nonnull @nv40_clk, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef nonnull %6) #8
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ -12, %4 ]
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_clk_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_clk_pll_prog(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_clk_read(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 49216
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  switch i32 %1, label %152 [
    i32 0, label %9
    i32 1, label %161
    i32 15, label %12
    i32 17, label %65
    i32 18, label %119
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %11 = load i32, ptr %10, align 4
  br label %161

12:                                               ; preds = %2
  %13 = and i32 %8, 3
  switch i32 %13, label %161 [
    i32 3, label %14
    i32 2, label %47
  ]

14:                                               ; preds = %12
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 16384
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr i8, ptr %20, i32 16388
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %23 = lshr i32 %22, 24
  %24 = lshr i32 %22, 16
  %25 = and i32 %24, 255
  %26 = and i32 %22, 255
  %27 = icmp slt i32 %19, 0
  %28 = icmp ne i32 %26, 0
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %42

30:                                               ; preds = %14
  %31 = lshr i32 %22, 8
  %32 = and i32 %31, 255
  %33 = mul nuw nsw i32 %32, 27000
  %34 = udiv i32 %33, %26
  %35 = and i32 %19, 1073742080
  %36 = icmp eq i32 %35, 1073741824
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = icmp eq i32 %25, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = mul nuw nsw i32 %34, %23
  %41 = udiv i32 %40, %25
  br label %42

42:                                               ; preds = %39, %37, %30, %14
  %43 = phi i32 [ %41, %39 ], [ %34, %30 ], [ 0, %14 ], [ 0, %37 ]
  %44 = lshr i32 %19, 16
  %45 = and i32 %44, 7
  %46 = lshr i32 %43, %45
  br label %161

47:                                               ; preds = %12
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 11
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 16392
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %60, label %54

54:                                               ; preds = %47
  %55 = and i32 %52, 255
  %56 = lshr i32 %52, 8
  %57 = and i32 %56, 255
  %58 = mul nuw nsw i32 %57, 27000
  %59 = udiv i32 %58, %55
  br label %60

60:                                               ; preds = %54, %47
  %61 = phi i32 [ %59, %54 ], [ 0, %47 ]
  %62 = lshr i32 %52, 16
  %63 = and i32 %62, 7
  %64 = lshr i32 %61, %63
  br label %161

65:                                               ; preds = %2
  %66 = lshr i32 %8, 4
  %67 = and i32 %66, 3
  switch i32 %67, label %161 [
    i32 3, label %68
    i32 2, label %101
  ]

68:                                               ; preds = %65
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr inbounds %struct.nvkm_device, ptr %69, i32 0, i32 11
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 16384
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %74 = load ptr, ptr %70, align 4
  %75 = getelementptr i8, ptr %74, i32 16388
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %77 = lshr i32 %76, 24
  %78 = lshr i32 %76, 16
  %79 = and i32 %78, 255
  %80 = and i32 %76, 255
  %81 = icmp slt i32 %73, 0
  %82 = icmp ne i32 %80, 0
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %96

84:                                               ; preds = %68
  %85 = lshr i32 %76, 8
  %86 = and i32 %85, 255
  %87 = mul nuw nsw i32 %86, 27000
  %88 = udiv i32 %87, %80
  %89 = and i32 %73, 1073742080
  %90 = icmp eq i32 %89, 1073741824
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = icmp eq i32 %79, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %91
  %94 = mul nuw nsw i32 %88, %77
  %95 = udiv i32 %94, %79
  br label %96

96:                                               ; preds = %93, %91, %84, %68
  %97 = phi i32 [ %95, %93 ], [ %88, %84 ], [ 0, %68 ], [ 0, %91 ]
  %98 = lshr i32 %73, 16
  %99 = and i32 %98, 7
  %100 = lshr i32 %97, %99
  br label %161

101:                                              ; preds = %65
  %102 = load ptr, ptr %3, align 4
  %103 = getelementptr inbounds %struct.nvkm_device, ptr %102, i32 0, i32 11
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr i8, ptr %104, i32 16392
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %107 = icmp sgt i32 %106, -1
  br i1 %107, label %114, label %108

108:                                              ; preds = %101
  %109 = and i32 %106, 255
  %110 = lshr i32 %106, 8
  %111 = and i32 %110, 255
  %112 = mul nuw nsw i32 %111, 27000
  %113 = udiv i32 %112, %109
  br label %114

114:                                              ; preds = %108, %101
  %115 = phi i32 [ %113, %108 ], [ 0, %101 ]
  %116 = lshr i32 %106, 16
  %117 = and i32 %116, 7
  %118 = lshr i32 %115, %117
  br label %161

119:                                              ; preds = %2
  %120 = load ptr, ptr %3, align 4
  %121 = getelementptr inbounds %struct.nvkm_device, ptr %120, i32 0, i32 11
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr i8, ptr %122, i32 16416
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %125 = load ptr, ptr %121, align 4
  %126 = getelementptr i8, ptr %125, i32 16420
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %128 = lshr i32 %127, 24
  %129 = lshr i32 %127, 16
  %130 = and i32 %129, 255
  %131 = and i32 %127, 255
  %132 = icmp slt i32 %124, 0
  %133 = icmp ne i32 %131, 0
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %135, label %147

135:                                              ; preds = %119
  %136 = lshr i32 %127, 8
  %137 = and i32 %136, 255
  %138 = mul nuw nsw i32 %137, 27000
  %139 = udiv i32 %138, %131
  %140 = and i32 %124, 1073742080
  %141 = icmp eq i32 %140, 1073741824
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = icmp eq i32 %130, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %142
  %145 = mul nuw nsw i32 %139, %128
  %146 = udiv i32 %145, %130
  br label %147

147:                                              ; preds = %144, %142, %135, %119
  %148 = phi i32 [ %146, %144 ], [ %139, %135 ], [ 0, %119 ], [ 0, %142 ]
  %149 = lshr i32 %124, 16
  %150 = and i32 %149, 7
  %151 = lshr i32 %148, %150
  br label %161

152:                                              ; preds = %2
  %153 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %154 = load i32, ptr %153, align 4
  %155 = icmp ugt i32 %154, 3
  br i1 %155, label %156, label %161

156:                                              ; preds = %152
  %157 = load ptr, ptr %3, align 4
  %158 = getelementptr inbounds %struct.nvkm_device, ptr %157, i32 0, i32 2
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %159, ptr noundef nonnull @.str.4, ptr noundef %160, i32 noundef %1, i32 noundef %8) #9
  br label %161

161:                                              ; preds = %156, %152, %147, %114, %96, %65, %60, %42, %12, %9, %2
  %162 = phi i32 [ %151, %147 ], [ %11, %9 ], [ 100000, %2 ], [ -22, %156 ], [ -22, %152 ], [ %64, %60 ], [ %46, %42 ], [ 0, %12 ], [ %118, %114 ], [ %100, %96 ], [ 0, %65 ]
  ret i32 %162
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_clk_calc(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.nvbios_pll, align 4
  %4 = alloca %struct.nvbios_pll, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 17
  %13 = load i32, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 0, ptr %9, align 4, !annotation !10
  %14 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false) #8, !annotation !10
  %15 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 21
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @nvbios_pll_parse(ptr noundef %18, i32 noundef 16384, ptr noundef nonnull %4) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 7, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, %11
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 8, i32 1
  store i32 0, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = call i32 @nv04_pll_calc(ptr noundef %14, ptr noundef nonnull %4, i32 noundef %11, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #8
  br label %97

31:                                               ; preds = %27, %2
  %32 = phi i32 [ %19, %2 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %97, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %7, align 4
  %36 = load i32, ptr %8, align 4
  %37 = icmp eq i32 %35, %36
  %38 = load i32, ptr %9, align 4
  %39 = shl i32 %38, 16
  br i1 %37, label %40, label %46

40:                                               ; preds = %34
  %41 = or i32 %39, -2147483392
  %42 = load i32, ptr %5, align 4
  %43 = shl i32 %42, 8
  %44 = load i32, ptr %6, align 4
  %45 = or i32 %43, %44
  br label %56

46:                                               ; preds = %34
  %47 = or i32 %39, -1073741824
  %48 = shl i32 %35, 24
  %49 = shl i32 %36, 16
  %50 = or i32 %49, %48
  %51 = load i32, ptr %5, align 4
  %52 = shl i32 %51, 8
  %53 = or i32 %50, %52
  %54 = load i32, ptr %6, align 4
  %55 = or i32 %53, %54
  br label %56

56:                                               ; preds = %46, %40
  %57 = phi i32 [ %41, %40 ], [ %47, %46 ]
  %58 = phi i32 [ %45, %40 ], [ %55, %46 ]
  %59 = getelementptr inbounds %struct.nv40_clk, ptr %0, i32 0, i32 2
  store i32 %57, ptr %59, align 4
  %60 = getelementptr inbounds %struct.nv40_clk, ptr %0, i32 0, i32 3
  store i32 %58, ptr %60, align 4
  %61 = icmp eq i32 %13, 0
  %62 = icmp eq i32 %13, %11
  %63 = or i1 %61, %62
  br i1 %63, label %94, label %64

64:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i32 56, i1 false) #8, !annotation !10
  %65 = load ptr, ptr %15, align 4
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 21
  %67 = load ptr, ptr %66, align 8
  %68 = call i32 @nvbios_pll_parse(ptr noundef %67, i32 noundef 16392, ptr noundef nonnull %3) #8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.nvbios_pll, ptr %3, i32 0, i32 7, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp ugt i32 %72, %13
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.nvbios_pll, ptr %3, i32 0, i32 8, i32 1
  store i32 0, ptr %75, align 4
  br label %76

76:                                               ; preds = %74, %70
  %77 = call i32 @nv04_pll_calc(ptr noundef %14, ptr noundef nonnull %3, i32 noundef %13, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull %9) #8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #8
  br label %97

80:                                               ; preds = %76, %64
  %81 = phi i32 [ %68, %64 ], [ %77, %76 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #8
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %80
  %84 = load i32, ptr %9, align 4
  %85 = shl i32 %84, 16
  %86 = load i32, ptr %5, align 4
  %87 = shl i32 %86, 8
  %88 = load i32, ptr %6, align 4
  %89 = or i32 %85, %87
  %90 = or i32 %89, %88
  %91 = or i32 %90, -1073741824
  %92 = getelementptr inbounds %struct.nv40_clk, ptr %0, i32 0, i32 4
  store i32 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.nv40_clk, ptr %0, i32 0, i32 1
  store i32 547, ptr %93, align 4
  br label %97

94:                                               ; preds = %56
  %95 = getelementptr inbounds %struct.nv40_clk, ptr %0, i32 0, i32 4
  store i32 0, ptr %95, align 4
  %96 = getelementptr inbounds %struct.nv40_clk, ptr %0, i32 0, i32 1
  store i32 819, ptr %96, align 4
  br label %97

97:                                               ; preds = %94, %83, %80, %79, %31, %30
  %98 = phi i32 [ %32, %31 ], [ %81, %80 ], [ 0, %94 ], [ 0, %83 ], [ -34, %30 ], [ -34, %79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_clk_prog(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 49216
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %8 = and i32 %7, -820
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 49216
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !12
  %11 = getelementptr inbounds %struct.nv40_clk, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 16388
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !12
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 16384
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %18 = and i32 %17, 1073282815
  %19 = getelementptr inbounds %struct.nv40_clk, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, %18
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr i8, ptr %22, i32 16384
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #8, !srcloc !12
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr i8, ptr %24, i32 16392
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %27 = and i32 %26, 1073217536
  %28 = getelementptr inbounds %struct.nv40_clk, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %27
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %31, i32 16392
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #8, !srcloc !12
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #8
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #8
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #8
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #8
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #8
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 49216
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %41 = and i32 %40, -820
  %42 = getelementptr inbounds %struct.nv40_clk, ptr %0, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, %41
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i8, ptr %45, i32 49216
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #8, !srcloc !12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @nv40_clk_tidy(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 3946490}
!9 = !{i64 2151485943}
!10 = !{!"auto-init"}
!11 = !{i64 2151487165}
!12 = !{i64 3946072}
