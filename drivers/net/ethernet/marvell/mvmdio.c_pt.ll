; ModuleID = '/llk/IR/drivers/net/ethernet/marvell/mvmdio.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/mvmdio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.orion_mdio_ops = type { ptr, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.orion_mdio_dev = type { ptr, [4 x ptr], i32, %struct.wait_queue_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_mvmdio__277_451_orion_mdio_driver_init6 = internal global ptr @orion_mdio_driver_init, section ".initcall6.init", align 4
@orion_mdio_driver = internal global %struct.platform_driver { ptr @orion_mdio_probe, ptr @orion_mdio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @orion_mdio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_orion_mdio_driver_exit = internal global ptr @orion_mdio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description278 = internal constant [49 x i8] c"mvmdio.description=Marvell MDIO interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author279 = internal constant [69 x i8] c"mvmdio.author=Thomas Petazzoni <thomas.petazzoni@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file280 = internal constant [48 x i8] c"mvmdio.file=drivers/net/ethernet/marvell/mvmdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [19 x i8] c"mvmdio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias282 = internal constant [33 x i8] c"mvmdio.alias=platform:orion-mdio\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"orion-mdio\00", align 1
@orion_mdio_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,xmdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"No SMI register address given\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"orion_mdio_bus\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s-mii\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Unable to remap SMI register\0A\00", align 1
@orion_mdio_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"&dev->smi_busy_wait\00", align 1
@.str.6 = private unnamed_addr constant [211 x i8] c"unsupported number of clocks, limiting to the first (sizeof(dev->clk) / sizeof((dev->clk)[0]) + ((int)(sizeof(struct { int:(-!!(__builtin_types_compatible_p(typeof((dev->clk)), typeof(&(dev->clk)[0])))); }))))\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"disabling interrupt, resource size is too small\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Cannot register MDIO bus (%d)\0A\00", align 1
@orion_mdio_smi_ops = internal constant %struct.orion_mdio_ops { ptr @orion_mdio_smi_is_done, i32 45, i32 55 }, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"SMI bus read not valid\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.10 = private unnamed_addr constant [32 x i8] c"Timeout: SMI busy for too long\0A\00", align 1
@orion_mdio_xsmi_ops = internal constant %struct.orion_mdio_ops { ptr @orion_mdio_xsmi_is_done, i32 150, i32 160 }, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"XSMI bus read not valid\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias282, ptr @__UNIQUE_ID_author279, ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_file280, ptr @__UNIQUE_ID_license281, ptr @__exitcall_orion_mdio_driver_exit, ptr @__initcall__kmod_mvmdio__277_451_orion_mdio_driver_init6, ptr @orion_mdio_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @orion_mdio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @orion_mdio_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @orion_mdio_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @orion_mdio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_mdio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @device_get_match_data(ptr noundef %2) #8
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #9
  br label %174

8:                                                ; preds = %1
  %9 = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %2, i32 noundef 36) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %174, label %11

11:                                               ; preds = %8
  switch i32 %4, label %18 [
    i32 0, label %13
    i32 1, label %12
  ]

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi ptr [ @orion_mdio_xsmi_read, %12 ], [ @orion_mdio_smi_read, %11 ]
  %15 = phi ptr [ @orion_mdio_xsmi_write, %12 ], [ @orion_mdio_smi_write, %11 ]
  %16 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 4
  store ptr %14, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 5
  store ptr %15, ptr %17, align 8
  br label %18

18:                                               ; preds = %13, %11
  %19 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 1
  store ptr @.str.2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 2
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load ptr, ptr %2, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi ptr [ %25, %24 ], [ %22, %18 ]
  %28 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %20, i32 noundef 61, ptr noundef nonnull @.str.3, ptr noundef %27)
  %29 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 9
  store ptr %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = load i32, ptr %5, align 4
  %33 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 1, %32
  %36 = add i32 %35, %34
  %37 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %32, i32 noundef %36) #8
  store ptr %37, ptr %31, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #9
  br label %174

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.orion_mdio_dev, ptr %31, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %41, ptr noundef nonnull @.str.5, ptr noundef nonnull @orion_mdio_probe.__key) #8
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %105, label %45

45:                                               ; preds = %40
  %46 = tail call ptr @of_clk_get(ptr noundef nonnull %43, i32 noundef 0) #8
  %47 = getelementptr %struct.orion_mdio_dev, ptr %31, i32 0, i32 1, i32 0
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, inttoptr (i32 -517 to ptr)
  br i1 %48, label %152, label %49

49:                                               ; preds = %45
  %50 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %100, label %51

51:                                               ; preds = %49
  %52 = tail call i32 @clk_prepare(ptr noundef %46) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = tail call i32 @clk_enable(ptr noundef %46) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void @clk_unprepare(ptr noundef %46) #8
  br label %58

58:                                               ; preds = %57, %54, %51
  %59 = load ptr, ptr %42, align 8
  %60 = tail call ptr @of_clk_get(ptr noundef %59, i32 noundef 1) #8
  %61 = getelementptr %struct.orion_mdio_dev, ptr %31, i32 0, i32 1, i32 1
  store ptr %60, ptr %61, align 4
  %62 = icmp eq ptr %60, inttoptr (i32 -517 to ptr)
  br i1 %62, label %152, label %63

63:                                               ; preds = %58
  %64 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %100, label %65

65:                                               ; preds = %63
  %66 = tail call i32 @clk_prepare(ptr noundef %60) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = tail call i32 @clk_enable(ptr noundef %60) #8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @clk_unprepare(ptr noundef %60) #8
  br label %72

72:                                               ; preds = %71, %68, %65
  %73 = load ptr, ptr %42, align 8
  %74 = tail call ptr @of_clk_get(ptr noundef %73, i32 noundef 2) #8
  %75 = getelementptr %struct.orion_mdio_dev, ptr %31, i32 0, i32 1, i32 2
  store ptr %74, ptr %75, align 4
  %76 = icmp eq ptr %74, inttoptr (i32 -517 to ptr)
  br i1 %76, label %152, label %77

77:                                               ; preds = %72
  %78 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %100, label %79

79:                                               ; preds = %77
  %80 = tail call i32 @clk_prepare(ptr noundef %74) #8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = tail call i32 @clk_enable(ptr noundef %74) #8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  tail call void @clk_unprepare(ptr noundef %74) #8
  br label %86

86:                                               ; preds = %85, %82, %79
  %87 = load ptr, ptr %42, align 8
  %88 = tail call ptr @of_clk_get(ptr noundef %87, i32 noundef 3) #8
  %89 = getelementptr %struct.orion_mdio_dev, ptr %31, i32 0, i32 1, i32 3
  store ptr %88, ptr %89, align 4
  %90 = icmp eq ptr %88, inttoptr (i32 -517 to ptr)
  br i1 %90, label %152, label %91

91:                                               ; preds = %86
  %92 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %100, label %93

93:                                               ; preds = %91
  %94 = tail call i32 @clk_prepare(ptr noundef %88) #8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = tail call i32 @clk_enable(ptr noundef %88) #8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  tail call void @clk_unprepare(ptr noundef %88) #8
  br label %100

100:                                              ; preds = %99, %96, %93, %91, %77, %63, %49
  %101 = load ptr, ptr %42, align 8
  %102 = tail call ptr @of_clk_get(ptr noundef %101, i32 noundef 4) #8
  %103 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %118, label %104

104:                                              ; preds = %100
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.6) #9
  br label %118

105:                                              ; preds = %40
  %106 = tail call ptr @clk_get(ptr noundef %2, ptr noundef null) #8
  %107 = getelementptr inbounds %struct.orion_mdio_dev, ptr %31, i32 0, i32 1
  store ptr %106, ptr %107, align 4
  %108 = icmp eq ptr %106, inttoptr (i32 -517 to ptr)
  br i1 %108, label %152, label %109

109:                                              ; preds = %105
  %110 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %118, label %111

111:                                              ; preds = %109
  %112 = tail call i32 @clk_prepare(ptr noundef %106) #8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = tail call i32 @clk_enable(ptr noundef %106) #8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  tail call void @clk_unprepare(ptr noundef %106) #8
  br label %118

118:                                              ; preds = %117, %114, %111, %109, %104, %100
  %119 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 0) #8
  %120 = getelementptr inbounds %struct.orion_mdio_dev, ptr %31, i32 0, i32 2
  store i32 %119, ptr %120, align 4
  %121 = icmp sgt i32 %119, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = load i32, ptr %33, align 4
  %124 = load i32, ptr %5, align 4
  %125 = add i32 %123, 1
  %126 = sub i32 %125, %124
  %127 = icmp ult i32 %126, 132
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #9
  store i32 0, ptr %120, align 4
  br label %138

129:                                              ; preds = %122
  %130 = load ptr, ptr %0, align 8
  %131 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %119, ptr noundef nonnull @orion_mdio_err_irq, ptr noundef null, i32 noundef 128, ptr noundef %130, ptr noundef %31) #8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %129
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %134 = load ptr, ptr %31, align 4
  %135 = getelementptr i8, ptr %134, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 16) #8, !srcloc !9
  br label %138

136:                                              ; preds = %118
  %137 = icmp eq i32 %119, -517
  br i1 %137, label %152, label %138

138:                                              ; preds = %136, %133, %128
  %139 = load ptr, ptr %42, align 8
  %140 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %9, ptr noundef %139) #8
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %140) #9
  br label %145

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %144, align 8
  br label %174

145:                                              ; preds = %142, %129
  %146 = phi i32 [ %140, %142 ], [ %131, %129 ]
  %147 = load i32, ptr %120, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %150 = load ptr, ptr %31, align 4
  %151 = getelementptr i8, ptr %150, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 0) #8, !srcloc !9
  br label %152

152:                                              ; preds = %149, %145, %136, %105, %86, %72, %58, %45
  %153 = phi i32 [ %146, %149 ], [ %146, %145 ], [ -517, %105 ], [ -517, %86 ], [ -517, %72 ], [ -517, %58 ], [ -517, %45 ], [ -517, %136 ]
  %154 = getelementptr %struct.orion_mdio_dev, ptr %31, i32 0, i32 1, i32 0
  %155 = load ptr, ptr %154, align 4
  %156 = icmp ugt ptr %155, inttoptr (i32 -4096 to ptr)
  br i1 %156, label %174, label %157

157:                                              ; preds = %152
  tail call void @clk_disable(ptr noundef %155) #8
  tail call void @clk_unprepare(ptr noundef %155) #8
  %158 = load ptr, ptr %154, align 4
  tail call void @clk_put(ptr noundef %158) #8
  %159 = getelementptr %struct.orion_mdio_dev, ptr %31, i32 0, i32 1, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = icmp ugt ptr %160, inttoptr (i32 -4096 to ptr)
  br i1 %161, label %174, label %162

162:                                              ; preds = %157
  tail call void @clk_disable(ptr noundef %160) #8
  tail call void @clk_unprepare(ptr noundef %160) #8
  %163 = load ptr, ptr %159, align 4
  tail call void @clk_put(ptr noundef %163) #8
  %164 = getelementptr %struct.orion_mdio_dev, ptr %31, i32 0, i32 1, i32 2
  %165 = load ptr, ptr %164, align 4
  %166 = icmp ugt ptr %165, inttoptr (i32 -4096 to ptr)
  br i1 %166, label %174, label %167

167:                                              ; preds = %162
  tail call void @clk_disable(ptr noundef %165) #8
  tail call void @clk_unprepare(ptr noundef %165) #8
  %168 = load ptr, ptr %164, align 4
  tail call void @clk_put(ptr noundef %168) #8
  %169 = getelementptr %struct.orion_mdio_dev, ptr %31, i32 0, i32 1, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = icmp ugt ptr %170, inttoptr (i32 -4096 to ptr)
  br i1 %171, label %174, label %172

172:                                              ; preds = %167
  tail call void @clk_disable(ptr noundef %170) #8
  tail call void @clk_unprepare(ptr noundef %170) #8
  %173 = load ptr, ptr %169, align 4
  tail call void @clk_put(ptr noundef %173) #8
  br label %174

174:                                              ; preds = %172, %167, %162, %157, %152, %143, %39, %8, %7
  %175 = phi i32 [ 0, %143 ], [ -19, %39 ], [ -19, %7 ], [ -12, %8 ], [ %153, %172 ], [ %153, %167 ], [ %153, %162 ], [ %153, %157 ], [ %153, %152 ]
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_mdio_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.orion_mdio_dev, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #8, !srcloc !9
  br label %12

12:                                               ; preds = %9, %1
  tail call void @mdiobus_unregister(ptr noundef %3) #8
  %13 = getelementptr %struct.orion_mdio_dev, ptr %5, i32 0, i32 1, i32 0
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %33, label %16

16:                                               ; preds = %12
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  %17 = load ptr, ptr %13, align 4
  tail call void @clk_put(ptr noundef %17) #8
  %18 = getelementptr %struct.orion_mdio_dev, ptr %5, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %33, label %21

21:                                               ; preds = %16
  tail call void @clk_disable(ptr noundef %19) #8
  tail call void @clk_unprepare(ptr noundef %19) #8
  %22 = load ptr, ptr %18, align 4
  tail call void @clk_put(ptr noundef %22) #8
  %23 = getelementptr %struct.orion_mdio_dev, ptr %5, i32 0, i32 1, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  tail call void @clk_disable(ptr noundef %24) #8
  tail call void @clk_unprepare(ptr noundef %24) #8
  %27 = load ptr, ptr %23, align 4
  tail call void @clk_put(ptr noundef %27) #8
  %28 = getelementptr %struct.orion_mdio_dev, ptr %5, i32 0, i32 1, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  tail call void @clk_disable(ptr noundef %29) #8
  tail call void @clk_unprepare(ptr noundef %29) #8
  %32 = load ptr, ptr %28, align 4
  tail call void @clk_put(ptr noundef %32) #8
  br label %33

33:                                               ; preds = %31, %26, %21, %16, %12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_mdio_smi_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = and i32 %2, 1073741824
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @orion_mdio_wait_ready(ptr noundef nonnull @orion_mdio_smi_ops, ptr noundef %0)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %12 = shl i32 %1, 16
  %13 = shl i32 %2, 21
  %14 = or i32 %12, %13
  %15 = or i32 %14, 67108864
  %16 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #8, !srcloc !9
  %17 = tail call fastcc i32 @orion_mdio_wait_ready(ptr noundef nonnull @orion_mdio_smi_ops, ptr noundef %0)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %11
  %20 = load ptr, ptr %5, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %22 = and i32 %21, 134217728
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.9) #9
  br label %29

27:                                               ; preds = %19
  %28 = and i32 %21, 65535
  br label %29

29:                                               ; preds = %27, %24, %11, %8, %3
  %30 = phi i32 [ %28, %27 ], [ -19, %24 ], [ -95, %3 ], [ %9, %8 ], [ %17, %11 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_mdio_smi_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = and i32 %2, 1073741824
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @orion_mdio_wait_ready(ptr noundef nonnull @orion_mdio_smi_ops, ptr noundef %0)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %13 = shl i32 %1, 16
  %14 = shl i32 %2, 21
  %15 = or i32 %14, %13
  %16 = zext i16 %3 to i32
  %17 = or i32 %15, %16
  %18 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #8, !srcloc !9
  br label %19

19:                                               ; preds = %12, %9, %4
  %20 = phi i32 [ 0, %12 ], [ -95, %4 ], [ %10, %9 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_mdio_xsmi_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = and i32 %2, 1073741824
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @orion_mdio_wait_ready(ptr noundef nonnull @orion_mdio_xsmi_ops, ptr noundef %0)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %12 = and i32 %2, 65535
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %15 = shl i32 %1, 16
  %16 = shl i32 %2, 5
  %17 = and i32 %16, 65011712
  %18 = or i32 %15, %17
  %19 = or i32 %18, 469762048
  %20 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #8, !srcloc !9
  %21 = tail call fastcc i32 @orion_mdio_wait_ready(ptr noundef nonnull @orion_mdio_xsmi_ops, ptr noundef %0)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %11
  %24 = load ptr, ptr %5, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %26 = and i32 %25, 536870912
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.11) #9
  br label %35

31:                                               ; preds = %23
  %32 = load ptr, ptr %5, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %34 = and i32 %33, 65535
  br label %35

35:                                               ; preds = %31, %28, %11, %8, %3
  %36 = phi i32 [ %34, %31 ], [ -19, %28 ], [ -95, %3 ], [ %9, %8 ], [ %21, %11 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_mdio_xsmi_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = and i32 %2, 1073741824
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @orion_mdio_wait_ready(ptr noundef nonnull @orion_mdio_xsmi_ops, ptr noundef %0)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %13 = and i32 %2, 65535
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %16 = shl i32 %1, 16
  %17 = shl i32 %2, 5
  %18 = and i32 %17, 65011712
  %19 = zext i16 %3 to i32
  %20 = or i32 %16, %18
  %21 = or i32 %20, %19
  %22 = or i32 %21, 335544320
  %23 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #8, !srcloc !9
  br label %24

24:                                               ; preds = %12, %9, %4
  %25 = phi i32 [ 0, %12 ], [ -95, %4 ], [ %10, %9 ]
  ret i32 %25
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_mdio_err_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 124
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr i8, ptr %9, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -17) #8, !srcloc !9
  %11 = getelementptr inbounds %struct.orion_mdio_dev, ptr %1, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %11, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ 1, %8 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @orion_mdio_wait_ready(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #8
  %7 = icmp ult i32 %6, 1000
  %8 = select i1 %7, i32 1073741822, i32 1
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = add i32 %8, %9
  %11 = load ptr, ptr %0, align 4
  %12 = call i32 %11(ptr noundef %5) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %65

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.orion_mdio_dev, ptr %5, i32 0, i32 2
  %16 = getelementptr inbounds %struct.orion_mdio_dev, ptr %5, i32 0, i32 3
  %17 = getelementptr inbounds %struct.orion_mdio_ops, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.orion_mdio_ops, ptr %0, i32 0, i32 2
  br label %19

19:                                               ; preds = %56, %14
  %20 = phi i32 [ %8, %14 ], [ %58, %56 ]
  %21 = phi i32 [ 0, %14 ], [ %57, %56 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %19
  %24 = load i32, ptr %15, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, ptr %17, align 4
  %28 = load i32, ptr %18, align 4
  call void @usleep_range_state(i32 noundef %27, i32 noundef %28, i32 noundef 2) #8
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = sub i32 %10, %29
  %31 = lshr i32 %30, 31
  br label %56

32:                                               ; preds = %23
  %33 = call i32 @llvm.umax.i32(i32 %20, i32 2)
  %34 = load ptr, ptr %0, align 4
  %35 = call i32 %34(ptr noundef %5) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !24
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #8
  %38 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %3, i32 noundef 2) #8
  %39 = load ptr, ptr %0, align 4
  %40 = call i32 %39(ptr noundef %5) #8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %42, %37
  %43 = phi i32 [ %52, %42 ], [ %33, %37 ]
  %44 = call i32 @schedule_timeout(i32 noundef %43) #8
  %45 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %3, i32 noundef 2) #8
  %46 = load ptr, ptr %0, align 4
  %47 = call i32 %46(ptr noundef %5) #8
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = icmp ne i32 %44, 0
  %51 = select i1 %49, i1 true, i1 %50
  %52 = select i1 %51, i32 %44, i32 1
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %48, i1 true, i1 %53
  br i1 %54, label %55, label %42

55:                                               ; preds = %42, %37
  call void @finish_wait(ptr noundef %16, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  br label %56

56:                                               ; preds = %55, %32, %26
  %57 = phi i32 [ %31, %26 ], [ 1, %55 ], [ 1, %32 ]
  %58 = phi i32 [ %20, %26 ], [ %33, %55 ], [ %33, %32 ]
  %59 = load ptr, ptr %0, align 4
  %60 = call i32 %59(ptr noundef %5) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %19, label %65

62:                                               ; preds = %19
  %63 = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 9
  %64 = load ptr, ptr %63, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.10) #9
  br label %65

65:                                               ; preds = %62, %56, %2
  %66 = phi i32 [ -110, %62 ], [ 0, %2 ], [ 0, %56 ]
  ret i32 %66
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_mdio_smi_is_done(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %4 = lshr i32 %3, 28
  %5 = and i32 %4, 1
  %6 = xor i32 %5, 1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_mdio_xsmi_is_done(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %4 = lshr i32 %3, 30
  %5 = and i32 %4, 1
  %6 = xor i32 %5, 1
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i64 2154826920}
!9 = !{i64 6048650}
!10 = !{i64 2154827861}
!11 = !{i64 2154828528}
!12 = !{i64 2154809795}
!13 = !{i64 6049068}
!14 = !{i64 2154810360}
!15 = !{i64 2154811920}
!16 = !{i64 2154814398}
!17 = !{i64 2154815370}
!18 = !{i64 2154815937}
!19 = !{i64 2154816912}
!20 = !{i64 2154819399}
!21 = !{i64 2154820379}
!22 = !{i64 2154820974}
!23 = !{i64 2154821198}
!24 = !{!"auto-init"}
!25 = !{i64 2154809360}
!26 = !{i64 2154812487}
