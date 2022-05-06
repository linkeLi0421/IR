; ModuleID = '/llk/IR/drivers/amba/tegra-ahb.c_pt.bc'
source_filename = "../drivers/amba/tegra-ahb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_ahb_enable_smmu:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_ahb_enable_smmu\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_ahb_enable_smmu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_ahb = type { ptr, ptr, [0 x i32] }

@tegra_ahb_driver = internal global %struct.platform_driver { ptr @tegra_ahb_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_ahb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_ahb_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__kstrtab_tegra_ahb_enable_smmu = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_ahb_enable_smmu = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_ahb_enable_smmu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_ahb_enable_smmu to i32), ptr @__kstrtab_tegra_ahb_enable_smmu, ptr @__kstrtabns_tegra_ahb_enable_smmu }, section "___ksymtab+tegra_ahb_enable_smmu", align 4
@__initcall__kmod_tegra_ahb__162_284_tegra_ahb_driver_init6 = internal global ptr @tegra_ahb_driver_init, section ".initcall6.init", align 4
@__exitcall_tegra_ahb_driver_exit = internal global ptr @tegra_ahb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [49 x i8] c"tegra_ahb.author=Hiroshi DOYU <hdoyu@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [39 x i8] c"tegra_ahb.description=Tegra AHB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [38 x i8] c"tegra_ahb.file=drivers/amba/tegra-ahb\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [25 x i8] c"tegra_ahb.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias167 = internal constant [35 x i8] c"tegra_ahb.alias=platform:tegra-ahb\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"tegra-ahb\00", align 1
@tegra_ahb_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-ahb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-ahb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@tegra_ahb_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_ahb_suspend, ptr @tegra_ahb_resume, ptr @tegra_ahb_suspend, ptr @tegra_ahb_resume, ptr @tegra_ahb_suspend, ptr @tegra_ahb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_ahb_suspend, ptr @tegra_ahb_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"incorrect AHB base address in DT data - enabling workaround\0A\00", align 1
@tegra_ahb_gizmo = internal unnamed_addr constant [29 x i32] [i32 4, i32 8, i32 16, i32 20, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 64, i32 72, i32 76, i32 100, i32 116, i32 120, i32 124, i32 128, i32 132, i32 136, i32 140, i32 220, i32 224, i32 228, i32 232, i32 240, i32 244, i32 252], align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias167, ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_tegra_ahb_driver_exit, ptr @__initcall__kmod_tegra_ahb__162_284_tegra_ahb_driver_init6, ptr @__ksymtab_tegra_ahb_enable_smmu, ptr @tegra_ahb_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_ahb_enable_smmu(ptr noundef %0) #0 {
  %2 = tail call ptr @driver_find_device(ptr noundef getelementptr inbounds (%struct.platform_driver, ptr @tegra_ahb_driver, i32 0, i32 5), ptr noundef null, ptr noundef %0, ptr noundef nonnull @device_match_of_node) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 224
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %10 = or i32 %9, 131072
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #4, !srcloc !11
  br label %13

13:                                               ; preds = %4, %1
  %14 = phi i32 [ 0, %4 ], [ -517, %1 ]
  ret i32 %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_ahb_driver_init() #1 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_ahb_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_ahb_driver_exit() #1 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_ahb_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @driver_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_of_node(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_ahb_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 124, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %80, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %6, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  %13 = load i32, ptr %6, align 4
  %14 = add i32 %13, -4
  store i32 %14, ptr %6, align 4
  br label %15

15:                                               ; preds = %12, %8, %5
  %16 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %6) #4
  store ptr %16, ptr %3, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  br label %80

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tegra_ahb, ptr %3, i32 0, i32 1
  store ptr %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %22, align 8
  %23 = getelementptr i8, ptr %16, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %25 = or i32 %24, 262276
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr i8, ptr %26, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #4, !srcloc !11
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 32
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %31 = or i32 %30, 262144
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #4, !srcloc !11
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr i8, ptr %34, i32 124
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %37 = or i32 %36, 262144
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr i8, ptr %38, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #4, !srcloc !11
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr i8, ptr %40, i32 128
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %43 = or i32 %42, 262144
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr i8, ptr %44, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #4, !srcloc !11
  %46 = load ptr, ptr %3, align 4
  %47 = getelementptr i8, ptr %46, i32 8
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %49 = or i32 %48, -536477632
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %50 = load ptr, ptr %3, align 4
  %51 = getelementptr i8, ptr %50, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #4, !srcloc !11
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr i8, ptr %52, i32 240
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %55 = and i32 %54, 41938943
  %56 = or i32 %55, -1786769408
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr i8, ptr %57, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #4, !srcloc !11
  %59 = load ptr, ptr %3, align 4
  %60 = getelementptr i8, ptr %59, i32 244
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %62 = and i32 %61, 41938943
  %63 = or i32 %62, -1719660544
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %64 = load ptr, ptr %3, align 4
  %65 = getelementptr i8, ptr %64, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #4, !srcloc !11
  %66 = load ptr, ptr %3, align 4
  %67 = getelementptr i8, ptr %66, i32 228
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %69 = and i32 %68, 41938943
  %70 = or i32 %69, -981463040
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %71 = load ptr, ptr %3, align 4
  %72 = getelementptr i8, ptr %71, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #4, !srcloc !11
  %73 = load ptr, ptr %3, align 4
  %74 = getelementptr i8, ptr %73, i32 232
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %76 = and i32 %75, 41938943
  %77 = or i32 %76, -914354176
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %78 = load ptr, ptr %3, align 4
  %79 = getelementptr i8, ptr %78, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #4, !srcloc !11
  br label %80

80:                                               ; preds = %20, %18, %1
  %81 = phi i32 [ %19, %18 ], [ 0, %20 ], [ -12, %1 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_ahb_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ 0, %1 ], [ %12, %4 ]
  %6 = getelementptr [29 x i32], ptr @tegra_ahb_gizmo, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 %7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %11 = getelementptr %struct.tegra_ahb, ptr %3, i32 0, i32 2, i32 %5
  store i32 %10, ptr %11, align 4
  %12 = add nuw nsw i32 %5, 1
  %13 = icmp eq i32 %12, 29
  br i1 %13, label %14, label %4

14:                                               ; preds = %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_ahb_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ 0, %1 ], [ %12, %4 ]
  %6 = getelementptr %struct.tegra_ahb, ptr %3, i32 0, i32 2, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [29 x i32], ptr @tegra_ahb_gizmo, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %7) #4, !srcloc !11
  %12 = add nuw nsw i32 %5, 1
  %13 = icmp eq i32 %12, 29
  br i1 %13, label %14, label %4

14:                                               ; preds = %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 3625855}
!9 = !{i64 2151290103}
!10 = !{i64 2151290460}
!11 = !{i64 3625437}
