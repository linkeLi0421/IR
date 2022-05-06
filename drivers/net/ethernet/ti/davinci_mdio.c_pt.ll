; ModuleID = '/llk/IR/drivers/net/ethernet/ti/davinci_mdio.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/davinci_mdio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.davinci_mdio_of_param = type { i32 }
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
%struct.davinci_mdio_data = type { %struct.mdio_platform_data, ptr, ptr, ptr, ptr, i8, i32, i8, i32 }
%struct.mdio_platform_data = type { i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.davinci_mdio_regs = type { i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, [20 x i32], [0 x %struct.anon.68] }
%struct.anon.68 = type { i32, i32 }

@__initcall__kmod_davinci_mdio__274_527_davinci_mdio_init6 = internal global ptr @davinci_mdio_init, section ".initcall6.init", align 4
@davinci_mdio_driver = internal global %struct.platform_driver { ptr @davinci_mdio_probe, ptr @davinci_mdio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @davinci_mdio_of_mtable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_mdio_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_davinci_mdio_exit = internal global ptr @davinci_mdio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file275 = internal constant [55 x i8] c"davinci_mdio.file=drivers/net/ethernet/ti/davinci_mdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [25 x i8] c"davinci_mdio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description277 = internal constant [45 x i8] c"davinci_mdio.description=DaVinci MDIO driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"davinci_mdio\00", align 1
@davinci_mdio_of_mtable = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,davinci_mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cpsw-mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_cpsw_mdio_data }, %struct.of_device_id zeroinitializer], align 4
@davinci_mdio_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_mdio_suspend, ptr @davinci_mdio_resume, ptr @davinci_mdio_suspend, ptr @davinci_mdio_resume, ptr @davinci_mdio_suspend, ptr @davinci_mdio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_mdio_runtime_suspend, ptr @davinci_mdio_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to alloc mii bus\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to get device clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"phy[%d]: device %s, driver %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"bus_freq\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Missing bus_freq property in the DT.\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.10 = private unnamed_addr constant [28 x i8] c"resetting idled controller\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"timed out waiting for user access\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"davinci mdio revision %d.%d, bus freq %ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"detected phy mask %x\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"no live phy, scanning all\0A\00", align 1
@of_cpsw_mdio_data = internal constant %struct.davinci_mdio_of_param { i32 100 }, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"timed out waiting for idle\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__exitcall_davinci_mdio_exit, ptr @__initcall__kmod_davinci_mdio__274_527_davinci_mdio_init6, ptr @davinci_mdio_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @davinci_mdio_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @davinci_mdio_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @davinci_mdio_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @davinci_mdio_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_mdio_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 36, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %146, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %3, i32 noundef 0) #7
  %10 = getelementptr inbounds %struct.davinci_mdio_data, ptr %6, i32 0, i32 4
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  br label %146

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %18 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.8, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32, ptr %2, align 4
  store i32 %21, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %22 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 2
  %23 = load ptr, ptr %0, align 8
  %24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %22, i32 noundef 61, ptr noundef nonnull @.str.2, ptr noundef %23)
  %25 = call ptr @of_device_get_match_data(ptr noundef %3) #7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %20
  %28 = load i32, ptr %25, align 4
  br label %41

29:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %146

30:                                               ; preds = %13
  %31 = icmp eq ptr %5, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = load i32, ptr %5, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %33, %32 ], [ 2200000, %30 ]
  store i32 %35, ptr %6, align 4
  %36 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 2
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %36, i32 noundef 61, ptr noundef nonnull @.str.3, ptr noundef %37, i32 noundef %39)
  br label %41

41:                                               ; preds = %34, %27, %20
  %42 = phi i32 [ -1, %34 ], [ -1, %20 ], [ %28, %27 ]
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load ptr, ptr %3, align 4
  br label %48

48:                                               ; preds = %46, %41
  %49 = phi ptr [ %47, %46 ], [ %44, %41 ]
  %50 = load ptr, ptr %10, align 4
  %51 = getelementptr inbounds %struct.mii_bus, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  %52 = load ptr, ptr %10, align 4
  %53 = getelementptr inbounds %struct.mii_bus, ptr %52, i32 0, i32 4
  store ptr @davinci_mdio_read, ptr %53, align 4
  %54 = load ptr, ptr %10, align 4
  %55 = getelementptr inbounds %struct.mii_bus, ptr %54, i32 0, i32 5
  store ptr @davinci_mdio_write, ptr %55, align 8
  %56 = load ptr, ptr %10, align 4
  %57 = getelementptr inbounds %struct.mii_bus, ptr %56, i32 0, i32 6
  store ptr @davinci_mdio_reset, ptr %57, align 4
  %58 = load ptr, ptr %10, align 4
  %59 = getelementptr inbounds %struct.mii_bus, ptr %58, i32 0, i32 9
  store ptr %3, ptr %59, align 4
  %60 = load ptr, ptr %10, align 4
  %61 = getelementptr inbounds %struct.mii_bus, ptr %60, i32 0, i32 3
  store ptr %6, ptr %61, align 8
  %62 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  %63 = getelementptr inbounds %struct.davinci_mdio_data, ptr %6, i32 0, i32 2
  store ptr %62, ptr %63, align 4
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %68

65:                                               ; preds = %48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  %66 = load ptr, ptr %63, align 4
  %67 = ptrtoint ptr %66 to i32
  br label %146

68:                                               ; preds = %48
  %69 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %69, align 8
  %70 = getelementptr inbounds %struct.davinci_mdio_data, ptr %6, i32 0, i32 3
  store ptr %3, ptr %70, align 4
  %71 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %72 = icmp eq ptr %71, null
  br i1 %72, label %146, label %73

73:                                               ; preds = %68
  %74 = load i32, ptr %71, align 4
  %75 = getelementptr inbounds %struct.resource, ptr %71, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = sub i32 1, %74
  %78 = add i32 %77, %76
  %79 = call ptr @devm_ioremap(ptr noundef %3, i32 noundef %74, i32 noundef %78) #7
  %80 = getelementptr inbounds %struct.davinci_mdio_data, ptr %6, i32 0, i32 1
  store ptr %79, ptr %80, align 4
  %81 = icmp eq ptr %79, null
  br i1 %81, label %146, label %82

82:                                               ; preds = %73
  %83 = load ptr, ptr %63, align 4
  %84 = call i32 @clk_get_rate(ptr noundef %83) #7
  %85 = load i32, ptr %6, align 4
  %86 = udiv i32 %84, %85
  %87 = add i32 %86, -1
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 65535) #7
  %89 = getelementptr inbounds %struct.davinci_mdio_data, ptr %6, i32 0, i32 8
  store i32 %88, ptr %89, align 4
  %90 = mul nuw nsw i32 %88, 1000
  %91 = add nuw nsw i32 %90, 1000
  %92 = udiv i32 %84, %91
  %93 = udiv i32 88000, %92
  %94 = shl nuw nsw i32 %93, 2
  %95 = call i32 @__usecs_to_jiffies(i32 noundef %94) #7
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, i32 1, i32 %95
  %98 = getelementptr inbounds %struct.davinci_mdio_data, ptr %6, i32 0, i32 6
  store i32 %97, ptr %98, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef %42) #7
  call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #7
  call void @pm_runtime_enable(ptr noundef %3) #7
  %99 = load ptr, ptr %14, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %114, label %101

101:                                              ; preds = %82
  %102 = call ptr @of_get_next_child(ptr noundef nonnull %99, ptr noundef null) #7
  %103 = icmp eq ptr %102, null
  br i1 %103, label %114, label %104

104:                                              ; preds = %104, %101
  %105 = phi i32 [ %107, %104 ], [ 0, %101 ]
  %106 = phi ptr [ %108, %104 ], [ %102, %101 ]
  %107 = add i32 %105, 1
  %108 = call ptr @of_get_next_child(ptr noundef nonnull %99, ptr noundef nonnull %106) #7
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %104

110:                                              ; preds = %104
  %111 = icmp eq i32 %107, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.davinci_mdio_data, ptr %6, i32 0, i32 7
  store i8 1, ptr %113, align 4
  br label %114

114:                                              ; preds = %112, %110, %101, %82
  %115 = load ptr, ptr %10, align 4
  %116 = load ptr, ptr %14, align 8
  %117 = call i32 @of_mdiobus_register(ptr noundef %115, ptr noundef %116) #7
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %142, %114
  %120 = phi i32 [ %143, %142 ], [ 0, %114 ]
  %121 = load ptr, ptr %10, align 4
  %122 = call ptr @mdiobus_get_phy(ptr noundef %121, i32 noundef %120) #7
  %123 = icmp eq ptr %122, null
  br i1 %123, label %142, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.mdio_device, ptr %122, i32 0, i32 6
  %126 = load i32, ptr %125, align 8
  %127 = getelementptr inbounds %struct.device, ptr %122, i32 0, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load ptr, ptr %122, align 4
  br label %132

132:                                              ; preds = %130, %124
  %133 = phi ptr [ %131, %130 ], [ %128, %124 ]
  %134 = getelementptr inbounds %struct.phy_device, ptr %122, i32 0, i32 1
  %135 = load ptr, ptr %134, align 8
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.phy_driver, ptr %135, i32 0, i32 2
  %139 = load ptr, ptr %138, align 4
  br label %140

140:                                              ; preds = %137, %132
  %141 = phi ptr [ %139, %137 ], [ @.str.7, %132 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %126, ptr noundef %133, ptr noundef %141) #8
  br label %142

142:                                              ; preds = %140, %119
  %143 = add nuw nsw i32 %120, 1
  %144 = icmp eq i32 %143, 32
  br i1 %144, label %146, label %119

145:                                              ; preds = %114
  call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext false) #7
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #7
  br label %146

146:                                              ; preds = %145, %142, %73, %68, %65, %29, %12, %1
  %147 = phi i32 [ %67, %65 ], [ %117, %145 ], [ -22, %29 ], [ -12, %12 ], [ -12, %1 ], [ -22, %68 ], [ -12, %73 ], [ 0, %142 ]
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_mdio_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.davinci_mdio_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @mdiobus_unregister(ptr noundef nonnull %5) #7
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %9, i1 noundef zeroext false) #7
  tail call void @__pm_runtime_disable(ptr noundef %9, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_mdio_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = or i32 %2, %1
  %7 = icmp ult i32 %6, 32
  br i1 %7, label %8, label %109

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.davinci_mdio_data, ptr %5, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #7, !srcloc !10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 0, i32 -1, ptr elementtype(i32) %15) #7, !srcloc !11
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %109, label %19

19:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  br label %109

20:                                               ; preds = %8
  %21 = shl nuw nsw i32 %2, 21
  %22 = shl nuw nsw i32 %1, 16
  %23 = or i32 %22, %21
  %24 = or i32 %23, -2147483648
  %25 = getelementptr inbounds %struct.davinci_mdio_data, ptr %5, i32 0, i32 1
  %26 = getelementptr inbounds %struct.davinci_mdio_data, ptr %5, i32 0, i32 8
  br label %27

27:                                               ; preds = %57, %20
  %28 = load ptr, ptr %25, align 4
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = sub i32 -10, %29
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = add i32 %30, %31
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %28, i32 0, i32 12
  %36 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %28, i32 0, i32 1
  br label %37

37:                                               ; preds = %43, %34
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %60, label %40

40:                                               ; preds = %37
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = add i32 %44, %30
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %37, label %47

47:                                               ; preds = %43, %27
  %48 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %28, i32 0, i32 12
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %60, label %58

51:                                               ; preds = %40
  %52 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.10) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %53 = load i32, ptr %26, align 4
  %54 = or i32 %53, 1073741824
  %55 = load ptr, ptr %25, align 4
  %56 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %55, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #7, !srcloc !18
  br label %57

57:                                               ; preds = %86, %51
  br label %27

58:                                               ; preds = %47
  %59 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.11) #8
  br label %102

60:                                               ; preds = %47, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %61 = load ptr, ptr %25, align 4
  %62 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %61, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %24) #7, !srcloc !18
  %63 = load ptr, ptr %25, align 4
  %64 = load volatile i32, ptr @jiffies, align 64
  %65 = sub i32 -10, %64
  %66 = load volatile i32, ptr @jiffies, align 64
  %67 = add i32 %65, %66
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %63, i32 0, i32 12
  %71 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %63, i32 0, i32 1
  br label %72

72:                                               ; preds = %78, %69
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %94, label %75

75:                                               ; preds = %72
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %79 = load volatile i32, ptr @jiffies, align 64
  %80 = add i32 %79, %65
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %72, label %82

82:                                               ; preds = %78, %60
  %83 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %63, i32 0, i32 12
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %85 = icmp sgt i32 %84, -1
  br i1 %85, label %94, label %92

86:                                               ; preds = %75
  %87 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.10) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %88 = load i32, ptr %26, align 4
  %89 = or i32 %88, 1073741824
  %90 = load ptr, ptr %25, align 4
  %91 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %90, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #7, !srcloc !18
  br label %57

92:                                               ; preds = %82
  %93 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.11) #8
  br label %102

94:                                               ; preds = %82, %72
  %95 = load ptr, ptr %25, align 4
  %96 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %95, i32 0, i32 12
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %98 = and i32 %97, 536870912
  %99 = icmp eq i32 %98, 0
  %100 = and i32 %97, 65535
  %101 = select i1 %99, i32 -5, i32 %100
  br label %102

102:                                              ; preds = %94, %92, %58
  %103 = phi i32 [ -110, %58 ], [ -110, %92 ], [ %101, %94 ]
  %104 = load ptr, ptr %9, align 4
  %105 = tail call i64 @ktime_get_mono_fast_ns() #7
  %106 = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 11, i32 22
  store volatile i64 %105, ptr %106, align 8
  %107 = load ptr, ptr %9, align 4
  %108 = tail call i32 @__pm_runtime_suspend(ptr noundef %107, i32 noundef 13) #7
  br label %109

109:                                              ; preds = %102, %19, %13, %3
  %110 = phi i32 [ %103, %102 ], [ -22, %3 ], [ %11, %13 ], [ %11, %19 ]
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_mdio_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = or i32 %2, %1
  %8 = icmp ult i32 %7, 32
  br i1 %8, label %9, label %102

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.davinci_mdio_data, ptr %6, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #7, !srcloc !10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 0, i32 -1, ptr elementtype(i32) %16) #7, !srcloc !11
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %102, label %20

20:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  br label %102

21:                                               ; preds = %9
  %22 = shl nuw nsw i32 %2, 21
  %23 = shl nuw nsw i32 %1, 16
  %24 = zext i16 %3 to i32
  %25 = or i32 %23, %22
  %26 = or i32 %25, %24
  %27 = or i32 %26, -1073741824
  %28 = getelementptr inbounds %struct.davinci_mdio_data, ptr %6, i32 0, i32 1
  %29 = getelementptr inbounds %struct.davinci_mdio_data, ptr %6, i32 0, i32 8
  br label %30

30:                                               ; preds = %60, %21
  %31 = load ptr, ptr %28, align 4
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = sub i32 -10, %32
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = add i32 %33, %34
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %31, i32 0, i32 12
  %39 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %31, i32 0, i32 1
  br label %40

40:                                               ; preds = %46, %37
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %61, label %43

43:                                               ; preds = %40
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %47 = load volatile i32, ptr @jiffies, align 64
  %48 = add i32 %47, %33
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %40, label %50

50:                                               ; preds = %46, %30
  %51 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %31, i32 0, i32 12
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %61, label %93

54:                                               ; preds = %43
  %55 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.10) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %56 = load i32, ptr %29, align 4
  %57 = or i32 %56, 1073741824
  %58 = load ptr, ptr %28, align 4
  %59 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %58, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #7, !srcloc !18
  br label %60

60:                                               ; preds = %87, %54
  br label %30

61:                                               ; preds = %50, %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %62 = load ptr, ptr %28, align 4
  %63 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %62, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %27) #7, !srcloc !18
  %64 = load ptr, ptr %28, align 4
  %65 = load volatile i32, ptr @jiffies, align 64
  %66 = sub i32 -10, %65
  %67 = load volatile i32, ptr @jiffies, align 64
  %68 = add i32 %66, %67
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %64, i32 0, i32 12
  %72 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %64, i32 0, i32 1
  br label %73

73:                                               ; preds = %79, %70
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %95, label %76

76:                                               ; preds = %73
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %80 = load volatile i32, ptr @jiffies, align 64
  %81 = add i32 %80, %66
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %73, label %83

83:                                               ; preds = %79, %61
  %84 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %64, i32 0, i32 12
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %95, label %93

87:                                               ; preds = %76
  %88 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.10) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %89 = load i32, ptr %29, align 4
  %90 = or i32 %89, 1073741824
  %91 = load ptr, ptr %28, align 4
  %92 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %91, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #7, !srcloc !18
  br label %60

93:                                               ; preds = %83, %50
  %94 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.11) #8
  br label %95

95:                                               ; preds = %93, %83, %73
  %96 = phi i32 [ 0, %83 ], [ -110, %93 ], [ 0, %73 ]
  %97 = load ptr, ptr %10, align 4
  %98 = tail call i64 @ktime_get_mono_fast_ns() #7
  %99 = getelementptr inbounds %struct.device, ptr %97, i32 0, i32 11, i32 22
  store volatile i64 %98, ptr %99, align 8
  %100 = load ptr, ptr %10, align 4
  %101 = tail call i32 @__pm_runtime_suspend(ptr noundef %100, i32 noundef 13) #7
  br label %102

102:                                              ; preds = %95, %20, %14, %4
  %103 = phi i32 [ %96, %95 ], [ -22, %4 ], [ %12, %14 ], [ %12, %20 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_mdio_reset(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.davinci_mdio_data, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #7, !srcloc !10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #7, !srcloc !11
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %50, label %14

14:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  br label %50

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.davinci_mdio_data, ptr %3, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 5
  tail call void @msleep(i32 noundef %18) #7
  %19 = getelementptr inbounds %struct.davinci_mdio_data, ptr %3, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %22 = load ptr, ptr %4, align 4
  %23 = lshr i32 %21, 8
  %24 = and i32 %23, 255
  %25 = and i32 %21, 255
  %26 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.12, i32 noundef %24, i32 noundef %25, i32 noundef %26) #8
  %27 = getelementptr inbounds %struct.davinci_mdio_data, ptr %3, i32 0, i32 7
  %28 = load i8, ptr %27, align 4, !range !23
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %15
  %31 = load ptr, ptr %19, align 4
  %32 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %31, i32 0, i32 2
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %34 = icmp eq i32 %33, 0
  %35 = load ptr, ptr %4, align 4
  br i1 %34, label %38, label %36

36:                                               ; preds = %30
  %37 = xor i32 %33, -1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.13, i32 noundef %37) #8
  br label %39

38:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.14) #8
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = getelementptr inbounds %struct.davinci_mdio_data, ptr %3, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mii_bus, ptr %42, i32 0, i32 13
  store i32 %40, ptr %43, align 8
  br label %44

44:                                               ; preds = %39, %15
  %45 = load ptr, ptr %4, align 4
  %46 = tail call i64 @ktime_get_mono_fast_ns() #7
  %47 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 11, i32 22
  store volatile i64 %46, ptr %47, align 8
  %48 = load ptr, ptr %4, align 4
  %49 = tail call i32 @__pm_runtime_suspend(ptr noundef %48, i32 noundef 13) #7
  br label %50

50:                                               ; preds = %44, %14, %8
  %51 = phi i32 [ 0, %44 ], [ %6, %8 ], [ %6, %14 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_mdio_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  %7 = xor i1 %6, true
  %8 = getelementptr inbounds %struct.davinci_mdio_data, ptr %3, i32 0, i32 5
  %9 = zext i1 %7 to i8
  store i8 %9, ptr %8, align 4
  br i1 %6, label %13, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %1
  %14 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #7
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ 0, %13 ], [ %11, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_mdio_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.davinci_mdio_data, ptr %3, i32 0, i32 5
  %6 = load i8, ptr %5, align 4, !range !23
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #7
  br label %10

10:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_mdio_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.davinci_mdio_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %5, i32 0, i32 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  %8 = and i32 %7, -1073741825
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %9, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !18
  %11 = load ptr, ptr %4, align 4
  %12 = tail call i64 @ktime_get() #7
  %13 = add i64 %12, 100000000
  %14 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %11, i32 0, i32 1
  br label %15

15:                                               ; preds = %18, %1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = tail call i64 @ktime_get() #7
  %20 = icmp sgt i64 %19, %13
  br i1 %20, label %21, label %15

21:                                               ; preds = %18
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !28
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.davinci_mdio_data, ptr %3, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.15) #8
  br label %27

27:                                               ; preds = %24, %21, %15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_mdio_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %4 = getelementptr inbounds %struct.davinci_mdio_data, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, 1073741824
  %7 = getelementptr inbounds %struct.davinci_mdio_data, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #7, !srcloc !18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i64 2148053407}
!10 = !{i64 552514, i64 2148042485, i64 2148042511, i64 2148042558, i64 2148042580, i64 2148042608, i64 2148042628}
!11 = !{i64 539083, i64 539108, i64 539130, i64 539146, i64 539158, i64 539178, i64 539202, i64 539218, i64 539230}
!12 = !{i64 2148053533}
!13 = !{i64 5457959}
!14 = !{i64 2154263101}
!15 = !{i64 2154263510}
!16 = !{i64 2154264519}
!17 = !{i64 2154259439}
!18 = !{i64 5457541}
!19 = !{i64 2154268092}
!20 = !{i64 2154268598}
!21 = !{i64 2154269081}
!22 = !{i64 2154259999}
!23 = !{i8 0, i8 2}
!24 = !{i64 2154261109}
!25 = !{i64 2154273328}
!26 = !{i64 2154273601}
!27 = !{i64 2154266894}
!28 = !{i64 2154267219}
