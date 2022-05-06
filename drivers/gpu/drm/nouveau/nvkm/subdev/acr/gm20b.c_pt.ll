; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm20b.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm20b.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr_hsf_func = type { ptr, ptr, ptr }
%struct.nvkm_acr_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.nvkm_acr_hsf_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_acr_hsfw = type { ptr, ptr, %struct.list_head, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon }
%struct.anon = type { %struct.anon.0, %struct.anon.0, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flcn_acr_desc = type { %union.anon.142, i32, i32, i32, %struct.anon.143, i32, i64, %struct.anon.145 }
%union.anon.142 = type { [4 x i32], [496 x i8] }
%struct.anon.143 = type { i32, [2 x %struct.anon.144] }
%struct.anon.144 = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.145 = type { i32, i32, i32, i32 }
%struct.nvkm_pmu = type { ptr, %struct.nvkm_subdev, %struct.nvkm_falcon, ptr, ptr, ptr, ptr, i8, %struct.completion, %struct.anon.134, %struct.anon.135 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.131, %struct.anon.132, %struct.nvkm_engine }
%struct.anon.131 = type { i32, ptr, i32, i8 }
%struct.anon.132 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.127 }
%struct.anon.127 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.134 = type { %struct.mutex, i32, i32 }
%struct.anon.135 = type { i32, i32, %struct.work_struct, %struct.wait_queue_head, i32, i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.flcn_bl_dmem_desc = type { [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvkm_acr_hsf = type { ptr, ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [32 x i8] c"%s: WPR image too big for WPR!\0A\00", align 1
@gm20b_acr_load_0 = dso_local constant %struct.nvkm_acr_hsf_func { ptr @gm20b_acr_load_load, ptr @gm200_acr_load_boot, ptr @gm20b_acr_load_bld }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"AcrLoad\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Nv%sFw\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Nv%sFwVer\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"acr/bl\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"acr/ucode_load\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@gm20b_acr_fwif = internal constant [3 x %struct.nvkm_acr_fwif] [%struct.nvkm_acr_fwif { i32 0, ptr @gm20b_acr_load, ptr @gm20b_acr }, %struct.nvkm_acr_fwif { i32 -1, ptr @gm200_acr_nofw, ptr @gm200_acr }, %struct.nvkm_acr_fwif zeroinitializer], align 4
@gm20b_acr = internal constant %struct.nvkm_acr_func { ptr @gm20b_acr_load_fwif, ptr null, ptr null, ptr null, ptr @gm200_acr_wpr_parse, ptr @gm200_acr_wpr_layout, ptr @gm20b_acr_wpr_alloc, ptr @gm200_acr_wpr_build, ptr @gm200_acr_wpr_patch, ptr @gm200_acr_wpr_check, ptr @gm200_acr_init, ptr null, i64 0 }, align 8
@gm200_acr = external dso_local constant %struct.nvkm_acr_func, align 8
@gm20b_acr_load_fwif = internal constant [2 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @gm20b_acr_load_0 }, %struct.nvkm_acr_hsf_fwif zeroinitializer], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm20b_acr_wpr_alloc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.nvkm_acr_func, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 9
  tail call void %5(ptr noundef %0, ptr noundef %6, ptr noundef %7) #6
  %8 = load i64, ptr %7, align 8
  %9 = load i64, ptr %6, align 8
  %10 = sub i64 %8, %9
  %11 = zext i32 %1 to i64
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef %22) #7
  br label %28

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %27 = tail call i32 @nvkm_memory_new(ptr noundef %25, i32 noundef 0, i64 noundef %11, i32 noundef 0, i1 noundef zeroext true, ptr noundef %26) #6
  br label %28

28:                                               ; preds = %23, %17, %13
  %29 = phi i32 [ %27, %23 ], [ -28, %17 ], [ -28, %13 ]
  ret i32 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gm20b_acr_load_load(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_memory_func, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i64 %12(ptr noundef %9) #6
  %14 = getelementptr inbounds %struct.flcn_acr_desc, ptr %7, i32 0, i32 6
  store i64 %13, ptr %14, align 8
  %15 = load ptr, ptr %8, align 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_memory_func, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i64 %18(ptr noundef %15) #6
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.flcn_acr_desc, ptr %7, i32 0, i32 5
  store i32 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  tail call void @flcn_acr_desc_dump(ptr noundef %22, ptr noundef %7) #6
  %23 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 39
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_pmu, ptr %26, i32 0, i32 2
  %28 = tail call i32 @gm200_acr_hsfw_load(ptr noundef %0, ptr noundef %1, ptr noundef %27) #6
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_load_boot(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm20b_acr_load_bld(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.flcn_bl_dmem_desc, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store i32 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %3, i32 0, i32 3
  %6 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_vma, ptr %7, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = lshr i64 %9, 8
  %11 = trunc i64 %10 to i32
  store i32 %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %3, i32 0, i32 4
  %13 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %3, i32 0, i32 5
  %16 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %3, i32 0, i32 6
  %19 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %3, i32 0, i32 7
  %22 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %3, i32 0, i32 8
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %3, i32 0, i32 9
  %26 = load i64, ptr %8, align 8
  %27 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = zext i32 %28 to i64
  %30 = add i64 %26, %29
  %31 = lshr i64 %30, 8
  %32 = trunc i64 %31 to i32
  store i32 %32, ptr %25, align 4
  %33 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %3, i32 0, i32 10
  %34 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %3, i32 0, i32 11
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %3, i32 0, i32 12
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  call void @flcn_bl_dmem_desc_dump(ptr noundef %38, ptr noundef nonnull %3) #6
  %39 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 14
  %40 = load ptr, ptr %39, align 4
  call void @nvkm_falcon_load_dmem(ptr noundef %40, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 76, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm20b_acr_load(ptr noundef %0, i32 %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.nvkm_acr_fwif, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1)
  %9 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @nvkm_longopt(ptr noundef %12, ptr noundef nonnull %4, i32 noundef -2) #6
  %14 = icmp sgt i32 %13, -2
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1)
  br label %31

17:                                               ; preds = %22, %3
  %18 = phi ptr [ %25, %22 ], [ %7, %3 ]
  %19 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %59, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %18, align 4
  %24 = icmp ne i32 %23, %13
  %25 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %18, i32 1
  %26 = icmp eq ptr %18, null
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %17, label %28

28:                                               ; preds = %22
  %29 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1)
  %30 = load i32, ptr %18, align 4
  br label %31

31:                                               ; preds = %28, %15
  %32 = phi ptr [ %18, %28 ], [ null, %15 ]
  %33 = phi ptr [ %18, %28 ], [ %7, %15 ]
  %34 = phi i32 [ %30, %28 ], [ -1, %15 ]
  %35 = load ptr, ptr %9, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 @nvkm_longopt(ptr noundef %37, ptr noundef nonnull %4, i32 noundef %34) #6
  %39 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %33, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %62, label %42

42:                                               ; preds = %31
  %43 = icmp sgt i32 %38, -1
  br label %44

44:                                               ; preds = %51, %42
  %45 = phi ptr [ %40, %42 ], [ %54, %51 ]
  %46 = phi ptr [ %33, %42 ], [ %52, %51 ]
  br i1 %43, label %56, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %46, align 4
  %49 = call i32 %45(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %48, ptr noundef %46) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %47
  %52 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %46, i32 1
  %53 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %46, i32 1, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %44

56:                                               ; preds = %44
  %57 = call i32 %40(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %38, ptr noundef %33) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56, %51, %17
  %60 = phi i32 [ %57, %56 ], [ %49, %51 ], [ -22, %17 ]
  %61 = inttoptr i32 %60 to ptr
  br label %62

62:                                               ; preds = %59, %56, %47, %31
  %63 = phi ptr [ %61, %59 ], [ %33, %56 ], [ %32, %31 ], [ %46, %47 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #6
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  %65 = ptrtoint ptr %63 to i32
  %66 = select i1 %64, i32 %65, i32 0
  ret i32 %66
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm20b_acr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_acr_new_(ptr noundef nonnull @gm20b_acr_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_acr_desc_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_hsfw_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_bl_dmem_desc_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_nofw(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_wpr_parse(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_wpr_layout(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_wpr_build(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_acr_wpr_patch(ptr noundef, i64 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_acr_wpr_check(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_hsfw_load(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
