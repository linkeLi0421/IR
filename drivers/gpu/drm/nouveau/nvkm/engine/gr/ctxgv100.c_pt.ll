; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgv100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.gf100_gr_pack = type { ptr, i32 }
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

@gv100_grctx_init_sw_veid_bundle_init_0 = dso_local constant [23 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4096, i8 64, i32 1048576, i32 8 }, %struct.gf100_gr_init { i32 2369, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 2430, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 2431, i8 64, i32 1048576, i32 256 }, %struct.gf100_gr_init { i32 860, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 861, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 2568, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 2569, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 2570, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 850, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 851, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 856, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 857, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 880, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 881, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 882, i8 64, i32 1048576, i32 1048575 }, %struct.gf100_gr_init { i32 870, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 871, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 872, i8 64, i32 1048576, i32 4095 }, %struct.gf100_gr_init { i32 1571, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 1572, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 33554433 }, %struct.gf100_gr_init zeroinitializer], align 4
@gv100_grctx_pack_sw_veid_bundle_init = internal constant [2 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gv100_grctx_init_sw_veid_bundle_init_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gv100_grctx = dso_local local_unnamed_addr constant %struct.gf100_grctx_func { ptr @gv100_grctx_unkn88c, ptr @gf100_grctx_generate_main, ptr @gv100_grctx_generate_unkn, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gv100_grctx_pack_sw_veid_bundle_init, ptr @gm107_grctx_generate_bundle, i32 12288, i32 384, i32 5760, ptr @gp100_grctx_generate_pagepool, i32 131072, ptr @gv100_grctx_generate_attrib, i32 1728, i32 1152, i32 3072, i32 2048, i32 3344, ptr null, ptr @gv100_grctx_generate_sm_id, ptr null, i8 0, ptr null, ptr @gv100_grctx_generate_rop_mapping, ptr null, ptr null, ptr @gm200_grctx_generate_dist_skip_table, ptr @gm200_grctx_generate_r406500, ptr @gk104_grctx_generate_gpc_tpc_nr, ptr null, ptr null, ptr @gp100_grctx_generate_smid_config, ptr @gv100_grctx_generate_r400088, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gv100_grctx_generate_attrib(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 23
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 21
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 16
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = mul i32 %13, %16
  %18 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 13
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i8 %19, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 22
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %26, %22
  %27 = phi i32 [ 0, %22 ], [ %35, %26 ]
  %28 = phi i32 [ %17, %22 ], [ %34, %26 ]
  %29 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 17, i32 %27
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = mul i32 %11, %31
  %33 = mul i32 %32, %25
  %34 = add i32 %33, %28
  %35 = add nuw nsw i32 %27, 1
  %36 = icmp eq i32 %35, %20
  br i1 %36, label %37, label %26

37:                                               ; preds = %26, %1
  %38 = phi i32 [ %17, %1 ], [ %34, %26 ]
  %39 = shl i32 %38, 5
  %40 = add i32 %39, 127
  %41 = and i32 %40, -128
  %42 = tail call i32 @gf100_grctx_mmio_data(ptr noundef %0, i32 noundef %41, i32 noundef 4096, i1 noundef zeroext false) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4294672, i32 noundef -2147483648, i32 noundef 12, i32 noundef %42) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4298824, i32 noundef 268435456, i32 noundef 12, i32 noundef %42) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4299820, i32 noundef 268435456, i32 noundef 12, i32 noundef %42) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4300288, i32 noundef 0, i32 noundef 12, i32 noundef %42) #2
  %43 = lshr i32 %40, 7
  %44 = or i32 %43, -2147483648
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4300292, i32 noundef %44, i32 noundef 0, i32 noundef -1) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4216880, i32 noundef %9, i32 noundef 0, i32 noundef -1) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4216924, i32 noundef %7, i32 noundef 0, i32 noundef -1) #2
  %45 = load i8, ptr %18, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %116, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 22
  br label %49

49:                                               ; preds = %108, %47
  %50 = phi i8 [ %45, %47 ], [ %109, %108 ]
  %51 = phi i32 [ 0, %47 ], [ %112, %108 ]
  %52 = phi i32 [ 0, %47 ], [ %113, %108 ]
  %53 = phi i32 [ %17, %47 ], [ %111, %108 ]
  %54 = phi i32 [ 0, %47 ], [ %110, %108 ]
  %55 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 17, i32 %52
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %108, label %58

58:                                               ; preds = %49
  %59 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 18, i32 %52
  %60 = shl i32 %52, 15
  %61 = add nuw nsw i32 %60, 5255168
  br label %62

62:                                               ; preds = %98, %58
  %63 = phi i8 [ %56, %58 ], [ %99, %98 ]
  %64 = phi i32 [ %51, %58 ], [ %103, %98 ]
  %65 = phi i32 [ 0, %58 ], [ %102, %98 ]
  %66 = phi i32 [ %53, %58 ], [ %101, %98 ]
  %67 = phi i32 [ %54, %58 ], [ %100, %98 ]
  %68 = load i8, ptr %59, align 1
  %69 = zext i8 %68 to i32
  %70 = shl nuw i32 1, %65
  %71 = and i32 %70, %69
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %98, label %73

73:                                               ; preds = %62
  %74 = shl i32 %65, 9
  %75 = add nuw nsw i32 %61, %74
  %76 = shl i32 %64, 2
  %77 = add i32 %76, 4296352
  %78 = load i8, ptr %48, align 1
  %79 = zext i8 %78 to i32
  %80 = mul i32 %11, %79
  %81 = mul i32 %9, %79
  %82 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 20, i32 %52, i32 %65
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = mul i32 %7, %84
  %86 = or i32 %75, 192
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %86, i32 noundef %80, i32 noundef 0, i32 noundef -1) #2
  %87 = or i32 %75, 244
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %87, i32 noundef %66, i32 noundef 0, i32 noundef -1) #2
  %88 = or i32 %75, 240
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %88, i32 noundef %81, i32 noundef 0, i32 noundef -1) #2
  %89 = add i32 %80, %66
  %90 = or i32 %75, 228
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %90, i32 noundef %85, i32 noundef 0, i32 noundef -1) #2
  %91 = or i32 %75, 248
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %91, i32 noundef %67, i32 noundef 0, i32 noundef -1) #2
  %92 = load i32, ptr %12, align 4
  %93 = load i8, ptr %82, align 1
  %94 = zext i8 %93 to i32
  %95 = mul i32 %92, %94
  %96 = add i32 %95, %67
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %77, i32 noundef %81, i32 noundef 0, i32 noundef -1) #2
  %97 = load i8, ptr %55, align 1
  br label %98

98:                                               ; preds = %73, %62
  %99 = phi i8 [ %97, %73 ], [ %63, %62 ]
  %100 = phi i32 [ %96, %73 ], [ %67, %62 ]
  %101 = phi i32 [ %89, %73 ], [ %66, %62 ]
  %102 = add nuw nsw i32 %65, 1
  %103 = add i32 %64, 1
  %104 = zext i8 %99 to i32
  %105 = icmp ult i32 %102, %104
  br i1 %105, label %62, label %106

106:                                              ; preds = %98
  %107 = load i8, ptr %18, align 1
  br label %108

108:                                              ; preds = %106, %49
  %109 = phi i8 [ %50, %49 ], [ %107, %106 ]
  %110 = phi i32 [ %54, %49 ], [ %100, %106 ]
  %111 = phi i32 [ %53, %49 ], [ %101, %106 ]
  %112 = phi i32 [ %51, %49 ], [ %103, %106 ]
  %113 = add nuw nsw i32 %52, 1
  %114 = zext i8 %109 to i32
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %49, label %116

116:                                              ; preds = %108, %37
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4293092, i32 noundef 256, i32 noundef 0, i32 noundef -1) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4308732, i32 noundef 256, i32 noundef 0, i32 noundef -1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_grctx_mmio_data(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_mmio_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gv100_grctx_generate_rop_mapping(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 16
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %8 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = or i32 %7, %10
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 4295608
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #2, !srcloc !9
  br label %15

15:                                               ; preds = %15, %1
  %16 = phi i32 [ 0, %1 ], [ %67, %15 ]
  %17 = mul nuw nsw i32 %16, 6
  %18 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 31
  %21 = zext i8 %20 to i32
  %22 = or i32 %17, 1
  %23 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 31
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 5
  %28 = or i32 %27, %21
  %29 = add nuw nsw i32 %17, 2
  %30 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 31
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 10
  %35 = or i32 %34, %28
  %36 = add nuw nsw i32 %17, 3
  %37 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 31
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 15
  %42 = or i32 %41, %35
  %43 = add nuw nsw i32 %17, 4
  %44 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %43
  %45 = load i8, ptr %44, align 1
  %46 = and i8 %45, 31
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 20
  %49 = or i32 %48, %42
  %50 = add nuw nsw i32 %17, 5
  %51 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %50
  %52 = load i8, ptr %51, align 1
  %53 = and i8 %52, 31
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 25
  %56 = or i32 %55, %49
  %57 = load ptr, ptr %12, align 4
  %58 = shl i32 %16, 2
  %59 = add nuw nsw i32 %58, 4295432
  %60 = getelementptr i8, ptr %57, i32 %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %56) #2, !srcloc !9
  %61 = load ptr, ptr %12, align 4
  %62 = add nuw nsw i32 %58, 4308736
  %63 = getelementptr i8, ptr %61, i32 %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %56) #2, !srcloc !9
  %64 = load ptr, ptr %12, align 4
  %65 = add nuw nsw i32 %58, 4225036
  %66 = getelementptr i8, ptr %64, i32 %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %56) #2, !srcloc !9
  %67 = add nuw nsw i32 %16, 1
  %68 = icmp eq i32 %67, 11
  br i1 %68, label %69, label %15

69:                                               ; preds = %15
  %70 = load i8, ptr %4, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 8
  %73 = load i8, ptr %8, align 2
  %74 = zext i8 %73 to i32
  %75 = or i32 %72, %74
  %76 = load ptr, ptr %12, align 4
  %77 = getelementptr i8, ptr %76, i32 4308944
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #2, !srcloc !9
  %78 = load i8, ptr %4, align 1
  %79 = urem i8 2, %78
  %80 = zext i8 %79 to i32
  %81 = urem i8 4, %78
  %82 = zext i8 %81 to i32
  %83 = urem i8 8, %78
  %84 = zext i8 %83 to i32
  %85 = urem i8 16, %78
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 24
  %88 = shl nuw nsw i32 %84, 16
  %89 = or i32 %87, %88
  %90 = shl nuw nsw i32 %82, 8
  %91 = or i32 %89, %90
  %92 = or i32 %91, %80
  %93 = load ptr, ptr %12, align 4
  %94 = getelementptr i8, ptr %93, i32 4308912
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #2, !srcloc !9
  %95 = load i8, ptr %4, align 1
  %96 = urem i8 32, %95
  %97 = zext i8 %96 to i32
  %98 = urem i8 64, %95
  %99 = zext i8 %98 to i32
  %100 = urem i8 -128, %95
  %101 = zext i8 %100 to i32
  %102 = zext i8 %95 to i16
  %103 = urem i16 256, %102
  %104 = zext i16 %103 to i32
  %105 = shl nuw i32 %104, 24
  %106 = shl nuw nsw i32 %101, 16
  %107 = or i32 %105, %106
  %108 = shl nuw nsw i32 %99, 8
  %109 = or i32 %107, %108
  %110 = or i32 %109, %97
  %111 = load ptr, ptr %12, align 4
  %112 = getelementptr i8, ptr %111, i32 4308916
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #2, !srcloc !9
  %113 = load i8, ptr %4, align 1
  %114 = zext i8 %113 to i16
  %115 = urem i16 512, %114
  %116 = zext i16 %115 to i32
  %117 = zext i8 %113 to i16
  %118 = urem i16 1024, %117
  %119 = zext i8 %113 to i16
  %120 = urem i16 2048, %119
  %121 = zext i16 %120 to i32
  %122 = zext i8 %113 to i16
  %123 = urem i16 4096, %122
  %124 = zext i16 %123 to i32
  %125 = shl nuw i32 %124, 24
  %126 = shl nuw nsw i32 %121, 16
  %127 = and i32 %126, 16711680
  %128 = or i32 %125, %127
  %129 = shl nuw i16 %118, 8
  %130 = zext i16 %129 to i32
  %131 = or i32 %128, %130
  %132 = or i32 %131, %116
  %133 = load ptr, ptr %12, align 4
  %134 = getelementptr i8, ptr %133, i32 4308920
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #2, !srcloc !9
  %135 = load i8, ptr %4, align 1
  %136 = zext i8 %135 to i32
  %137 = zext i8 %135 to i16
  %138 = urem i16 8192, %137
  %139 = zext i16 %138 to i32
  %140 = zext i8 %135 to i16
  %141 = urem i16 16384, %140
  %142 = zext i8 %135 to i16
  %143 = urem i16 -32768, %142
  %144 = zext i16 %143 to i32
  %145 = urem i32 65536, %136
  %146 = shl nuw i32 %145, 24
  %147 = shl nuw nsw i32 %144, 16
  %148 = and i32 %147, 16711680
  %149 = or i32 %146, %148
  %150 = shl nuw i16 %141, 8
  %151 = zext i16 %150 to i32
  %152 = or i32 %149, %151
  %153 = or i32 %152, %139
  %154 = load ptr, ptr %12, align 4
  %155 = getelementptr i8, ptr %154, i32 4308924
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %153) #2, !srcloc !9
  %156 = load i8, ptr %4, align 1
  %157 = zext i8 %156 to i32
  %158 = urem i32 131072, %157
  %159 = urem i32 262144, %157
  %160 = urem i32 524288, %157
  %161 = urem i32 1048576, %157
  %162 = shl nuw i32 %161, 24
  %163 = shl nuw nsw i32 %160, 16
  %164 = and i32 %163, 16711680
  %165 = or i32 %162, %164
  %166 = shl nuw nsw i32 %159, 8
  %167 = and i32 %166, 65280
  %168 = or i32 %165, %167
  %169 = or i32 %168, %158
  %170 = load ptr, ptr %12, align 4
  %171 = getelementptr i8, ptr %170, i32 4308928
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %169) #2, !srcloc !9
  %172 = load i8, ptr %4, align 1
  %173 = zext i8 %172 to i32
  %174 = shl nuw nsw i32 %173, 8
  %175 = load i8, ptr %8, align 2
  %176 = zext i8 %175 to i32
  %177 = or i32 %174, %176
  %178 = load ptr, ptr %12, align 4
  %179 = getelementptr i8, ptr %178, i32 4225212
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %177) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gv100_grctx_generate_r400088(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4194440
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %9 = and i32 %8, -393217
  %10 = select i1 %1, i32 393216, i32 0
  %11 = or i32 %9, %10
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 4194440
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gv100_grctx_generate_unkn(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4298764
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %8 = or i32 %7, 16
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4298764
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #2, !srcloc !9
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 4308488
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %14 = or i32 %13, 4
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 4308488
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #2, !srcloc !9
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 4220096
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %20 = or i32 %19, -2147483648
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 4220096
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #2, !srcloc !9
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 4216832
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %26 = or i32 %25, 134217728
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 4216832
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #2, !srcloc !9
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr i8, ptr %29, i32 4299776
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %32 = or i32 %31, 8
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i8, ptr %33, i32 4299776
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gv100_grctx_unkn88c(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = select i1 %1, i32 16, i32 0
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 4233356
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %10 = and i32 %9, -17
  %11 = or i32 %10, %5
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr i8, ptr %12, i32 4233356
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #2, !srcloc !9
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 4233356
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr i8, ptr %17, i32 4302988
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %20 = and i32 %19, -17
  %21 = or i32 %20, %5
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 4302988
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #2, !srcloc !9
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr i8, ptr %24, i32 4302988
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr i8, ptr %27, i32 4229652
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %30 = and i32 %29, -17
  %31 = or i32 %30, %5
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr i8, ptr %32, i32 4229652
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #2, !srcloc !9
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr i8, ptr %34, i32 4229652
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_bundle(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_grctx_generate_pagepool(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gv100_grctx_generate_sm_id(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %1, 15
  %10 = add i32 %9, 5259264
  %11 = shl i32 %2, 11
  %12 = add i32 %10, %11
  %13 = or i32 %12, 1544
  %14 = getelementptr i8, ptr %8, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %3) #2, !srcloc !9
  %15 = load ptr, ptr %7, align 4
  %16 = shl i32 %2, 2
  %17 = add i32 %9, 5245968
  %18 = add i32 %17, %16
  %19 = getelementptr i8, ptr %15, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %3) #2, !srcloc !9
  %20 = load ptr, ptr %7, align 4
  %21 = or i32 %12, 136
  %22 = getelementptr i8, ptr %20, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %3) #2, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_dist_skip_table(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_r406500(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_grctx_generate_smid_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i64 2151516713}
!9 = !{i64 3975620}
!10 = !{i64 3976038}
!11 = !{i64 2151515491}
