; ModuleID = '/llk/IR/drivers/soc/bcm/raspberrypi-power.c_pt.bc'
source_filename = "../drivers/soc/bcm/raspberrypi-power.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rpi_power_domain_packet = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.rpi_power_domains = type { i8, %struct.genpd_onecell_data, ptr, [23 x %struct.rpi_power_domain] }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.rpi_power_domain = type { i32, i8, i8, %struct.generic_pm_domain, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.5 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.5 = type { %struct.mutex }

@__initcall__kmod_raspberrypi_power__162_241_rpi_power_driver_init6 = internal global ptr @rpi_power_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author163 = internal constant [62 x i8] c"raspberrypi_power.author=Alexander Aring <aar@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author164 = internal constant [55 x i8] c"raspberrypi_power.author=Eric Anholt <eric@anholt.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description165 = internal constant [63 x i8] c"raspberrypi_power.description=Raspberry Pi power domain driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file166 = internal constant [57 x i8] c"raspberrypi_power.file=drivers/soc/bcm/raspberrypi-power\00", section ".modinfo", align 1
@__UNIQUE_ID_license167 = internal constant [33 x i8] c"raspberrypi_power.license=GPL v2\00", section ".modinfo", align 1
@rpi_power_driver = internal global %struct.platform_driver { ptr @rpi_power_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpi_power_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [18 x i8] c"raspberrypi-power\00", align 1
@rpi_power_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"raspberrypi,bcm2835-power\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"no firmware node\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"I2C0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"I2C1\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"I2C2\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"VIDEO_SCALER\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"VPU1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"VEC\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"JPEG\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"H264\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"V3D\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"ISP\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"UNICAM0\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"UNICAM1\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"CCP2RX\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"CSI2\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"CPI\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"DSI0\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"DSI1\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"TRANSPOSER\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"CCP2TX\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"CDP\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"ARM\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_author164, ptr @__UNIQUE_ID_description165, ptr @__UNIQUE_ID_file166, ptr @__UNIQUE_ID_license167, ptr @__initcall__kmod_raspberrypi_power__162_241_rpi_power_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rpi_power_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpi_power_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpi_power_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.rpi_power_domain_packet, align 8
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 18792, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %333, label %7

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 92, i32 noundef 3520) #6
  %9 = getelementptr inbounds %struct.rpi_power_domains, ptr %5, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %333, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rpi_power_domains, ptr %5, i32 0, i32 1, i32 1
  store i32 23, ptr %12, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %14 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #6, !annotation !8
  %15 = call i32 @__of_parse_phandle_with_args(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #6
  %16 = icmp ne i32 %15, 0
  %17 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #6
  %18 = icmp eq ptr %17, null
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #7
  br label %333

21:                                               ; preds = %11
  %22 = call ptr @devm_rpi_firmware_get(ptr noundef %4, ptr noundef nonnull %17) #6
  %23 = getelementptr inbounds %struct.rpi_power_domains, ptr %5, i32 0, i32 2
  store ptr %22, ptr %23, align 8
  call void @of_node_put(ptr noundef nonnull %17) #6
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %333, label %26

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  store i64 -4294967274, ptr %2, align 8, !annotation !8
  %27 = getelementptr inbounds %struct.rpi_power_domain_packet, ptr %2, i32 0, i32 1
  %28 = call i32 @rpi_firmware_property(ptr noundef nonnull %24, i32 noundef 196656, ptr noundef nonnull %2, i32 noundef 8) #6
  %29 = icmp eq i32 %28, 0
  %30 = load i32, ptr %27, align 4
  %31 = icmp ne i32 %30, -1
  %32 = select i1 %29, i1 %31, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %33 = zext i1 %32 to i8
  store i8 %33, ptr %5, align 8
  br i1 %32, label %34, label %109

34:                                               ; preds = %26
  %35 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 0
  store i32 1, ptr %35, align 8
  %36 = load ptr, ptr %23, align 8
  %37 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 0, i32 4
  store ptr %36, ptr %37, align 8
  %38 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 0, i32 3
  %39 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 0, i32 3, i32 10
  store ptr @.str.3, ptr %39, align 4
  %40 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 0, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %40, align 8
  %41 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 0, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %41, align 4
  %42 = call i32 @pm_genpd_init(ptr noundef %38, ptr noundef null, i1 noundef zeroext true) #6
  %43 = load ptr, ptr %9, align 4
  store ptr %38, ptr %43, align 4
  %44 = load i8, ptr %5, align 8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %109, label %46

46:                                               ; preds = %34
  %47 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 1
  store i32 2, ptr %47, align 8
  %48 = load ptr, ptr %23, align 8
  %49 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 1, i32 4
  store ptr %48, ptr %49, align 8
  %50 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 1, i32 3
  %51 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 1, i32 3, i32 10
  store ptr @.str.4, ptr %51, align 4
  %52 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 1, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %52, align 8
  %53 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 1, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %53, align 4
  %54 = call i32 @pm_genpd_init(ptr noundef %50, ptr noundef null, i1 noundef zeroext true) #6
  %55 = load ptr, ptr %9, align 4
  %56 = getelementptr ptr, ptr %55, i32 1
  store ptr %50, ptr %56, align 4
  %57 = load i8, ptr %5, align 8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %109, label %59

59:                                               ; preds = %46
  %60 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 2
  store i32 3, ptr %60, align 8
  %61 = load ptr, ptr %23, align 8
  %62 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 2, i32 4
  store ptr %61, ptr %62, align 8
  %63 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 2, i32 3
  %64 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 2, i32 3, i32 10
  store ptr @.str.5, ptr %64, align 4
  %65 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 2, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %65, align 8
  %66 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 2, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %66, align 4
  %67 = call i32 @pm_genpd_init(ptr noundef %63, ptr noundef null, i1 noundef zeroext true) #6
  %68 = load ptr, ptr %9, align 4
  %69 = getelementptr ptr, ptr %68, i32 2
  store ptr %63, ptr %69, align 4
  %70 = load i8, ptr %5, align 8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %109, label %72

72:                                               ; preds = %59
  %73 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 3
  store i32 4, ptr %73, align 8
  %74 = load ptr, ptr %23, align 8
  %75 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 3, i32 4
  store ptr %74, ptr %75, align 8
  %76 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 3, i32 3
  %77 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 3, i32 3, i32 10
  store ptr @.str.6, ptr %77, align 4
  %78 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 3, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %78, align 8
  %79 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 3, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %79, align 4
  %80 = call i32 @pm_genpd_init(ptr noundef %76, ptr noundef null, i1 noundef zeroext true) #6
  %81 = load ptr, ptr %9, align 4
  %82 = getelementptr ptr, ptr %81, i32 3
  store ptr %76, ptr %82, align 4
  %83 = load i8, ptr %5, align 8
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %109, label %85

85:                                               ; preds = %72
  %86 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 4
  store i32 5, ptr %86, align 8
  %87 = load ptr, ptr %23, align 8
  %88 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 4, i32 4
  store ptr %87, ptr %88, align 8
  %89 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 4, i32 3
  %90 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 4, i32 3, i32 10
  store ptr @.str.7, ptr %90, align 4
  %91 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 4, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %91, align 8
  %92 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 4, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %92, align 4
  %93 = call i32 @pm_genpd_init(ptr noundef %89, ptr noundef null, i1 noundef zeroext true) #6
  %94 = load ptr, ptr %9, align 4
  %95 = getelementptr ptr, ptr %94, i32 4
  store ptr %89, ptr %95, align 4
  %96 = load i8, ptr %5, align 8
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %85
  %99 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 5
  store i32 6, ptr %99, align 8
  %100 = load ptr, ptr %23, align 8
  %101 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 5, i32 4
  store ptr %100, ptr %101, align 8
  %102 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 5, i32 3
  %103 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 5, i32 3, i32 10
  store ptr @.str.8, ptr %103, align 4
  %104 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 5, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %104, align 8
  %105 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 5, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %105, align 4
  %106 = call i32 @pm_genpd_init(ptr noundef %102, ptr noundef null, i1 noundef zeroext true) #6
  %107 = load ptr, ptr %9, align 4
  %108 = getelementptr ptr, ptr %107, i32 5
  store ptr %102, ptr %108, align 4
  br label %109

109:                                              ; preds = %98, %85, %72, %59, %46, %34, %26
  %110 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 6
  %111 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 6, i32 2
  store i8 1, ptr %111, align 1
  store i32 3, ptr %110, align 8
  %112 = load ptr, ptr %23, align 8
  %113 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 6, i32 4
  store ptr %112, ptr %113, align 8
  %114 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 6, i32 3
  %115 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 6, i32 3, i32 10
  store ptr @.str.9, ptr %115, align 4
  %116 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 6, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %116, align 8
  %117 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 6, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %117, align 4
  %118 = call i32 @pm_genpd_init(ptr noundef %114, ptr noundef null, i1 noundef zeroext true) #6
  %119 = load ptr, ptr %9, align 4
  %120 = getelementptr ptr, ptr %119, i32 6
  store ptr %114, ptr %120, align 4
  %121 = load i8, ptr %5, align 8
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %329, label %123

123:                                              ; preds = %109
  %124 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 7
  store i32 8, ptr %124, align 8
  %125 = load ptr, ptr %23, align 8
  %126 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 7, i32 4
  store ptr %125, ptr %126, align 8
  %127 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 7, i32 3
  %128 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 7, i32 3, i32 10
  store ptr @.str.10, ptr %128, align 4
  %129 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 7, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %129, align 8
  %130 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 7, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %130, align 4
  %131 = call i32 @pm_genpd_init(ptr noundef %127, ptr noundef null, i1 noundef zeroext true) #6
  %132 = load ptr, ptr %9, align 4
  %133 = getelementptr ptr, ptr %132, i32 7
  store ptr %127, ptr %133, align 4
  %134 = load i8, ptr %5, align 8
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %329, label %136

136:                                              ; preds = %123
  %137 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 8
  store i32 9, ptr %137, align 8
  %138 = load ptr, ptr %23, align 8
  %139 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 8, i32 4
  store ptr %138, ptr %139, align 8
  %140 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 8, i32 3
  %141 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 8, i32 3, i32 10
  store ptr @.str.11, ptr %141, align 4
  %142 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 8, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %142, align 8
  %143 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 8, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %143, align 4
  %144 = call i32 @pm_genpd_init(ptr noundef %140, ptr noundef null, i1 noundef zeroext true) #6
  %145 = load ptr, ptr %9, align 4
  %146 = getelementptr ptr, ptr %145, i32 8
  store ptr %140, ptr %146, align 4
  %147 = load i8, ptr %5, align 8
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %329, label %149

149:                                              ; preds = %136
  %150 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 9
  store i32 10, ptr %150, align 8
  %151 = load ptr, ptr %23, align 8
  %152 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 9, i32 4
  store ptr %151, ptr %152, align 8
  %153 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 9, i32 3
  %154 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 9, i32 3, i32 10
  store ptr @.str.12, ptr %154, align 4
  %155 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 9, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %155, align 8
  %156 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 9, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %156, align 4
  %157 = call i32 @pm_genpd_init(ptr noundef %153, ptr noundef null, i1 noundef zeroext true) #6
  %158 = load ptr, ptr %9, align 4
  %159 = getelementptr ptr, ptr %158, i32 9
  store ptr %153, ptr %159, align 4
  %160 = load i8, ptr %5, align 8
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %329, label %162

162:                                              ; preds = %149
  %163 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 10
  store i32 11, ptr %163, align 8
  %164 = load ptr, ptr %23, align 8
  %165 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 10, i32 4
  store ptr %164, ptr %165, align 8
  %166 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 10, i32 3
  %167 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 10, i32 3, i32 10
  store ptr @.str.13, ptr %167, align 4
  %168 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 10, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %168, align 8
  %169 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 10, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %169, align 4
  %170 = call i32 @pm_genpd_init(ptr noundef %166, ptr noundef null, i1 noundef zeroext true) #6
  %171 = load ptr, ptr %9, align 4
  %172 = getelementptr ptr, ptr %171, i32 10
  store ptr %166, ptr %172, align 4
  %173 = load i8, ptr %5, align 8
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %329, label %175

175:                                              ; preds = %162
  %176 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 11
  store i32 12, ptr %176, align 8
  %177 = load ptr, ptr %23, align 8
  %178 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 11, i32 4
  store ptr %177, ptr %178, align 8
  %179 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 11, i32 3
  %180 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 11, i32 3, i32 10
  store ptr @.str.14, ptr %180, align 4
  %181 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 11, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %181, align 8
  %182 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 11, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %182, align 4
  %183 = call i32 @pm_genpd_init(ptr noundef %179, ptr noundef null, i1 noundef zeroext true) #6
  %184 = load ptr, ptr %9, align 4
  %185 = getelementptr ptr, ptr %184, i32 11
  store ptr %179, ptr %185, align 4
  %186 = load i8, ptr %5, align 8
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %329, label %188

188:                                              ; preds = %175
  %189 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 12
  store i32 13, ptr %189, align 8
  %190 = load ptr, ptr %23, align 8
  %191 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 12, i32 4
  store ptr %190, ptr %191, align 8
  %192 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 12, i32 3
  %193 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 12, i32 3, i32 10
  store ptr @.str.15, ptr %193, align 4
  %194 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 12, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %194, align 8
  %195 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 12, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %195, align 4
  %196 = call i32 @pm_genpd_init(ptr noundef %192, ptr noundef null, i1 noundef zeroext true) #6
  %197 = load ptr, ptr %9, align 4
  %198 = getelementptr ptr, ptr %197, i32 12
  store ptr %192, ptr %198, align 4
  %199 = load i8, ptr %5, align 8
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %329, label %201

201:                                              ; preds = %188
  %202 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 13
  store i32 14, ptr %202, align 8
  %203 = load ptr, ptr %23, align 8
  %204 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 13, i32 4
  store ptr %203, ptr %204, align 8
  %205 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 13, i32 3
  %206 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 13, i32 3, i32 10
  store ptr @.str.16, ptr %206, align 4
  %207 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 13, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %207, align 8
  %208 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 13, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %208, align 4
  %209 = call i32 @pm_genpd_init(ptr noundef %205, ptr noundef null, i1 noundef zeroext true) #6
  %210 = load ptr, ptr %9, align 4
  %211 = getelementptr ptr, ptr %210, i32 13
  store ptr %205, ptr %211, align 4
  %212 = load i8, ptr %5, align 8
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %329, label %214

214:                                              ; preds = %201
  %215 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 14
  store i32 15, ptr %215, align 8
  %216 = load ptr, ptr %23, align 8
  %217 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 14, i32 4
  store ptr %216, ptr %217, align 8
  %218 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 14, i32 3
  %219 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 14, i32 3, i32 10
  store ptr @.str.17, ptr %219, align 4
  %220 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 14, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %220, align 8
  %221 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 14, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %221, align 4
  %222 = call i32 @pm_genpd_init(ptr noundef %218, ptr noundef null, i1 noundef zeroext true) #6
  %223 = load ptr, ptr %9, align 4
  %224 = getelementptr ptr, ptr %223, i32 14
  store ptr %218, ptr %224, align 4
  %225 = load i8, ptr %5, align 8
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %329, label %227

227:                                              ; preds = %214
  %228 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 15
  store i32 16, ptr %228, align 8
  %229 = load ptr, ptr %23, align 8
  %230 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 15, i32 4
  store ptr %229, ptr %230, align 8
  %231 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 15, i32 3
  %232 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 15, i32 3, i32 10
  store ptr @.str.18, ptr %232, align 4
  %233 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 15, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %233, align 8
  %234 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 15, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %234, align 4
  %235 = call i32 @pm_genpd_init(ptr noundef %231, ptr noundef null, i1 noundef zeroext true) #6
  %236 = load ptr, ptr %9, align 4
  %237 = getelementptr ptr, ptr %236, i32 15
  store ptr %231, ptr %237, align 4
  %238 = load i8, ptr %5, align 8
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %329, label %240

240:                                              ; preds = %227
  %241 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 16
  store i32 17, ptr %241, align 8
  %242 = load ptr, ptr %23, align 8
  %243 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 16, i32 4
  store ptr %242, ptr %243, align 8
  %244 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 16, i32 3
  %245 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 16, i32 3, i32 10
  store ptr @.str.19, ptr %245, align 4
  %246 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 16, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %246, align 8
  %247 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 16, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %247, align 4
  %248 = call i32 @pm_genpd_init(ptr noundef %244, ptr noundef null, i1 noundef zeroext true) #6
  %249 = load ptr, ptr %9, align 4
  %250 = getelementptr ptr, ptr %249, i32 16
  store ptr %244, ptr %250, align 4
  %251 = load i8, ptr %5, align 8
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %329, label %253

253:                                              ; preds = %240
  %254 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 17
  store i32 18, ptr %254, align 8
  %255 = load ptr, ptr %23, align 8
  %256 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 17, i32 4
  store ptr %255, ptr %256, align 8
  %257 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 17, i32 3
  %258 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 17, i32 3, i32 10
  store ptr @.str.20, ptr %258, align 4
  %259 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 17, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %259, align 8
  %260 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 17, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %260, align 4
  %261 = call i32 @pm_genpd_init(ptr noundef %257, ptr noundef null, i1 noundef zeroext true) #6
  %262 = load ptr, ptr %9, align 4
  %263 = getelementptr ptr, ptr %262, i32 17
  store ptr %257, ptr %263, align 4
  %264 = load i8, ptr %5, align 8
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %329, label %266

266:                                              ; preds = %253
  %267 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 18
  store i32 19, ptr %267, align 8
  %268 = load ptr, ptr %23, align 8
  %269 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 18, i32 4
  store ptr %268, ptr %269, align 8
  %270 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 18, i32 3
  %271 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 18, i32 3, i32 10
  store ptr @.str.21, ptr %271, align 4
  %272 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 18, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %272, align 8
  %273 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 18, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %273, align 4
  %274 = call i32 @pm_genpd_init(ptr noundef %270, ptr noundef null, i1 noundef zeroext true) #6
  %275 = load ptr, ptr %9, align 4
  %276 = getelementptr ptr, ptr %275, i32 18
  store ptr %270, ptr %276, align 4
  %277 = load i8, ptr %5, align 8
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %329, label %279

279:                                              ; preds = %266
  %280 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 19
  store i32 20, ptr %280, align 8
  %281 = load ptr, ptr %23, align 8
  %282 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 19, i32 4
  store ptr %281, ptr %282, align 8
  %283 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 19, i32 3
  %284 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 19, i32 3, i32 10
  store ptr @.str.22, ptr %284, align 4
  %285 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 19, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %285, align 8
  %286 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 19, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %286, align 4
  %287 = call i32 @pm_genpd_init(ptr noundef %283, ptr noundef null, i1 noundef zeroext true) #6
  %288 = load ptr, ptr %9, align 4
  %289 = getelementptr ptr, ptr %288, i32 19
  store ptr %283, ptr %289, align 4
  %290 = load i8, ptr %5, align 8
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %329, label %292

292:                                              ; preds = %279
  %293 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 20
  store i32 21, ptr %293, align 8
  %294 = load ptr, ptr %23, align 8
  %295 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 20, i32 4
  store ptr %294, ptr %295, align 8
  %296 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 20, i32 3
  %297 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 20, i32 3, i32 10
  store ptr @.str.23, ptr %297, align 4
  %298 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 20, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %298, align 8
  %299 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 20, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %299, align 4
  %300 = call i32 @pm_genpd_init(ptr noundef %296, ptr noundef null, i1 noundef zeroext true) #6
  %301 = load ptr, ptr %9, align 4
  %302 = getelementptr ptr, ptr %301, i32 20
  store ptr %296, ptr %302, align 4
  %303 = load i8, ptr %5, align 8
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %329, label %305

305:                                              ; preds = %292
  %306 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 21
  store i32 22, ptr %306, align 8
  %307 = load ptr, ptr %23, align 8
  %308 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 21, i32 4
  store ptr %307, ptr %308, align 8
  %309 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 21, i32 3
  %310 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 21, i32 3, i32 10
  store ptr @.str.24, ptr %310, align 4
  %311 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 21, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %311, align 8
  %312 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 21, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %312, align 4
  %313 = call i32 @pm_genpd_init(ptr noundef %309, ptr noundef null, i1 noundef zeroext true) #6
  %314 = load ptr, ptr %9, align 4
  %315 = getelementptr ptr, ptr %314, i32 21
  store ptr %309, ptr %315, align 4
  %316 = load i8, ptr %5, align 8
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %329, label %318

318:                                              ; preds = %305
  %319 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 22
  store i32 23, ptr %319, align 8
  %320 = load ptr, ptr %23, align 8
  %321 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 22, i32 4
  store ptr %320, ptr %321, align 8
  %322 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 22, i32 3
  %323 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 22, i32 3, i32 10
  store ptr @.str.25, ptr %323, align 4
  %324 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 22, i32 3, i32 19
  store ptr @rpi_domain_on, ptr %324, align 8
  %325 = getelementptr %struct.rpi_power_domains, ptr %5, i32 0, i32 3, i32 22, i32 3, i32 18
  store ptr @rpi_domain_off, ptr %325, align 4
  %326 = call i32 @pm_genpd_init(ptr noundef %322, ptr noundef null, i1 noundef zeroext true) #6
  %327 = load ptr, ptr %9, align 4
  %328 = getelementptr ptr, ptr %327, i32 22
  store ptr %322, ptr %328, align 4
  br label %329

329:                                              ; preds = %318, %305, %292, %279, %266, %253, %240, %227, %214, %201, %188, %175, %162, %149, %136, %123, %109
  %330 = load ptr, ptr %13, align 8
  %331 = call i32 @of_genpd_add_provider_onecell(ptr noundef %330, ptr noundef %9) #6
  %332 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %332, align 8
  br label %333

333:                                              ; preds = %329, %21, %20, %7, %1
  %334 = phi i32 [ 0, %329 ], [ -19, %20 ], [ -12, %1 ], [ -12, %7 ], [ -517, %21 ]
  ret i32 %334
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rpi_firmware_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpi_firmware_property(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpi_domain_on(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.rpi_power_domain_packet, align 8
  %3 = getelementptr i8, ptr %0, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %4 = load i32, ptr %3, align 8
  store i32 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.rpi_power_domain_packet, ptr %2, i32 0, i32 1
  store i32 1, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 800
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %0, i32 -3
  %9 = load i8, ptr %8, align 1, !range !9
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 229424, i32 163841
  %12 = call i32 @rpi_firmware_property(ptr noundef %7, i32 noundef %11, ptr noundef nonnull %2, i32 noundef 8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpi_domain_off(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.rpi_power_domain_packet, align 8
  %3 = getelementptr i8, ptr %0, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %4 = load i32, ptr %3, align 8
  store i32 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.rpi_power_domain_packet, ptr %2, i32 0, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 800
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %0, i32 -3
  %9 = load i8, ptr %8, align 1, !range !9
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 229424, i32 163841
  %12 = call i32 @rpi_firmware_property(ptr noundef %7, i32 noundef %11, ptr noundef nonnull %2, i32 noundef 8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{i8 0, i8 2}
