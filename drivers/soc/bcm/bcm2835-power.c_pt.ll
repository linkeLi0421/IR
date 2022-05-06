; ModuleID = '/llk/IR/drivers/soc/bcm/bcm2835-power.c_pt.bc'
source_filename = "../drivers/soc/bcm/bcm2835-power.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.bcm2835_pm = type { ptr, ptr, ptr }
%struct.bcm2835_power = type { ptr, ptr, ptr, %struct.genpd_onecell_data, [13 x %struct.bcm2835_power_domain], %struct.reset_controller_dev }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.bcm2835_power_domain = type { %struct.generic_pm_domain, ptr, i32, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.5 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.5 = type { %struct.mutex }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@__initcall__kmod_bcm2835_power__162_692_bcm2835_power_driver_init6 = internal global ptr @bcm2835_power_driver_init, section ".initcall6.init", align 4
@bcm2835_power_driver = internal global %struct.platform_driver { ptr @bcm2835_power_probe, ptr @bcm2835_power_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm2835_power_driver_exit = internal global ptr @bcm2835_power_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [51 x i8] c"bcm2835_power.author=Eric Anholt <eric@anholt.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [81 x i8] c"bcm2835_power.description=Driver for Broadcom BCM2835 PM power domains and reset\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [49 x i8] c"bcm2835_power.file=drivers/soc/bcm/bcm2835-power\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [26 x i8] c"bcm2835_power.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"bcm2835-power\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ASB register ID returned 0x%08x\0A\00", align 1
@power_domain_names = internal unnamed_addr constant [13 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], align 4
@bcm2835_reset_ops = internal constant %struct.reset_control_ops { ptr @bcm2835_reset_reset, ptr null, ptr null, ptr @bcm2835_reset_status }, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Broadcom BCM2835 power domains driver\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Invalid domain %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Timeout waiting for %s power OK\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Timeout waiting for %s memory repair\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to enable clock for %s\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Failed to enable ASB master for %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Failed to enable ASB slave for %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Failed to disable ASB slave for %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Failed to disable ASB master for %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"grafx\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"v3d\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"peri_image\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"isp\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"h264\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"dsi0\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"dsi1\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"cam0\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"cam1\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"ccp2tx\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Bad reset id %ld\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_bcm2835_power_driver_exit, ptr @__initcall__kmod_bcm2835_power__162_692_bcm2835_power_driver_init6, ptr @bcm2835_power_driver_exit], section "llvm.metadata"
@switch.table.bcm2835_reset_reset = private unnamed_addr constant [3 x i32] [i32 -9792, i32 -7344, i32 -6528], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm2835_power_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_power_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm2835_power_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_power_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_power_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 10680, i32 noundef 3520) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %175, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %10, align 8
  store ptr %2, ptr %7, align 8
  %11 = getelementptr inbounds %struct.bcm2835_pm, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.bcm2835_power, ptr %7, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.bcm2835_pm, ptr %6, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.bcm2835_power, ptr %7, i32 0, i32 2
  store ptr %15, ptr %16, align 8
  %17 = getelementptr i8, ptr %15, i32 32
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %19 = icmp eq i32 %18, 1651663975
  br i1 %19, label %21, label %20

20:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %18) #6
  br label %175

21:                                               ; preds = %9
  %22 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 52, i32 noundef 3520) #5
  %23 = getelementptr inbounds %struct.bcm2835_power, ptr %7, i32 0, i32 3
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %175, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bcm2835_power, ptr %7, i32 0, i32 3, i32 1
  store i32 13, ptr %26, align 4
  br label %27

27:                                               ; preds = %41, %25
  %28 = phi i32 [ 0, %25 ], [ %50, %41 ]
  %29 = getelementptr [13 x ptr], ptr @power_domain_names, i32 0, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 %28
  %33 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = tail call ptr @devm_clk_get(ptr noundef %34, ptr noundef %30) #5
  %36 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 %28, i32 3
  store ptr %35, ptr %36, align 8
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = icmp eq ptr %35, inttoptr (i32 -517 to ptr)
  br i1 %39, label %83, label %40

40:                                               ; preds = %38
  store ptr null, ptr %36, align 8
  br label %41

41:                                               ; preds = %40, %27
  %42 = getelementptr inbounds %struct.generic_pm_domain, ptr %32, i32 0, i32 10
  store ptr %30, ptr %42, align 4
  %43 = getelementptr inbounds %struct.generic_pm_domain, ptr %32, i32 0, i32 19
  store ptr @bcm2835_power_pd_power_on, ptr %43, align 8
  %44 = getelementptr inbounds %struct.generic_pm_domain, ptr %32, i32 0, i32 18
  store ptr @bcm2835_power_pd_power_off, ptr %44, align 4
  %45 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 %28, i32 2
  store i32 %28, ptr %45, align 4
  %46 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 %28, i32 1
  store ptr %7, ptr %46, align 8
  %47 = tail call i32 @pm_genpd_init(ptr noundef %32, ptr noundef null, i1 noundef zeroext true) #5
  %48 = load ptr, ptr %23, align 4
  %49 = getelementptr ptr, ptr %48, i32 %28
  store ptr %32, ptr %49, align 4
  %50 = add nuw nsw i32 %28, 1
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %52, label %27

52:                                               ; preds = %41
  %53 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 0
  %54 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 1
  %55 = tail call i32 @pm_genpd_add_subdomain(ptr noundef %53, ptr noundef %54) #5
  %56 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 2
  %57 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 3
  %58 = tail call i32 @pm_genpd_add_subdomain(ptr noundef %56, ptr noundef %57) #5
  %59 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 5
  %60 = tail call i32 @pm_genpd_add_subdomain(ptr noundef %56, ptr noundef %59) #5
  %61 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 4
  %62 = tail call i32 @pm_genpd_add_subdomain(ptr noundef %56, ptr noundef %61) #5
  %63 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 6
  %64 = tail call i32 @pm_genpd_add_subdomain(ptr noundef %57, ptr noundef %63) #5
  %65 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 9
  %66 = tail call i32 @pm_genpd_add_subdomain(ptr noundef %57, ptr noundef %65) #5
  %67 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 10
  %68 = tail call i32 @pm_genpd_add_subdomain(ptr noundef %57, ptr noundef %67) #5
  %69 = getelementptr inbounds %struct.bcm2835_power, ptr %7, i32 0, i32 5
  %70 = getelementptr inbounds %struct.bcm2835_power, ptr %7, i32 0, i32 5, i32 1
  store ptr null, ptr %70, align 4
  %71 = getelementptr inbounds %struct.bcm2835_power, ptr %7, i32 0, i32 5, i32 8
  store i32 3, ptr %71, align 8
  store ptr @bcm2835_reset_ops, ptr %69, align 8
  %72 = load ptr, ptr %3, align 4
  %73 = getelementptr inbounds %struct.device, ptr %72, i32 0, i32 25
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.bcm2835_power, ptr %7, i32 0, i32 5, i32 5
  store ptr %74, ptr %75, align 4
  %76 = tail call i32 @devm_reset_controller_register(ptr noundef %2, ptr noundef %69) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %52
  %79 = load ptr, ptr %3, align 4
  %80 = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 25
  %81 = load ptr, ptr %80, align 8
  %82 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %81, ptr noundef %23) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  br label %175

83:                                               ; preds = %52, %38
  %84 = phi i32 [ %76, %52 ], [ -517, %38 ]
  %85 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 0, i32 0, i32 10
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 0
  %90 = tail call i32 @pm_genpd_remove(ptr noundef %89) #5
  br label %91

91:                                               ; preds = %88, %83
  %92 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 1, i32 0, i32 10
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 1
  %97 = tail call i32 @pm_genpd_remove(ptr noundef %96) #5
  br label %98

98:                                               ; preds = %95, %91
  %99 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 2, i32 0, i32 10
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 2
  %104 = tail call i32 @pm_genpd_remove(ptr noundef %103) #5
  br label %105

105:                                              ; preds = %102, %98
  %106 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 3, i32 0, i32 10
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 3
  %111 = tail call i32 @pm_genpd_remove(ptr noundef %110) #5
  br label %112

112:                                              ; preds = %109, %105
  %113 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 4, i32 0, i32 10
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 4
  %118 = tail call i32 @pm_genpd_remove(ptr noundef %117) #5
  br label %119

119:                                              ; preds = %116, %112
  %120 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 5, i32 0, i32 10
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 5
  %125 = tail call i32 @pm_genpd_remove(ptr noundef %124) #5
  br label %126

126:                                              ; preds = %123, %119
  %127 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 6, i32 0, i32 10
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 6
  %132 = tail call i32 @pm_genpd_remove(ptr noundef %131) #5
  br label %133

133:                                              ; preds = %130, %126
  %134 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 7, i32 0, i32 10
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %133
  %138 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 7
  %139 = tail call i32 @pm_genpd_remove(ptr noundef %138) #5
  br label %140

140:                                              ; preds = %137, %133
  %141 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 8, i32 0, i32 10
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 8
  %146 = tail call i32 @pm_genpd_remove(ptr noundef %145) #5
  br label %147

147:                                              ; preds = %144, %140
  %148 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 9, i32 0, i32 10
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 9
  %153 = tail call i32 @pm_genpd_remove(ptr noundef %152) #5
  br label %154

154:                                              ; preds = %151, %147
  %155 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 10, i32 0, i32 10
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 10
  %160 = tail call i32 @pm_genpd_remove(ptr noundef %159) #5
  br label %161

161:                                              ; preds = %158, %154
  %162 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 11, i32 0, i32 10
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 11
  %167 = tail call i32 @pm_genpd_remove(ptr noundef %166) #5
  br label %168

168:                                              ; preds = %165, %161
  %169 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 12, i32 0, i32 10
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %175, label %172

172:                                              ; preds = %168
  %173 = getelementptr %struct.bcm2835_power, ptr %7, i32 0, i32 4, i32 12
  %174 = tail call i32 @pm_genpd_remove(ptr noundef %173) #5
  br label %175

175:                                              ; preds = %172, %168, %78, %21, %20, %1
  %176 = phi i32 [ -19, %20 ], [ 0, %78 ], [ -12, %1 ], [ -12, %21 ], [ %84, %172 ], [ %84, %168 ]
  ret i32 %176
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_power_remove(ptr nocapture noundef readnone %0) #3 {
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_power_pd_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %68 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %10
    i32 3, label %12
    i32 4, label %14
    i32 5, label %16
    i32 6, label %18
    i32 7, label %22
    i32 8, label %28
    i32 11, label %34
    i32 12, label %40
  ]

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @bcm2835_power_power_on(ptr noundef %0, i32 noundef 268)
  br label %70

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @bcm2835_asb_power_on(ptr noundef %0, i32 noundef 268, i32 noundef 12, i32 noundef 8, i32 noundef 64)
  br label %70

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @bcm2835_power_power_on(ptr noundef %0, i32 noundef 264)
  br label %70

12:                                               ; preds = %1
  %13 = tail call fastcc i32 @bcm2835_asb_power_on(ptr noundef %0, i32 noundef 264, i32 noundef 0, i32 noundef 0, i32 noundef 64)
  br label %70

14:                                               ; preds = %1
  %15 = tail call fastcc i32 @bcm2835_asb_power_on(ptr noundef %0, i32 noundef 264, i32 noundef 20, i32 noundef 16, i32 noundef 256)
  br label %70

16:                                               ; preds = %1
  %17 = tail call fastcc i32 @bcm2835_asb_power_on(ptr noundef %0, i32 noundef 264, i32 noundef 28, i32 noundef 24, i32 noundef 128)
  br label %70

18:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %19 = getelementptr inbounds %struct.bcm2835_power, ptr %3, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 1509949441) #5, !srcloc !11
  br label %70

22:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %23 = getelementptr inbounds %struct.bcm2835_power, ptr %3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 1509949441) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr i8, ptr %26, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 1509949445) #5, !srcloc !11
  br label %70

28:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %29 = getelementptr inbounds %struct.bcm2835_power, ptr %3, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 1509949441) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr i8, ptr %32, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 1509949445) #5, !srcloc !11
  br label %70

34:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %35 = getelementptr inbounds %struct.bcm2835_power, ptr %3, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 1509949441) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %38 = load ptr, ptr %35, align 4
  %39 = getelementptr i8, ptr %38, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 1509949443) #5, !srcloc !11
  br label %70

40:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %41 = getelementptr inbounds %struct.bcm2835_power, ptr %3, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 88
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %45 = or i32 %44, 1510473728
  %46 = load ptr, ptr %41, align 4
  %47 = getelementptr i8, ptr %46, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %48 = load ptr, ptr %41, align 4
  %49 = getelementptr i8, ptr %48, i32 88
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %51 = or i32 %50, 1509949441
  %52 = load ptr, ptr %41, align 4
  %53 = getelementptr i8, ptr %52, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %54 = load ptr, ptr %41, align 4
  %55 = getelementptr i8, ptr %54, i32 88
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !23
  %57 = and i32 %56, -1509949443
  %58 = or i32 %57, 1509949440
  %59 = load ptr, ptr %41, align 4
  %60 = getelementptr i8, ptr %59, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #5, !srcloc !11
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %61 = load ptr, ptr %41, align 4
  %62 = getelementptr i8, ptr %61, i32 88
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !25
  %64 = and i32 %63, -1510473729
  %65 = or i32 %64, 1509949440
  %66 = load ptr, ptr %41, align 4
  %67 = getelementptr i8, ptr %66, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #5, !srcloc !11
  br label %70

68:                                               ; preds = %1
  %69 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.3, i32 noundef %5) #6
  br label %70

70:                                               ; preds = %68, %40, %34, %28, %22, %18, %16, %14, %12, %10, %8, %6
  %71 = phi i32 [ -22, %68 ], [ 0, %40 ], [ 0, %34 ], [ 0, %28 ], [ 0, %22 ], [ 0, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_power_pd_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %106 [
    i32 0, label %6
    i32 1, label %29
    i32 2, label %31
    i32 3, label %54
    i32 4, label %65
    i32 5, label %67
    i32 6, label %69
    i32 7, label %73
    i32 8, label %79
    i32 11, label %85
    i32 12, label %91
  ]

6:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %7 = getelementptr inbounds %struct.bcm2835_power, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 268
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !27
  %11 = and i32 %10, -1509949473
  %12 = or i32 %11, 1509949440
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr i8, ptr %13, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %15, i32 268
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %18 = and i32 %17, -1509949445
  %19 = or i32 %18, 1509949440
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr i8, ptr %20, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr i8, ptr %22, i32 268
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !31
  %25 = and i32 %24, -1509949442
  %26 = or i32 %25, 1509949440
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr i8, ptr %27, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #5, !srcloc !11
  br label %108

29:                                               ; preds = %1
  %30 = tail call fastcc i32 @bcm2835_asb_power_off(ptr noundef %0, i32 noundef 268, i32 noundef 12, i32 noundef 8, i32 noundef 64)
  br label %108

31:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %32 = getelementptr inbounds %struct.bcm2835_power, ptr %3, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 264
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !27
  %36 = and i32 %35, -1509949473
  %37 = or i32 %36, 1509949440
  %38 = load ptr, ptr %32, align 4
  %39 = getelementptr i8, ptr %38, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %40 = load ptr, ptr %32, align 4
  %41 = getelementptr i8, ptr %40, i32 264
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %43 = and i32 %42, -1509949445
  %44 = or i32 %43, 1509949440
  %45 = load ptr, ptr %32, align 4
  %46 = getelementptr i8, ptr %45, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %47 = load ptr, ptr %32, align 4
  %48 = getelementptr i8, ptr %47, i32 264
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !31
  %50 = and i32 %49, -1509949442
  %51 = or i32 %50, 1509949440
  %52 = load ptr, ptr %32, align 4
  %53 = getelementptr i8, ptr %52, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #5, !srcloc !11
  br label %108

54:                                               ; preds = %1
  %55 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  tail call void @clk_disable(ptr noundef %56) #5
  tail call void @clk_unprepare(ptr noundef %56) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %57 = getelementptr inbounds %struct.bcm2835_power, ptr %3, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 264
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !33
  %61 = and i32 %60, -1509949505
  %62 = or i32 %61, 1509949440
  %63 = load ptr, ptr %57, align 4
  %64 = getelementptr i8, ptr %63, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #5, !srcloc !11
  br label %108

65:                                               ; preds = %1
  %66 = tail call fastcc i32 @bcm2835_asb_power_off(ptr noundef %0, i32 noundef 264, i32 noundef 20, i32 noundef 16, i32 noundef 256)
  br label %108

67:                                               ; preds = %1
  %68 = tail call fastcc i32 @bcm2835_asb_power_off(ptr noundef %0, i32 noundef 264, i32 noundef 28, i32 noundef 24, i32 noundef 128)
  br label %108

69:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %70 = getelementptr inbounds %struct.bcm2835_power, ptr %3, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 1509949440) #5, !srcloc !11
  br label %108

73:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %74 = getelementptr inbounds %struct.bcm2835_power, ptr %3, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 1509949441) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %77 = load ptr, ptr %74, align 4
  %78 = getelementptr i8, ptr %77, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 1509949440) #5, !srcloc !11
  br label %108

79:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %80 = getelementptr inbounds %struct.bcm2835_power, ptr %3, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 1509949441) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %83 = load ptr, ptr %80, align 4
  %84 = getelementptr i8, ptr %83, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 1509949440) #5, !srcloc !11
  br label %108

85:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %86 = getelementptr inbounds %struct.bcm2835_power, ptr %3, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %87, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 1509949441) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %89 = load ptr, ptr %86, align 4
  %90 = getelementptr i8, ptr %89, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 1509949440) #5, !srcloc !11
  br label %108

91:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %92 = getelementptr inbounds %struct.bcm2835_power, ptr %3, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 88
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !42
  %96 = or i32 %95, 1509949442
  %97 = load ptr, ptr %92, align 4
  %98 = getelementptr i8, ptr %97, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %99 = load ptr, ptr %92, align 4
  %100 = getelementptr i8, ptr %99, i32 88
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !44
  %102 = and i32 %101, -1509949442
  %103 = or i32 %102, 1509949440
  %104 = load ptr, ptr %92, align 4
  %105 = getelementptr i8, ptr %104, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #5, !srcloc !11
  br label %108

106:                                              ; preds = %1
  %107 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.3, i32 noundef %5) #6
  br label %108

108:                                              ; preds = %106, %91, %85, %79, %73, %69, %67, %65, %54, %31, %29, %6
  %109 = phi i32 [ -22, %106 ], [ 0, %91 ], [ 0, %85 ], [ 0, %79 ], [ 0, %73 ], [ 0, %69 ], [ %68, %67 ], [ %66, %65 ], [ 0, %54 ], [ 0, %31 ], [ %30, %29 ], [ 0, %6 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm2835_power_power_on(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcm2835_power, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 %1
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !45
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %139

12:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 %1
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !47
  %16 = and i32 %15, -1509974018
  %17 = or i32 %16, 1509949441
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr i8, ptr %18, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !11
  %20 = tail call i64 @ktime_get() #5
  br label %21

21:                                               ; preds = %27, %12
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 %1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !48
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !49
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !50
  %28 = tail call i64 @ktime_get() #5
  %29 = sub i64 %28, %20
  %30 = icmp ugt i64 %29, 2999
  br i1 %30, label %31, label %21

31:                                               ; preds = %27, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr i8, ptr %32, i32 %1
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !47
  %35 = and i32 %34, -1509974018
  %36 = or i32 %35, 1509957633
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr i8, ptr %37, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #5, !srcloc !11
  %39 = tail call i64 @ktime_get() #5
  br label %40

40:                                               ; preds = %46, %31
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr i8, ptr %41, i32 %1
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !48
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !49
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !50
  %47 = tail call i64 @ktime_get() #5
  %48 = sub i64 %47, %39
  %49 = icmp ugt i64 %48, 2999
  br i1 %49, label %50, label %40

50:                                               ; preds = %46, %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %51 = load ptr, ptr %6, align 4
  %52 = getelementptr i8, ptr %51, i32 %1
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !47
  %54 = and i32 %53, -1509974018
  %55 = or i32 %54, 1509965825
  %56 = load ptr, ptr %6, align 4
  %57 = getelementptr i8, ptr %56, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #5, !srcloc !11
  %58 = tail call i64 @ktime_get() #5
  br label %59

59:                                               ; preds = %65, %50
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr i8, ptr %60, i32 %1
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !48
  %63 = and i32 %62, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !49
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !50
  %66 = tail call i64 @ktime_get() #5
  %67 = sub i64 %66, %58
  %68 = icmp ugt i64 %67, 2999
  br i1 %68, label %69, label %59

69:                                               ; preds = %65, %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %70 = load ptr, ptr %6, align 4
  %71 = getelementptr i8, ptr %70, i32 %1
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !47
  %73 = or i32 %72, 1509974017
  %74 = load ptr, ptr %6, align 4
  %75 = getelementptr i8, ptr %74, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #5, !srcloc !11
  %76 = tail call i64 @ktime_get() #5
  br label %77

77:                                               ; preds = %83, %69
  %78 = load ptr, ptr %6, align 4
  %79 = getelementptr i8, ptr %78, i32 %1
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !48
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !49
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !50
  %84 = tail call i64 @ktime_get() #5
  %85 = sub i64 %84, %76
  %86 = icmp ugt i64 %85, 2999
  br i1 %86, label %87, label %77

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %89 = load ptr, ptr %88, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef %89) #6
  br label %131

90:                                               ; preds = %77
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %91 = load ptr, ptr %6, align 4
  %92 = getelementptr i8, ptr %91, i32 %1
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !52
  %94 = or i32 %93, 1509949444
  %95 = load ptr, ptr %6, align 4
  %96 = getelementptr i8, ptr %95, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %97 = load ptr, ptr %6, align 4
  %98 = getelementptr i8, ptr %97, i32 %1
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !54
  %100 = or i32 %99, 1509949448
  %101 = load ptr, ptr %6, align 4
  %102 = getelementptr i8, ptr %101, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #5, !srcloc !11
  %103 = tail call i64 @ktime_get() #5
  br label %104

104:                                              ; preds = %110, %90
  %105 = load ptr, ptr %6, align 4
  %106 = getelementptr i8, ptr %105, i32 %1
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !55
  %108 = and i32 %107, 16
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %104
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !56
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !57
  %111 = tail call i64 @ktime_get() #5
  %112 = sub i64 %111, %103
  %113 = icmp ugt i64 %112, 999
  br i1 %113, label %114, label %104

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %116 = load ptr, ptr %115, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef %116) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %117 = load ptr, ptr %6, align 4
  %118 = getelementptr i8, ptr %117, i32 %1
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !59
  %120 = and i32 %119, -1509949445
  %121 = or i32 %120, 1509949440
  %122 = load ptr, ptr %6, align 4
  %123 = getelementptr i8, ptr %122, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #5, !srcloc !11
  br label %131

124:                                              ; preds = %104
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %125 = load ptr, ptr %6, align 4
  %126 = getelementptr i8, ptr %125, i32 %1
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !61
  %128 = or i32 %127, 1509949472
  %129 = load ptr, ptr %6, align 4
  %130 = getelementptr i8, ptr %129, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #5, !srcloc !11
  br label %139

131:                                              ; preds = %114, %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %132 = load ptr, ptr %6, align 4
  %133 = getelementptr i8, ptr %132, i32 %1
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !63
  %135 = and i32 %134, -1509974018
  %136 = or i32 %135, 1509949440
  %137 = load ptr, ptr %6, align 4
  %138 = getelementptr i8, ptr %137, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #5, !srcloc !11
  br label %139

139:                                              ; preds = %131, %124, %2
  %140 = phi i32 [ -110, %131 ], [ 0, %124 ], [ 0, %2 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm2835_asb_power_on(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = tail call i32 @clk_enable(ptr noundef %9) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #5
  br label %16

16:                                               ; preds = %15, %5
  %17 = phi i32 [ %13, %15 ], [ %10, %5 ]
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.6, ptr noundef %20) #6
  br label %126

21:                                               ; preds = %12
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #5
  %23 = load ptr, ptr %8, align 8
  tail call void @clk_disable(ptr noundef %23) #5
  tail call void @clk_unprepare(ptr noundef %23) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %24 = getelementptr inbounds %struct.bcm2835_power, ptr %7, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 %1
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !65
  %28 = or i32 %27, %4
  %29 = or i32 %28, 1509949440
  %30 = load ptr, ptr %24, align 4
  %31 = getelementptr i8, ptr %30, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #5, !srcloc !11
  %32 = load ptr, ptr %8, align 8
  %33 = tail call i32 @clk_prepare(ptr noundef %32) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = tail call i32 @clk_enable(ptr noundef %32) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  tail call void @clk_unprepare(ptr noundef %32) #5
  br label %39

39:                                               ; preds = %38, %21
  %40 = phi i32 [ %36, %38 ], [ %33, %21 ]
  %41 = load ptr, ptr %7, align 8
  %42 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.6, ptr noundef %43) #6
  br label %116

44:                                               ; preds = %35
  %45 = icmp eq i32 %2, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %44
  %47 = tail call i64 @ktime_get() #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %48 = getelementptr inbounds %struct.bcm2835_power, ptr %7, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr i8, ptr %49, i32 %2
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !67
  %52 = and i32 %51, -1509949442
  %53 = or i32 %52, 1509949440
  %54 = load ptr, ptr %48, align 8
  %55 = getelementptr i8, ptr %54, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #5, !srcloc !11
  br label %56

56:                                               ; preds = %62, %46
  %57 = load ptr, ptr %48, align 8
  %58 = getelementptr i8, ptr %57, i32 %2
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !68
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !69
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !70
  %63 = tail call i64 @ktime_get() #5
  %64 = sub i64 %63, %47
  %65 = icmp ugt i64 %64, 999
  br i1 %65, label %66, label %56

66:                                               ; preds = %62
  %67 = load ptr, ptr %7, align 8
  %68 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %69 = load ptr, ptr %68, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.7, ptr noundef %69) #6
  br label %114

70:                                               ; preds = %56, %44
  %71 = icmp eq i32 %3, 0
  br i1 %71, label %126, label %72

72:                                               ; preds = %70
  %73 = tail call i64 @ktime_get() #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %74 = getelementptr inbounds %struct.bcm2835_power, ptr %7, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr i8, ptr %75, i32 %3
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !67
  %78 = and i32 %77, -1509949442
  %79 = or i32 %78, 1509949440
  %80 = load ptr, ptr %74, align 8
  %81 = getelementptr i8, ptr %80, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #5, !srcloc !11
  br label %82

82:                                               ; preds = %88, %72
  %83 = load ptr, ptr %74, align 8
  %84 = getelementptr i8, ptr %83, i32 %3
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !68
  %86 = and i32 %85, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %126, label %88

88:                                               ; preds = %82
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !69
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !70
  %89 = tail call i64 @ktime_get() #5
  %90 = sub i64 %89, %73
  %91 = icmp ugt i64 %90, 999
  br i1 %91, label %92, label %82

92:                                               ; preds = %88
  %93 = load ptr, ptr %7, align 8
  %94 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %95 = load ptr, ptr %94, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.8, ptr noundef %95) #6
  br i1 %45, label %114, label %96

96:                                               ; preds = %92
  %97 = tail call i64 @ktime_get() #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %98 = load ptr, ptr %74, align 8
  %99 = getelementptr i8, ptr %98, i32 %2
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !72
  %101 = or i32 %100, 1509949441
  %102 = load ptr, ptr %74, align 8
  %103 = getelementptr i8, ptr %102, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #5, !srcloc !11
  br label %104

104:                                              ; preds = %110, %96
  %105 = load ptr, ptr %74, align 8
  %106 = getelementptr i8, ptr %105, i32 %2
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !73
  %108 = and i32 %107, 2
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !74
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !75
  %111 = tail call i64 @ktime_get() #5
  %112 = sub i64 %111, %97
  %113 = icmp ugt i64 %112, 999
  br i1 %113, label %114, label %104

114:                                              ; preds = %110, %104, %92, %66
  %115 = load ptr, ptr %8, align 8
  tail call void @clk_disable(ptr noundef %115) #5
  tail call void @clk_unprepare(ptr noundef %115) #5
  br label %116

116:                                              ; preds = %114, %39
  %117 = phi i32 [ %40, %39 ], [ -110, %114 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %118 = load ptr, ptr %24, align 4
  %119 = getelementptr i8, ptr %118, i32 %1
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !77
  %121 = xor i32 %4, -1
  %122 = and i32 %120, %121
  %123 = or i32 %122, 1509949440
  %124 = load ptr, ptr %24, align 4
  %125 = getelementptr i8, ptr %124, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #5, !srcloc !11
  br label %126

126:                                              ; preds = %116, %82, %70, %16
  %127 = phi i32 [ %17, %16 ], [ %117, %116 ], [ 0, %70 ], [ 0, %82 ]
  ret i32 %127
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm2835_asb_power_off(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @ktime_get() #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %11 = getelementptr inbounds %struct.bcm2835_power, ptr %7, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 %3
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !72
  %15 = or i32 %14, 1509949441
  %16 = load ptr, ptr %11, align 8
  %17 = getelementptr i8, ptr %16, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #5, !srcloc !11
  br label %18

18:                                               ; preds = %24, %9
  %19 = load ptr, ptr %11, align 8
  %20 = getelementptr i8, ptr %19, i32 %3
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !73
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !74
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !75
  %25 = tail call i64 @ktime_get() #5
  %26 = sub i64 %25, %10
  %27 = icmp ugt i64 %26, 999
  br i1 %27, label %28, label %18

28:                                               ; preds = %24
  %29 = load ptr, ptr %7, align 8
  %30 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.9, ptr noundef %31) #6
  br label %88

32:                                               ; preds = %18, %5
  %33 = icmp eq i32 %2, 0
  br i1 %33, label %76, label %34

34:                                               ; preds = %32
  %35 = tail call i64 @ktime_get() #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %36 = getelementptr inbounds %struct.bcm2835_power, ptr %7, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr i8, ptr %37, i32 %2
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !72
  %40 = or i32 %39, 1509949441
  %41 = load ptr, ptr %36, align 8
  %42 = getelementptr i8, ptr %41, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #5, !srcloc !11
  br label %43

43:                                               ; preds = %49, %34
  %44 = load ptr, ptr %36, align 8
  %45 = getelementptr i8, ptr %44, i32 %2
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !73
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !74
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !75
  %50 = tail call i64 @ktime_get() #5
  %51 = sub i64 %50, %35
  %52 = icmp ugt i64 %51, 999
  br i1 %52, label %53, label %43

53:                                               ; preds = %49
  %54 = load ptr, ptr %7, align 8
  %55 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %56 = load ptr, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.10, ptr noundef %56) #6
  br i1 %8, label %88, label %57

57:                                               ; preds = %53
  %58 = tail call i64 @ktime_get() #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %59 = load ptr, ptr %36, align 8
  %60 = getelementptr i8, ptr %59, i32 %3
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !67
  %62 = and i32 %61, -1509949442
  %63 = or i32 %62, 1509949440
  %64 = load ptr, ptr %36, align 8
  %65 = getelementptr i8, ptr %64, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #5, !srcloc !11
  br label %66

66:                                               ; preds = %72, %57
  %67 = load ptr, ptr %36, align 8
  %68 = getelementptr i8, ptr %67, i32 %3
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !68
  %70 = and i32 %69, 2
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %66
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !69
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !70
  %73 = tail call i64 @ktime_get() #5
  %74 = sub i64 %73, %58
  %75 = icmp ugt i64 %74, 999
  br i1 %75, label %88, label %66

76:                                               ; preds = %43, %32
  %77 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %0, i32 0, i32 3
  %78 = load ptr, ptr %77, align 8
  tail call void @clk_disable(ptr noundef %78) #5
  tail call void @clk_unprepare(ptr noundef %78) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %79 = getelementptr inbounds %struct.bcm2835_power, ptr %7, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 %1
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !33
  %83 = xor i32 %4, -1
  %84 = and i32 %82, %83
  %85 = or i32 %84, 1509949440
  %86 = load ptr, ptr %79, align 4
  %87 = getelementptr i8, ptr %86, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #5, !srcloc !11
  br label %88

88:                                               ; preds = %76, %72, %66, %53, %28
  %89 = phi i32 [ -110, %28 ], [ 0, %76 ], [ -110, %53 ], [ -110, %66 ], [ -110, %72 ]
  ret i32 %89
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_reset_reset(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp ult i32 %1, 3
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 -10632
  %6 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.24, i32 noundef %1) #6
  br label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds [3 x i32], ptr @switch.table.bcm2835_reset_reset, i32 0, i32 %1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 %9
  %11 = tail call i32 @bcm2835_power_pd_power_off(ptr noundef %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call i32 @bcm2835_power_pd_power_on(ptr noundef %10)
  br label %15

15:                                               ; preds = %13, %7, %4
  %16 = phi i32 [ -22, %4 ], [ %14, %13 ], [ %11, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_reset_status(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  switch i32 %1, label %22 [
    i32 0, label %3
    i32 2, label %9
    i32 1, label %15
  ]

3:                                                ; preds = %2
  %4 = getelementptr i8, ptr %0, i32 -10628
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !78
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  br label %22

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 -10628
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !79
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  br label %22

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %0, i32 -10628
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 256
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !80
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %15, %9, %3, %2
  %23 = phi i32 [ %21, %15 ], [ %14, %9 ], [ %8, %3 ], [ -22, %2 ]
  ret i32 %23
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2493662}
!9 = !{i64 2151498288}
!10 = !{i64 2151471391}
!11 = !{i64 2493244}
!12 = !{i64 2151472020}
!13 = !{i64 2151472789}
!14 = !{i64 2151473478}
!15 = !{i64 2151474247}
!16 = !{i64 2151474937}
!17 = !{i64 2151475706}
!18 = !{i64 2151477152}
!19 = !{i64 2151477701}
!20 = !{i64 2151478899}
!21 = !{i64 2151479447}
!22 = !{i64 2151480648}
!23 = !{i64 2151481198}
!24 = !{i64 2151482405}
!25 = !{i64 2151482956}
!26 = !{i64 2151441938}
!27 = !{i64 2151442494}
!28 = !{i64 2151443703}
!29 = !{i64 2151444259}
!30 = !{i64 2151445468}
!31 = !{i64 2151446024}
!32 = !{i64 2151468745}
!33 = !{i64 2151469284}
!34 = !{i64 2151485490}
!35 = !{i64 2151486067}
!36 = !{i64 2151486560}
!37 = !{i64 2151487137}
!38 = !{i64 2151487630}
!39 = !{i64 2151488208}
!40 = !{i64 2151488701}
!41 = !{i64 2151490031}
!42 = !{i64 2151490579}
!43 = !{i64 2151491780}
!44 = !{i64 2151492330}
!45 = !{i64 2151446449}
!46 = !{i64 2151447815}
!47 = !{i64 2151448412}
!48 = !{i64 2151448874}
!49 = !{i64 2151449202}
!50 = !{i64 2151449044}
!51 = !{i64 2151450994}
!52 = !{i64 2151451548}
!53 = !{i64 2151452751}
!54 = !{i64 2151453305}
!55 = !{i64 2151453728}
!56 = !{i64 2151454056}
!57 = !{i64 2151453898}
!58 = !{i64 2151457639}
!59 = !{i64 2151458195}
!60 = !{i64 2151455878}
!61 = !{i64 2151456432}
!62 = !{i64 2151459462}
!63 = !{i64 2151460034}
!64 = !{i64 2151462295}
!65 = !{i64 2151462833}
!66 = !{i64 2151437056}
!67 = !{i64 2151437600}
!68 = !{i64 2151438009}
!69 = !{i64 2151438337}
!70 = !{i64 2151438179}
!71 = !{i64 2151439481}
!72 = !{i64 2151440023}
!73 = !{i64 2151440430}
!74 = !{i64 2151440758}
!75 = !{i64 2151440600}
!76 = !{i64 2151465816}
!77 = !{i64 2151466355}
!78 = !{i64 2151496471}
!79 = !{i64 2151497066}
!80 = !{i64 2151497661}
