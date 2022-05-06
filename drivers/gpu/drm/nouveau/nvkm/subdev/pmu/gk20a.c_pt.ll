; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk20a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk20a.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_pmu_fwif = type { i32, ptr, ptr, ptr }
%struct.gk20a_pmu_dvfs_data = type { i32, i32, i32, i32 }
%struct.nvkm_pmu_func = type { ptr, %struct.anon.131, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.131 = type { ptr, i32 }
%struct.anon.132 = type { ptr, i32 }
%struct.nvkm_falcon_func = type { %struct.anon.126, %struct.anon.127, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.130, %struct.anon.130, [0 x %struct.nvkm_sclass] }
%struct.anon.126 = type { ptr, i32 }
%struct.anon.127 = type { ptr, i32 }
%struct.anon.130 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gk20a_pmu = type { %struct.nvkm_pmu, %struct.nvkm_alarm, ptr }
%struct.nvkm_pmu = type { ptr, %struct.nvkm_subdev, %struct.nvkm_falcon, ptr, ptr, ptr, ptr, i8, %struct.completion, %struct.anon.133, %struct.anon.134 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.128, %struct.anon.129, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.128 = type { i32, ptr, i32, i8 }
%struct.anon.129 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.101 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.101 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.133 = type { %struct.mutex, i32, i32 }
%struct.anon.134 = type { i32, i32, %struct.work_struct, %struct.wait_queue_head, i32, i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvkm_alarm = type { %struct.list_head, %struct.list_head, i64, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.125, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.125 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }

@gk20a_pmu_fwif = internal constant [2 x %struct.nvkm_pmu_fwif] [%struct.nvkm_pmu_fwif { i32 -1, ptr @gf100_pmu_nofw, ptr @gk20a_pmu, ptr null }, %struct.nvkm_pmu_fwif zeroinitializer], align 4
@gk20a_dvfs_data = internal global %struct.gk20a_pmu_dvfs_data { i32 70, i32 90, i32 1, i32 0 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@gk20a_pmu = internal constant %struct.nvkm_pmu_func { ptr @gt215_pmu_flcn, %struct.anon.131 zeroinitializer, %struct.anon.132 zeroinitializer, ptr @gf100_pmu_enabled, ptr @gf100_pmu_reset, ptr @gk20a_pmu_init, ptr @gk20a_pmu_fini, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gt215_pmu_flcn = external dso_local constant %struct.nvkm_falcon_func, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: cannot acquire %s falcon!\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: utilization = %d %%, avg_load = %d %%\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: set new state to %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s: cur level = %d, new level = %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk20a_pmu_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 408) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  %9 = tail call i32 @nvkm_pmu_ctor(ptr noundef nonnull @gk20a_pmu_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.gk20a_pmu, ptr %6, i32 0, i32 2
  store ptr @gk20a_dvfs_data, ptr %12, align 8
  %13 = getelementptr inbounds %struct.gk20a_pmu, ptr %6, i32 0, i32 1
  store volatile ptr %13, ptr %13, align 8
  %14 = getelementptr inbounds %struct.gk20a_pmu, ptr %6, i32 0, i32 1, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.gk20a_pmu, ptr %6, i32 0, i32 1, i32 3
  store ptr @gk20a_pmu_dvfs_work, ptr %15, align 8
  br label %16

16:                                               ; preds = %11, %8, %4
  %17 = phi i32 [ 0, %11 ], [ -12, %4 ], [ %9, %8 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pmu_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gk20a_pmu_dvfs_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 32
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 -360
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 43
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 31
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 40
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ne ptr %7, null
  %13 = icmp ne ptr %11, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %120

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %0, i32 -308
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %0, i32 -300
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1288
  %25 = getelementptr i8, ptr %21, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %27 = load ptr, ptr %16, align 4
  %28 = getelementptr inbounds %struct.nvkm_subdev, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 11
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %22, align 4
  %33 = add i32 %32, 1400
  %34 = getelementptr i8, ptr %31, i32 %33
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %15
  %38 = zext i32 %26 to i64
  %39 = mul nuw nsw i64 %38, 100
  %40 = icmp ult i64 %39, 4294967296
  br i1 %40, label %41, label %44, !prof !10

41:                                               ; preds = %37
  %42 = trunc i64 %39 to i32
  %43 = udiv i32 %42, %35
  br label %48

44:                                               ; preds = %37
  %45 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %39) #7, !srcloc !11
  %46 = extractvalue { i64, i64 } %45, 1
  %47 = trunc i64 %46 to i32
  br label %48

48:                                               ; preds = %44, %41, %15
  %49 = phi i32 [ 0, %15 ], [ %43, %41 ], [ %47, %44 ]
  %50 = getelementptr inbounds %struct.gk20a_pmu_dvfs_data, ptr %3, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.gk20a_pmu_dvfs_data, ptr %3, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = mul i32 %53, %51
  %55 = add i32 %54, %49
  %56 = add i32 %51, 1
  %57 = udiv i32 %55, %56
  store i32 %57, ptr %52, align 4
  %58 = getelementptr i8, ptr %0, i32 -332
  %59 = load i32, ptr %58, align 4
  %60 = icmp ugt i32 %59, 4
  br i1 %60, label %61, label %67

61:                                               ; preds = %48
  %62 = load ptr, ptr %4, align 4
  %63 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr i8, ptr %0, i32 -348
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.1, ptr noundef %65, i32 noundef %49, i32 noundef %57) #8
  %66 = load i32, ptr %52, align 4
  br label %67

67:                                               ; preds = %61, %48
  %68 = phi i32 [ %66, %61 ], [ %57, %48 ]
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr inbounds %struct.nvkm_device, ptr %69, i32 0, i32 43
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.nvkm_clk, ptr %71, i32 0, i32 11
  %73 = load ptr, ptr %2, align 8
  %74 = load i32, ptr %72, align 4
  %75 = getelementptr inbounds %struct.gk20a_pmu_dvfs_data, ptr %73, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp slt i32 %76, %68
  br i1 %77, label %78, label %85

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.nvkm_clk, ptr %71, i32 0, i32 5
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, -1
  %82 = sdiv i32 %80, 3
  %83 = add i32 %82, %74
  %84 = tail call i32 @llvm.smin.i32(i32 %81, i32 %83) #6
  br label %97

85:                                               ; preds = %67
  %86 = load i32, ptr %73, align 4
  %87 = sub i32 %68, %86
  %88 = mul i32 %87, 10
  %89 = sdiv i32 %88, %86
  %90 = sdiv i32 %89, 2
  %91 = add i32 %90, %74
  %92 = tail call i32 @llvm.smax.i32(i32 %91, i32 0) #6
  %93 = getelementptr inbounds %struct.nvkm_clk, ptr %71, i32 0, i32 5
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, -1
  %96 = tail call i32 @llvm.smin.i32(i32 %95, i32 %92) #6
  br label %97

97:                                               ; preds = %85, %78
  %98 = phi i32 [ %84, %78 ], [ %96, %85 ]
  %99 = load i32, ptr %58, align 4
  %100 = icmp ugt i32 %99, 4
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.nvkm_device, ptr %69, i32 0, i32 2
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr i8, ptr %0, i32 -348
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %103, ptr noundef nonnull @.str.3, ptr noundef %104, i32 noundef %74, i32 noundef %98) #8
  br label %105

105:                                              ; preds = %101, %97
  %106 = icmp eq i32 %98, %74
  br i1 %106, label %120, label %107

107:                                              ; preds = %105
  %108 = load i32, ptr %58, align 4
  %109 = icmp ugt i32 %108, 4
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load ptr, ptr %4, align 4
  %112 = getelementptr inbounds %struct.nvkm_device, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr i8, ptr %0, i32 -348
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %113, ptr noundef nonnull @.str.2, ptr noundef %114, i32 noundef %98) #8
  br label %115

115:                                              ; preds = %110, %107
  %116 = load ptr, ptr %4, align 4
  %117 = getelementptr inbounds %struct.nvkm_device, ptr %116, i32 0, i32 43
  %118 = load ptr, ptr %117, align 8
  %119 = tail call i32 @nvkm_clk_astate(ptr noundef %118, i32 noundef %98, i32 noundef 0, i1 noundef zeroext false) #6
  br label %120

120:                                              ; preds = %115, %105, %1
  %121 = getelementptr i8, ptr %0, i32 -308
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.nvkm_subdev, ptr %122, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.nvkm_device, ptr %124, i32 0, i32 11
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr i8, ptr %0, i32 -300
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, 1288
  %130 = getelementptr i8, ptr %126, i32 %129
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 -2147483648) #6, !srcloc !13
  %131 = load ptr, ptr %121, align 4
  %132 = getelementptr inbounds %struct.nvkm_subdev, ptr %131, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.nvkm_device, ptr %133, i32 0, i32 11
  %135 = load ptr, ptr %134, align 4
  %136 = load i32, ptr %127, align 4
  %137 = add i32 %136, 1400
  %138 = getelementptr i8, ptr %135, i32 %137
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 -2147483648) #6, !srcloc !13
  tail call void @nvkm_timer_alarm(ptr noundef %9, i32 noundef 100000000, ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_pmu_nofw(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gf100_pmu_enabled(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_pmu_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk20a_pmu_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 2
  %6 = tail call i32 @nvkm_falcon_get(ptr noundef %5, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 4
  %17 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef %16, ptr noundef %18) #8
  br label %49

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 2, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 2, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1284
  %29 = getelementptr i8, ptr %25, i32 %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 2097153) #6, !srcloc !13
  %30 = load ptr, ptr %20, align 4
  %31 = getelementptr inbounds %struct.nvkm_subdev, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %26, align 4
  %36 = add i32 %35, 1292
  %37 = getelementptr i8, ptr %34, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 2) #6, !srcloc !13
  %38 = load ptr, ptr %20, align 4
  %39 = getelementptr inbounds %struct.nvkm_subdev, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 11
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %26, align 4
  %44 = add i32 %43, 1404
  %45 = getelementptr i8, ptr %42, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 3) #6, !srcloc !13
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 31
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.gk20a_pmu, ptr %0, i32 0, i32 1
  tail call void @nvkm_timer_alarm(ptr noundef %47, i32 noundef 2000000000, ptr noundef %48) #6
  br label %49

49:                                               ; preds = %19, %12, %8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gk20a_pmu_fini(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 31
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.gk20a_pmu, ptr %0, i32 0, i32 1
  tail call void @nvkm_timer_alarm(ptr noundef %6, i32 noundef 0, ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 2
  tail call void @nvkm_falcon_put(ptr noundef %8, ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_alarm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_astate(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
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
!8 = !{i64 3946879}
!9 = !{i64 2151486332}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148124606, i64 2148124886, i64 2148125220, i64 2148125554}
!12 = !{i64 2151487554}
!13 = !{i64 3946461}
