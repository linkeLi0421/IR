; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.nvkm_acr_hsf_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr_hsf_func = type { ptr, ptr, ptr }
%struct.wpr_header_v1 = type { i32, i32, i32, i32, i32, i32 }
%struct.lsb_header_v1 = type { %struct.lsf_signature_v1, %struct.lsb_header_tail }
%struct.lsf_signature_v1 = type { [2 x [16 x i8]], [2 x [16 x i8]], i32, i32, i32, i32, i32, i32, [88 x i8], [16 x i8] }
%struct.lsb_header_tail = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.nvkm_acr_lsfw = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_blob, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.133, i32 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.133 = type { i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_acr_lsf = type { ptr, ptr, i32, %struct.list_head }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_acr_hsfw = type { ptr, ptr, %struct.list_head, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon }
%struct.anon = type { %struct.anon.0, %struct.anon.0, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.flcn_acr_desc_v1 = type { [512 x i8], [4 x i32], i32, i32, i32, %struct.anon.140, i32, i64, %struct.anon.142 }
%struct.anon.140 = type { i32, [2 x %struct.anon.141] }
%struct.anon.141 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.142 = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_sec2 = type { ptr, %struct.nvkm_engine, %struct.nvkm_falcon, ptr, ptr, ptr, %struct.work_struct, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.127 }
%struct.anon.127 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.131, %struct.anon.132, %struct.nvkm_engine }
%struct.anon.131 = type { i32, ptr, i32, i8 }
%struct.anon.132 = type { i32, ptr, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@.str = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c\00", align 1
@__UNIQUE_ID_firmware252 = internal constant [40 x i8] c"firmware=nvidia/gp102/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [43 x i8] c"firmware=nvidia/gp102/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [40 x i8] c"firmware=nvidia/gp104/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware255 = internal constant [43 x i8] c"firmware=nvidia/gp104/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [40 x i8] c"firmware=nvidia/gp106/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [43 x i8] c"firmware=nvidia/gp106/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware258 = internal constant [40 x i8] c"firmware=nvidia/gp107/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware259 = internal constant [43 x i8] c"firmware=nvidia/gp107/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware260 = internal constant [33 x i8] c"firmware=nvidia/gp102/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware261 = internal constant [41 x i8] c"firmware=nvidia/gp102/acr/ucode_load.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware262 = internal constant [33 x i8] c"firmware=nvidia/gp104/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware263 = internal constant [41 x i8] c"firmware=nvidia/gp104/acr/ucode_load.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware264 = internal constant [33 x i8] c"firmware=nvidia/gp106/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware265 = internal constant [41 x i8] c"firmware=nvidia/gp106/acr/ucode_load.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware266 = internal constant [33 x i8] c"firmware=nvidia/gp107/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware267 = internal constant [41 x i8] c"firmware=nvidia/gp107/acr/ucode_load.bin\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"AcrLoad\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Nv%sFw\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Nv%sFwVer\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"acr/bl\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"acr/ucode_load\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"AcrUnload\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"acr/unload_bl\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"acr/ucode_unload\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"unload\00", align 1
@gp102_acr_fwif = internal constant [3 x %struct.nvkm_acr_fwif] [%struct.nvkm_acr_fwif { i32 0, ptr @gp102_acr_load, ptr @gp102_acr }, %struct.nvkm_acr_fwif { i32 -1, ptr @gm200_acr_nofw, ptr @gm200_acr }, %struct.nvkm_acr_fwif zeroinitializer], align 4
@gp102_acr = internal constant %struct.nvkm_acr_func { ptr @gp102_acr_load_fwif, ptr null, ptr null, ptr @gp102_acr_unload_fwif, ptr @gp102_acr_wpr_parse, ptr @gp102_acr_wpr_layout, ptr @gp102_acr_wpr_alloc, ptr @gp102_acr_wpr_build, ptr @gp102_acr_wpr_patch, ptr @gm200_acr_wpr_check, ptr @gm200_acr_init, ptr null, i64 0 }, align 8
@gm200_acr = external dso_local constant %struct.nvkm_acr_func, align 8
@gp102_acr_load_fwif = internal constant [2 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @gp102_acr_load_0 }, %struct.nvkm_acr_hsf_fwif zeroinitializer], align 4
@gp102_acr_unload_fwif = internal constant [2 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @gm200_acr_unload_0 }, %struct.nvkm_acr_hsf_fwif zeroinitializer], align 4
@gp102_acr_load_0 = internal constant %struct.nvkm_acr_hsf_func { ptr @gp102_acr_load_load, ptr @gm200_acr_load_boot, ptr @gm200_acr_hsfw_bld }, align 4
@gm200_acr_unload_0 = external dso_local constant %struct.nvkm_acr_hsf_func, align 4
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_firmware259, ptr @__UNIQUE_ID_firmware260, ptr @__UNIQUE_ID_firmware261, ptr @__UNIQUE_ID_firmware262, ptr @__UNIQUE_ID_firmware263, ptr @__UNIQUE_ID_firmware264, ptr @__UNIQUE_ID_firmware265, ptr @__UNIQUE_ID_firmware266, ptr @__UNIQUE_ID_firmware267], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gp102_acr_wpr_patch(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.wpr_header_v1, align 4
  %4 = alloca %struct.lsb_header_v1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(240) %4, i8 0, i32 240, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %6 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.wpr_header_v1, ptr %3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.lsb_header_v1, ptr %4, i32 0, i32 1, i32 5
  %10 = getelementptr inbounds %struct.wpr_header_v1, ptr %3, i32 0, i32 2
  %11 = getelementptr inbounds %struct.wpr_header_v1, ptr %3, i32 0, i32 3
  %12 = getelementptr inbounds %struct.wpr_header_v1, ptr %3, i32 0, i32 4
  %13 = getelementptr inbounds %struct.wpr_header_v1, ptr %3, i32 0, i32 5
  br label %14

14:                                               ; preds = %89, %2
  %15 = phi i32 [ 0, %2 ], [ %91, %89 ]
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_memory, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = zext i32 %15 to i64
  %21 = call i32 %19(ptr noundef %16, i64 noundef %20) #7
  store i32 %21, ptr %3, align 4
  %22 = or i32 %15, 4
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.nvkm_memory, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = zext i32 %22 to i64
  %28 = call i32 %26(ptr noundef %23, i64 noundef %27) #7
  store i32 %28, ptr %8, align 4
  %29 = add i32 %15, 8
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds %struct.nvkm_memory, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = zext i32 %29 to i64
  %35 = call i32 %33(ptr noundef %30, i64 noundef %34) #7
  store i32 %35, ptr %10, align 4
  %36 = add i32 %15, 12
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds %struct.nvkm_memory, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = zext i32 %36 to i64
  %42 = call i32 %40(ptr noundef %37, i64 noundef %41) #7
  store i32 %42, ptr %11, align 4
  %43 = add i32 %15, 16
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds %struct.nvkm_memory, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = zext i32 %43 to i64
  %49 = call i32 %47(ptr noundef %44, i64 noundef %48) #7
  store i32 %49, ptr %12, align 4
  %50 = add i32 %15, 20
  %51 = load ptr, ptr %5, align 8
  %52 = getelementptr inbounds %struct.nvkm_memory, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %53, align 4
  %55 = zext i32 %50 to i64
  %56 = call i32 %54(ptr noundef %51, i64 noundef %55) #7
  store i32 %56, ptr %13, align 4
  call void @wpr_header_v1_dump(ptr noundef %6, ptr noundef nonnull %3) #7
  %57 = load i32, ptr %3, align 4
  br label %58

58:                                               ; preds = %62, %14
  %59 = phi ptr [ %7, %14 ], [ %60, %62 ]
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %7
  br i1 %61, label %89, label %62

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %60, i32 -4
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, %57
  br i1 %65, label %66, label %58

66:                                               ; preds = %62
  %67 = load i32, ptr %8, align 4
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi ptr [ %4, %66 ], [ %79, %68 ]
  %70 = phi i32 [ 60, %66 ], [ %72, %68 ]
  %71 = phi i32 [ %67, %66 ], [ %80, %68 ]
  %72 = add nsw i32 %70, -1
  %73 = load ptr, ptr %5, align 8
  %74 = getelementptr inbounds %struct.nvkm_memory, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %75, align 4
  %77 = zext i32 %71 to i64
  %78 = call i32 %76(ptr noundef %73, i64 noundef %77) #7
  %79 = getelementptr i32, ptr %69, i32 1
  store i32 %78, ptr %69, align 4
  %80 = add i32 %71, 4
  %81 = icmp eq i32 %72, 0
  br i1 %81, label %82, label %68

82:                                               ; preds = %68
  %83 = getelementptr i8, ptr %60, i32 -12
  call void @lsb_header_v1_dump(ptr noundef %6, ptr noundef nonnull %4) #7
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %84, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = load i32, ptr %9, align 4
  call void %86(ptr noundef %0, i32 noundef %87, i64 noundef %1) #7
  %88 = load i32, ptr %3, align 4
  br label %89

89:                                               ; preds = %82, %58
  %90 = phi i32 [ %88, %82 ], [ %57, %58 ]
  %91 = add i32 %15, 24
  %92 = icmp eq i32 %90, -1
  br i1 %92, label %93, label %14

93:                                               ; preds = %89
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wpr_header_v1_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lsb_header_v1_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp102_acr_wpr_build_lsb(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.lsb_header_v1, align 4
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #7
  %4 = getelementptr inbounds i8, ptr %3, i32 192
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(240) %4, i8 0, i32 48, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 192
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #7
  br label %32

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.firmware, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) %3, ptr noundef align 1 dereferenceable(192) %12, i32 192, i1 false)
  %13 = getelementptr inbounds %struct.lsb_header_v1, ptr %3, i32 0, i32 1
  call void @gm200_acr_wpr_build_lsb_tail(ptr noundef %1, ptr noundef %13) #7
  %14 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %1, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  br label %17

17:                                               ; preds = %17, %10
  %18 = phi ptr [ %3, %10 ], [ %28, %17 ]
  %19 = phi i32 [ 60, %10 ], [ %21, %17 ]
  %20 = phi i32 [ %15, %10 ], [ %30, %17 ]
  %21 = add nsw i32 %19, -1
  %22 = load ptr, ptr %16, align 8
  %23 = getelementptr inbounds %struct.nvkm_memory, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = zext i32 %20 to i64
  %28 = getelementptr i32, ptr %18, i32 1
  %29 = load i32, ptr %18, align 4
  call void %26(ptr noundef %22, i64 noundef %27, i32 noundef %29) #7
  %30 = add i32 %20, 4
  %31 = icmp eq i32 %21, 0
  br i1 %31, label %32, label %17

32:                                               ; preds = %17, %9
  %33 = phi i32 [ -22, %9 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %3) #7
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_acr_wpr_build_lsb_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp102_acr_wpr_build(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.lsb_header_v1, align 4
  %4 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %130, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.nvkm_acr_lsf, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %11 = getelementptr inbounds i8, ptr %3, i32 192
  br label %12

12:                                               ; preds = %122, %7
  %13 = phi ptr [ %5, %7 ], [ %128, %122 ]
  %14 = phi i32 [ 0, %7 ], [ %73, %122 ]
  %15 = getelementptr i8, ptr %13, i32 -12
  %16 = getelementptr i8, ptr %13, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %13, i32 -4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %13, i32 64
  %23 = load i32, ptr %22, align 4
  br i1 %8, label %27, label %24

24:                                               ; preds = %12
  %25 = load i32, ptr %9, align 4
  %26 = icmp ne i32 %21, %25
  br label %27

27:                                               ; preds = %24, %12
  %28 = phi i1 [ false, %12 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds %struct.lsf_signature_v1, ptr %19, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %10, align 8
  %33 = getelementptr inbounds %struct.nvkm_memory, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = zext i32 %14 to i64
  call void %36(ptr noundef %32, i64 noundef %37, i32 noundef %21) #7
  %38 = or i32 %14, 4
  %39 = load ptr, ptr %10, align 8
  %40 = getelementptr inbounds %struct.nvkm_memory, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = zext i32 %38 to i64
  call void %43(ptr noundef %39, i64 noundef %44, i32 noundef %23) #7
  %45 = add i32 %14, 8
  %46 = load ptr, ptr %10, align 8
  %47 = getelementptr inbounds %struct.nvkm_memory, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = zext i32 %45 to i64
  call void %50(ptr noundef %46, i64 noundef %51, i32 noundef 7) #7
  %52 = add i32 %14, 12
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds %struct.nvkm_memory, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = zext i32 %52 to i64
  call void %57(ptr noundef %53, i64 noundef %58, i32 noundef %29) #7
  %59 = add i32 %14, 16
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds %struct.nvkm_memory, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = zext i32 %59 to i64
  call void %64(ptr noundef %60, i64 noundef %65, i32 noundef %31) #7
  %66 = add i32 %14, 20
  %67 = load ptr, ptr %10, align 8
  %68 = getelementptr inbounds %struct.nvkm_memory, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = zext i32 %66 to i64
  call void %71(ptr noundef %67, i64 noundef %72, i32 noundef 1) #7
  %73 = add i32 %14, 24
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(240) %11, i8 0, i32 48, i1 false) #7, !annotation !8
  %74 = load ptr, ptr %16, align 4
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 192
  br i1 %76, label %77, label %96, !prof !9

77:                                               ; preds = %27
  %78 = getelementptr inbounds %struct.firmware, ptr %74, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) %3, ptr noundef align 1 dereferenceable(192) %79, i32 192, i1 false) #7
  call void @gm200_acr_wpr_build_lsb_tail(ptr noundef %15, ptr noundef %11) #7
  %80 = load i32, ptr %22, align 4
  br label %81

81:                                               ; preds = %81, %77
  %82 = phi ptr [ %3, %77 ], [ %92, %81 ]
  %83 = phi i32 [ 60, %77 ], [ %85, %81 ]
  %84 = phi i32 [ %80, %77 ], [ %94, %81 ]
  %85 = add nsw i32 %83, -1
  %86 = load ptr, ptr %10, align 8
  %87 = getelementptr inbounds %struct.nvkm_memory, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = zext i32 %84 to i64
  %92 = getelementptr i32, ptr %82, i32 1
  %93 = load i32, ptr %82, align 4
  call void %90(ptr noundef %86, i64 noundef %91, i32 noundef %93) #7
  %94 = add i32 %84, 4
  %95 = icmp eq i32 %85, 0
  br i1 %95, label %97, label %81

96:                                               ; preds = %27
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %3) #7
  br label %139

97:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %3) #7
  %98 = getelementptr i8, ptr %13, i32 12
  %99 = load i32, ptr %98, align 4
  %100 = icmp ult i32 %99, 4
  br i1 %100, label %122, label %101

101:                                              ; preds = %97
  %102 = getelementptr i8, ptr %13, i32 8
  %103 = load ptr, ptr %102, align 4
  %104 = lshr i32 %99, 2
  %105 = getelementptr i8, ptr %13, i32 68
  %106 = load i32, ptr %105, align 4
  br label %107

107:                                              ; preds = %107, %101
  %108 = phi ptr [ %118, %107 ], [ %103, %101 ]
  %109 = phi i32 [ %111, %107 ], [ %104, %101 ]
  %110 = phi i32 [ %120, %107 ], [ %106, %101 ]
  %111 = add nsw i32 %109, -1
  %112 = load ptr, ptr %10, align 8
  %113 = getelementptr inbounds %struct.nvkm_memory, ptr %112, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %114, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = zext i32 %110 to i64
  %118 = getelementptr i32, ptr %108, i32 1
  %119 = load i32, ptr %108, align 4
  call void %116(ptr noundef %112, i64 noundef %117, i32 noundef %119) #7
  %120 = add i32 %110, 4
  %121 = icmp eq i32 %111, 0
  br i1 %121, label %122, label %107

122:                                              ; preds = %107, %97
  %123 = load ptr, ptr %15, align 4
  %124 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %123, i32 0, i32 2
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr i8, ptr %13, i32 72
  %127 = load i32, ptr %126, align 4
  call void %125(ptr noundef %0, i32 noundef %127, ptr noundef %15) #7
  %128 = load ptr, ptr %13, align 4
  %129 = icmp eq ptr %128, %4
  br i1 %129, label %130, label %12

130:                                              ; preds = %122, %2
  %131 = phi i32 [ 0, %2 ], [ %73, %122 ]
  %132 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.nvkm_memory, ptr %133, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %135, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = zext i32 %131 to i64
  call void %137(ptr noundef %133, i64 noundef %138, i32 noundef -1) #7
  br label %139

139:                                              ; preds = %130, %96
  %140 = phi i32 [ 0, %130 ], [ -22, %96 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp102_acr_wpr_alloc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = shl i32 %1, 1
  %6 = add i32 %5, 524286
  %7 = and i32 %6, -524288
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %10 = tail call i32 @nvkm_memory_new(ptr noundef %4, i32 noundef 0, i64 noundef %8, i32 noundef 262144, i1 noundef zeroext true, ptr noundef %9) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load ptr, ptr %9, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_memory_func, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i64 %16(ptr noundef %13) #7
  %18 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 10
  store i64 %17, ptr %18, align 8
  %19 = load ptr, ptr %9, align 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_memory_func, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i64 %22(ptr noundef %19) #7
  %24 = lshr i64 %23, 1
  %25 = add i64 %24, %17
  %26 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 8
  store i64 %25, ptr %26, align 8
  %27 = load ptr, ptr %9, align 8
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_memory_func, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i64 %30(ptr noundef %27) #7
  %32 = lshr i64 %31, 1
  %33 = add i64 %32, %25
  %34 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 9
  store i64 %33, ptr %34, align 8
  br label %35

35:                                               ; preds = %12, %2
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp102_acr_wpr_layout(ptr noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %30, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %28, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %27, %5 ], [ 768, %1 ]
  %8 = getelementptr i8, ptr %6, i32 -12
  %9 = add nsw i32 %7, 255
  %10 = and i32 %9, -256
  %11 = getelementptr i8, ptr %6, i32 64
  store i32 %10, ptr %11, align 4
  %12 = add i32 %10, 4335
  %13 = and i32 %12, -4096
  %14 = getelementptr i8, ptr %6, i32 68
  store i32 %13, ptr %14, align 4
  %15 = getelementptr i8, ptr %6, i32 12
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %13, 255
  %18 = add i32 %17, %16
  %19 = and i32 %18, -256
  %20 = getelementptr i8, ptr %6, i32 72
  store i32 %19, ptr %20, align 4
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 255
  %25 = and i32 %24, -256
  %26 = getelementptr i8, ptr %6, i32 76
  store i32 %25, ptr %26, align 4
  %27 = add i32 %25, %19
  %28 = load ptr, ptr %6, align 4
  %29 = icmp eq ptr %28, %2
  br i1 %29, label %30, label %5

30:                                               ; preds = %5, %1
  %31 = phi i32 [ 768, %1 ], [ %27, %5 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp102_acr_wpr_parse(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %11, %1
  %8 = phi ptr [ %5, %1 ], [ %12, %11 ]
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  tail call void @wpr_header_v1_dump(ptr noundef %6, ptr noundef %8) #7
  %12 = getelementptr %struct.wpr_header_v1, ptr %8, i32 1
  %13 = load i32, ptr %8, align 4
  %14 = tail call ptr @nvkm_acr_lsfw_add(ptr noundef null, ptr noundef %0, ptr noundef null, i32 noundef %13) #7
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %7

16:                                               ; preds = %11
  %17 = ptrtoint ptr %14 to i32
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_acr_lsfw_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp102_acr_load_load(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %7, i32 0, i32 2
  store i32 1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %7, i32 0, i32 5
  store i32 2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 8
  %11 = load i64, ptr %10, align 8
  %12 = lshr i64 %11, 8
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.anon.140, ptr %9, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 9
  %16 = load i64, ptr %15, align 8
  %17 = lshr i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.anon.140, ptr %9, i32 0, i32 1, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.anon.140, ptr %9, i32 0, i32 1, i32 0, i32 2
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.anon.140, ptr %9, i32 0, i32 1, i32 0, i32 3
  store i32 15, ptr %21, align 4
  %22 = getelementptr inbounds %struct.anon.140, ptr %9, i32 0, i32 1, i32 0, i32 4
  store i32 12, ptr %22, align 4
  %23 = getelementptr inbounds %struct.anon.140, ptr %9, i32 0, i32 1, i32 0, i32 5
  store i32 2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 10
  %25 = load i64, ptr %24, align 8
  %26 = lshr i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.anon.140, ptr %9, i32 0, i32 1, i32 0, i32 6
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  tail call void @flcn_acr_desc_v1_dump(ptr noundef %29, ptr noundef %7) #7
  %30 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 67
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nvkm_sec2, ptr %33, i32 0, i32 2
  %35 = tail call i32 @gm200_acr_hsfw_load(ptr noundef %0, ptr noundef %1, ptr noundef %34) #7
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_acr_desc_v1_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_hsfw_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp102_acr_load(ptr noundef %0, i32 %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [32 x i8], align 1
  %5 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.nvkm_acr_fwif, ptr %2, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1)
  %10 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @nvkm_longopt(ptr noundef %13, ptr noundef nonnull %4, i32 noundef -2) #7
  %15 = icmp sgt i32 %14, -2
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1)
  br label %32

18:                                               ; preds = %23, %3
  %19 = phi ptr [ %26, %23 ], [ %8, %3 ]
  %20 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %60, label %23

23:                                               ; preds = %18
  %24 = load i32, ptr %19, align 4
  %25 = icmp ne i32 %24, %14
  %26 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %19, i32 1
  %27 = icmp eq ptr %19, null
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %18, label %29

29:                                               ; preds = %23
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1)
  %31 = load i32, ptr %19, align 4
  br label %32

32:                                               ; preds = %29, %16
  %33 = phi ptr [ %19, %29 ], [ null, %16 ]
  %34 = phi ptr [ %19, %29 ], [ %8, %16 ]
  %35 = phi i32 [ %31, %29 ], [ -1, %16 ]
  %36 = load ptr, ptr %10, align 4
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 @nvkm_longopt(ptr noundef %38, ptr noundef nonnull %4, i32 noundef %35) #7
  %40 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %34, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %63, label %43

43:                                               ; preds = %32
  %44 = icmp sgt i32 %39, -1
  br label %45

45:                                               ; preds = %52, %43
  %46 = phi ptr [ %41, %43 ], [ %55, %52 ]
  %47 = phi ptr [ %34, %43 ], [ %53, %52 ]
  br i1 %44, label %57, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %47, align 4
  %50 = call i32 %46(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %49, ptr noundef %47) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %47, i32 1
  %54 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %47, i32 1, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %45

57:                                               ; preds = %45
  %58 = call i32 %41(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %39, ptr noundef %34) #7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57, %52, %18
  %61 = phi i32 [ %58, %57 ], [ %50, %52 ], [ -22, %18 ]
  %62 = inttoptr i32 %61 to ptr
  br label %63

63:                                               ; preds = %60, %57, %48, %32
  %64 = phi ptr [ %62, %60 ], [ %34, %57 ], [ %33, %32 ], [ %47, %48 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = ptrtoint ptr %64 to i32
  br label %130

68:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  %69 = load ptr, ptr %6, align 4
  %70 = getelementptr inbounds %struct.nvkm_acr_func, ptr %69, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7)
  %73 = load ptr, ptr %10, align 4
  %74 = getelementptr inbounds %struct.nvkm_device, ptr %73, i32 0, i32 6
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 @nvkm_longopt(ptr noundef %75, ptr noundef nonnull %5, i32 noundef -2) #7
  %77 = icmp sgt i32 %76, -2
  br i1 %77, label %80, label %78

78:                                               ; preds = %68
  %79 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7)
  br label %94

80:                                               ; preds = %85, %68
  %81 = phi ptr [ %88, %85 ], [ %71, %68 ]
  %82 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %81, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %122, label %85

85:                                               ; preds = %80
  %86 = load i32, ptr %81, align 4
  %87 = icmp ne i32 %86, %76
  %88 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %81, i32 1
  %89 = icmp eq ptr %81, null
  %90 = select i1 %87, i1 true, i1 %89
  br i1 %90, label %80, label %91

91:                                               ; preds = %85
  %92 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7)
  %93 = load i32, ptr %81, align 4
  br label %94

94:                                               ; preds = %91, %78
  %95 = phi ptr [ %81, %91 ], [ null, %78 ]
  %96 = phi ptr [ %81, %91 ], [ %71, %78 ]
  %97 = phi i32 [ %93, %91 ], [ -1, %78 ]
  %98 = load ptr, ptr %10, align 4
  %99 = getelementptr inbounds %struct.nvkm_device, ptr %98, i32 0, i32 6
  %100 = load ptr, ptr %99, align 4
  %101 = call i32 @nvkm_longopt(ptr noundef %100, ptr noundef nonnull %5, i32 noundef %97) #7
  %102 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %96, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %125, label %105

105:                                              ; preds = %94
  %106 = icmp sgt i32 %101, -1
  br label %107

107:                                              ; preds = %114, %105
  %108 = phi ptr [ %103, %105 ], [ %117, %114 ]
  %109 = phi ptr [ %96, %105 ], [ %115, %114 ]
  br i1 %106, label %119, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %109, align 4
  %112 = call i32 %108(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %111, ptr noundef %109) #7
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %110
  %115 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %109, i32 1
  %116 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %109, i32 1, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %107

119:                                              ; preds = %107
  %120 = call i32 %103(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %101, ptr noundef %96) #7
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %119, %114, %80
  %123 = phi i32 [ %120, %119 ], [ %112, %114 ], [ -22, %80 ]
  %124 = inttoptr i32 %123 to ptr
  br label %125

125:                                              ; preds = %122, %119, %110, %94
  %126 = phi ptr [ %124, %122 ], [ %96, %119 ], [ %95, %94 ], [ %109, %110 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  %127 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  %128 = ptrtoint ptr %126 to i32
  %129 = select i1 %127, i32 %128, i32 0
  br label %130

130:                                              ; preds = %125, %66
  %131 = phi i32 [ %67, %66 ], [ %129, %125 ]
  ret i32 %131
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp102_acr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_acr_new_(ptr noundef nonnull @gp102_acr_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_nofw(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_acr_wpr_check(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_hsfw_load(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_load_boot(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_acr_hsfw_bld(ptr noundef, ptr noundef) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
