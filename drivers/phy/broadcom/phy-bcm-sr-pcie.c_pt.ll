; ModuleID = '/llk/IR/drivers/phy/broadcom/phy-bcm-sr-pcie.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-bcm-sr-pcie.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.sr_pcie_phy_core = type { ptr, ptr, ptr, ptr, i32, [9 x %struct.sr_pcie_phy] }
%struct.sr_pcie_phy = type { ptr, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_bcm_sr_pcie__248_298_sr_pcie_phy_driver_init6 = internal global ptr @sr_pcie_phy_driver_init, section ".initcall6.init", align 4
@sr_pcie_phy_driver = internal global %struct.platform_driver { ptr @sr_pcie_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sr_pcie_phy_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sr_pcie_phy_driver_exit = internal global ptr @sr_pcie_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [54 x i8] c"phy_bcm_sr_pcie.author=Ray Jui <ray.jui@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [62 x i8] c"phy_bcm_sr_pcie.description=Broadcom Stingray PCIe PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [58 x i8] c"phy_bcm_sr_pcie.file=drivers/phy/broadcom/phy-bcm-sr-pcie\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [31 x i8] c"phy_bcm_sr_pcie.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"sr-pcie-phy\00", align 1
@sr_pcie_phy_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"brcm,sr-cdru\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"unable to find CDRU device\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"brcm,sr-mhb\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"unable to find MHB device\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"invalid PCIe PIPEMUX strap %u\0A\00", align 1
@sr_paxc_phy_ops = internal constant %struct.phy_ops { ptr @sr_paxc_phy_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sr_pcie_phy_ops = internal constant %struct.phy_ops { ptr @sr_pcie_phy_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to create PCIe PHY\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to register PHY provider\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Stingray PCIe PHY driver initialized\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"PAXC is not powered up\0A\00", align 1
@pipemux_table = internal unnamed_addr constant [14 x i8] c"\00\80\00\81\C3\FF\CD\FD\F0\C0B<\FCL", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"drivers/phy/broadcom/phy-bcm-sr-pcie.c\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_sr_pcie_phy_driver_exit, ptr @__initcall__kmod_phy_bcm_sr_pcie__248_298_sr_pcie_phy_driver_init6, ptr @sr_pcie_phy_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sr_pcie_phy_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sr_pcie_phy_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sr_pcie_phy_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sr_pcie_phy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_pcie_phy_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 128, i32 noundef 3520) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %122, label %8

8:                                                ; preds = %1
  store ptr %3, ptr %6, align 4
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %10 = getelementptr inbounds %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = ptrtoint ptr %9 to i32
  br label %122

14:                                               ; preds = %8
  %15 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.1) #6
  %16 = getelementptr inbounds %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.2) #7
  %20 = load ptr, ptr %16, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %122

22:                                               ; preds = %14
  %23 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.3) #6
  %24 = getelementptr inbounds %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 3
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.4) #7
  %28 = load ptr, ptr %24, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %122

30:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %31 = load ptr, ptr %10, align 4
  %32 = getelementptr i8, ptr %31, i32 268
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %34 = and i32 %33, 15
  store i32 %34, ptr %2, align 4
  %35 = icmp eq i32 %34, 15
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load ptr, ptr %16, align 4
  %38 = call i32 @regmap_read(ptr noundef %37, i32 noundef 92, ptr noundef nonnull %2) #6
  %39 = load i32, ptr %2, align 4
  %40 = lshr i32 %39, 19
  %41 = and i32 %40, 15
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i32 [ %41, %36 ], [ %34, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %44 = getelementptr inbounds %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 4
  store i32 %43, ptr %44, align 4
  %45 = icmp ult i32 %43, 14
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_ops) #6
  %48 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 0, i32 2
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %52, label %56

50:                                               ; preds = %42
  %51 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.5, i32 noundef %43) #7
  br label %122

52:                                               ; preds = %105, %98, %91, %84, %77, %70, %63, %56, %46
  %53 = phi ptr [ %48, %46 ], [ %61, %56 ], [ %68, %63 ], [ %75, %70 ], [ %82, %77 ], [ %89, %84 ], [ %96, %91 ], [ %103, %98 ], [ %110, %105 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #7
  %54 = load ptr, ptr %53, align 4
  %55 = ptrtoint ptr %54 to i32
  br label %122

56:                                               ; preds = %46
  %57 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 0
  store ptr %6, ptr %57, align 4
  %58 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 0, i32 1
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 8
  store ptr %57, ptr %59, align 8
  %60 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_ops) #6
  %61 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 1, i32 2
  store ptr %60, ptr %61, align 4
  %62 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %52, label %63

63:                                               ; preds = %56
  %64 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 1
  store ptr %6, ptr %64, align 4
  %65 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 1, i32 1
  store i32 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 8
  store ptr %64, ptr %66, align 8
  %67 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_ops) #6
  %68 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 2, i32 2
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %52, label %70

70:                                               ; preds = %63
  %71 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 2
  store ptr %6, ptr %71, align 4
  %72 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 2, i32 1
  store i32 2, ptr %72, align 4
  %73 = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 8
  store ptr %71, ptr %73, align 8
  %74 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_ops) #6
  %75 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 3, i32 2
  store ptr %74, ptr %75, align 4
  %76 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %52, label %77

77:                                               ; preds = %70
  %78 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 3
  store ptr %6, ptr %78, align 4
  %79 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 3, i32 1
  store i32 3, ptr %79, align 4
  %80 = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 8
  store ptr %78, ptr %80, align 8
  %81 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_ops) #6
  %82 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 4, i32 2
  store ptr %81, ptr %82, align 4
  %83 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %52, label %84

84:                                               ; preds = %77
  %85 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 4
  store ptr %6, ptr %85, align 4
  %86 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 4, i32 1
  store i32 4, ptr %86, align 4
  %87 = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 8
  store ptr %85, ptr %87, align 8
  %88 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_ops) #6
  %89 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 5, i32 2
  store ptr %88, ptr %89, align 4
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %52, label %91

91:                                               ; preds = %84
  %92 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 5
  store ptr %6, ptr %92, align 4
  %93 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 5, i32 1
  store i32 5, ptr %93, align 4
  %94 = getelementptr inbounds %struct.device, ptr %88, i32 0, i32 8
  store ptr %92, ptr %94, align 8
  %95 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_ops) #6
  %96 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 6, i32 2
  store ptr %95, ptr %96, align 4
  %97 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  br i1 %97, label %52, label %98

98:                                               ; preds = %91
  %99 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 6
  store ptr %6, ptr %99, align 4
  %100 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 6, i32 1
  store i32 6, ptr %100, align 4
  %101 = getelementptr inbounds %struct.device, ptr %95, i32 0, i32 8
  store ptr %99, ptr %101, align 8
  %102 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_ops) #6
  %103 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 7, i32 2
  store ptr %102, ptr %103, align 4
  %104 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %52, label %105

105:                                              ; preds = %98
  %106 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 7
  store ptr %6, ptr %106, align 4
  %107 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 7, i32 1
  store i32 7, ptr %107, align 4
  %108 = getelementptr inbounds %struct.device, ptr %102, i32 0, i32 8
  store ptr %106, ptr %108, align 8
  %109 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef null, ptr noundef nonnull @sr_paxc_phy_ops) #6
  %110 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 8, i32 2
  store ptr %109, ptr %110, align 4
  %111 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %111, label %52, label %112

112:                                              ; preds = %105
  %113 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 8
  store ptr %6, ptr %113, align 4
  %114 = getelementptr %struct.sr_pcie_phy_core, ptr %6, i32 0, i32 5, i32 8, i32 1
  store i32 8, ptr %114, align 4
  %115 = getelementptr inbounds %struct.device, ptr %109, i32 0, i32 8
  store ptr %113, ptr %115, align 8
  %116 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %116, align 8
  %117 = call ptr @__devm_of_phy_provider_register(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef nonnull @sr_pcie_phy_xlate) #6
  %118 = icmp ugt ptr %117, inttoptr (i32 -4096 to ptr)
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #7
  %120 = ptrtoint ptr %117 to i32
  br label %122

121:                                              ; preds = %112
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.8) #7
  br label %122

122:                                              ; preds = %121, %119, %52, %50, %26, %18, %12, %1
  %123 = phi i32 [ %13, %12 ], [ %21, %18 ], [ %29, %26 ], [ %120, %119 ], [ 0, %121 ], [ -5, %50 ], [ -12, %1 ], [ %55, %52 ]
  ret i32 %123
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sr_pcie_phy_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 8
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 209, i32 noundef 9, ptr noundef null) #6
  br label %14

11:                                               ; preds = %6
  %12 = getelementptr %struct.sr_pcie_phy_core, ptr %4, i32 0, i32 5, i32 %8, i32 2
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %10, %2
  %15 = phi ptr [ inttoptr (i32 -19 to ptr), %10 ], [ %13, %11 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %15
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_paxc_phy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sr_pcie_phy, ptr %4, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !11
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sr_pcie_phy_core, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef 448, ptr noundef nonnull %2) #6
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, 15
  %15 = icmp eq i32 %14, 15
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.9) #7
  br label %18

18:                                               ; preds = %16, %9, %1
  %19 = phi i32 [ -19, %16 ], [ -22, %1 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sr_pcie_phy_init(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sr_pcie_phy, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sr_pcie_phy_core, ptr %4, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [14 x i8], ptr @pipemux_table, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 1, %6
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 -19, i32 0
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2482586}
!9 = !{i64 2153656604}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"auto-init"}
