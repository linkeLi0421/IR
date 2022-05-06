; ModuleID = '/llk/IR/drivers/phy/broadcom/phy-bcm-cygnus-pcie.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-bcm-cygnus-pcie.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.cygnus_pcie_phy_core = type { ptr, ptr, %struct.mutex, [2 x %struct.cygnus_pcie_phy] }
%struct.cygnus_pcie_phy = type { ptr, i32, ptr }

@__initcall__kmod_phy_bcm_cygnus_pcie__248_215_cygnus_pcie_phy_driver_init6 = internal global ptr @cygnus_pcie_phy_driver_init, section ".initcall6.init", align 4
@cygnus_pcie_phy_driver = internal global %struct.platform_driver { ptr @cygnus_pcie_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cygnus_pcie_phy_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_cygnus_pcie_phy_driver_exit = internal global ptr @cygnus_pcie_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [55 x i8] c"phy_bcm_cygnus_pcie.author=Ray Jui <rjui@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [64 x i8] c"phy_bcm_cygnus_pcie.description=Broadcom Cygnus PCIe PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [66 x i8] c"phy_bcm_cygnus_pcie.file=drivers/phy/broadcom/phy-bcm-cygnus-pcie\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [35 x i8] c"phy_bcm_cygnus_pcie.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"cygnus-pcie-phy\00", align 1
@cygnus_pcie_phy_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"PHY no child node\0A\00", align 1
@cygnus_pcie_phy_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"&core->lock\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"missing reg property for %pOFn\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid PHY id: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"duplicated PHY id: %u\0A\00", align 1
@cygnus_pcie_phy_ops = internal constant %struct.phy_ops { ptr null, ptr null, ptr @cygnus_pcie_phy_power_on, ptr @cygnus_pcie_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"failed to register PHY provider\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"PCIe PHY %d invalid\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_cygnus_pcie_phy_driver_exit, ptr @__initcall__kmod_phy_bcm_cygnus_pcie__248_215_cygnus_pcie_phy_driver_init6, ptr @cygnus_pcie_phy_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cygnus_pcie_phy_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cygnus_pcie_phy_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cygnus_pcie_phy_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cygnus_pcie_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cygnus_pcie_phy_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef null) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %1
  %9 = phi i32 [ %11, %8 ], [ 0, %1 ]
  %10 = phi ptr [ %12, %8 ], [ %6, %1 ]
  %11 = add i32 %9, 1
  %12 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef nonnull %10) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %8

14:                                               ; preds = %8
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %14, %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  br label %65

17:                                               ; preds = %14
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 52, i32 noundef 3520) #5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %65, label %20

20:                                               ; preds = %17
  store ptr %3, ptr %18, align 4
  %21 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %22 = getelementptr inbounds %struct.cygnus_pcie_phy_core, ptr %18, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = ptrtoint ptr %21 to i32
  br label %65

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.cygnus_pcie_phy_core, ptr %18, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %27, ptr noundef nonnull @.str.2, ptr noundef nonnull @cygnus_pcie_phy_probe.__key) #5
  %28 = tail call ptr @of_get_next_available_child(ptr noundef %5, ptr noundef null) #5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %57, label %30

30:                                               ; preds = %51, %26
  %31 = phi ptr [ %55, %51 ], [ %28, %26 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %31, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull %31) #6
  br label %63

35:                                               ; preds = %30
  %36 = load i32, ptr %2, align 4
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %36) #6
  br label %63

39:                                               ; preds = %35
  %40 = getelementptr %struct.cygnus_pcie_phy_core, ptr %18, i32 0, i32 3, i32 %36
  %41 = getelementptr %struct.cygnus_pcie_phy_core, ptr %18, i32 0, i32 3, i32 %36, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %36) #6
  br label %63

45:                                               ; preds = %39
  %46 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef nonnull %31, ptr noundef nonnull @cygnus_pcie_phy_ops) #5
  store ptr %46, ptr %41, align 4
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #6
  %49 = load ptr, ptr %41, align 4
  %50 = ptrtoint ptr %49 to i32
  br label %63

51:                                               ; preds = %45
  store ptr %18, ptr %40, align 4
  %52 = load i32, ptr %2, align 4
  %53 = getelementptr %struct.cygnus_pcie_phy_core, ptr %18, i32 0, i32 3, i32 %36, i32 1
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 8
  store ptr %40, ptr %54, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %55 = call ptr @of_get_next_available_child(ptr noundef %5, ptr noundef nonnull %31) #5
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %30

57:                                               ; preds = %51, %26
  %58 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %18, ptr %58, align 8
  %59 = call ptr @__devm_of_phy_provider_register(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #6
  %62 = ptrtoint ptr %59 to i32
  br label %65

63:                                               ; preds = %48, %44, %38, %34
  %64 = phi i32 [ %50, %48 ], [ -22, %44 ], [ -22, %38 ], [ -22, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  call void @of_node_put(ptr noundef nonnull %31) #5
  br label %65

65:                                               ; preds = %63, %61, %57, %24, %17, %16
  %66 = phi i32 [ -19, %16 ], [ %25, %24 ], [ %64, %63 ], [ %62, %61 ], [ -12, %17 ], [ 0, %57 ]
  ret i32 %66
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cygnus_pcie_phy_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @cygnus_pcie_power_config(ptr noundef %3, i1 noundef zeroext true)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cygnus_pcie_phy_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @cygnus_pcie_power_config(ptr noundef %3, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cygnus_pcie_power_config(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.cygnus_pcie_phy_core, ptr %3, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #5
  %5 = getelementptr inbounds %struct.cygnus_pcie_phy, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %8 [
    i32 0, label %11
    i32 1, label %7
  ]

7:                                                ; preds = %2
  br label %11

8:                                                ; preds = %2
  tail call void @mutex_unlock(ptr noundef %4) #5
  %9 = load ptr, ptr %3, align 4
  %10 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef %10) #6
  br label %25

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 10, %7 ], [ 2, %2 ]
  %13 = getelementptr inbounds %struct.cygnus_pcie_phy_core, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5
  tail call void asm sideeffect "dsb ", "~{memory}"() #5
  %16 = shl nuw nsw i32 1, %12
  br i1 %1, label %17, label %21

17:                                               ; preds = %11
  %18 = xor i32 %16, -1
  %19 = and i32 %15, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %20 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #5, !srcloc !10
  tail call void @msleep(i32 noundef 50) #5
  br label %24

21:                                               ; preds = %11
  %22 = or i32 %15, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %23 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #5, !srcloc !10
  br label %24

24:                                               ; preds = %21, %17
  tail call void @mutex_unlock(ptr noundef %4) #5
  br label %25

25:                                               ; preds = %24, %8
  %26 = phi i32 [ -22, %8 ], [ 0, %24 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!9 = !{i64 2153545776}
!10 = !{i64 2386682}
!11 = !{i64 2153546513}
