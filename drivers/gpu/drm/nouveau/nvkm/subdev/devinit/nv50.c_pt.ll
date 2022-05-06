; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_devinit_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.127, %struct.anon.127 }
%struct.anon.127 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nvkm_devinit = type { ptr, %struct.nvkm_subdev, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvbios_outp = type { i16, i16, [3 x i16] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.128, i8 }
%union.anon.128 = type { %struct.anon.132 }
%struct.anon.132 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.nvbios_init = type { ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"%s: failed to retrieve pll data, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: failed pll calculation\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: adaptor not initialised\0A\00", align 1
@nv50_devinit = internal constant %struct.nvkm_devinit_func { ptr null, ptr @nv50_devinit_preinit, ptr @nv50_devinit_init, ptr @nv04_devinit_post, ptr null, ptr null, ptr @nv50_devinit_pll_set, ptr @nv50_devinit_disable }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_devinit_pll_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.nvbios_pll, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 21
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !annotation !8
  %14 = call i32 @nvbios_pll_parse(ptr noundef %13, i32 noundef %1, ptr noundef nonnull %4) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %124, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef %24, i32 noundef %14) #8
  br label %124

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1
  %27 = call i32 @nv04_pll_calc(ptr noundef %26, ptr noundef nonnull %4, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %124, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %10, align 4
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.1, ptr noundef %37) #8
  br label %124

38:                                               ; preds = %25
  %39 = load i32, ptr %4, align 4
  switch i32 %39, label %103 [
    i32 128, label %40
    i32 129, label %40
    i32 4, label %75
  ]

40:                                               ; preds = %38, %38
  %41 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %42, i32 %44
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 268437009) #7, !srcloc !10
  %46 = load i32, ptr %43, align 4
  %47 = add i32 %46, 4
  %48 = load ptr, ptr %41, align 4
  %49 = getelementptr i8, ptr %48, i32 %47
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %51 = and i32 %50, -16711936
  %52 = load i32, ptr %6, align 4
  %53 = shl i32 %52, 16
  %54 = load i32, ptr %5, align 4
  %55 = or i32 %54, %51
  %56 = or i32 %55, %53
  %57 = load ptr, ptr %41, align 4
  %58 = getelementptr i8, ptr %57, i32 %47
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #7, !srcloc !10
  %59 = load i32, ptr %43, align 4
  %60 = add i32 %59, 8
  %61 = load ptr, ptr %41, align 4
  %62 = getelementptr i8, ptr %61, i32 %60
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %64 = and i32 %63, -2147418368
  %65 = load i32, ptr %9, align 4
  %66 = shl i32 %65, 28
  %67 = load i32, ptr %8, align 4
  %68 = shl i32 %67, 16
  %69 = load i32, ptr %7, align 4
  %70 = or i32 %66, %64
  %71 = or i32 %70, %68
  %72 = or i32 %71, %69
  %73 = load ptr, ptr %41, align 4
  %74 = getelementptr i8, ptr %73, i32 %60
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #7, !srcloc !10
  br label %124

75:                                               ; preds = %38
  %76 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 %77
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %82 = and i32 %81, -33488897
  %83 = load i32, ptr %9, align 4
  %84 = shl i32 %83, 22
  %85 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 5
  %86 = load i8, ptr %85, align 2
  %87 = zext i8 %86 to i32
  %88 = shl nuw nsw i32 %87, 19
  %89 = shl i32 %83, 16
  %90 = or i32 %84, %82
  %91 = or i32 %90, %89
  %92 = or i32 %91, %88
  %93 = load ptr, ptr %78, align 4
  %94 = getelementptr i8, ptr %93, i32 %77
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #7, !srcloc !10
  %95 = load i32, ptr %5, align 4
  %96 = shl i32 %95, 8
  %97 = load i32, ptr %6, align 4
  %98 = or i32 %96, %97
  %99 = load ptr, ptr %78, align 4
  %100 = load i32, ptr %76, align 4
  %101 = add i32 %100, 4
  %102 = getelementptr i8, ptr %99, i32 %101
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %98) #7, !srcloc !10
  br label %124

103:                                              ; preds = %38
  %104 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %107, i32 %105
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %110 = and i32 %109, -458753
  %111 = load i32, ptr %9, align 4
  %112 = shl i32 %111, 16
  %113 = or i32 %112, %110
  %114 = load ptr, ptr %106, align 4
  %115 = getelementptr i8, ptr %114, i32 %105
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %113) #7, !srcloc !10
  %116 = load i32, ptr %5, align 4
  %117 = shl i32 %116, 8
  %118 = load i32, ptr %6, align 4
  %119 = or i32 %117, %118
  %120 = load ptr, ptr %106, align 4
  %121 = load i32, ptr %104, align 4
  %122 = add i32 %121, 4
  %123 = getelementptr i8, ptr %120, i32 %122
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %119) #7, !srcloc !10
  br label %124

124:                                              ; preds = %103, %75, %40, %33, %29, %20, %16
  %125 = phi i32 [ %14, %20 ], [ %14, %16 ], [ -22, %33 ], [ -22, %29 ], [ 0, %103 ], [ 0, %75 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #7
  ret i32 %125
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_devinit_preinit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4, !range !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  %8 = tail call i64 @nvkm_devinit_disable(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 50
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = load i8, ptr %4, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 0) #7
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 26) #7
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 3
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.2, ptr noundef %29) #8
  br label %30

30:                                               ; preds = %25, %21, %7
  store i8 1, ptr %4, align 4
  br label %31

31:                                               ; preds = %30, %18, %15, %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_devinit_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvkm_rdvgac(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_devinit_init(ptr noundef %0) #0 {
  %2 = alloca %struct.nvbios_outp, align 2
  %3 = alloca %struct.dcb_output, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.nvbios_init, align 4
  %9 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 21
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(10) %2, i8 0, i32 10, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 -1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 0, ptr %7, align 1, !annotation !8
  %14 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 2
  %15 = load i8, ptr %14, align 4, !range !13
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %57, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.dcb_output, ptr %3, i32 0, i32 1
  %19 = getelementptr inbounds %struct.dcb_output, ptr %3, i32 0, i32 2
  %20 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 1
  %21 = getelementptr inbounds %struct.nvbios_outp, ptr %2, i32 0, i32 2
  %22 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 2
  %23 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 3
  %24 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 4
  %25 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 5
  %26 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 6
  %27 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 7
  %28 = getelementptr inbounds %struct.dcb_output, ptr %3, i32 0, i32 9
  %29 = getelementptr inbounds %struct.dcb_output, ptr %3, i32 0, i32 13
  %30 = getelementptr inbounds i8, ptr %8, i32 24
  br label %31

31:                                               ; preds = %53, %17
  %32 = phi i32 [ 0, %17 ], [ %54, %53 ]
  %33 = trunc i32 %32 to i8
  %34 = call zeroext i16 @dcb_outp_parse(ptr noundef %13, i8 noundef zeroext %33, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3) #7
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %31
  %37 = load i16, ptr %18, align 4
  %38 = load i16, ptr %19, align 2
  %39 = call zeroext i16 @nvbios_outp_match(ptr noundef %13, i16 noundef zeroext %37, i16 noundef zeroext %38, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %2) #7
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %8) #7
  store i32 0, ptr %30, align 4, !annotation !8
  store ptr %9, ptr %8, align 4
  %42 = load i16, ptr %21, align 2
  %43 = zext i16 %42 to i32
  store i32 %43, ptr %20, align 4
  store i32 -1, ptr %25, align 4
  store i8 1, ptr %26, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  store ptr %3, ptr %22, align 4
  %44 = load i8, ptr %28, align 1
  %45 = call i8 @llvm.cttz.i8(i8 %44, i1 true), !range !14
  %46 = zext i8 %45 to i32
  %47 = icmp eq i8 %44, 0
  %48 = select i1 %47, i32 -1, i32 %46
  store i32 %48, ptr %23, align 4
  %49 = load i32, ptr %29, align 4
  %50 = icmp eq i32 %49, 2
  %51 = zext i1 %50 to i32
  store i32 %51, ptr %24, align 4
  %52 = call i32 @nvbios_exec(ptr noundef nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %8) #7
  br label %53

53:                                               ; preds = %41, %36
  %54 = add i32 %32, 1
  %55 = load i8, ptr %14, align 4, !range !13
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %31

57:                                               ; preds = %53, %31, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_outp_parse(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_outp_match(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_exec(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_devinit_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 64) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  store ptr %7, ptr %4, align 4
  tail call void @nvkm_devinit_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %7) #7
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_devinit_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_devinit_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 64) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  tail call void @nvkm_devinit_ctor(ptr noundef nonnull @nv50_devinit, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6) #7
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_devinit_post(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @nv50_devinit_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 5440
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %8 = and i32 %7, 1073741824
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @nvkm_subdev_disable(ptr noundef %3, i32 noundef 36, i32 noundef 0) #7
  br label %11

11:                                               ; preds = %10, %1
  ret i64 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_disable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{i64 2151485541}
!10 = !{i64 3944448}
!11 = !{i64 3944866}
!12 = !{i64 2151484319}
!13 = !{i8 0, i8 2}
!14 = !{i8 0, i8 9}
