; ModuleID = '/llk/IR/drivers/net/ethernet/freescale/fsl_pq_mdio.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/fsl_pq_mdio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fsl_pq_mdio_data = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.fsl_pq_mdio_priv = type { ptr, ptr }
%struct.fsl_pq_mii = type { i32, i32, i32, i32, i32, i32 }
%struct.gfar = type { i32, i32, [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, [28 x i8], i32, i32, i32, i32, [44 x i8], i32, [8 x i8], i32, i32, [96 x i8], i32, i32, i32, i32, i32, i32, [40 x i8], i32, i32, [52 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [64 x i8], i32, i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [192 x i8], i32, i32, [8 x i8], i32, i32, i32, i32, i32, i32, [8 x i8], i32, i32, i32, i32, i32, [56 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [64 x i8], i32, i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [192 x i8], i32, i32, i32, i32, i32, [12 x i8], [24 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [192 x i8], %struct.rmon_mib, i32, [188 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [96 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [352 x i8], i32, [252 x i8], [248 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [36 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], [556 x i8], i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [208 x i8] }
%struct.rmon_mib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_fsl_pq_mdio__330_537_fsl_pq_mdio_driver_init6 = internal global ptr @fsl_pq_mdio_driver_init, section ".initcall6.init", align 4
@fsl_pq_mdio_driver = internal global %struct.platform_driver { ptr @fsl_pq_mdio_probe, ptr @fsl_pq_mdio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_pq_mdio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_fsl_pq_mdio_driver_exit = internal global ptr @fsl_pq_mdio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file331 = internal constant [60 x i8] c"fsl_pq_mdio.file=drivers/net/ethernet/freescale/fsl_pq_mdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license332 = internal constant [24 x i8] c"fsl_pq_mdio.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"fsl-pq_mdio\00", align 1
@fsl_pq_mdio_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,gianfar-tbi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,gianfar-mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral.13 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] c"mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gianfar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral.14 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,etsec2-tbi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral.15 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,etsec2-mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral.16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,fman-mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral.17 }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to match device\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Freescale PowerQUICC MII Bus\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"could not obtain address information\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%pOFn@%llx\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"invalid register map\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"tbi-phy\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"missing 'reg' property in node %pOF\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"cannot register %s as MDIO bus\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"timeout waiting for MII bus\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"invalid register map (should be at least 0x%04zx to contain TBI address)\0A\00", align 1
@.compoundliteral = internal global %struct.fsl_pq_mdio_data { i32 0, ptr @get_gfar_tbipa_from_mii, ptr null }, align 4
@.compoundliteral.13 = internal global %struct.fsl_pq_mdio_data { i32 0, ptr @get_gfar_tbipa_from_mii, ptr null }, align 4
@.compoundliteral.14 = internal global %struct.fsl_pq_mdio_data { i32 1312, ptr @get_gfar_tbipa_from_mdio, ptr null }, align 4
@.compoundliteral.15 = internal global %struct.fsl_pq_mdio_data { i32 1312, ptr @get_etsec_tbipa, ptr null }, align 4
@.compoundliteral.16 = internal global %struct.fsl_pq_mdio_data { i32 1312, ptr @get_etsec_tbipa, ptr null }, align 4
@.compoundliteral.17 = internal global %struct.fsl_pq_mdio_data zeroinitializer, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file331, ptr @__UNIQUE_ID_license332, ptr @__exitcall_fsl_pq_mdio_driver_exit, ptr @__initcall__kmod_fsl_pq_mdio__330_537_fsl_pq_mdio_driver_init6, ptr @fsl_pq_mdio_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fsl_pq_mdio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_pq_mdio_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @fsl_pq_mdio_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_pq_mdio_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_pq_mdio_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.resource, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_match_device(ptr noundef nonnull @fsl_pq_mdio_match, ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %7 = icmp eq ptr %4, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #11
  br label %108

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @mdiobus_alloc_size(i32 noundef 8) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %108, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 1
  store ptr @.str.2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 4
  store ptr @fsl_pq_mdio_read, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 5
  store ptr @fsl_pq_mdio_write, ptr %19, align 8
  %20 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 6
  store ptr @fsl_pq_mdio_reset, ptr %20, align 4
  %21 = call i32 @of_address_to_resource(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %2) #10
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #11
  br label %101

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 2
  %26 = load i32, ptr %2, align 4
  %27 = zext i32 %26 to i64
  %28 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %25, i32 noundef 61, ptr noundef nonnull @.str.4, ptr noundef %6, i64 noundef %27)
  %29 = call ptr @of_iomap(ptr noundef %6, i32 noundef 0) #10
  store ptr %29, ptr %16, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %106, label %31

31:                                               ; preds = %24
  %32 = load i32, ptr %11, align 4
  %33 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %2, align 4
  %36 = add i32 %34, 1
  %37 = sub i32 %36, %35
  %38 = icmp ugt i32 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #11
  br label %101

40:                                               ; preds = %31
  %41 = getelementptr i8, ptr %29, i32 %32
  %42 = getelementptr inbounds %struct.fsl_pq_mdio_priv, ptr %16, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 9
  store ptr %3, ptr %43, align 4
  %44 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %12, ptr %44, align 8
  %45 = getelementptr inbounds %struct.fsl_pq_mdio_data, ptr %11, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %89, label %48

48:                                               ; preds = %40
  %49 = call ptr @of_get_next_child(ptr noundef %6, ptr noundef null) #10
  %50 = icmp eq ptr %49, null
  br i1 %50, label %89, label %51

51:                                               ; preds = %58, %48
  %52 = phi ptr [ %59, %58 ], [ %49, %48 ]
  %53 = call ptr @of_get_property(ptr noundef nonnull %52, ptr noundef nonnull @.str.11, ptr noundef null) #10
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = call i32 @strcmp(ptr noundef nonnull %53, ptr noundef nonnull dereferenceable(8) @.str.6) #10
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55, %51
  %59 = call ptr @of_get_next_child(ptr noundef %6, ptr noundef nonnull %52) #10
  %60 = icmp eq ptr %59, null
  br i1 %60, label %89, label %51

61:                                               ; preds = %55
  %62 = call ptr @of_get_property(ptr noundef nonnull %52, ptr noundef nonnull @.str.7, ptr noundef null) #10
  %63 = icmp eq ptr %62, null
  br i1 %63, label %88, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %62, align 4
  %66 = load ptr, ptr %45, align 4
  %67 = load ptr, ptr %16, align 4
  %68 = load ptr, ptr %5, align 8
  %69 = call ptr @of_iomap(ptr noundef %68, i32 noundef 1) #10
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %64
  %72 = call ptr %66(ptr noundef %67) #10
  %73 = load i32, ptr %33, align 4
  %74 = load i32, ptr %2, align 4
  %75 = add i32 %73, 1
  %76 = sub i32 %75, %74
  %77 = getelementptr i8, ptr %67, i32 %76
  %78 = getelementptr i8, ptr %77, i32 -4
  %79 = icmp ugt ptr %72, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = ptrtoint ptr %72 to i32
  %82 = ptrtoint ptr %67 to i32
  %83 = sub i32 4, %82
  %84 = add i32 %83, %81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %84) #11
  br label %85

85:                                               ; preds = %80, %71, %64
  %86 = phi ptr [ %72, %80 ], [ %72, %71 ], [ %69, %64 ]
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %65) #10, !srcloc !10
  br i1 %70, label %89, label %87

87:                                               ; preds = %85
  call void @iounmap(ptr noundef %86) #10
  br label %89

88:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef nonnull %52) #11
  br label %101

89:                                               ; preds = %87, %85, %58, %48, %40
  %90 = getelementptr inbounds %struct.fsl_pq_mdio_data, ptr %11, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load i32, ptr %2, align 4
  %95 = load i32, ptr %33, align 4
  call void %91(i32 noundef %94, i32 noundef %95) #10
  br label %96

96:                                               ; preds = %93, %89
  %97 = call i32 @of_mdiobus_register(ptr noundef nonnull %12, ptr noundef %6) #10
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef %100) #11
  br label %101

101:                                              ; preds = %99, %88, %39, %23
  %102 = phi i32 [ %97, %99 ], [ -16, %88 ], [ -22, %39 ], [ %21, %23 ]
  %103 = load ptr, ptr %16, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  call void @iounmap(ptr noundef nonnull %103) #10
  br label %106

106:                                              ; preds = %105, %101, %24
  %107 = phi i32 [ %102, %105 ], [ %102, %101 ], [ -12, %24 ]
  call void @kfree(ptr noundef nonnull %12) #10
  br label %108

108:                                              ; preds = %106, %96, %9, %8
  %109 = phi i32 [ %107, %106 ], [ -19, %8 ], [ -12, %9 ], [ 0, %96 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_pq_mdio_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  tail call void @mdiobus_unregister(ptr noundef %3) #10
  %6 = load ptr, ptr %5, align 4
  tail call void @iounmap(ptr noundef %6) #10
  tail call void @mdiobus_free(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_pq_mdio_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fsl_pq_mdio_priv, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %8 = shl i32 %1, 8
  %9 = or i32 %8, %2
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = getelementptr inbounds %struct.fsl_pq_mii, ptr %7, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  %12 = getelementptr inbounds %struct.fsl_pq_mii, ptr %7, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 16777216) #10, !srcloc !10
  %13 = getelementptr inbounds %struct.fsl_pq_mii, ptr %7, i32 0, i32 5
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %15 = and i32 %14, 83886080
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %17, %3
  %18 = phi i32 [ %19, %17 ], [ 1000, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !17
  %19 = add nsw i32 %18, -1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %21 = and i32 %20, 83886080
  %22 = icmp ne i32 %21, 0
  %23 = icmp ne i32 %19, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %17, label %25

25:                                               ; preds = %17
  br i1 %23, label %26, label %31

26:                                               ; preds = %25, %3
  %27 = getelementptr inbounds %struct.fsl_pq_mii, ptr %7, i32 0, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #10, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %29 = and i32 %28, -65536
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  br label %31

31:                                               ; preds = %26, %25
  %32 = phi i32 [ %30, %26 ], [ -110, %25 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_pq_mdio_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fsl_pq_mdio_priv, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  tail call void @arm_heavy_mb() #10
  %9 = shl i32 %1, 8
  %10 = or i32 %9, %2
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = getelementptr inbounds %struct.fsl_pq_mii, ptr %8, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !20
  tail call void @arm_heavy_mb() #10
  %13 = zext i16 %3 to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = getelementptr inbounds %struct.fsl_pq_mii, ptr %8, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #10, !srcloc !10
  %16 = getelementptr inbounds %struct.fsl_pq_mii, ptr %8, i32 0, i32 5
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %18 = and i32 %17, 16777216
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %20, %4
  %21 = phi i32 [ %22, %20 ], [ 1000, %4 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !23
  %22 = add nsw i32 %21, -1
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %24 = and i32 %23, 16777216
  %25 = icmp ne i32 %24, 0
  %26 = icmp ne i32 %22, 0
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %20, label %28

28:                                               ; preds = %20
  %29 = select i1 %26, i32 0, i32 -110
  br label %30

30:                                               ; preds = %28, %4
  %31 = phi i32 [ 0, %4 ], [ %29, %28 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_pq_mdio_reset(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fsl_pq_mdio_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %6) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 128) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !25
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 117440512) #10, !srcloc !10
  %7 = getelementptr inbounds %struct.fsl_pq_mii, ptr %5, i32 0, i32 5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %11, %1
  %12 = phi i32 [ %13, %11 ], [ 1000, %1 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !28
  %13 = add nsw i32 %12, -1
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %15 = and i32 %14, 16777216
  %16 = icmp ne i32 %15, 0
  %17 = icmp ne i32 %13, 0
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %11, label %19

19:                                               ; preds = %11
  tail call void @mutex_unlock(ptr noundef %6) #10
  br i1 %17, label %23, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.10) #11
  br label %23

22:                                               ; preds = %1
  tail call void @mutex_unlock(ptr noundef %6) #10
  br label %23

23:                                               ; preds = %22, %20, %19
  %24 = phi i32 [ -16, %20 ], [ 0, %19 ], [ 0, %22 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @get_gfar_tbipa_from_mii(ptr noundef readnone %0) #9 {
  %2 = getelementptr i8, ptr %0, i32 -1264
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @get_gfar_tbipa_from_mdio(ptr noundef readnone %0) #9 {
  %2 = getelementptr inbounds %struct.gfar, ptr %0, i32 0, i32 11
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @get_etsec_tbipa(ptr noundef readnone returned %0) #9 {
  ret ptr %0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = !{i64 2155306839}
!10 = !{i64 5200544}
!11 = !{i64 2155297038}
!12 = !{i64 2155297393}
!13 = !{i64 2155297726}
!14 = !{i64 5200962}
!15 = !{i64 2155298240}
!16 = !{i64 2155298508}
!17 = !{i64 2155298350}
!18 = !{i64 2155298903}
!19 = !{i64 2155295683}
!20 = !{i64 2155296042}
!21 = !{i64 2155296546}
!22 = !{i64 2155296803}
!23 = !{i64 2155296645}
!24 = !{i64 2155299789}
!25 = !{i64 2155300140}
!26 = !{i64 2155300654}
!27 = !{i64 2155300911}
!28 = !{i64 2155300753}
