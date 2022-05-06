; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gm20b.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gm20b.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_pmu_fwif = type { i32, ptr, ptr, ptr }
%struct.nv_pmu_acr_cmd = type { %struct.nvfw_falcon_msg, i8 }
%struct.nvfw_falcon_msg = type { i8, i8, i8, i8 }
%struct.nvkm_pmu_func = type { ptr, %struct.anon.128, %struct.anon.129, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.128 = type { ptr, i32 }
%struct.anon.129 = type { ptr, i32 }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.1, %struct.anon.1, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.1 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nv_pmu_acr_bootstrap_falcon_cmd = type { %struct.nv_pmu_acr_cmd, i32, i32 }
%struct.nv_pmu_acr_bootstrap_falcon_msg = type { %struct.nv_pmu_acr_msg, i32 }
%struct.nv_pmu_acr_msg = type { %struct.nvfw_falcon_msg, i8 }
%struct.nv_pmu_args = type { i32, i32, i32, i32, i16, i8, i32, i8, i8, %struct.anon.138, i8 }
%struct.anon.138 = type { i32, i16, i8, i16, i8 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.123, %struct.anon.124, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.anon.123 = type { i32, ptr, i32, i8 }
%struct.anon.124 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.127 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.127 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.loader_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_acr_lsfw = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_blob, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.139, i32 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.139 = type { i32, i32, i32 }
%struct.nv_pmu_acr_init_wpr_region_cmd = type { %struct.nv_pmu_acr_cmd, i32, i32 }
%struct.nv_pmu_init_msg = type { %struct.nvfw_falcon_msg, i8, i8, i16, [5 x %struct.anon.140], i16, i16 }
%struct.anon.140 = type { i16, i16, i8, i8 }
%struct.nvkm_pmu = type { ptr, %struct.nvkm_subdev, %struct.nvkm_falcon, ptr, ptr, ptr, ptr, i8, %struct.completion, %struct.anon.130, %struct.anon.131 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.130 = type { %struct.mutex, i32, i32 }
%struct.anon.131 = type { i32, i32, %struct.work_struct, %struct.wait_queue_head, i32, i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv_pmu_acr_init_wpr_region_msg = type { %struct.nv_pmu_acr_msg, i32 }

@.str = private unnamed_addr constant [36 x i8] c"%s: error parsing init message: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pmu/\00", align 1
@gm20b_pmu_fwif = internal constant [3 x %struct.nvkm_pmu_fwif] [%struct.nvkm_pmu_fwif { i32 0, ptr @gm20b_pmu_load, ptr @gm20b_pmu, ptr @gm20b_pmu_acr }, %struct.nvkm_pmu_fwif { i32 -1, ptr @gm200_pmu_nofw, ptr @gm20b_pmu, ptr null }, %struct.nvkm_pmu_fwif zeroinitializer], align 4
@__const.gm20b_pmu_acr_init_wpr.cmd = private unnamed_addr constant { %struct.nv_pmu_acr_cmd, [3 x i8], i32, i32 } { %struct.nv_pmu_acr_cmd { %struct.nvfw_falcon_msg { i8 10, i8 16, i8 0, i8 0 }, i8 0 }, [3 x i8] zeroinitializer, i32 1, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: ACR WPR init failure: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: ACR WPR init complete\0A\00", align 1
@gm20b_pmu = internal constant %struct.nvkm_pmu_func { ptr @gm200_pmu_flcn, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, ptr @gf100_pmu_enabled, ptr null, ptr null, ptr null, ptr @gt215_pmu_intr, ptr null, ptr @gm20b_pmu_recv, ptr @gm20b_pmu_initmsg, ptr null }, align 4
@gm20b_pmu_acr = internal constant %struct.nvkm_acr_lsf_func { i32 4, i32 52, ptr @gm20b_pmu_acr_bld_write, ptr @gm20b_pmu_acr_bld_patch, ptr @gm20b_pmu_acr_boot, i64 13, ptr @gm20b_pmu_acr_bootstrap_falcon, ptr null }, align 8
@gm200_pmu_flcn = external dso_local constant %struct.nvkm_falcon_func, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm20b_pmu_acr_bootstrap_falcon(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.nv_pmu_acr_bootstrap_falcon_cmd, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %4, align 4, !annotation !8
  store i8 10, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %3, i32 0, i32 1
  store i8 16, ptr %5, align 1
  %6 = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %3, i32 0, i32 2
  store i8 0, ptr %6, align 2
  %7 = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %3, i32 0, i32 3
  store i8 0, ptr %7, align 1
  %8 = getelementptr inbounds %struct.nv_pmu_acr_cmd, ptr %3, i32 0, i32 1
  store i8 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nv_pmu_acr_bootstrap_falcon_cmd, ptr %3, i32 0, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nv_pmu_acr_bootstrap_falcon_cmd, ptr %3, i32 0, i32 2
  store i32 %1, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 200
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 -52
  %14 = call i32 @nvkm_falcon_cmdq_send(ptr noundef %12, ptr noundef nonnull %3, ptr noundef nonnull @gm20b_pmu_acr_bootstrap_falcon_cb, ptr noundef %13, i32 noundef 100) #7
  %15 = load i32, ptr %10, align 4
  %16 = icmp eq i32 %14, %15
  %17 = select i1 %16, i32 0, i32 -5
  %18 = icmp slt i32 %14, 0
  %19 = select i1 %18, i32 %14, i32 %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_cmdq_send(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @gm20b_pmu_acr_bootstrap_falcon_cb(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.nv_pmu_acr_bootstrap_falcon_msg, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm20b_pmu_acr_boot(ptr noundef %0) #0 {
  %2 = alloca %struct.nv_pmu_args, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %2, i8 0, i32 44, i1 false)
  %3 = getelementptr inbounds { i32, i32, i32, i32, i16, i8, [1 x i8], i32, i8, i8, [2 x i8], { i32, i16, i8, [1 x i8], i16, i8, [1 x i8] }, i8, [3 x i8] }, ptr %2, i32 0, i32 8
  store i8 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -44
  call void @nvkm_falcon_load_dmem(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %6, i32 noundef 44, i8 noundef zeroext 0) #7
  call void @nvkm_falcon_start(ptr noundef %0) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm20b_pmu_acr_bld_patch(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.loader_config, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %4, i8 0, i32 52, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_memory, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = zext i32 %1 to i64
  %11 = tail call i32 %9(ptr noundef %6, i64 noundef %10) #7
  %12 = getelementptr inbounds i32, ptr %4, i32 1
  store i32 %11, ptr %4, align 4
  %13 = add i32 %1, 4
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.nvkm_memory, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = zext i32 %13 to i64
  %19 = tail call i32 %17(ptr noundef %14, i64 noundef %18) #7
  %20 = getelementptr inbounds i32, ptr %4, i32 2
  store i32 %19, ptr %12, align 4
  %21 = add i32 %1, 8
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.nvkm_memory, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = zext i32 %21 to i64
  %27 = tail call i32 %25(ptr noundef %22, i64 noundef %26) #7
  %28 = getelementptr inbounds i32, ptr %4, i32 3
  store i32 %27, ptr %20, align 4
  %29 = add i32 %1, 12
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds %struct.nvkm_memory, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = zext i32 %29 to i64
  %35 = tail call i32 %33(ptr noundef %30, i64 noundef %34) #7
  %36 = getelementptr inbounds i32, ptr %4, i32 4
  store i32 %35, ptr %28, align 4
  %37 = add i32 %1, 16
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds %struct.nvkm_memory, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = zext i32 %37 to i64
  %43 = tail call i32 %41(ptr noundef %38, i64 noundef %42) #7
  %44 = getelementptr inbounds i32, ptr %4, i32 5
  store i32 %43, ptr %36, align 4
  %45 = add i32 %1, 20
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr inbounds %struct.nvkm_memory, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = zext i32 %45 to i64
  %51 = tail call i32 %49(ptr noundef %46, i64 noundef %50) #7
  %52 = getelementptr inbounds i32, ptr %4, i32 6
  store i32 %51, ptr %44, align 4
  %53 = add i32 %1, 24
  %54 = load ptr, ptr %5, align 8
  %55 = getelementptr inbounds %struct.nvkm_memory, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = zext i32 %53 to i64
  %59 = tail call i32 %57(ptr noundef %54, i64 noundef %58) #7
  %60 = getelementptr inbounds i32, ptr %4, i32 7
  store i32 %59, ptr %52, align 4
  %61 = add i32 %1, 28
  %62 = load ptr, ptr %5, align 8
  %63 = getelementptr inbounds %struct.nvkm_memory, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %64, align 4
  %66 = zext i32 %61 to i64
  %67 = tail call i32 %65(ptr noundef %62, i64 noundef %66) #7
  %68 = getelementptr inbounds i32, ptr %4, i32 8
  store i32 %67, ptr %60, align 4
  %69 = add i32 %1, 32
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr inbounds %struct.nvkm_memory, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %72, align 4
  %74 = zext i32 %69 to i64
  %75 = tail call i32 %73(ptr noundef %70, i64 noundef %74) #7
  %76 = getelementptr inbounds i32, ptr %4, i32 9
  store i32 %75, ptr %68, align 4
  %77 = add i32 %1, 36
  %78 = load ptr, ptr %5, align 8
  %79 = getelementptr inbounds %struct.nvkm_memory, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %80, align 4
  %82 = zext i32 %77 to i64
  %83 = tail call i32 %81(ptr noundef %78, i64 noundef %82) #7
  %84 = getelementptr inbounds i32, ptr %4, i32 10
  store i32 %83, ptr %76, align 4
  %85 = add i32 %1, 40
  %86 = load ptr, ptr %5, align 8
  %87 = getelementptr inbounds %struct.nvkm_memory, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr %88, align 4
  %90 = zext i32 %85 to i64
  %91 = tail call i32 %89(ptr noundef %86, i64 noundef %90) #7
  %92 = getelementptr inbounds i32, ptr %4, i32 11
  store i32 %91, ptr %84, align 4
  %93 = add i32 %1, 44
  %94 = load ptr, ptr %5, align 8
  %95 = getelementptr inbounds %struct.nvkm_memory, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %96, align 4
  %98 = zext i32 %93 to i64
  %99 = tail call i32 %97(ptr noundef %94, i64 noundef %98) #7
  %100 = getelementptr inbounds i32, ptr %4, i32 12
  store i32 %99, ptr %92, align 4
  %101 = add i32 %1, 48
  %102 = load ptr, ptr %5, align 8
  %103 = getelementptr inbounds %struct.nvkm_memory, ptr %102, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = load ptr, ptr %104, align 4
  %106 = zext i32 %101 to i64
  %107 = tail call i32 %105(ptr noundef %102, i64 noundef %106) #7
  %108 = getelementptr inbounds %struct.loader_config, ptr %4, i32 0, i32 10
  %109 = load i32, ptr %108, align 4
  %110 = zext i32 %109 to i64
  %111 = shl i64 %110, 40
  %112 = load i32, ptr %12, align 4
  %113 = shl i32 %112, 8
  %114 = zext i32 %113 to i64
  %115 = or i64 %111, %114
  %116 = add i64 %115, %2
  %117 = lshr i64 %116, 8
  %118 = trunc i64 %117 to i32
  store i32 %118, ptr %12, align 4
  %119 = lshr i64 %116, 40
  %120 = trunc i64 %119 to i32
  store i32 %120, ptr %108, align 4
  %121 = getelementptr inbounds %struct.loader_config, ptr %4, i32 0, i32 11
  %122 = load i32, ptr %121, align 4
  %123 = zext i32 %122 to i64
  %124 = shl i64 %123, 40
  %125 = getelementptr inbounds %struct.loader_config, ptr %4, i32 0, i32 5
  %126 = load i32, ptr %125, align 4
  %127 = shl i32 %126, 8
  %128 = zext i32 %127 to i64
  %129 = or i64 %124, %128
  %130 = add i64 %129, %2
  %131 = lshr i64 %130, 8
  %132 = trunc i64 %131 to i32
  store i32 %132, ptr %125, align 4
  %133 = lshr i64 %130, 40
  %134 = trunc i64 %133 to i32
  store i32 %134, ptr %121, align 4
  %135 = getelementptr inbounds %struct.loader_config, ptr %4, i32 0, i32 12
  %136 = zext i32 %107 to i64
  %137 = shl i64 %136, 40
  %138 = getelementptr inbounds %struct.loader_config, ptr %4, i32 0, i32 7
  %139 = load i32, ptr %138, align 4
  %140 = shl i32 %139, 8
  %141 = zext i32 %140 to i64
  %142 = or i64 %137, %141
  %143 = add i64 %142, %2
  %144 = shl i64 %143, 8
  %145 = trunc i64 %144 to i32
  store i32 %145, ptr %138, align 4
  %146 = lshr i64 %144, 32
  %147 = trunc i64 %146 to i32
  store i32 %147, ptr %135, align 4
  %148 = load ptr, ptr %5, align 8
  %149 = getelementptr inbounds %struct.nvkm_memory, ptr %148, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %150, i32 0, i32 1
  %152 = load ptr, ptr %151, align 4
  %153 = load i32, ptr %4, align 4
  tail call void %152(ptr noundef %148, i64 noundef %10, i32 noundef %153) #7
  %154 = load ptr, ptr %5, align 8
  %155 = getelementptr inbounds %struct.nvkm_memory, ptr %154, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %156, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  tail call void %158(ptr noundef %154, i64 noundef %18, i32 noundef %118) #7
  %159 = load ptr, ptr %5, align 8
  %160 = getelementptr inbounds %struct.nvkm_memory, ptr %159, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %161, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = load i32, ptr %20, align 4
  tail call void %163(ptr noundef %159, i64 noundef %26, i32 noundef %164) #7
  %165 = load ptr, ptr %5, align 8
  %166 = getelementptr inbounds %struct.nvkm_memory, ptr %165, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %167, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  %170 = load i32, ptr %28, align 4
  tail call void %169(ptr noundef %165, i64 noundef %34, i32 noundef %170) #7
  %171 = load ptr, ptr %5, align 8
  %172 = getelementptr inbounds %struct.nvkm_memory, ptr %171, i32 0, i32 1
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %173, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = load i32, ptr %36, align 4
  tail call void %175(ptr noundef %171, i64 noundef %42, i32 noundef %176) #7
  %177 = load ptr, ptr %5, align 8
  %178 = getelementptr inbounds %struct.nvkm_memory, ptr %177, i32 0, i32 1
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %179, i32 0, i32 1
  %181 = load ptr, ptr %180, align 4
  tail call void %181(ptr noundef %177, i64 noundef %50, i32 noundef %132) #7
  %182 = load ptr, ptr %5, align 8
  %183 = getelementptr inbounds %struct.nvkm_memory, ptr %182, i32 0, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %184, i32 0, i32 1
  %186 = load ptr, ptr %185, align 4
  %187 = load i32, ptr %52, align 4
  tail call void %186(ptr noundef %182, i64 noundef %58, i32 noundef %187) #7
  %188 = load ptr, ptr %5, align 8
  %189 = getelementptr inbounds %struct.nvkm_memory, ptr %188, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %190, i32 0, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = load i32, ptr %60, align 4
  tail call void %192(ptr noundef %188, i64 noundef %66, i32 noundef %193) #7
  %194 = load ptr, ptr %5, align 8
  %195 = getelementptr inbounds %struct.nvkm_memory, ptr %194, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %196, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = load i32, ptr %68, align 4
  tail call void %198(ptr noundef %194, i64 noundef %74, i32 noundef %199) #7
  %200 = load ptr, ptr %5, align 8
  %201 = getelementptr inbounds %struct.nvkm_memory, ptr %200, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %202, i32 0, i32 1
  %204 = load ptr, ptr %203, align 4
  %205 = load i32, ptr %76, align 4
  tail call void %204(ptr noundef %200, i64 noundef %82, i32 noundef %205) #7
  %206 = load ptr, ptr %5, align 8
  %207 = getelementptr inbounds %struct.nvkm_memory, ptr %206, i32 0, i32 1
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %208, i32 0, i32 1
  %210 = load ptr, ptr %209, align 4
  %211 = load i32, ptr %84, align 4
  tail call void %210(ptr noundef %206, i64 noundef %90, i32 noundef %211) #7
  %212 = load ptr, ptr %5, align 8
  %213 = getelementptr inbounds %struct.nvkm_memory, ptr %212, i32 0, i32 1
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %214, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = load i32, ptr %92, align 4
  tail call void %216(ptr noundef %212, i64 noundef %98, i32 noundef %217) #7
  %218 = load ptr, ptr %5, align 8
  %219 = getelementptr inbounds %struct.nvkm_memory, ptr %218, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %220, i32 0, i32 1
  %222 = load ptr, ptr %221, align 4
  %223 = load i32, ptr %100, align 4
  tail call void %222(ptr noundef %218, i64 noundef %106, i32 noundef %223) #7
  %224 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  call void @loader_config_dump(ptr noundef %224, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @loader_config_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm20b_pmu_acr_bld_write(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 17, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = add nuw nsw i64 %9, %12
  %14 = lshr i64 %13, 8
  %15 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %17, %9
  %19 = lshr i64 %18, 8
  %20 = trunc i64 %14 to i32
  %21 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = trunc i64 %19 to i32
  %28 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 14
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_falcon, ptr %31, i32 0, i32 14
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -44
  %35 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.nvkm_memory, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = zext i32 %1 to i64
  tail call void %40(ptr noundef %36, i64 noundef %41, i32 noundef 0) #7
  %42 = add i32 %1, 4
  %43 = load ptr, ptr %35, align 8
  %44 = getelementptr inbounds %struct.nvkm_memory, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = zext i32 %42 to i64
  tail call void %47(ptr noundef %43, i64 noundef %48, i32 noundef %20) #7
  %49 = add i32 %1, 8
  %50 = load ptr, ptr %35, align 8
  %51 = getelementptr inbounds %struct.nvkm_memory, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = zext i32 %49 to i64
  tail call void %54(ptr noundef %50, i64 noundef %55, i32 noundef %22) #7
  %56 = add i32 %1, 12
  %57 = load ptr, ptr %35, align 8
  %58 = getelementptr inbounds %struct.nvkm_memory, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = zext i32 %56 to i64
  tail call void %61(ptr noundef %57, i64 noundef %62, i32 noundef %24) #7
  %63 = add i32 %1, 16
  %64 = load ptr, ptr %35, align 8
  %65 = getelementptr inbounds %struct.nvkm_memory, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = zext i32 %63 to i64
  tail call void %68(ptr noundef %64, i64 noundef %69, i32 noundef %26) #7
  %70 = add i32 %1, 20
  %71 = load ptr, ptr %35, align 8
  %72 = getelementptr inbounds %struct.nvkm_memory, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = zext i32 %70 to i64
  tail call void %75(ptr noundef %71, i64 noundef %76, i32 noundef %27) #7
  %77 = add i32 %1, 24
  %78 = load ptr, ptr %35, align 8
  %79 = getelementptr inbounds %struct.nvkm_memory, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = zext i32 %77 to i64
  tail call void %82(ptr noundef %78, i64 noundef %83, i32 noundef %29) #7
  %84 = add i32 %1, 28
  %85 = load ptr, ptr %35, align 8
  %86 = getelementptr inbounds %struct.nvkm_memory, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = zext i32 %84 to i64
  tail call void %89(ptr noundef %85, i64 noundef %90, i32 noundef %20) #7
  %91 = add i32 %1, 32
  %92 = load ptr, ptr %35, align 8
  %93 = getelementptr inbounds %struct.nvkm_memory, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = zext i32 %91 to i64
  tail call void %96(ptr noundef %92, i64 noundef %97, i32 noundef 1) #7
  %98 = add i32 %1, 36
  %99 = load ptr, ptr %35, align 8
  %100 = getelementptr inbounds %struct.nvkm_memory, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %101, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = zext i32 %98 to i64
  tail call void %103(ptr noundef %99, i64 noundef %104, i32 noundef %34) #7
  %105 = add i32 %1, 40
  %106 = load ptr, ptr %35, align 8
  %107 = getelementptr inbounds %struct.nvkm_memory, ptr %106, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = zext i32 %105 to i64
  tail call void %110(ptr noundef %106, i64 noundef %111, i32 noundef 0) #7
  %112 = add i32 %1, 44
  %113 = load ptr, ptr %35, align 8
  %114 = getelementptr inbounds %struct.nvkm_memory, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %115, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = zext i32 %112 to i64
  tail call void %117(ptr noundef %113, i64 noundef %118, i32 noundef 0) #7
  %119 = add i32 %1, 48
  %120 = load ptr, ptr %35, align 8
  %121 = getelementptr inbounds %struct.nvkm_memory, ptr %120, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %122, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = zext i32 %119 to i64
  tail call void %124(ptr noundef %120, i64 noundef %125, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm20b_pmu_initmsg(ptr noundef %0) #0 {
  %2 = alloca %struct.nv_pmu_acr_init_wpr_region_cmd, align 4
  %3 = alloca %struct.nv_pmu_init_msg, align 2
  call void @llvm.lifetime.start.p0(i64 42, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(42) %3, i8 0, i32 42, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @nvkm_falcon_msgq_recv_initmsg(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 42) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %50

8:                                                ; preds = %1
  %9 = load i8, ptr %3, align 2
  %10 = icmp ne i8 %9, 7
  %11 = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %3, i32 0, i32 1
  %12 = load i8, ptr %11, align 2
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %10, i1 true, i1 %13
  br i1 %14, label %50, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %3, i32 0, i32 4
  %19 = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %3, i32 0, i32 4, i32 0, i32 2
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %3, i32 0, i32 4, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16, ptr %18, align 2
  %26 = zext i16 %25 to i32
  call void @nvkm_falcon_cmdq_init(ptr noundef %17, i32 noundef %21, i32 noundef %24, i32 noundef %26) #7
  %27 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %3, i32 0, i32 4, i32 1
  %30 = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %3, i32 0, i32 4, i32 1, i32 2
  %31 = load i8, ptr %30, align 2
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %3, i32 0, i32 4, i32 1, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, ptr %29, align 2
  %37 = zext i16 %36 to i32
  call void @nvkm_falcon_cmdq_init(ptr noundef %28, i32 noundef %32, i32 noundef %35, i32 noundef %37) #7
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %3, i32 0, i32 4, i32 4
  %40 = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %3, i32 0, i32 4, i32 4, i32 2
  %41 = load i8, ptr %40, align 2
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %3, i32 0, i32 4, i32 4, i32 1
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, ptr %39, align 2
  %47 = zext i16 %46 to i32
  call void @nvkm_falcon_msgq_init(ptr noundef %38, i32 noundef %42, i32 noundef %45, i32 noundef %47) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) @__const.gm20b_pmu_acr_init_wpr.cmd, i32 16, i1 false) #7
  %48 = load ptr, ptr %16, align 4
  %49 = call i32 @nvkm_falcon_cmdq_send(ptr noundef %48, ptr noundef nonnull %2, ptr noundef nonnull @gm20b_pmu_acr_init_wpr_callback, ptr noundef %0, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  br label %50

50:                                               ; preds = %15, %8, %1
  %51 = phi i32 [ %49, %15 ], [ %6, %1 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 42, ptr nonnull %3) #7
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_msgq_recv_initmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_cmdq_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_msgq_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm20b_pmu_recv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 7
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef %20, i32 noundef %9) #8
  br label %25

21:                                               ; preds = %5
  store i8 1, ptr %2, align 4
  br label %22

22:                                               ; preds = %21, %1
  %23 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  tail call void @nvkm_falcon_msgq_recv(ptr noundef %24) #7
  br label %25

25:                                               ; preds = %22, %15, %11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_msgq_recv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm20b_pmu_load(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.nvkm_pmu_fwif, ptr %2, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @nvkm_acr_lsfw_load_sig_image_desc(ptr noundef %4, ptr noundef %5, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %1, ptr noundef %7) #7
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_lsfw_load_sig_image_desc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm20b_pmu_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_pmu_new_(ptr noundef nonnull @gm20b_pmu_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pmu_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gm20b_pmu_acr_init_wpr_callback(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv_pmu_acr_init_wpr_region_msg, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 5
  %7 = load i32, ptr %6, align 4
  br i1 %5, label %16, label %8

8:                                                ; preds = %2
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef %15, i32 noundef %4) #8
  br label %26

16:                                               ; preds = %2
  %17 = icmp ugt i32 %7, 3
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.3, ptr noundef %23) #8
  br label %24

24:                                               ; preds = %18, %16
  %25 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 8
  tail call void @complete_all(ptr noundef %25) #7
  br label %26

26:                                               ; preds = %24, %10, %8
  %27 = phi i32 [ 0, %24 ], [ -22, %10 ], [ -22, %8 ]
  ret i32 %27
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_pmu_nofw(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gf100_pmu_enabled(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_pmu_intr(ptr noundef) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
