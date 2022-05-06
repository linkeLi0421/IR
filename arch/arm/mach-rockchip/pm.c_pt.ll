; ModuleID = '/llk/IR/arch/arm/mach-rockchip/pm.c_pt.bc'
source_filename = "../arch/arm/mach-rockchip/pm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rockchip_pm_data = type { ptr, ptr }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@rockchip_pmu_of_device_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_pm_data }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str = private unnamed_addr constant [27 x i8] c"\013Failed to find PMU node\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\013%s: matches init error %d\0A\00", align 1
@__func__.rockchip_suspend_init = private unnamed_addr constant [22 x i8] c"rockchip_suspend_init\00", align 1
@rk3288_pm_data = internal constant %struct.rockchip_pm_data { ptr @rk3288_suspend_ops, ptr @rk3288_suspend_init }, section ".init.rodata", align 4
@rk3288_suspend_ops = internal constant %struct.platform_suspend_ops { ptr @suspend_valid_only_mem, ptr null, ptr @rk3288_suspend_prepare, ptr null, ptr @rk3288_suspend_enter, ptr null, ptr @rk3288_suspend_finish, ptr null, ptr null, ptr null }, align 4
@sgrf_regmap = internal unnamed_addr global ptr null, align 4
@rk3288_sgrf_cpu_con0 = internal global i32 0, align 4
@rk3288_sgrf_soc_con0 = internal global i32 0, align 4
@pmu_regmap = internal unnamed_addr global ptr null, align 4
@rk3288_pmu_pwr_mode_con = internal global i32 0, align 4
@rk3288_bootram_phy = internal unnamed_addr global i32 0, align 4
@grf_regmap = internal unnamed_addr global ptr null, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"\013%s: Failed to suspend\0A\00", align 1
@__func__.rockchip_lpmode_enter = private unnamed_addr constant [22 x i8] c"rockchip_lpmode_enter\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\013%s: could not find pmu regmap\0A\00", align 1
@__func__.rk3288_suspend_init = private unnamed_addr constant [20 x i8] c"rk3288_suspend_init\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"rockchip,rk3288-sgrf\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\013%s: could not find sgrf regmap\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"rockchip,rk3288-grf\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"\013%s: could not find grf regmap\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"rockchip,rk3288-pmu-sram\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"\013%s: could not find bootram dt node\0A\00", align 1
@rk3288_bootram_base = internal unnamed_addr global ptr null, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"\013%s: could not map bootram base\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"\013%s: could not get bootram phy addr\0A\00", align 1
@rk3288_bootram_sz = external dso_local local_unnamed_addr global i32, align 4
@rkpm_bootdata_cpusp = external dso_local local_unnamed_addr global i32, align 4
@rkpm_bootdata_cpu_code = external dso_local local_unnamed_addr global i32, align 4
@rkpm_bootdata_l2ctlr_f = external dso_local local_unnamed_addr global i32, align 4
@rkpm_bootdata_l2ctlr = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @rockchip_suspend_init() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #8
  store ptr null, ptr %1, align 4, !annotation !8
  %2 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @rockchip_pmu_of_device_ids, ptr noundef nonnull %1) #8
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %20

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rockchip_pm_data, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = call i32 %11(ptr noundef %2) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rockchip_suspend_init, i32 noundef %14) #9
  br label %20

18:                                               ; preds = %13, %7
  %19 = load ptr, ptr %9, align 4
  call void @suspend_set_ops(ptr noundef %19) #8
  br label %20

20:                                               ; preds = %18, %16, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rk3288_suspend_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %3 = tail call ptr @syscon_node_to_regmap(ptr noundef %0) #8
  store ptr %3, ptr @pmu_regmap, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rk3288_suspend_init) #9
  %7 = load ptr, ptr @pmu_regmap, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %46

9:                                                ; preds = %1
  %10 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.5) #8
  store ptr %10, ptr @sgrf_regmap, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rk3288_suspend_init) #9
  %14 = load ptr, ptr @sgrf_regmap, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %46

16:                                               ; preds = %9
  %17 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.7) #8
  store ptr %17, ptr @grf_regmap, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.rk3288_suspend_init) #9
  %21 = load ptr, ptr @grf_regmap, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %46

23:                                               ; preds = %16
  %24 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.rk3288_suspend_init) #9
  br label %46

28:                                               ; preds = %23
  %29 = tail call ptr @of_iomap(ptr noundef nonnull %24, i32 noundef 0) #8
  store ptr %29, ptr @rk3288_bootram_base, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.rk3288_suspend_init) #9
  tail call void @of_node_put(ptr noundef nonnull %24) #8
  br label %46

33:                                               ; preds = %28
  %34 = call i32 @of_address_to_resource(ptr noundef nonnull %24, i32 noundef 0, ptr noundef nonnull %2) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.rk3288_suspend_init) #9
  call void @of_node_put(ptr noundef nonnull %24) #8
  br label %46

38:                                               ; preds = %33
  %39 = load i32, ptr %2, align 4
  store i32 %39, ptr @rk3288_bootram_phy, align 4
  call void @of_node_put(ptr noundef nonnull %24) #8
  %40 = load i32, ptr @rk3288_bootram_phy, align 4
  %41 = add i32 %40, 4088
  store i32 %41, ptr @rkpm_bootdata_cpusp, align 4
  %42 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @cpu_resume to i32), i32 -2130706432, i32 8454144) #10, !srcloc !9
  store i32 %42, ptr @rkpm_bootdata_cpu_code, align 4
  store i32 1, ptr @rkpm_bootdata_l2ctlr_f, align 4
  %43 = tail call i32 asm "mrc p15, 1, $0, c9, c0, 2", "=r"() #10, !srcloc !10
  store i32 %43, ptr @rkpm_bootdata_l2ctlr, align 4
  %44 = load ptr, ptr @rk3288_bootram_base, align 4
  %45 = load i32, ptr @rk3288_bootram_sz, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %44, ptr nonnull align 4 @rockchip_slp_cpu_resume, i32 %45, i1 false)
  br label %46

46:                                               ; preds = %38, %36, %31, %26, %19, %12, %5
  %47 = phi i32 [ %8, %5 ], [ %15, %12 ], [ %22, %19 ], [ %34, %36 ], [ 0, %38 ], [ -12, %31 ], [ -19, %26 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suspend_valid_only_mem(i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rk3288_suspend_prepare() #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk3288_suspend_enter(i32 noundef %0) #5 {
  %2 = alloca i32, align 4
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #8, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = load ptr, ptr @grf_regmap, align 4
  %4 = call i32 @regmap_read(ptr noundef %3, i32 noundef 800, ptr noundef nonnull %2) #8
  %5 = load i32, ptr %2, align 4
  %6 = and i32 %5, 8192
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @grf_regmap, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 820, ptr noundef nonnull %2) #8
  %11 = load i32, ptr %2, align 4
  %12 = and i32 %11, 8192
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr @grf_regmap, align 4
  %16 = call i32 @regmap_read(ptr noundef %15, i32 noundef 840, ptr noundef nonnull %2) #8
  br label %17

17:                                               ; preds = %14, %8, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %18 = load ptr, ptr @sgrf_regmap, align 4
  %19 = call i32 @regmap_read(ptr noundef %18, i32 noundef 64, ptr noundef nonnull @rk3288_sgrf_cpu_con0) #8
  %20 = load ptr, ptr @sgrf_regmap, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 0, ptr noundef nonnull @rk3288_sgrf_soc_con0) #8
  %22 = load ptr, ptr @pmu_regmap, align 4
  %23 = call i32 @regmap_read(ptr noundef %22, i32 noundef 24, ptr noundef nonnull @rk3288_pmu_pwr_mode_con) #8
  %24 = load ptr, ptr @sgrf_regmap, align 4
  %25 = call i32 @regmap_write(ptr noundef %24, i32 noundef 0, i32 noundef 20971840) #8
  %26 = load ptr, ptr @sgrf_regmap, align 4
  %27 = call i32 @regmap_write(ptr noundef %26, i32 noundef 64, i32 noundef 65536) #8
  %28 = load ptr, ptr @sgrf_regmap, align 4
  %29 = load i32, ptr @rk3288_bootram_phy, align 4
  %30 = call i32 @regmap_write(ptr noundef %28, i32 noundef 288, i32 noundef %29) #8
  %31 = load ptr, ptr @pmu_regmap, align 4
  %32 = call i32 @regmap_write(ptr noundef %31, i32 noundef 4, i32 noundef 9) #8
  %33 = load ptr, ptr @pmu_regmap, align 4
  %34 = call i32 @regmap_write(ptr noundef %33, i32 noundef 40, i32 noundef 720000) #8
  %35 = load ptr, ptr @pmu_regmap, align 4
  %36 = call i32 @regmap_write(ptr noundef %35, i32 noundef 32, i32 noundef 0) #8
  %37 = load ptr, ptr @pmu_regmap, align 4
  %38 = call i32 @regmap_write(ptr noundef %37, i32 noundef 24, i32 noundef 1671503) #8
  %39 = load ptr, ptr @pmu_regmap, align 4
  %40 = call i32 @regmap_write(ptr noundef %39, i32 noundef 144, i32 noundef 6) #8
  %41 = call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @rockchip_lpmode_enter) #8
  %42 = load ptr, ptr @sgrf_regmap, align 4
  %43 = load i32, ptr @rk3288_sgrf_cpu_con0, align 4
  %44 = or i32 %43, 65536
  %45 = call i32 @regmap_write(ptr noundef %42, i32 noundef 64, i32 noundef %44) #8
  %46 = load ptr, ptr @pmu_regmap, align 4
  %47 = load i32, ptr @rk3288_pmu_pwr_mode_con, align 4
  %48 = call i32 @regmap_write(ptr noundef %46, i32 noundef 24, i32 noundef %47) #8
  %49 = load ptr, ptr @sgrf_regmap, align 4
  %50 = load i32, ptr @rk3288_sgrf_soc_con0, align 4
  %51 = or i32 %50, 20971520
  %52 = call i32 @regmap_write(ptr noundef %49, i32 noundef 0, i32 noundef %51) #8
  call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #8, !srcloc !12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @rk3288_suspend_finish() #4 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_lpmode_enter(i32 noundef %0) #5 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %2() #8
  %3 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %4 = tail call i32 %3() #8
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rockchip_lpmode_enter) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_slp_cpu_resume() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_resume() #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!9 = !{i64 2147911068, i64 2147911091, i64 2147911123, i64 2147911155, i64 2147911193, i64 2147911223}
!10 = !{i64 1086}
!11 = !{i64 2153583403}
!12 = !{i64 2153583451}
