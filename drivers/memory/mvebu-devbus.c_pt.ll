; ModuleID = '/llk/IR/drivers/memory/mvebu-devbus.c_pt.bc'
source_filename = "../drivers/memory/mvebu-devbus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.devbus_read_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.devbus_write_params = type { i32, i32, i32, i32 }
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
%struct.devbus = type { ptr, ptr, i32 }

@__initcall__kmod_mvebu_devbus__166_343_mvebu_devbus_init6 = internal global ptr @mvebu_devbus_init, section ".initcall6.init", align 4
@__UNIQUE_ID_file167 = internal constant [46 x i8] c"mvebu_devbus.file=drivers/memory/mvebu-devbus\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [28 x i8] c"mvebu_devbus.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author169 = internal constant [73 x i8] c"mvebu_devbus.author=Ezequiel Garcia <ezequiel.garcia@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description170 = internal constant [63 x i8] c"mvebu_devbus.description=Marvell EBU SoC Device Bus controller\00", section ".modinfo", align 1
@mvebu_devbus_driver = internal global %struct.platform_driver { ptr @mvebu_devbus_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mvebu_devbus_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"mvebu-devbus\00", align 1
@mvebu_devbus_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mvebu-devbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-devbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"devbus,keep-config\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"marvell,orion-devbus\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"devbus,bus-width\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%pOF has no 'devbus,bus-width' property\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"invalid bus width %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"devbus,badr-skew-ps\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"devbus,turn-off-ps\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"devbus,acc-first-ps\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"devbus,acc-next-ps\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"marvell,mvebu-devbus\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"devbus,rd-setup-ps\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"devbus,rd-hold-ps\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"devbus,sync-enable\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"%pOF has no 'devbus,sync-enable' property\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"devbus,ale-wr-ps\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"devbus,wr-low-ps\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"devbus,wr-high-ps\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"%pOF has no '%s' property\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author169, ptr @__UNIQUE_ID_description170, ptr @__UNIQUE_ID_file167, ptr @__UNIQUE_ID_license168, ptr @__initcall__kmod_mvebu_devbus__166_343_mvebu_devbus_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mvebu_devbus_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvebu_devbus_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_devbus_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.devbus_read_params, align 4
  %12 = alloca %struct.devbus_write_params, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %15 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %11, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %12, i8 0, i32 16, i1 false), !annotation !8
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef 12, i32 noundef 3520) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %226, label %18

18:                                               ; preds = %1
  store ptr %13, ptr %16, align 4
  %19 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %20 = getelementptr inbounds %struct.devbus, ptr %16, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = ptrtoint ptr %19 to i32
  br label %226

24:                                               ; preds = %18
  %25 = tail call ptr @devm_clk_get(ptr noundef %13, ptr noundef null) #7
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = ptrtoint ptr %25 to i32
  br label %226

29:                                               ; preds = %24
  %30 = tail call i32 @clk_prepare(ptr noundef %25) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = tail call i32 @clk_enable(ptr noundef %25) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @clk_unprepare(ptr noundef %25) #7
  br label %36

36:                                               ; preds = %35, %32, %29
  %37 = tail call i32 @clk_get_rate(ptr noundef %25) #7
  %38 = udiv i32 %37, 1000
  %39 = udiv i32 1000000000, %38
  %40 = getelementptr inbounds %struct.devbus, ptr %16, i32 0, i32 2
  store i32 %39, ptr %40, align 4
  %41 = tail call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %223

43:                                               ; preds = %36
  %44 = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull %11, i32 noundef 1, i32 noundef 0) #7
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef %15) #8
  br label %226

47:                                               ; preds = %43
  %48 = load i32, ptr %11, align 4
  switch i32 %48, label %50 [
    i32 8, label %51
    i32 16, label %49
  ]

49:                                               ; preds = %47
  br label %51

50:                                               ; preds = %47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5, i32 noundef %48) #8
  br label %226

51:                                               ; preds = %49, %47
  %52 = phi i32 [ 1, %49 ], [ 0, %47 ]
  store i32 %52, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  store i32 0, ptr %10, align 4, !annotation !8
  %53 = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull %10, i32 noundef 1, i32 noundef 0) #7
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef %15, ptr noundef nonnull @.str.6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  br label %226

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.devbus_read_params, ptr %11, i32 0, i32 1
  %58 = load i32, ptr %10, align 4
  %59 = add i32 %58, -1
  %60 = add i32 %59, %39
  %61 = udiv i32 %60, %39
  store i32 %61, ptr %57, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !annotation !8
  %62 = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.7, ptr noundef nonnull %9, i32 noundef 1, i32 noundef 0) #7
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef %15, ptr noundef nonnull @.str.7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  br label %226

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.devbus_read_params, ptr %11, i32 0, i32 2
  %67 = load i32, ptr %9, align 4
  %68 = add i32 %67, -1
  %69 = add i32 %68, %39
  %70 = udiv i32 %69, %39
  store i32 %70, ptr %66, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4, !annotation !8
  %71 = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #7
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef %15, ptr noundef nonnull @.str.8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  br label %226

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.devbus_read_params, ptr %11, i32 0, i32 3
  %76 = load i32, ptr %8, align 4
  %77 = add i32 %76, -1
  %78 = add i32 %77, %39
  %79 = udiv i32 %78, %39
  store i32 %79, ptr %75, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !8
  %80 = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #7
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef %15, ptr noundef nonnull @.str.9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  br label %226

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.devbus_read_params, ptr %11, i32 0, i32 4
  %85 = load i32, ptr %7, align 4
  %86 = add nsw i32 %39, -1
  %87 = add i32 %86, %85
  %88 = udiv i32 %87, %39
  store i32 %88, ptr %84, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  %89 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %90 = load ptr, ptr %89, align 8
  %91 = call i32 @of_device_is_compatible(ptr noundef %90, ptr noundef nonnull @.str.10) #7
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %113, label %93

93:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %94 = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.11, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #7
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef %15, ptr noundef nonnull @.str.11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %226

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.devbus_read_params, ptr %11, i32 0, i32 5
  %99 = load i32, ptr %6, align 4
  %100 = add i32 %86, %99
  %101 = udiv i32 %100, %39
  store i32 %101, ptr %98, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %102 = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.12, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #7
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef %15, ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %226

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.devbus_read_params, ptr %11, i32 0, i32 6
  %107 = load i32, ptr %5, align 4
  %108 = add i32 %86, %107
  %109 = udiv i32 %108, %39
  store i32 %109, ptr %106, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %110 = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.13, ptr noundef nonnull %12, i32 noundef 1, i32 noundef 0) #7
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.14, ptr noundef %15) #8
  br label %226

113:                                              ; preds = %105, %83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %114 = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.15, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #7
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef %15, ptr noundef nonnull @.str.15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %226

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.devbus_write_params, ptr %12, i32 0, i32 3
  %119 = load i32, ptr %4, align 4
  %120 = add i32 %86, %119
  %121 = udiv i32 %120, %39
  store i32 %121, ptr %118, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %122 = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.16, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef %15, ptr noundef nonnull @.str.16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %226

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.devbus_write_params, ptr %12, i32 0, i32 2
  %127 = load i32, ptr %3, align 4
  %128 = add i32 %86, %127
  %129 = udiv i32 %128, %39
  store i32 %129, ptr %126, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %130 = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.17, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef %15, ptr noundef nonnull @.str.17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %226

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.devbus_write_params, ptr %12, i32 0, i32 1
  %135 = load i32, ptr %2, align 4
  %136 = add i32 %86, %135
  %137 = udiv i32 %136, %39
  store i32 %137, ptr %134, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %138 = call i32 @of_device_is_compatible(ptr noundef %15, ptr noundef nonnull @.str.2) #7
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %189, label %140

140:                                              ; preds = %133
  %141 = load i32, ptr %66, align 4
  %142 = and i32 %141, 7
  %143 = load i32, ptr %75, align 4
  %144 = shl i32 %143, 3
  %145 = and i32 %144, 120
  %146 = or i32 %145, %142
  %147 = load i32, ptr %84, align 4
  %148 = shl i32 %147, 7
  %149 = and i32 %148, 1920
  %150 = or i32 %146, %149
  %151 = load i32, ptr %118, align 4
  %152 = shl i32 %151, 11
  %153 = and i32 %152, 14336
  %154 = or i32 %150, %153
  %155 = load i32, ptr %126, align 4
  %156 = shl i32 %155, 14
  %157 = and i32 %156, 114688
  %158 = or i32 %154, %157
  %159 = getelementptr inbounds %struct.devbus_write_params, ptr %12, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = shl i32 %160, 17
  %162 = and i32 %161, 917504
  %163 = or i32 %158, %162
  %164 = load i32, ptr %11, align 4
  %165 = shl i32 %164, 20
  %166 = or i32 %163, %165
  %167 = shl i32 %141, 19
  %168 = and i32 %167, 4194304
  %169 = shl i32 %143, 19
  %170 = and i32 %169, 8388608
  %171 = shl i32 %147, 20
  %172 = and i32 %171, 16777216
  %173 = shl i32 %151, 22
  %174 = and i32 %173, 33554432
  %175 = shl i32 %155, 23
  %176 = and i32 %175, 67108864
  %177 = shl i32 %160, 24
  %178 = and i32 %177, 134217728
  %179 = load i32, ptr %57, align 4
  %180 = shl i32 %179, 28
  %181 = or i32 %170, %168
  %182 = or i32 %181, %172
  %183 = or i32 %182, %174
  %184 = or i32 %183, %176
  %185 = or i32 %184, %178
  %186 = or i32 %185, %180
  %187 = or i32 %166, %186
  %188 = or i32 %187, -2147483648
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %188) #7, !srcloc !10
  br label %223

189:                                              ; preds = %133
  %190 = load i32, ptr %11, align 4
  %191 = shl i32 %190, 30
  %192 = load i32, ptr %57, align 4
  %193 = shl i32 %192, 28
  %194 = or i32 %193, %191
  %195 = getelementptr inbounds %struct.devbus_read_params, ptr %11, i32 0, i32 6
  %196 = load i32, ptr %195, align 4
  %197 = shl i32 %196, 23
  %198 = or i32 %194, %197
  %199 = load i32, ptr %84, align 4
  %200 = shl i32 %199, 17
  %201 = or i32 %198, %200
  %202 = getelementptr inbounds %struct.devbus_read_params, ptr %11, i32 0, i32 5
  %203 = load i32, ptr %202, align 4
  %204 = shl i32 %203, 12
  %205 = or i32 %201, %204
  %206 = load i32, ptr %75, align 4
  %207 = shl i32 %206, 6
  %208 = or i32 %205, %207
  %209 = load i32, ptr %66, align 4
  %210 = or i32 %208, %209
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %210) #7, !srcloc !10
  %211 = load i32, ptr %12, align 4
  %212 = shl i32 %211, 24
  %213 = load i32, ptr %126, align 4
  %214 = shl i32 %213, 8
  %215 = or i32 %214, %212
  %216 = getelementptr inbounds %struct.devbus_write_params, ptr %12, i32 0, i32 1
  %217 = load i32, ptr %216, align 4
  %218 = shl i32 %217, 16
  %219 = or i32 %215, %218
  %220 = load i32, ptr %118, align 4
  %221 = or i32 %219, %220
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  call void @arm_heavy_mb() #7
  %222 = getelementptr i8, ptr %19, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 %221) #7, !srcloc !10
  br label %223

223:                                              ; preds = %189, %140, %36
  %224 = call i32 @of_platform_populate(ptr noundef %15, ptr noundef null, ptr noundef null, ptr noundef %13) #7
  %225 = call i32 @llvm.smin.i32(i32 %224, i32 0)
  br label %226

226:                                              ; preds = %223, %132, %124, %116, %112, %104, %96, %82, %73, %64, %55, %50, %46, %27, %22, %1
  %227 = phi i32 [ %23, %22 ], [ %28, %27 ], [ -12, %1 ], [ %225, %223 ], [ %122, %124 ], [ %114, %116 ], [ %102, %104 ], [ %94, %96 ], [ %80, %82 ], [ %71, %73 ], [ %62, %64 ], [ %53, %55 ], [ -22, %50 ], [ %110, %112 ], [ %44, %46 ], [ %130, %132 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #7
  ret i32 %227
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{i64 2151494404}
!10 = !{i64 3008812}
!11 = !{i64 2151495510}
!12 = !{i64 2151496627}
