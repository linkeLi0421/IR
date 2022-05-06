; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgp100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgp100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
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

@gp100_grctx = dso_local local_unnamed_addr constant %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gk104_grctx_generate_unkn, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm107_grctx_generate_bundle, i32 12288, i32 384, i32 4224, ptr @gp100_grctx_generate_pagepool, i32 131072, ptr @gp100_grctx_generate_attrib, i32 1632, i32 1088, i32 3072, i32 2048, i32 0, ptr null, ptr @gm107_grctx_generate_sm_id, ptr null, i8 0, ptr null, ptr @gf117_grctx_generate_rop_mapping, ptr null, ptr null, ptr @gm200_grctx_generate_dist_skip_table, ptr @gm200_grctx_generate_r406500, ptr @gk104_grctx_generate_gpc_tpc_nr, ptr null, ptr @gm200_grctx_generate_tpc_mask, ptr @gp100_grctx_generate_smid_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm200_grctx_generate_r419a3c, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gp100_grctx_generate_pagepool(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @gf100_grctx_mmio_data(ptr noundef %0, i32 noundef %7, i32 noundef 256, i1 noundef zeroext true) #5
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4227084, i32 noundef 0, i32 noundef 8, i32 noundef %8) #5
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4227088, i32 noundef -2146969600, i32 noundef 0, i32 noundef -1) #5
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4296708, i32 noundef 0, i32 noundef 8, i32 noundef %8) #5
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4296712, i32 noundef 0, i32 noundef 0, i32 noundef -1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_grctx_mmio_data(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_mmio_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gp100_grctx_generate_smid_config(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [64 x i32], align 4
  %3 = alloca [16 x i32], align 4
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 16
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = add nuw nsw i32 %8, 3
  %10 = lshr i32 %9, 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %2, i8 0, i32 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false)
  %11 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 26
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.gf100_gr_func, ptr %15, i32 0, i32 33
  %17 = load i32, ptr %16, align 4
  %18 = zext i8 %12 to i32
  br label %24

19:                                               ; preds = %24, %1
  %20 = icmp eq i8 %7, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %23 = call i32 @llvm.umax.i32(i32 %10, i32 1)
  br label %117

24:                                               ; preds = %24, %14
  %25 = phi i32 [ 0, %14 ], [ %50, %24 ]
  %26 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 25, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 25, i32 %25, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %27 to i32
  %31 = shl nuw nsw i32 %30, 4
  %32 = zext i8 %29 to i32
  %33 = or i32 %31, %32
  %34 = shl nuw nsw i32 %25, 3
  %35 = and i32 %34, 24
  %36 = shl i32 %33, %35
  %37 = lshr i32 %25, 2
  %38 = getelementptr [64 x i32], ptr %2, i32 0, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %36, %39
  store i32 %40, ptr %38, align 4
  %41 = shl nuw nsw i32 %32, 3
  %42 = and i32 %41, 24
  %43 = shl nuw i32 %25, %42
  %44 = lshr i32 %32, 2
  %45 = mul i32 %17, %44
  %46 = add i32 %45, %30
  %47 = getelementptr [16 x i32], ptr %3, i32 0, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, %43
  store i32 %49, ptr %47, align 4
  %50 = add nuw nsw i32 %25, 1
  %51 = icmp eq i32 %50, %18
  br i1 %51, label %19, label %24

52:                                               ; preds = %117, %19
  %53 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %54 = load i32, ptr %3, align 4
  %55 = load ptr, ptr %53, align 4
  %56 = getelementptr i8, ptr %55, i32 4217760
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #5, !srcloc !9
  %57 = getelementptr inbounds [16 x i32], ptr %3, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %53, align 4
  %60 = getelementptr i8, ptr %59, i32 4217764
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #5, !srcloc !9
  %61 = getelementptr inbounds [16 x i32], ptr %3, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %53, align 4
  %64 = getelementptr i8, ptr %63, i32 4217768
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #5, !srcloc !9
  %65 = getelementptr inbounds [16 x i32], ptr %3, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %53, align 4
  %68 = getelementptr i8, ptr %67, i32 4217772
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #5, !srcloc !9
  %69 = getelementptr inbounds [16 x i32], ptr %3, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = load ptr, ptr %53, align 4
  %72 = getelementptr i8, ptr %71, i32 4217776
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #5, !srcloc !9
  %73 = getelementptr inbounds [16 x i32], ptr %3, i32 0, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr %53, align 4
  %76 = getelementptr i8, ptr %75, i32 4217780
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #5, !srcloc !9
  %77 = getelementptr inbounds [16 x i32], ptr %3, i32 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %53, align 4
  %80 = getelementptr i8, ptr %79, i32 4217784
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #5, !srcloc !9
  %81 = getelementptr inbounds [16 x i32], ptr %3, i32 0, i32 7
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %53, align 4
  %84 = getelementptr i8, ptr %83, i32 4217788
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #5, !srcloc !9
  %85 = getelementptr inbounds [16 x i32], ptr %3, i32 0, i32 8
  %86 = load i32, ptr %85, align 4
  %87 = load ptr, ptr %53, align 4
  %88 = getelementptr i8, ptr %87, i32 4217792
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #5, !srcloc !9
  %89 = getelementptr inbounds [16 x i32], ptr %3, i32 0, i32 9
  %90 = load i32, ptr %89, align 4
  %91 = load ptr, ptr %53, align 4
  %92 = getelementptr i8, ptr %91, i32 4217796
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #5, !srcloc !9
  %93 = getelementptr inbounds [16 x i32], ptr %3, i32 0, i32 10
  %94 = load i32, ptr %93, align 4
  %95 = load ptr, ptr %53, align 4
  %96 = getelementptr i8, ptr %95, i32 4217800
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #5, !srcloc !9
  %97 = getelementptr inbounds [16 x i32], ptr %3, i32 0, i32 11
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %53, align 4
  %100 = getelementptr i8, ptr %99, i32 4217804
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #5, !srcloc !9
  %101 = getelementptr inbounds [16 x i32], ptr %3, i32 0, i32 12
  %102 = load i32, ptr %101, align 4
  %103 = load ptr, ptr %53, align 4
  %104 = getelementptr i8, ptr %103, i32 4217808
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #5, !srcloc !9
  %105 = getelementptr inbounds [16 x i32], ptr %3, i32 0, i32 13
  %106 = load i32, ptr %105, align 4
  %107 = load ptr, ptr %53, align 4
  %108 = getelementptr i8, ptr %107, i32 4217812
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #5, !srcloc !9
  %109 = getelementptr inbounds [16 x i32], ptr %3, i32 0, i32 14
  %110 = load i32, ptr %109, align 4
  %111 = load ptr, ptr %53, align 4
  %112 = getelementptr i8, ptr %111, i32 4217816
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #5, !srcloc !9
  %113 = getelementptr inbounds [16 x i32], ptr %3, i32 0, i32 15
  %114 = load i32, ptr %113, align 4
  %115 = load ptr, ptr %53, align 4
  %116 = getelementptr i8, ptr %115, i32 4217820
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #5, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #5
  ret void

117:                                              ; preds = %117, %21
  %118 = phi i32 [ 0, %21 ], [ %125, %117 ]
  %119 = getelementptr [64 x i32], ptr %2, i32 0, i32 %118
  %120 = load i32, ptr %119, align 4
  %121 = load ptr, ptr %22, align 4
  %122 = shl nuw nsw i32 %118, 2
  %123 = add nuw nsw i32 %122, 4217696
  %124 = getelementptr i8, ptr %121, i32 %123
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %120) #5, !srcloc !9
  %125 = add nuw nsw i32 %118, 1
  %126 = icmp eq i32 %125, %23
  br i1 %126, label %52, label %117
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_unkn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_bundle(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp100_grctx_generate_attrib(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 21
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 16
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = mul i32 %11, %14
  %16 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 13
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i8 %17, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 19
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 22
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %26, %20
  %27 = phi i32 [ 0, %20 ], [ %35, %26 ]
  %28 = phi i32 [ %15, %20 ], [ %34, %26 ]
  %29 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 17, i32 %27
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = mul i32 %22, %31
  %33 = mul i32 %32, %25
  %34 = add i32 %33, %28
  %35 = add nuw nsw i32 %27, 1
  %36 = icmp eq i32 %35, %18
  br i1 %36, label %37, label %26

37:                                               ; preds = %26, %1
  %38 = phi i32 [ %15, %1 ], [ %34, %26 ]
  %39 = shl i32 %38, 5
  %40 = add i32 %39, 128
  %41 = and i32 %40, -128
  %42 = tail call i32 @gf100_grctx_mmio_data(ptr noundef %0, i32 noundef %41, i32 noundef 4096, i1 noundef zeroext false) #5
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4294672, i32 noundef -2147483648, i32 noundef 12, i32 noundef %42) #5
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4298824, i32 noundef 268435456, i32 noundef 12, i32 noundef %42) #5
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4299820, i32 noundef 268435456, i32 noundef 12, i32 noundef %42) #5
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4299520, i32 noundef 0, i32 noundef 12, i32 noundef %42) #5
  %43 = lshr i32 %40, 7
  %44 = or i32 %43, -2147483648
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4299524, i32 noundef %44, i32 noundef 0, i32 noundef -1) #5
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4216880, i32 noundef %9, i32 noundef 0, i32 noundef -1) #5
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4216924, i32 noundef %7, i32 noundef 0, i32 noundef -1) #5
  %45 = shl i32 %7, 14
  %46 = or i32 %45, 65535
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4220100, i32 noundef %46, i32 noundef 0, i32 noundef -1) #5
  %47 = load i8, ptr %16, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %122, label %49

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 22
  %51 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 19
  br label %52

52:                                               ; preds = %114, %49
  %53 = phi i8 [ %47, %49 ], [ %115, %114 ]
  %54 = phi i32 [ 0, %49 ], [ %118, %114 ]
  %55 = phi i32 [ 0, %49 ], [ %119, %114 ]
  %56 = phi i32 [ %15, %49 ], [ %117, %114 ]
  %57 = phi i32 [ 0, %49 ], [ %116, %114 ]
  %58 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 17, i32 %55
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %114, label %61

61:                                               ; preds = %52
  %62 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 18, i32 %55
  %63 = shl i32 %55, 15
  %64 = add nuw nsw i32 %63, 5255168
  br label %65

65:                                               ; preds = %104, %61
  %66 = phi i8 [ %59, %61 ], [ %105, %104 ]
  %67 = phi i32 [ %54, %61 ], [ %109, %104 ]
  %68 = phi i32 [ 0, %61 ], [ %108, %104 ]
  %69 = phi i32 [ %56, %61 ], [ %107, %104 ]
  %70 = phi i32 [ %57, %61 ], [ %106, %104 ]
  %71 = load i8, ptr %62, align 1
  %72 = zext i8 %71 to i32
  %73 = shl nuw i32 1, %68
  %74 = and i32 %73, %72
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %104, label %76

76:                                               ; preds = %65
  %77 = shl i32 %68, 9
  %78 = add nuw nsw i32 %64, %77
  %79 = shl i32 %67, 2
  %80 = add i32 %79, 4296352
  %81 = load i8, ptr %50, align 1
  %82 = zext i8 %81 to i32
  %83 = mul i32 %9, %82
  %84 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 20, i32 %55, i32 %68
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = mul i32 %7, %86
  %88 = or i32 %78, 192
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %88, i32 noundef %83, i32 noundef 0, i32 noundef -1) #5
  %89 = or i32 %78, 244
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %89, i32 noundef %69, i32 noundef 0, i32 noundef -1) #5
  %90 = or i32 %78, 240
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %90, i32 noundef %83, i32 noundef 0, i32 noundef -1) #5
  %91 = load i32, ptr %51, align 4
  %92 = load i8, ptr %50, align 1
  %93 = zext i8 %92 to i32
  %94 = mul i32 %91, %93
  %95 = add i32 %94, %69
  %96 = or i32 %78, 228
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %96, i32 noundef %87, i32 noundef 0, i32 noundef -1) #5
  %97 = or i32 %78, 248
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %97, i32 noundef %70, i32 noundef 0, i32 noundef -1) #5
  %98 = load i32, ptr %10, align 4
  %99 = load i8, ptr %84, align 1
  %100 = zext i8 %99 to i32
  %101 = mul i32 %98, %100
  %102 = add i32 %101, %70
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %80, i32 noundef %83, i32 noundef 0, i32 noundef -1) #5
  %103 = load i8, ptr %58, align 1
  br label %104

104:                                              ; preds = %76, %65
  %105 = phi i8 [ %103, %76 ], [ %66, %65 ]
  %106 = phi i32 [ %102, %76 ], [ %70, %65 ]
  %107 = phi i32 [ %95, %76 ], [ %69, %65 ]
  %108 = add nuw nsw i32 %68, 1
  %109 = add i32 %67, 1
  %110 = zext i8 %105 to i32
  %111 = icmp ult i32 %108, %110
  br i1 %111, label %65, label %112

112:                                              ; preds = %104
  %113 = load i8, ptr %16, align 1
  br label %114

114:                                              ; preds = %112, %52
  %115 = phi i8 [ %53, %52 ], [ %113, %112 ]
  %116 = phi i32 [ %57, %52 ], [ %106, %112 ]
  %117 = phi i32 [ %56, %52 ], [ %107, %112 ]
  %118 = phi i32 [ %54, %52 ], [ %109, %112 ]
  %119 = add nuw nsw i32 %55, 1
  %120 = zext i8 %115 to i32
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %52, label %122

122:                                              ; preds = %114, %37
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4296428, i32 noundef 0, i32 noundef 0, i32 noundef -1) #5
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4308732, i32 noundef 0, i32 noundef 0, i32 noundef -1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_sm_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_rop_mapping(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_dist_skip_table(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_r406500(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_tpc_mask(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_r419a3c(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 2151514198}
!9 = !{i64 3973105}
