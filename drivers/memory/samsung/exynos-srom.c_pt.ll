; ModuleID = '/llk/IR/drivers/memory/samsung/exynos-srom.c_pt.bc'
source_filename = "../drivers/memory/samsung/exynos-srom.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.exynos_srom = type { ptr, ptr, ptr }
%struct.exynos_srom_reg_dump = type { i32, i32 }

@__initcall__kmod_exynos_srom__166_212_exynos_srom_driver_init6 = internal global ptr @exynos_srom_driver_init, section ".initcall6.init", align 4
@exynos_srom_driver = internal global %struct.platform_driver { ptr @exynos_srom_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @of_exynos_srom_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_srom_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"exynos-srom\00", align 1
@of_exynos_srom_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-srom\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@exynos_srom_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @exynos_srom_suspend, ptr @exynos_srom_resume, ptr @exynos_srom_suspend, ptr @exynos_srom_resume, ptr @exynos_srom_suspend, ptr @exynos_srom_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"could not find device info\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"iomap of exynos srom controller failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Could not decode bank configuration for %pOFn\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"reg-io-width\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"samsung,srom-page-mode\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"samsung,srom-timing\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_exynos_srom__166_212_exynos_srom_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos_srom_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_srom_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_srom_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [6 x i32], align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #8
  br label %102

10:                                               ; preds = %1
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 12, i32 noundef 3520) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %102, label %13

13:                                               ; preds = %10
  store ptr %5, ptr %11, align 4
  %14 = tail call ptr @of_iomap(ptr noundef nonnull %7, i32 noundef 0) #7
  %15 = getelementptr inbounds %struct.exynos_srom, ptr %11, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #8
  br label %102

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %19, align 8
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 40) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.exynos_srom, ptr %11, i32 0, i32 2
  store ptr null, ptr %24, align 4
  %25 = load ptr, ptr %15, align 4
  tail call void @iounmap(ptr noundef %25) #7
  br label %102

26:                                               ; preds = %18
  store i32 0, ptr %21, align 8
  %27 = getelementptr %struct.exynos_srom_reg_dump, ptr %21, i32 1
  store i32 4, ptr %27, align 8
  %28 = getelementptr %struct.exynos_srom_reg_dump, ptr %21, i32 2
  store i32 8, ptr %28, align 8
  %29 = getelementptr %struct.exynos_srom_reg_dump, ptr %21, i32 3
  store i32 12, ptr %29, align 8
  %30 = getelementptr %struct.exynos_srom_reg_dump, ptr %21, i32 4
  store i32 16, ptr %30, align 8
  %31 = getelementptr inbounds %struct.exynos_srom, ptr %11, i32 0, i32 2
  store ptr %21, ptr %31, align 4
  %32 = tail call ptr @of_get_next_child(ptr noundef nonnull %7, ptr noundef null) #7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %100, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 1
  %36 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 2
  %37 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 3
  %38 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 4
  %39 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 5
  br label %40

40:                                               ; preds = %96, %34
  %41 = phi i1 [ true, %96 ], [ false, %34 ]
  %42 = phi ptr [ %97, %96 ], [ %32, %34 ]
  br label %43

43:                                               ; preds = %55, %40
  %44 = phi ptr [ %94, %55 ], [ %42, %40 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #7, !annotation !8
  %45 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %44, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %96

47:                                               ; preds = %43
  %48 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %44, ptr noundef nonnull @.str.5, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 1, ptr %3, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = call ptr @of_find_property(ptr noundef nonnull %44, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %53 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %44, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, i32 noundef 6, i32 noundef 0) #7
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %96

55:                                               ; preds = %51
  %56 = icmp ne ptr %52, null
  %57 = zext i1 %56 to i32
  %58 = load i32, ptr %2, align 4
  %59 = shl i32 %58, 2
  store i32 %59, ptr %2, align 4
  %60 = load i32, ptr %3, align 4
  %61 = icmp eq i32 %60, 2
  %62 = select i1 %61, i32 9, i32 8
  %63 = load ptr, ptr %15, align 4
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #7, !srcloc !9
  %65 = load i32, ptr %2, align 4
  %66 = shl i32 15, %65
  %67 = xor i32 %66, -1
  %68 = and i32 %64, %67
  %69 = shl i32 %62, %65
  %70 = or i32 %68, %69
  %71 = load ptr, ptr %15, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %70) #7, !srcloc !10
  %72 = load i32, ptr %4, align 4
  %73 = shl i32 %72, 4
  %74 = or i32 %73, %57
  %75 = load i32, ptr %35, align 4
  %76 = shl i32 %75, 8
  %77 = or i32 %74, %76
  %78 = load i32, ptr %36, align 4
  %79 = shl i32 %78, 12
  %80 = or i32 %77, %79
  %81 = load i32, ptr %37, align 4
  %82 = shl i32 %81, 16
  %83 = or i32 %80, %82
  %84 = load i32, ptr %38, align 4
  %85 = shl i32 %84, 24
  %86 = or i32 %83, %85
  %87 = load i32, ptr %39, align 4
  %88 = shl i32 %87, 28
  %89 = or i32 %86, %88
  %90 = load ptr, ptr %15, align 4
  %91 = getelementptr i8, ptr %90, i32 4
  %92 = load i32, ptr %2, align 4
  %93 = getelementptr i8, ptr %91, i32 %92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %89) #7, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %94 = call ptr @of_get_next_child(ptr noundef nonnull %7, ptr noundef nonnull %44) #7
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %43

96:                                               ; preds = %51, %43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull %44) #8
  %97 = call ptr @of_get_next_child(ptr noundef nonnull %7, ptr noundef nonnull %44) #7
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %40

99:                                               ; preds = %55
  br i1 %41, label %102, label %100

100:                                              ; preds = %99, %26
  %101 = call i32 @of_platform_populate(ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef %5) #7
  br label %102

102:                                              ; preds = %100, %99, %96, %23, %17, %10, %9
  %103 = phi i32 [ %101, %100 ], [ -12, %23 ], [ -12, %17 ], [ -22, %9 ], [ -12, %10 ], [ 0, %99 ], [ 0, %96 ]
  ret i32 %103
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_srom_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_srom, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.exynos_srom, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %11 = getelementptr inbounds %struct.exynos_srom_reg_dump, ptr %7, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr %struct.exynos_srom_reg_dump, ptr %7, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %5, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %16 = getelementptr %struct.exynos_srom_reg_dump, ptr %7, i32 1, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr %struct.exynos_srom_reg_dump, ptr %7, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %5, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %21 = getelementptr %struct.exynos_srom_reg_dump, ptr %7, i32 2, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr %struct.exynos_srom_reg_dump, ptr %7, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %5, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %26 = getelementptr %struct.exynos_srom_reg_dump, ptr %7, i32 3, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr %struct.exynos_srom_reg_dump, ptr %7, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %5, i32 %28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %31 = getelementptr %struct.exynos_srom_reg_dump, ptr %7, i32 4, i32 1
  store i32 %30, ptr %31, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_srom_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_srom, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.exynos_srom, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %8 = getelementptr inbounds %struct.exynos_srom_reg_dump, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %7, align 4
  %11 = getelementptr i8, ptr %5, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #7, !srcloc !10
  %12 = getelementptr %struct.exynos_srom_reg_dump, ptr %7, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %13 = getelementptr %struct.exynos_srom_reg_dump, ptr %7, i32 1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %12, align 4
  %16 = getelementptr i8, ptr %5, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #7, !srcloc !10
  %17 = getelementptr %struct.exynos_srom_reg_dump, ptr %7, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %18 = getelementptr %struct.exynos_srom_reg_dump, ptr %7, i32 2, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %17, align 4
  %21 = getelementptr i8, ptr %5, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #7, !srcloc !10
  %22 = getelementptr %struct.exynos_srom_reg_dump, ptr %7, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %23 = getelementptr %struct.exynos_srom_reg_dump, ptr %7, i32 3, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %22, align 4
  %26 = getelementptr i8, ptr %5, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !10
  %27 = getelementptr %struct.exynos_srom_reg_dump, ptr %7, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %28 = getelementptr %struct.exynos_srom_reg_dump, ptr %7, i32 4, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %27, align 4
  %31 = getelementptr i8, ptr %5, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #7, !srcloc !10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{i64 364770}
!10 = !{i64 364352}
!11 = !{i64 2151457832}
!12 = !{i64 2151458023}
