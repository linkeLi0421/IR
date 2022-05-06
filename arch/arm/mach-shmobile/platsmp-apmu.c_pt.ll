; ModuleID = '/llk/IR/arch/arm/mach-shmobile/platsmp-apmu.c_pt.bc'
source_filename = "../arch/arm/mach-shmobile/platsmp-apmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.71 = type { ptr, i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@shmobile_suspend_ops = external dso_local local_unnamed_addr global %struct.platform_suspend_ops, align 4
@.str = private unnamed_addr constant [13 x i8] c"renesas,apmu\00", align 1
@apmu_smp_ops = internal global %struct.smp_operations { ptr null, ptr @shmobile_smp_apmu_prepare_cpus_dt, ptr null, ptr @shmobile_smp_apmu_boot_secondary, ptr @shmobile_smp_apmu_cpu_kill, ptr @shmobile_smp_apmu_cpu_die, ptr @shmobile_smp_cpu_can_disable, ptr null }, section ".init.data", align 4
@__cpu_method_of_table_shmobile_smp_apmu = internal constant %struct.of_cpu_method { ptr @.str, ptr @apmu_smp_ops }, section "__cpu_method_of_table", align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@apmu_cpus = internal unnamed_addr global [16 x %struct.anon.71] zeroinitializer, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@shmobile_boot_fn = external dso_local local_unnamed_addr global i32, align 4
@shmobile_boot_fn_gen2 = external dso_local local_unnamed_addr global i32, align 4
@apmu_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,apmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"cpus\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__cpu_method_of_table_shmobile_smp_apmu], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @shmobile_smp_apmu_suspend_init() local_unnamed_addr #0 section ".init.text" {
  store ptr @shmobile_smp_apmu_enter_suspend, ptr getelementptr inbounds (%struct.platform_suspend_ops, ptr @shmobile_suspend_ops, i32 0, i32 4), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmobile_smp_apmu_enter_suspend(i32 noundef %0) #1 {
  %2 = tail call ptr @llvm.thread.pointer() #7
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = tail call i32 @cpu_suspend(i32 noundef %4, ptr noundef nonnull @shmobile_smp_apmu_do_suspend) #7
  %6 = tail call i32 asm sideeffect "mrc    p15, 0, $0, c1, c0, 0\0A       orr     $0, $0, $1\0A       mcr     p15, 0, $0, c1, c0, 0\0A       mrc     p15, 0, $0, c1, c0, 1\0A       orr     $0, $0, $2\0A       mcr     p15, 0, $0, c1, c0, 1\0A", "=&r,Ir,Ir,~{cc}"(i32 4, i32 64) #7, !srcloc !8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmobile_smp_apmu_do_suspend(i32 noundef %0) #1 {
  %2 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @cpu_resume to i32), i32 -2130706432, i32 8454144) #8, !srcloc !9
  tail call void @shmobile_smp_hook(i32 noundef %0, i32 noundef %2, i32 noundef 0) #7
  %3 = getelementptr [16 x %struct.anon.71], ptr @apmu_cpus, i32 0, i32 %0
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr [16 x %struct.anon.71], ptr @apmu_cpus, i32 0, i32 %0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 4
  %10 = add i32 %9, 256
  %11 = getelementptr i8, ptr %4, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 3) #7, !srcloc !10
  br label %12

12:                                               ; preds = %6, %1
  %13 = tail call i32 asm sideeffect "       mrc     p15, 0, $0, c1, c0, 0\0A       bic     $0, $0, $1\0A       mcr     p15, 0, $0, c1, c0, 0\0A", "=&r,Ir,~{cc}"(i32 4) #7, !srcloc !11
  %14 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2), align 4
  tail call void %14() #7
  %15 = tail call i32 asm sideeffect "       mrc     p15, 0, $0, c1, c0, 1\0A       bic     $0, $0, $1\0A       mcr     p15, 0, $0, c1, c0, 1\0A", "=&r,Ir,~{cc}"(i32 64) #7, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %16 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %17 = tail call i32 %16() #7
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_smp_hook(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_resume() #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @shmobile_smp_apmu_prepare_cpus_dt(i32 noundef %0) #5 section ".init.text" {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.resource, align 4
  %5 = alloca i32, align 4
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @shmobile_smp_boot to i32), i32 -2130706432, i32 8454144) #8, !srcloc !9
  store i32 %6, ptr @shmobile_boot_fn, align 4
  store i32 %6, ptr @shmobile_boot_fn_gen2, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false) #7, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !15
  %7 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @apmu_ids, ptr noundef null) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %86, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  br label %11

11:                                               ; preds = %83, %9
  %12 = phi ptr [ %7, %9 ], [ %84, %83 ]
  br label %13

13:                                               ; preds = %29, %11
  %14 = phi i32 [ 0, %11 ], [ %30, %29 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #7, !annotation !15
  %15 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %12, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef %14, ptr noundef nonnull %3) #7
  %16 = icmp ne i32 %15, 0
  %17 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #7
  %18 = icmp eq ptr %17, null
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %13
  %21 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %17, ptr noundef nonnull @.str.2, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #7
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, ptr %5, align 4
  %25 = load i32, ptr @__cpu_logical_map, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  call void @of_node_put(ptr noundef nonnull %17) #7
  br label %32

28:                                               ; preds = %23, %20
  call void @of_node_put(ptr noundef nonnull %17) #7
  br label %29

29:                                               ; preds = %28, %13
  %30 = add nuw nsw i32 %14, 1
  %31 = icmp eq i32 %30, 16
  br i1 %31, label %83, label %13

32:                                               ; preds = %80, %27
  %33 = phi i32 [ 0, %27 ], [ %81, %80 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #7, !annotation !15
  %34 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %12, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef %33, ptr noundef nonnull %2) #7
  %35 = icmp ne i32 %34, 0
  %36 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  %37 = icmp eq ptr %36, null
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %80, label %39

39:                                               ; preds = %32
  %40 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %36, ptr noundef nonnull @.str.2, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #7
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %79

42:                                               ; preds = %39
  %43 = load i32, ptr %5, align 4
  %44 = load i32, ptr @nr_cpu_ids, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %79, label %46

46:                                               ; preds = %51, %42
  %47 = phi i32 [ %52, %51 ], [ 0, %42 ]
  %48 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %43
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = add nuw i32 %47, 1
  %53 = icmp eq i32 %52, %44
  br i1 %53, label %79, label %46

54:                                               ; preds = %46
  %55 = icmp sgt i32 %47, -1
  br i1 %55, label %56, label %79

56:                                               ; preds = %54
  %57 = call i32 @of_address_to_resource(ptr noundef nonnull %12, i32 noundef 0, ptr noundef nonnull %4) #7
  %58 = icmp ne i32 %57, 0
  %59 = icmp ugt i32 %47, 15
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %79, label %61

61:                                               ; preds = %56
  %62 = getelementptr [16 x %struct.anon.71], ptr @apmu_cpus, i32 0, i32 %47
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load i32, ptr %4, align 4
  %67 = load i32, ptr %10, align 4
  %68 = sub i32 1, %66
  %69 = add i32 %68, %67
  %70 = call ptr @ioremap(i32 noundef %66, i32 noundef %69) #7
  store ptr %70, ptr %62, align 4
  %71 = getelementptr [16 x %struct.anon.71], ptr @apmu_cpus, i32 0, i32 %47, i32 1
  store i32 %33, ptr %71, align 4
  %72 = getelementptr i8, ptr %70, i32 384
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #7, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  %74 = shl i32 1048576, %33
  %75 = or i32 %74, %73
  %76 = or i32 %75, 17301504
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  call void @arm_heavy_mb() #7
  %77 = load ptr, ptr %62, align 4
  %78 = getelementptr i8, ptr %77, i32 384
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #7, !srcloc !10
  br label %79

79:                                               ; preds = %65, %61, %56, %54, %51, %42, %39
  call void @of_node_put(ptr noundef nonnull %36) #7
  br label %80

80:                                               ; preds = %79, %32
  %81 = add nuw nsw i32 %33, 1
  %82 = icmp eq i32 %81, 16
  br i1 %82, label %83, label %32

83:                                               ; preds = %80, %29
  %84 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %12, ptr noundef nonnull @apmu_ids, ptr noundef null) #7
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %11

86:                                               ; preds = %83, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  call void @rcar_gen2_pm_init() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmobile_smp_apmu_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @shmobile_boot_apmu to i32), i32 -2130706432, i32 8454144) #8, !srcloc !9
  tail call void @shmobile_smp_hook(i32 noundef %0, i32 noundef %3, i32 noundef 0) #7
  %4 = getelementptr [16 x %struct.anon.71], ptr @apmu_cpus, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr [16 x %struct.anon.71], ptr @apmu_cpus, i32 0, i32 %0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = shl nuw i32 1, %9
  %11 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #7, !srcloc !10
  br label %12

12:                                               ; preds = %12, %7
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %12

15:                                               ; preds = %12, %2
  %16 = phi i32 [ -22, %2 ], [ 0, %12 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmobile_smp_apmu_cpu_kill(i32 noundef %0) #1 {
  %2 = getelementptr [16 x %struct.anon.71], ptr @apmu_cpus, i32 0, i32 %0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr [16 x %struct.anon.71], ptr @apmu_cpus, i32 0, i32 %0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %3, i32 64
  %9 = shl i32 %7, 2
  br label %10

10:                                               ; preds = %16, %5
  %11 = phi i32 [ 0, %5 ], [ %18, %16 ]
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !16
  %13 = lshr i32 %12, %9
  %14 = and i32 %13, 3
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #7
  %18 = add nuw nsw i32 %11, 1
  %19 = icmp eq i32 %18, 1000
  br i1 %19, label %20, label %10

20:                                               ; preds = %16, %10, %1
  %21 = phi i32 [ -22, %1 ], [ 0, %16 ], [ 1, %10 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @shmobile_smp_apmu_cpu_die(i32 noundef %0) #1 {
  tail call void @shmobile_smp_hook(i32 noundef %0, i32 noundef 0, i32 noundef 0) #7
  %2 = getelementptr [16 x %struct.anon.71], ptr @apmu_cpus, i32 0, i32 %0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr [16 x %struct.anon.71], ptr @apmu_cpus, i32 0, i32 %0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 4
  %9 = add i32 %8, 256
  %10 = getelementptr i8, ptr %3, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 3) #7, !srcloc !10
  br label %11

11:                                               ; preds = %5, %1
  %12 = tail call i32 asm sideeffect "       mrc     p15, 0, $0, c1, c0, 0\0A       bic     $0, $0, $1\0A       mcr     p15, 0, $0, c1, c0, 0\0A", "=&r,Ir,~{cc}"(i32 4) #7, !srcloc !11
  %13 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2), align 4
  tail call void %13() #7
  %14 = tail call i32 asm sideeffect "       mrc     p15, 0, $0, c1, c0, 1\0A       bic     $0, $0, $1\0A       mcr     p15, 0, $0, c1, c0, 1\0A", "=&r,Ir,~{cc}"(i32 64) #7, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  tail call void @shmobile_smp_sleep() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @shmobile_smp_cpu_can_disable(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_gen2_pm_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_smp_boot() #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_boot_apmu() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_smp_sleep() local_unnamed_addr #2

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

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
!8 = !{i64 3698, i64 3739, i64 3776, i64 3824, i64 3872, i64 3909}
!9 = !{i64 2148786690, i64 2148786713, i64 2148786745, i64 2148786777, i64 2148786815, i64 2148786845}
!10 = !{i64 2452525}
!11 = !{i64 2327, i64 2370, i64 2401}
!12 = !{i64 2554, i64 2597, i64 2628}
!13 = !{i64 2153523521}
!14 = !{i64 2153523577}
!15 = !{!"auto-init"}
!16 = !{i64 2452943}
!17 = !{i64 2153526046}
!18 = !{i64 2153526518}
