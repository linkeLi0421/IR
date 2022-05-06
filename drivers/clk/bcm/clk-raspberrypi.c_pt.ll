; ModuleID = '/llk/IR/drivers/clk/bcm/clk-raspberrypi.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-raspberrypi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.raspberrypi_firmware_prop = type { i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.raspberrypi_clk = type { ptr, ptr, ptr }
%struct.rpi_firmware_get_clocks_response = type { i32, i32 }
%struct.raspberrypi_clk_data = type { %struct.clk_hw, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__initcall__kmod_clk_raspberrypi__170_374_raspberrypi_clk_driver_init6 = internal global ptr @raspberrypi_clk_driver_init, section ".initcall6.init", align 4
@raspberrypi_clk_driver = internal global %struct.platform_driver { ptr @raspberrypi_clk_probe, ptr @raspberrypi_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @raspberrypi_clk_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_raspberrypi_clk_driver_exit = internal global ptr @raspberrypi_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [71 x i8] c"clk_raspberrypi.author=Nicolas Saenz Julienne <nsaenzjulienne@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [63 x i8] c"clk_raspberrypi.description=Raspberry Pi firmware clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [53 x i8] c"clk_raspberrypi.file=drivers/clk/bcm/clk-raspberrypi\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [28 x i8] c"clk_raspberrypi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [47 x i8] c"clk_raspberrypi.alias=platform:raspberrypi-clk\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"raspberrypi-clk\00", align 1
@raspberrypi_clk_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"raspberrypi,firmware-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"raspberrypi,bcm2835-firmware\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Missing firmware node\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"raspberrypi-cpufreq\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"fw-clk-%s\00", align 1
@rpi_firmware_clk_names = internal unnamed_addr constant [15 x ptr] [ptr null, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], align 4
@raspberrypi_firmware_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr @raspberrypi_fw_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @raspberrypi_fw_get_rate, ptr null, ptr @raspberrypi_fw_dumb_determine_rate, ptr null, ptr null, ptr @raspberrypi_fw_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to get clock %d min freq: %d\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to get clock %d max freq: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"cpu0\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Failed to initialize clkdev\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"emmc\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"v3d\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"h264\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"isp\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"sdram\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"pixel\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"hevc\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"emmc2\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"m2mc\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"pixel-bvb\00", align 1
@raspberrypi_fw_set_rate._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.raspberrypi_fw_set_rate = private unnamed_addr constant [24 x i8] c"raspberrypi_fw_set_rate\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Failed to change %s frequency: %d\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_raspberrypi_clk_driver_exit, ptr @__initcall__kmod_clk_raspberrypi__170_374_raspberrypi_clk_driver_init6, ptr @raspberrypi_clk_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @raspberrypi_clk_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @raspberrypi_clk_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @raspberrypi_clk_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @raspberrypi_clk_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raspberrypi_clk_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.platform_device_info, align 8
  %3 = alloca %struct.raspberrypi_firmware_prop, align 4
  %4 = alloca %struct.raspberrypi_firmware_prop, align 4
  %5 = alloca %struct.clk_init_data, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @of_get_parent(ptr noundef nonnull %8) #8
  br label %14

12:                                               ; preds = %1
  %13 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #9
  br label %115

18:                                               ; preds = %14
  %19 = tail call ptr @devm_rpi_firmware_get(ptr noundef %6, ptr noundef nonnull %15) #8
  tail call void @of_node_put(ptr noundef nonnull %15) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %115, label %21

21:                                               ; preds = %18
  %22 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 12, i32 noundef 3520) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %115, label %24

24:                                               ; preds = %21
  store ptr %6, ptr %22, align 4
  %25 = getelementptr inbounds %struct.raspberrypi_clk, ptr %22, i32 0, i32 1
  store ptr %19, ptr %25, align 4
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %22, ptr %26, align 8
  %27 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 64, i32 noundef 3520) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %115, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %22, align 4
  %31 = tail call noalias ptr @devm_kmalloc(ptr noundef %30, i32 noundef 120, i32 noundef 3520) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %115, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %25, align 4
  %35 = tail call i32 @rpi_firmware_property(ptr noundef %34, i32 noundef 65543, ptr noundef nonnull %31, i32 noundef 120) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %115

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %5, i32 8
  %39 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  %40 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  %41 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %4, i32 0, i32 1
  %42 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %4, i32 0, i32 2
  %43 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %3, i32 0, i32 1
  %44 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %3, i32 0, i32 2
  br label %45

45:                                               ; preds = %99, %37
  %46 = phi ptr [ %100, %99 ], [ %31, %37 ]
  %47 = getelementptr inbounds %struct.rpi_firmware_get_clocks_response, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  switch i32 %48, label %99 [
    i32 0, label %104
    i32 3, label %49
    i32 4, label %49
    i32 13, label %49
    i32 5, label %49
    i32 14, label %49
  ]

49:                                               ; preds = %45, %45, %45, %45, %45
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %38, i8 0, i32 16, i1 false) #8
  %50 = load ptr, ptr %22, align 4
  %51 = call noalias ptr @devm_kmalloc(ptr noundef %50, i32 noundef 20, i32 noundef 3520) #8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  br label %101

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.raspberrypi_clk_data, ptr %51, i32 0, i32 2
  store ptr %22, ptr %55, align 4
  %56 = getelementptr inbounds %struct.raspberrypi_clk_data, ptr %51, i32 0, i32 1
  store i32 %48, ptr %56, align 4
  %57 = load ptr, ptr %22, align 4
  %58 = getelementptr [15 x ptr], ptr @rpi_firmware_clk_names, i32 0, i32 %48
  %59 = load ptr, ptr %58, align 4
  %60 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %57, i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef %59) #8
  store ptr %60, ptr %5, align 4
  store ptr @raspberrypi_firmware_clk_ops, ptr %39, align 4
  store i32 64, ptr %40, align 4
  %61 = getelementptr inbounds %struct.clk_hw, ptr %51, i32 0, i32 2
  store ptr %5, ptr %61, align 4
  %62 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  store i32 %48, ptr %4, align 4
  store i32 0, ptr %41, align 4
  store i32 1, ptr %42, align 4
  %63 = call i32 @rpi_firmware_property(ptr noundef %62, i32 noundef 196615, ptr noundef nonnull %4, i32 noundef 12) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  %66 = load ptr, ptr %22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.5, i32 noundef %48, i32 noundef %63) #9
  %67 = inttoptr i32 %63 to ptr
  br label %92

68:                                               ; preds = %54
  %69 = load i32, ptr %41, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  %70 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  store i32 %48, ptr %3, align 4
  store i32 0, ptr %43, align 4
  store i32 1, ptr %44, align 4
  %71 = call i32 @rpi_firmware_property(ptr noundef %70, i32 noundef 196612, ptr noundef nonnull %3, i32 noundef 12) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  %74 = load ptr, ptr %22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.6, i32 noundef %48, i32 noundef %71) #9
  %75 = inttoptr i32 %71 to ptr
  br label %92

76:                                               ; preds = %68
  %77 = load i32, ptr %43, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  %78 = load ptr, ptr %22, align 4
  %79 = call i32 @devm_clk_hw_register(ptr noundef %78, ptr noundef nonnull %51) #8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = inttoptr i32 %79 to ptr
  br label %92

83:                                               ; preds = %76
  call void @clk_hw_set_rate_range(ptr noundef nonnull %51, i32 noundef %69, i32 noundef %77) #8
  %84 = icmp eq i32 %48, 3
  br i1 %84, label %85, label %92

85:                                               ; preds = %83
  %86 = load ptr, ptr %22, align 4
  %87 = call i32 @devm_clk_hw_register_clkdev(ptr noundef %86, ptr noundef nonnull %51, ptr noundef null, ptr noundef nonnull @.str.7) #8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.8) #9
  %91 = inttoptr i32 %87 to ptr
  br label %92

92:                                               ; preds = %89, %85, %83, %81, %73, %65
  %93 = phi ptr [ %67, %65 ], [ %75, %73 ], [ %82, %81 ], [ %91, %89 ], [ %51, %85 ], [ %51, %83 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  %94 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %47, align 4
  %97 = getelementptr %struct.clk_hw_onecell_data, ptr %27, i32 0, i32 1, i32 %96
  store ptr %93, ptr %97, align 4
  %98 = add i32 %96, 1
  store i32 %98, ptr %27, align 4
  br label %99

99:                                               ; preds = %95, %45
  %100 = getelementptr %struct.rpi_firmware_get_clocks_response, ptr %46, i32 1
  br label %45

101:                                              ; preds = %92, %53
  %102 = phi ptr [ inttoptr (i32 -12 to ptr), %53 ], [ %93, %92 ]
  %103 = ptrtoint ptr %102 to i32
  br label %115

104:                                              ; preds = %45
  %105 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %6, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %27) #8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #8
  %108 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %108, i8 0, i32 48, i1 false) #8, !annotation !8
  store ptr %6, ptr %2, align 8
  %109 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 1
  store ptr null, ptr %109, align 4
  %110 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 3
  store ptr @.str.3, ptr %110, align 4
  %111 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 4
  store i32 -1, ptr %111, align 8
  %112 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %112, i8 0, i64 16, i1 false) #8
  %113 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #8
  %114 = getelementptr inbounds %struct.raspberrypi_clk, ptr %22, i32 0, i32 2
  store ptr %113, ptr %114, align 4
  br label %115

115:                                              ; preds = %107, %104, %101, %33, %29, %24, %21, %18, %17
  %116 = phi i32 [ 0, %107 ], [ -2, %17 ], [ -517, %18 ], [ -12, %21 ], [ -12, %24 ], [ %103, %101 ], [ %105, %104 ], [ %35, %33 ], [ -12, %29 ]
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raspberrypi_clk_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.raspberrypi_clk, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @platform_device_unregister(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rpi_firmware_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpi_firmware_property(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_set_rate_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raspberrypi_fw_is_prepared(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.raspberrypi_firmware_prop, align 4
  %3 = getelementptr inbounds %struct.raspberrypi_clk_data, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.raspberrypi_clk, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  %7 = getelementptr inbounds %struct.raspberrypi_clk_data, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %2, align 4
  %9 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %2, i32 0, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %2, i32 0, i32 2
  store i32 1, ptr %10, align 4
  %11 = call i32 @rpi_firmware_property(ptr noundef %6, i32 noundef 196609, ptr noundef nonnull %2, i32 noundef 12) #8
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  %14 = and i32 %13, 1
  %15 = select i1 %12, i32 %14, i32 0
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raspberrypi_fw_get_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca %struct.raspberrypi_firmware_prop, align 4
  %4 = getelementptr inbounds %struct.raspberrypi_clk_data, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.raspberrypi_clk, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %8 = getelementptr inbounds %struct.raspberrypi_clk_data, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %3, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %3, i32 0, i32 2
  store i32 1, ptr %11, align 4
  %12 = call i32 @rpi_firmware_property(ptr noundef %7, i32 noundef 196610, ptr noundef nonnull %3, i32 noundef 12) #8
  %13 = icmp eq i32 %12, 0
  %14 = load i32, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  %15 = select i1 %13, i32 %14, i32 %12
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @raspberrypi_fw_dumb_determine_rate(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #6 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %3, i32 %5)
  %7 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %6, i32 %8)
  store i32 %9, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raspberrypi_fw_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.raspberrypi_firmware_prop, align 4
  %5 = getelementptr inbounds %struct.raspberrypi_clk_data, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.raspberrypi_clk, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %9 = getelementptr inbounds %struct.raspberrypi_clk_data, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %4, align 4
  %11 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %4, i32 0, i32 1
  store i32 %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %4, i32 0, i32 2
  store i32 1, ptr %12, align 4
  %13 = call i32 @rpi_firmware_property(ptr noundef %8, i32 noundef 229378, ptr noundef nonnull %4, i32 noundef 12) #8
  %14 = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = call i32 @___ratelimit(ptr noundef nonnull @raspberrypi_fw_set_rate._rs, ptr noundef nonnull @__func__.raspberrypi_fw_set_rate) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %6, align 4
  %20 = call ptr @clk_hw_get_name(ptr noundef %0) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.23, ptr noundef %20, i32 noundef %13) #9
  br label %21

21:                                               ; preds = %18, %15, %3
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
