; ModuleID = '/llk/IR/drivers/net/mdio/mdio-bcm-unimac.c_pt.bc'
source_filename = "../drivers/net/mdio/mdio-bcm-unimac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.unimac_mdio_priv = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.unimac_mdio_pdata = type { i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@unimac_mdio_ids = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-mdio-v5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-mdio-v4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-mdio-v3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-mdio-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-mdio-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,unimac-mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author273 = internal constant [28 x i8] c"author=Broadcom Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description274 = internal constant [48 x i8] c"description=Broadcom UniMAC MDIO bus controller\00", section ".modinfo", align 1
@__UNIQUE_ID_license275 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias276 = internal constant [27 x i8] c"alias=platform:unimac-mdio\00", section ".modinfo", align 1
@unimac_mdio_driver = internal global %struct.platform_driver { ptr @unimac_mdio_probe, ptr @unimac_mdio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @unimac_mdio_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @unimac_mdio_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"unimac-mdio\00", align 1
@unimac_mdio_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @unimac_mdio_suspend, ptr @unimac_mdio_resume, ptr @unimac_mdio_suspend, ptr @unimac_mdio_resume, ptr @unimac_mdio_suspend, ptr @unimac_mdio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to remap register\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"unimac MII bus\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"MDIO bus registration failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Broadcom UniMAC MDIO bus\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"\014Incorrect MDIO clock frequency, ignoring\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"%s has invalid PHY address\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"%s PHY address %i is too large\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias276, ptr @__UNIQUE_ID_author273, ptr @__UNIQUE_ID_description274, ptr @__UNIQUE_ID_license275], section "llvm.metadata"

@__mod_of__unimac_mdio_ids_device_table = dso_local alias [7 x %struct.of_device_id], ptr @unimac_mdio_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @unimac_mdio_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @unimac_mdio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unimac_mdio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 24, i32 noundef 3520) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %108, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %108, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %10, align 4
  %14 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 1, %13
  %17 = add i32 %16, %15
  %18 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %13, i32 noundef %17) #6
  %19 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %7, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  br label %108

22:                                               ; preds = %12
  %23 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef null) #6
  %24 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %7, i32 0, i32 4
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = ptrtoint ptr %23 to i32
  br label %108

28:                                               ; preds = %22
  %29 = tail call i32 @clk_prepare(ptr noundef %23) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %108

31:                                               ; preds = %28
  %32 = tail call i32 @clk_enable(ptr noundef %23) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @clk_unprepare(ptr noundef %23) #6
  br label %108

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %7, i32 0, i32 5
  %37 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef %36, i32 noundef 1, i32 noundef 0) #6
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 0, ptr %36, align 4
  br label %67

40:                                               ; preds = %35
  %41 = load i32, ptr %36, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %24, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @clk_get_rate(ptr noundef nonnull %44) #6
  %48 = load i32, ptr %36, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i32 [ %48, %46 ], [ %41, %43 ]
  %51 = phi i32 [ %47, %46 ], [ 250000000, %43 ]
  %52 = shl i32 %50, 1
  %53 = udiv i32 %51, %52
  %54 = add i32 %53, -1
  %55 = icmp ult i32 %54, 64
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %67

58:                                               ; preds = %49
  %59 = load ptr, ptr %19, align 4
  %60 = getelementptr i8, ptr %59, i32 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #6, !srcloc !8
  %62 = and i32 %61, -1009
  %63 = shl nuw nsw i32 %54, 4
  %64 = or i32 %62, %63
  %65 = load ptr, ptr %19, align 4
  %66 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #6, !srcloc !9
  br label %67

67:                                               ; preds = %58, %56, %40, %39
  %68 = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #6
  store ptr %68, ptr %7, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %105, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.mii_bus, ptr %68, i32 0, i32 3
  store ptr %7, ptr %71, align 8
  %72 = icmp eq ptr %4, null
  br i1 %72, label %86, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.unimac_mdio_pdata, ptr %4, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.mii_bus, ptr %68, i32 0, i32 1
  store ptr %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.unimac_mdio_pdata, ptr %4, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %7, i32 0, i32 2
  store ptr %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.unimac_mdio_pdata, ptr %4, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %7, i32 0, i32 3
  store ptr %81, ptr %82, align 4
  %83 = load i32, ptr %4, align 4
  %84 = xor i32 %83, -1
  %85 = getelementptr inbounds %struct.mii_bus, ptr %68, i32 0, i32 13
  store i32 %84, ptr %85, align 8
  br label %90

86:                                               ; preds = %70
  %87 = getelementptr inbounds %struct.mii_bus, ptr %68, i32 0, i32 1
  store ptr @.str.3, ptr %87, align 4
  %88 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %7, i32 0, i32 3
  store ptr %7, ptr %88, align 4
  %89 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %7, i32 0, i32 2
  store ptr @unimac_mdio_poll, ptr %89, align 4
  br label %90

90:                                               ; preds = %86, %73
  %91 = getelementptr inbounds %struct.mii_bus, ptr %68, i32 0, i32 9
  store ptr %2, ptr %91, align 4
  %92 = getelementptr inbounds %struct.mii_bus, ptr %68, i32 0, i32 4
  store ptr @unimac_mdio_read, ptr %92, align 4
  %93 = getelementptr inbounds %struct.mii_bus, ptr %68, i32 0, i32 5
  store ptr @unimac_mdio_write, ptr %93, align 8
  %94 = getelementptr inbounds %struct.mii_bus, ptr %68, i32 0, i32 6
  store ptr @unimac_mdio_reset, ptr %94, align 4
  %95 = getelementptr inbounds %struct.mii_bus, ptr %68, i32 0, i32 2
  %96 = load ptr, ptr %0, align 8
  %97 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %95, i32 noundef 61, ptr noundef nonnull @.str.4, ptr noundef %96, i32 noundef %98)
  %100 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %68, ptr noundef %6) #6
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %90
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #7
  tail call void @mdiobus_free(ptr noundef nonnull %68) #6
  br label %105

103:                                              ; preds = %90
  %104 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %104, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.6) #7
  br label %108

105:                                              ; preds = %102, %67
  %106 = phi i32 [ %100, %102 ], [ -12, %67 ]
  %107 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %107) #6
  tail call void @clk_unprepare(ptr noundef %107) #6
  br label %108

108:                                              ; preds = %105, %103, %34, %28, %26, %21, %9, %1
  %109 = phi i32 [ %27, %26 ], [ %106, %105 ], [ 0, %103 ], [ -12, %21 ], [ -12, %1 ], [ -22, %9 ], [ %32, %34 ], [ %29, %28 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unimac_mdio_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @mdiobus_unregister(ptr noundef %4) #6
  %5 = load ptr, ptr %3, align 4
  tail call void @mdiobus_free(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unimac_mdio_poll(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %0, i32 0, i32 1
  br label %3

3:                                                ; preds = %9, %1
  %4 = phi i32 [ 1000, %1 ], [ %10, %9 ]
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !8
  %7 = and i32 %6, 536870912
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %10 = add nsw i32 %4, -1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %3

12:                                               ; preds = %9, %3
  %13 = phi i32 [ 0, %3 ], [ -110, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unimac_mdio_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = shl i32 %1, 21
  %7 = shl i32 %2, 16
  %8 = or i32 %6, %7
  %9 = or i32 %8, 134217728
  %10 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #6, !srcloc !9
  %12 = load ptr, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !8
  %14 = or i32 %13, 536870912
  %15 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #6, !srcloc !9
  %16 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %5, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %5, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %17(ptr noundef %19) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load ptr, ptr %10, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !8
  %25 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 14
  %26 = load i32, ptr %25, align 4
  %27 = shl nuw i32 1, %1
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = and i32 %24, 268435456
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %29, i1 true, i1 %31
  %33 = and i32 %24, 65535
  %34 = select i1 %32, i32 %33, i32 -5
  br label %35

35:                                               ; preds = %22, %3
  %36 = phi i32 [ %20, %3 ], [ %34, %22 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unimac_mdio_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = shl i32 %1, 21
  %8 = shl i32 %2, 16
  %9 = zext i16 %3 to i32
  %10 = or i32 %7, %8
  %11 = or i32 %10, %9
  %12 = or i32 %11, 67108864
  %13 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #6, !srcloc !9
  %15 = load ptr, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !8
  %17 = or i32 %16, 536870912
  %18 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #6, !srcloc !9
  %19 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %6, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %6, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %20(ptr noundef %22) #6
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unimac_mdio_reset(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 11
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 11, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 13
  %9 = load i32, ptr %8, align 8
  %10 = xor i32 %9, -1
  br label %36

11:                                               ; preds = %1
  %12 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %5, ptr noundef null) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %32, %11
  %15 = phi i32 [ %33, %32 ], [ 0, %11 ]
  %16 = phi ptr [ %34, %32 ], [ %12, %11 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !10
  %17 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %16, ptr noundef nonnull @.str.8, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.device_node, ptr %16, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef %21) #7
  br label %31

22:                                               ; preds = %14
  %23 = load i32, ptr %2, align 4
  %24 = icmp ugt i32 %23, 31
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.device_node, ptr %16, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef %27, i32 noundef %23) #7
  br label %31

28:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %29 = shl nuw i32 1, %23
  %30 = or i32 %29, %15
  br label %32

31:                                               ; preds = %25, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i32 [ %15, %31 ], [ %30, %28 ]
  %34 = call ptr @of_get_next_available_child(ptr noundef nonnull %5, ptr noundef nonnull %16) #6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %14

36:                                               ; preds = %32, %11, %7
  %37 = phi i32 [ %10, %7 ], [ 0, %11 ], [ %33, %32 ]
  br label %38

38:                                               ; preds = %45, %36
  %39 = phi i32 [ 0, %36 ], [ %46, %45 ]
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %37
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = call i32 @mdiobus_read(ptr noundef %0, i32 noundef %39, i32 noundef 1) #6
  br label %45

45:                                               ; preds = %43, %38
  %46 = add nuw nsw i32 %39, 1
  %47 = icmp eq i32 %46, 32
  br i1 %47, label %48, label %38

48:                                               ; preds = %45
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unimac_mdio_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unimac_mdio_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %41

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %3, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @clk_get_rate(ptr noundef nonnull %17) #6
  %21 = load i32, ptr %13, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %21, %19 ], [ %14, %16 ]
  %24 = phi i32 [ %20, %19 ], [ 250000000, %16 ]
  %25 = shl i32 %23, 1
  %26 = udiv i32 %24, %25
  %27 = add i32 %26, -1
  %28 = icmp ult i32 %27, 64
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %41

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %3, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #6, !srcloc !8
  %36 = and i32 %35, -1009
  %37 = shl nuw nsw i32 %27, 4
  %38 = or i32 %36, %37
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #6, !srcloc !9
  br label %41

41:                                               ; preds = %31, %29, %12, %11, %1
  %42 = phi i32 [ 0, %12 ], [ 0, %29 ], [ 0, %31 ], [ %9, %11 ], [ %6, %1 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2483703}
!9 = !{i64 2483285}
!10 = !{!"auto-init"}
