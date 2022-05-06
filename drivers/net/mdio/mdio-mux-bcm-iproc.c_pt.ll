; ModuleID = '/llk/IR/drivers/net/mdio/mdio-mux-bcm-iproc.c_pt.bc'
source_filename = "../drivers/net/mdio/mdio-mux-bcm-iproc.c"
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
%struct.iproc_mdiomux_desc = type { ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@__initcall__kmod_mdio_mux_bcm_iproc__273_316_mdiomux_iproc_driver_init6 = internal global ptr @mdiomux_iproc_driver_init, section ".initcall6.init", align 4
@mdiomux_iproc_driver = internal global %struct.platform_driver { ptr @mdio_mux_iproc_probe, ptr @mdio_mux_iproc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mdio_mux_iproc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdio_mux_iproc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_mdiomux_iproc_driver_exit = internal global ptr @mdiomux_iproc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description274 = internal constant [57 x i8] c"mdio_mux_bcm_iproc.description=iProc MDIO Mux Bus Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author275 = internal constant [67 x i8] c"mdio_mux_bcm_iproc.author=Pramod Kumar <pramod.kumar@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file276 = internal constant [60 x i8] c"mdio_mux_bcm_iproc.file=drivers/net/mdio/mdio-mux-bcm-iproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [34 x i8] c"mdio_mux_bcm_iproc.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"mdio-mux-iproc\00", align 1
@mdio_mux_iproc_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,mdio-mux-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@mdio_mux_iproc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @mdio_mux_iproc_suspend, ptr @mdio_mux_iproc_resume, ptr @mdio_mux_iproc_suspend, ptr @mdio_mux_iproc_resume, ptr @mdio_mux_iproc_suspend, ptr @mdio_mux_iproc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"fix base address in dt-blob\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"mdiomux bus alloc failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to enable core clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"iProc MDIO mux bus\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"mdiomux registration failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"mdiomux initialization failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"iProc mdiomux registered\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"mdiomux read operation failed!!!\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"mdiomux write operation failed!!!\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description274, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_license277, ptr @__exitcall_mdiomux_iproc_driver_exit, ptr @__initcall__kmod_mdio_mux_bcm_iproc__273_316_mdiomux_iproc_driver_init6, ptr @mdiomux_iproc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mdiomux_iproc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mdiomux_iproc_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mdiomux_iproc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mdiomux_iproc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdio_mux_iproc_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 20, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %81, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.iproc_mdiomux_desc, ptr %4, i32 0, i32 2
  store ptr %3, ptr %7, align 4
  %8 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #6
  %9 = getelementptr inbounds %struct.iproc_mdiomux_desc, ptr %4, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i32
  br label %81

13:                                               ; preds = %6
  %14 = load ptr, ptr %2, align 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 4095
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  %19 = load ptr, ptr %2, align 4
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, -4096
  store i32 %21, ptr %19, align 4
  %22 = load ptr, ptr %2, align 4
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 591
  %25 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %18, %13
  %27 = call ptr @devm_mdiobus_alloc_size(ptr noundef %3, i32 noundef 0) #6
  %28 = getelementptr inbounds %struct.iproc_mdiomux_desc, ptr %4, i32 0, i32 3
  store ptr %27, ptr %28, align 4
  %29 = icmp eq ptr %27, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  br label %81

31:                                               ; preds = %26
  %32 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #6
  %33 = getelementptr inbounds %struct.iproc_mdiomux_desc, ptr %4, i32 0, i32 4
  store ptr %32, ptr %33, align 4
  %34 = ptrtoint ptr %32 to i32
  switch i32 %34, label %36 [
    i32 -2, label %35
    i32 -22, label %35
  ]

35:                                               ; preds = %31, %31
  store ptr null, ptr %33, align 4
  br label %38

36:                                               ; preds = %31
  %37 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %81, label %38

38:                                               ; preds = %36, %35
  %39 = phi ptr [ %32, %36 ], [ null, %35 ]
  %40 = call i32 @clk_prepare(ptr noundef %39) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = call i32 @clk_enable(ptr noundef %39) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  call void @clk_unprepare(ptr noundef %39) #6
  br label %46

46:                                               ; preds = %45, %38
  %47 = phi i32 [ %43, %45 ], [ %40, %38 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  br label %81

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.mii_bus, ptr %27, i32 0, i32 3
  store ptr %4, ptr %49, align 8
  %50 = getelementptr inbounds %struct.mii_bus, ptr %27, i32 0, i32 1
  store ptr @.str.4, ptr %50, align 4
  %51 = getelementptr inbounds %struct.mii_bus, ptr %27, i32 0, i32 2
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %51, i32 noundef 61, ptr noundef nonnull @.str.5, ptr noundef %52, i32 noundef %54)
  %56 = getelementptr inbounds %struct.mii_bus, ptr %27, i32 0, i32 9
  store ptr %3, ptr %56, align 4
  %57 = getelementptr inbounds %struct.mii_bus, ptr %27, i32 0, i32 4
  store ptr @iproc_mdiomux_read, ptr %57, align 4
  %58 = getelementptr inbounds %struct.mii_bus, ptr %27, i32 0, i32 5
  store ptr @iproc_mdiomux_write, ptr %58, align 8
  %59 = getelementptr inbounds %struct.mii_bus, ptr %27, i32 0, i32 13
  store i32 -1, ptr %59, align 8
  %60 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.mii_bus, ptr %27, i32 0, i32 11, i32 25
  store ptr %61, ptr %62, align 8
  %63 = call i32 @__mdiobus_register(ptr noundef nonnull %27, ptr noundef null) #6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #7
  br label %78

66:                                               ; preds = %48
  %67 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %67, align 8
  %68 = load ptr, ptr %7, align 4
  %69 = getelementptr inbounds %struct.device, ptr %68, i32 0, i32 25
  %70 = load ptr, ptr %69, align 8
  %71 = load ptr, ptr %28, align 4
  %72 = call i32 @mdio_mux_init(ptr noundef %68, ptr noundef %70, ptr noundef nonnull @mdio_mux_iproc_switch_fn, ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %71) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %66
  %75 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.7) #7
  call void @mdiobus_unregister(ptr noundef nonnull %27) #6
  br label %78

76:                                               ; preds = %66
  call fastcc void @mdio_mux_iproc_config(ptr noundef nonnull %4)
  %77 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.8) #7
  br label %81

78:                                               ; preds = %74, %65
  %79 = phi i32 [ %63, %65 ], [ %72, %74 ]
  %80 = load ptr, ptr %33, align 4
  call void @clk_disable(ptr noundef %80) #6
  call void @clk_unprepare(ptr noundef %80) #6
  br label %81

81:                                               ; preds = %78, %76, %46, %36, %30, %11, %1
  %82 = phi i32 [ %12, %11 ], [ %47, %46 ], [ %79, %78 ], [ 0, %76 ], [ -12, %30 ], [ -12, %1 ], [ %34, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdio_mux_iproc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @mdio_mux_uninit(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.iproc_mdiomux_desc, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void @mdiobus_unregister(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.iproc_mdiomux_desc, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #6
  tail call void @clk_unprepare(ptr noundef %8) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_mdiomux_read(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.iproc_mdiomux_desc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = trunc i32 %1 to i16
  %9 = tail call fastcc i32 @start_miim_ops(ptr noundef %7, i16 noundef zeroext %8, i32 noundef %2, i16 noundef zeroext 0, i32 noundef 2)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.9) #7
  br label %13

13:                                               ; preds = %11, %3
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_mdiomux_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.iproc_mdiomux_desc, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = trunc i32 %1 to i16
  %10 = tail call fastcc i32 @start_miim_ops(ptr noundef %8, i16 noundef zeroext %9, i32 noundef %2, i16 noundef zeroext %3, i32 noundef 1)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10) #7
  br label %14

14:                                               ; preds = %12, %4
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_mux_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdio_mux_iproc_switch_fn(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = icmp slt i32 %1, 16
  %5 = shl i32 %1, 22
  %6 = add i32 %5, -67108864
  %7 = or i32 %5, 33554432
  %8 = select i1 %4, i32 %7, i32 %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %9 = getelementptr inbounds %struct.iproc_mdiomux_desc, ptr %2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #6, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mdio_mux_iproc_config(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.iproc_mdiomux_desc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %6 = or i32 %5, 268435456
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !10
  %9 = getelementptr inbounds %struct.iproc_mdiomux_desc, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @clk_get_rate(ptr noundef nonnull %10) #6
  %14 = udiv i32 %13, 22000000
  %15 = or i32 %14, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %16 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #6, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #6, !srcloc !10
  br label %19

19:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @start_miim_ops(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef %4) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %6 = getelementptr i8, ptr %0, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #6, !srcloc !10
  %7 = tail call i64 @ktime_get() #6
  %8 = add i64 %7, 1000000000
  %9 = getelementptr i8, ptr %0, i32 588
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %16, %5
  %14 = tail call i64 @ktime_get() #6
  %15 = icmp sgt i64 %14, %8
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #6
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %13

20:                                               ; preds = %13
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %20, %16, %5
  %25 = getelementptr i8, ptr %0, i32 572
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %27 = zext i16 %1 to i32
  %28 = shl nuw i32 %27, 16
  %29 = zext i16 %3 to i32
  %30 = lshr i32 %2, 9
  %31 = and i32 %30, 2097152
  %32 = or i32 %28, %29
  %33 = or i32 %32, %31
  %34 = or i32 %33, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %34) #6, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %35 = getelementptr i8, ptr %0, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %2) #6, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #6, !srcloc !10
  %36 = tail call i64 @ktime_get() #6
  %37 = add i64 %36, 1000000000
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %44, %24
  %42 = tail call i64 @ktime_get() #6
  %43 = icmp sgt i64 %42, %37
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #6
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %41, label %52

48:                                               ; preds = %41
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48, %44, %24
  %53 = icmp eq i32 %4, 2
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = getelementptr i8, ptr %0, i32 576
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  %57 = and i32 %56, 65535
  br label %58

58:                                               ; preds = %54, %52, %48, %20
  %59 = phi i32 [ -110, %20 ], [ %57, %54 ], [ 0, %52 ], [ -110, %48 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_mux_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdio_mux_iproc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iproc_mdiomux_desc, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdio_mux_iproc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iproc_mdiomux_desc, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  %14 = getelementptr inbounds %struct.iproc_mdiomux_desc, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.3) #7
  br label %33

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.iproc_mdiomux_desc, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %21 = or i32 %20, 268435456
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !10
  %24 = load ptr, ptr %4, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %16
  %27 = tail call i32 @clk_get_rate(ptr noundef nonnull %24) #6
  %28 = udiv i32 %27, 22000000
  %29 = or i32 %28, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %30 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #6, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %31 = load ptr, ptr %17, align 4
  %32 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %29) #6, !srcloc !10
  br label %33

33:                                               ; preds = %26, %16, %12
  %34 = phi i32 [ %13, %12 ], [ 0, %16 ], [ 0, %26 ]
  ret i32 %34
}

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
!8 = !{!"auto-init"}
!9 = !{i64 2154149186}
!10 = !{i64 3659276}
!11 = !{i64 3659694}
!12 = !{i64 2154143062}
!13 = !{i64 2154143331}
!14 = !{i64 2154143665}
!15 = !{i64 2154143983}
!16 = !{i64 2154145974}
!17 = !{i64 2154145467}
!18 = !{i64 2154145786}
!19 = !{i64 2154146419}
!20 = !{i64 2154146699}
!21 = !{i64 2154147013}
!22 = !{i64 2154147322}
!23 = !{i64 2154147773}
