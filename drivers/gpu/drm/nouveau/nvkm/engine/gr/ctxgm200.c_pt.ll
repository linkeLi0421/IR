; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm200.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr = type { ptr, %struct.nvkm_gr, %struct.anon.125, %struct.anon.131, i8, ptr, ptr, ptr, ptr, [16 x %struct.gf100_gr_zbc_color], [16 x %struct.gf100_gr_zbc_depth], [16 x %struct.gf100_gr_zbc_stencil], i8, i8, [32 x i8], i8, i8, [32 x i8], [32 x i8], [32 x [4 x i8]], [32 x [4 x i8]], i8, i8, i8, [256 x i8], [256 x %struct.anon.132], i8, [4 x %struct.gf100_gr_data], [512 x %struct.gf100_gr_mmio], i32, ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.122 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.122 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.125 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob, %struct.mutex, i32 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.129, %struct.anon.130, %struct.nvkm_engine }
%struct.anon.129 = type { i32, ptr, i32, i8 }
%struct.anon.130 = type { i32, ptr, i32, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.131 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob }
%struct.gf100_gr_zbc_color = type { i32, [4 x i32], [4 x i32] }
%struct.gf100_gr_zbc_depth = type { i32, i32, i32 }
%struct.gf100_gr_zbc_stencil = type { i32, i32, i32 }
%struct.anon.132 = type { i8, i8 }
%struct.gf100_gr_data = type { i32, i32, i8 }
%struct.gf100_gr_mmio = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@gm200_grctx = dso_local local_unnamed_addr constant %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gk104_grctx_generate_unkn, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm107_grctx_generate_bundle, i32 12288, i32 384, i32 1920, ptr @gm107_grctx_generate_pagepool, i32 131072, ptr @gm107_grctx_generate_attrib, i32 1536, i32 1024, i32 6144, i32 4096, i32 0, ptr null, ptr @gm107_grctx_generate_sm_id, ptr null, i8 0, ptr null, ptr @gf117_grctx_generate_rop_mapping, ptr null, ptr null, ptr @gm200_grctx_generate_dist_skip_table, ptr @gm200_grctx_generate_r406500, ptr @gk104_grctx_generate_gpc_tpc_nr, ptr null, ptr @gm200_grctx_generate_tpc_mask, ptr @gm200_grctx_generate_smid_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm200_grctx_generate_r418e94, ptr @gm200_grctx_generate_r419a3c, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_grctx_generate_r419a3c(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4299324
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = and i32 %7, -21
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4299324
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #5, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_grctx_generate_smid_config(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [64 x i32], align 4
  %3 = alloca [32 x i32], align 4
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 16
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = add nuw nsw i32 %8, 3
  %10 = lshr i32 %9, 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %2, i8 0, i32 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 128, i1 false)
  %11 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 26
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = zext i8 %12 to i32
  br label %21

16:                                               ; preds = %21, %1
  %17 = icmp eq i8 %7, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %20 = call i32 @llvm.umax.i32(i32 %10, i32 1)
  br label %51

21:                                               ; preds = %21, %14
  %22 = phi i32 [ 0, %14 ], [ %43, %21 ]
  %23 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 25, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 25, i32 %22, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %24 to i32
  %28 = shl nuw nsw i32 %27, 4
  %29 = zext i8 %26 to i32
  %30 = or i32 %28, %29
  %31 = shl nuw nsw i32 %22, 3
  %32 = and i32 %31, 24
  %33 = shl i32 %30, %32
  %34 = lshr i32 %22, 2
  %35 = getelementptr [64 x i32], ptr %2, i32 0, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %33, %36
  store i32 %37, ptr %35, align 4
  %38 = shl nuw nsw i32 %29, 3
  %39 = shl i32 %22, %38
  %40 = getelementptr [32 x i32], ptr %3, i32 0, i32 %27
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, ptr %40, align 4
  %43 = add nuw nsw i32 %22, 1
  %44 = icmp eq i32 %43, %15
  br i1 %44, label %16, label %21

45:                                               ; preds = %51, %16
  %46 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 13
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  br label %61

51:                                               ; preds = %51, %18
  %52 = phi i32 [ 0, %18 ], [ %59, %51 ]
  %53 = getelementptr [64 x i32], ptr %2, i32 0, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %19, align 4
  %56 = shl nuw nsw i32 %52, 2
  %57 = add nuw nsw i32 %56, 4217696
  %58 = getelementptr i8, ptr %55, i32 %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %54) #5, !srcloc !11
  %59 = add nuw nsw i32 %52, 1
  %60 = icmp eq i32 %59, %20
  br i1 %60, label %45, label %51

61:                                               ; preds = %61, %49
  %62 = phi i32 [ 0, %49 ], [ %69, %61 ]
  %63 = getelementptr [32 x i32], ptr %3, i32 0, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %50, align 4
  %66 = shl nuw nsw i32 %62, 2
  %67 = add nuw nsw i32 %66, 4217760
  %68 = getelementptr i8, ptr %65, i32 %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %64) #5, !srcloc !11
  %69 = add nuw nsw i32 %62, 1
  %70 = load i8, ptr %46, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp ult i32 %69, %71
  br i1 %72, label %61, label %73

73:                                               ; preds = %61, %45
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_grctx_generate_tpc_mask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 13
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.gf100_gr_func, ptr %7, i32 0, i32 34
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi i32 [ 0, %6 ], [ %21, %10 ]
  %12 = phi i32 [ 0, %6 ], [ %20, %10 ]
  %13 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %11
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nsw i32 -1, %15
  %17 = xor i32 %16, -1
  %18 = mul i32 %9, %11
  %19 = shl i32 %17, %18
  %20 = or i32 %19, %12
  %21 = add nuw nsw i32 %11, 1
  %22 = icmp eq i32 %21, %4
  br i1 %22, label %23, label %10

23:                                               ; preds = %10, %1
  %24 = phi i32 [ 0, %1 ], [ %20, %10 ]
  %25 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 4211140
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %24) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_grctx_generate_r406500(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4220160
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_grctx_generate_dist_skip_table(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [8 x i32], align 4
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false)
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 13
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp eq i8 %6, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 21
  br label %11

11:                                               ; preds = %85, %9
  %12 = phi i32 [ 0, %9 ], [ %86, %85 ]
  %13 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 17, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i8 %14, 0
  br i1 %16, label %85, label %17

17:                                               ; preds = %11
  %18 = load i8, ptr %10, align 4
  %19 = getelementptr i8, ptr %2, i32 %12
  %20 = load i8, ptr %19, align 1
  br label %63

21:                                               ; preds = %85
  %22 = load i32, ptr %2, align 4
  %23 = getelementptr inbounds [8 x i32], ptr %2, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds [8 x i32], ptr %2, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds [8 x i32], ptr %2, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds [8 x i32], ptr %2, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds [8 x i32], ptr %2, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds [8 x i32], ptr %2, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds [8 x i32], ptr %2, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  br label %37

37:                                               ; preds = %21, %1
  %38 = phi i32 [ %36, %21 ], [ 0, %1 ]
  %39 = phi i32 [ %34, %21 ], [ 0, %1 ]
  %40 = phi i32 [ %32, %21 ], [ 0, %1 ]
  %41 = phi i32 [ %30, %21 ], [ 0, %1 ]
  %42 = phi i32 [ %28, %21 ], [ 0, %1 ]
  %43 = phi i32 [ %26, %21 ], [ 0, %1 ]
  %44 = phi i32 [ %24, %21 ], [ 0, %1 ]
  %45 = phi i32 [ %22, %21 ], [ 0, %1 ]
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 4220112
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %45) #5, !srcloc !11
  %49 = load ptr, ptr %46, align 4
  %50 = getelementptr i8, ptr %49, i32 4220116
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %44) #5, !srcloc !11
  %51 = load ptr, ptr %46, align 4
  %52 = getelementptr i8, ptr %51, i32 4220120
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %43) #5, !srcloc !11
  %53 = load ptr, ptr %46, align 4
  %54 = getelementptr i8, ptr %53, i32 4220124
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %42) #5, !srcloc !11
  %55 = load ptr, ptr %46, align 4
  %56 = getelementptr i8, ptr %55, i32 4220128
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %41) #5, !srcloc !11
  %57 = load ptr, ptr %46, align 4
  %58 = getelementptr i8, ptr %57, i32 4220132
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %40) #5, !srcloc !11
  %59 = load ptr, ptr %46, align 4
  %60 = getelementptr i8, ptr %59, i32 4220136
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %39) #5, !srcloc !11
  %61 = load ptr, ptr %46, align 4
  %62 = getelementptr i8, ptr %61, i32 4220140
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %38) #5, !srcloc !11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  ret void

63:                                               ; preds = %78, %17
  %64 = phi i8 [ %20, %17 ], [ %81, %78 ]
  %65 = phi i32 [ 0, %17 ], [ %82, %78 ]
  %66 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 20, i32 %12, i32 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 19, i32 %12, i32 %65
  %69 = load i8, ptr %68, align 1
  %70 = icmp ugt i8 %67, %18
  br i1 %70, label %71, label %78

71:                                               ; preds = %71, %63
  %72 = phi i8 [ %76, %71 ], [ %69, %63 ]
  %73 = phi i8 [ %74, %71 ], [ %67, %63 ]
  %74 = add i8 %73, -1
  %75 = add i8 %72, -1
  %76 = and i8 %75, %72
  %77 = icmp ugt i8 %74, %18
  br i1 %77, label %71, label %78

78:                                               ; preds = %71, %63
  %79 = phi i8 [ %69, %63 ], [ %76, %71 ]
  %80 = xor i8 %79, %69
  %81 = or i8 %64, %80
  %82 = add nuw nsw i32 %65, 1
  %83 = icmp eq i32 %82, %15
  br i1 %83, label %84, label %63

84:                                               ; preds = %78
  store i8 %81, ptr %19, align 1
  br label %85

85:                                               ; preds = %84, %11
  %86 = add nuw nsw i32 %12, 1
  %87 = icmp eq i32 %86, %7
  br i1 %87, label %21, label %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_unkn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_bundle(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_pagepool(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_attrib(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_sm_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_rop_mapping(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm200_grctx_generate_r418e94(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4296340
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 4296340
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 -1004339200) #5, !srcloc !11
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr i8, ptr %10, i32 4296268
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 4296268
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 1879048192) #5, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!8 = !{i64 3972806}
!9 = !{i64 2151512259}
!10 = !{i64 2151513481}
!11 = !{i64 3972388}
