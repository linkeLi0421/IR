; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/gm20b.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm20b.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_func_zbc = type { ptr, ptr, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.140 = type { ptr }
%struct.anon.141 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.flcn_bl_dmem_desc = type { [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_acr_lsfw = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_blob, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.139, i32 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.139 = type { i32, i32, i32 }
%struct.gf100_gr = type { ptr, %struct.nvkm_gr, %struct.anon.142, %struct.anon.143, i8, ptr, ptr, ptr, ptr, [16 x %struct.gf100_gr_zbc_color], [16 x %struct.gf100_gr_zbc_depth], [16 x %struct.gf100_gr_zbc_stencil], i8, i8, [32 x i8], i8, i8, [32 x i8], [32 x i8], [32 x [4 x i8]], [32 x [4 x i8]], i8, i8, i8, [256 x i8], [256 x %struct.anon.144], i8, [4 x %struct.gf100_gr_data], [512 x %struct.gf100_gr_mmio], i32, ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.123 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.123 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.142 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob, %struct.mutex, i32 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.137, %struct.anon.138, %struct.nvkm_engine }
%struct.anon.137 = type { i32, ptr, i32, i8 }
%struct.anon.138 = type { i32, ptr, i32, i8 }
%struct.anon.143 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob }
%struct.gf100_gr_zbc_color = type { i32, [4 x i32], [4 x i32] }
%struct.gf100_gr_zbc_depth = type { i32, i32, i32 }
%struct.gf100_gr_zbc_stencil = type { i32, i32, i32 }
%struct.anon.144 = type { i8, i8 }
%struct.gf100_gr_data = type { i32, i32, i8 }
%struct.gf100_gr_mmio = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gm20b_gr_fecs_acr = dso_local constant %struct.nvkm_acr_lsf_func { i32 0, i32 76, ptr @gm20b_gr_acr_bld_write, ptr @gm20b_gr_acr_bld_patch, ptr null, i64 0, ptr null, ptr null }, align 8
@gm20b_gr_fwif = internal constant [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 0, ptr @gm20b_gr_load, ptr @gm20b_gr, ptr @gm20b_gr_fecs_acr, ptr null }, %struct.gf100_gr_fwif { i32 -1, ptr @gm200_gr_nofw, ptr null, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], align 4
@.str = private unnamed_addr constant [9 x i8] c"gr/fecs_\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"gr/\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gpccs_inst\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"gpccs_data\00", align 1
@gm20b_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gm20b_gr = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.141, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gm200_gr_oneinit_tiles, ptr @gm200_gr_oneinit_sm_id, ptr @gk20a_gr_init, ptr null, ptr @gm20b_gr_init_gpc_mmu, ptr null, ptr null, ptr null, ptr @gf117_gr_init_zcull, ptr null, ptr @gk104_gr_init_rop_active_fbps, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gf100_gr_trap_mp, ptr @gm20b_gr_set_hww_esr_report_mask, ptr null, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, ptr @gm200_gr_rops, i32 0, i32 0, i32 1, ptr @gm20b_grctx, ptr null, ptr @gf100_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41280, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 45463, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 45504, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"cannot bypass secure boot - expect failure soon!\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm20b_gr_acr_bld_patch(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.flcn_bl_dmem_desc, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(76) %4, i8 0, i32 76, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %4, %3 ], [ %17, %6 ]
  %8 = phi i32 [ 19, %3 ], [ %10, %6 ]
  %9 = phi i32 [ %1, %3 ], [ %18, %6 ]
  %10 = add nsw i32 %8, -1
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_memory, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = zext i32 %9 to i64
  %16 = tail call i32 %14(ptr noundef %11, i64 noundef %15) #5
  %17 = getelementptr i32, ptr %7, i32 1
  store i32 %16, ptr %7, align 4
  %18 = add i32 %9, 4
  %19 = icmp eq i32 %10, 0
  br i1 %19, label %20, label %6

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %4, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  %24 = shl i64 %23, 40
  %25 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %4, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %26, 8
  %28 = zext i32 %27 to i64
  %29 = or i64 %24, %28
  %30 = add i64 %29, %2
  %31 = lshr i64 %30, 8
  %32 = trunc i64 %31 to i32
  store i32 %32, ptr %25, align 4
  %33 = lshr i64 %30, 40
  %34 = trunc i64 %33 to i32
  store i32 %34, ptr %21, align 4
  %35 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %4, i32 0, i32 12
  %36 = load i32, ptr %35, align 4
  %37 = zext i32 %36 to i64
  %38 = shl i64 %37, 40
  %39 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %4, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = shl i32 %40, 8
  %42 = zext i32 %41 to i64
  %43 = or i64 %38, %42
  %44 = add i64 %43, %2
  %45 = lshr i64 %44, 8
  %46 = trunc i64 %45 to i32
  store i32 %46, ptr %39, align 4
  %47 = lshr i64 %44, 40
  %48 = trunc i64 %47 to i32
  store i32 %48, ptr %35, align 4
  br label %49

49:                                               ; preds = %49, %20
  %50 = phi ptr [ %4, %20 ], [ %60, %49 ]
  %51 = phi i32 [ 19, %20 ], [ %53, %49 ]
  %52 = phi i32 [ %1, %20 ], [ %62, %49 ]
  %53 = add nsw i32 %51, -1
  %54 = load ptr, ptr %5, align 8
  %55 = getelementptr inbounds %struct.nvkm_memory, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = zext i32 %52 to i64
  %60 = getelementptr i32, ptr %50, i32 1
  %61 = load i32, ptr %50, align 4
  tail call void %58(ptr noundef %54, i64 noundef %59, i32 noundef %61) #5
  %62 = add i32 %52, 4
  %63 = icmp eq i32 %53, 0
  br i1 %63, label %64, label %49

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  call void @flcn_bl_dmem_desc_dump(ptr noundef %65, ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %4) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_bl_dmem_desc_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm20b_gr_acr_bld_write(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.flcn_bl_dmem_desc, align 4
  %5 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 17, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %6
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = zext i32 %12 to i64
  %14 = add nuw nsw i64 %10, %13
  %15 = lshr i64 %14, 8
  %16 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = zext i32 %17 to i64
  %19 = add nuw nsw i64 %18, %10
  %20 = lshr i64 %19, 8
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %4) #5
  %21 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %4, i32 0, i32 3
  %22 = trunc i64 %15 to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  store i32 %22, ptr %21, align 4
  %23 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %4, i32 0, i32 4
  store i32 %12, ptr %23, align 4
  %24 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %4, i32 0, i32 5
  %25 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 12
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %4, i32 0, i32 6
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %4, i32 0, i32 7
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %4, i32 0, i32 8
  %30 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 10
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %4, i32 0, i32 9
  %33 = trunc i64 %20 to i32
  store i32 %33, ptr %32, align 4
  %34 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %4, i32 0, i32 10
  %35 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 14
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %4, i32 0, i32 11
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %4, i32 0, i32 12
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvkm_memory, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = zext i32 %1 to i64
  tail call void %44(ptr noundef %40, i64 noundef %45, i32 noundef 0) #5
  br label %46

46:                                               ; preds = %46, %3
  %47 = phi i32 [ 18, %3 ], [ %53, %46 ]
  %48 = phi i32 [ %1, %3 ], [ %50, %46 ]
  %49 = phi ptr [ %4, %3 ], [ %51, %46 ]
  %50 = add i32 %48, 4
  %51 = getelementptr i32, ptr %49, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = add nsw i32 %47, -1
  %54 = load ptr, ptr %39, align 8
  %55 = getelementptr inbounds %struct.nvkm_memory, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = zext i32 %50 to i64
  tail call void %58(ptr noundef %54, i64 noundef %59, i32 noundef %52) #5
  %60 = icmp eq i32 %53, 0
  br i1 %60, label %61, label %46

61:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm20b_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gm20b_gr_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gm20b_gr_load(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.gf100_gr_fwif, ptr %2, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @nvkm_acr_lsfw_load_bl_inst_data_sig(ptr noundef %4, ptr noundef %5, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %1, ptr noundef %7) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 3, i32 1
  %12 = tail call i32 @nvkm_firmware_load_blob(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %1, ptr noundef %11) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 3, i32 2
  %16 = tail call i32 @nvkm_firmware_load_blob(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef %1, ptr noundef %15) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 4
  store i8 1, ptr %19, align 4
  %20 = tail call i32 @gk20a_gr_load_sw(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %1) #5
  br label %21

21:                                               ; preds = %18, %14, %10, %3
  %22 = phi i32 [ %20, %18 ], [ %8, %3 ], [ -2, %14 ], [ -2, %10 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_nofw(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_lsfw_load_bl_inst_data_sig(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_firmware_load_blob(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_gr_load_sw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_oneinit_tiles(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_oneinit_sm_id(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_gr_init(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm20b_gr_init_gpc_mmu(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 38
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 1051876
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -1) #5, !srcloc !10
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr i8, ptr %11, i32 1051876
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %22, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 13
  %17 = load i32, ptr %16, align 8
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %21, ptr noundef nonnull @.str.5) #6
  br label %22

22:                                               ; preds = %19, %15, %7, %1
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 1051776
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %27 = and i32 %26, -268429185
  %28 = load ptr, ptr %23, align 4
  %29 = getelementptr i8, ptr %28, i32 4294784
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #5, !srcloc !10
  %30 = load ptr, ptr %23, align 4
  %31 = getelementptr i8, ptr %30, i32 4294800
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #5, !srcloc !10
  %32 = load ptr, ptr %23, align 4
  %33 = getelementptr i8, ptr %32, i32 4294804
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #5, !srcloc !10
  %34 = load ptr, ptr %23, align 4
  %35 = getelementptr i8, ptr %34, i32 1051844
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %37 = load ptr, ptr %23, align 4
  %38 = getelementptr i8, ptr %37, i32 4294832
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #5, !srcloc !10
  %39 = load ptr, ptr %23, align 4
  %40 = getelementptr i8, ptr %39, i32 1051848
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %42 = load ptr, ptr %23, align 4
  %43 = getelementptr i8, ptr %42, i32 4294836
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #5, !srcloc !10
  %44 = load ptr, ptr %23, align 4
  %45 = getelementptr i8, ptr %44, i32 1051852
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %47 = load ptr, ptr %23, align 4
  %48 = getelementptr i8, ptr %47, i32 4294840
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #5, !srcloc !10
  %49 = load ptr, ptr %23, align 4
  %50 = getelementptr i8, ptr %49, i32 1050624
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %52 = load ptr, ptr %23, align 4
  %53 = getelementptr i8, ptr %52, i32 4294828
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #5, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_gr_init_zcull(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_rop_active_fbps(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm20b_gr_set_hww_esr_report_mask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4300356
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 14680062) #5, !srcloc !10
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 4300364
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 5) #5, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_rops(ptr noundef) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!9 = !{i64 2151504225}
!10 = !{i64 3963132}
!11 = !{i64 3963550}
!12 = !{i64 2151503003}
