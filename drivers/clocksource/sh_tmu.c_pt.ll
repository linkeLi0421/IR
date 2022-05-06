; ModuleID = '/llk/IR/drivers/clocksource/sh_tmu.c_pt.bc'
source_filename = "../drivers/clocksource/sh_tmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.sh_tmu_device = type { ptr, ptr, ptr, i32, i32, %struct.raw_spinlock, ptr, i32, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sh_tmu_channel = type { ptr, i32, ptr, i32, i32, [44 x i8], %struct.clock_event_device, %struct.clocksource, i8, i32, [16 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sh_tmu_device_driver = internal global %struct.platform_driver { ptr @sh_tmu_probe, ptr @sh_tmu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sh_tmu_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sh_tmu_id_table, i8 0 }, align 4
@__initcall__kmod_sh_tmu__171_677_sh_tmu_init4 = internal global ptr @sh_tmu_init, section ".initcall4.init", align 4
@__exitcall_sh_tmu_exit = internal global ptr @sh_tmu_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author172 = internal constant [26 x i8] c"sh_tmu.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [43 x i8] c"sh_tmu.description=SuperH TMU Timer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [39 x i8] c"sh_tmu.file=drivers/clocksource/sh_tmu\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [22 x i8] c"sh_tmu.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"sh_tmu\00", align 1
@sh_tmu_of_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sh_tmu_id_table = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"sh-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"sh-tmu-sh3\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"kept as earlytimer\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to remap I/O memory\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"#renesas,channels\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"invalid number of channels %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"failed to get I/O memory\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"ch%u: used for clock events\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"ch%u: failed to request irq %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"drivers/clocksource/sh_tmu.c\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"ch%u: used for %s clock events\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"periodic\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"oneshot\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"ch%u: cannot enable clock\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"ch%u: used as clock source\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_sh_tmu_exit, ptr @__initcall__kmod_sh_tmu__171_677_sh_tmu_init4, ptr @sh_tmu_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sh_tmu_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_tmu_device_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sh_tmu_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_tmu_device_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_tmu_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %4) #8
  %6 = icmp eq ptr %3, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.1) #9
  br label %214

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 36) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %226, label %12

12:                                               ; preds = %8
  store ptr %0, ptr %10, align 8
  %13 = getelementptr inbounds %struct.sh_tmu_device, ptr %10, i32 0, i32 5
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sh_tmu_device, ptr %10, i32 0, i32 4
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.sh_tmu_device, ptr %10, i32 0, i32 7
  store i32 3, ptr %19, align 4
  %20 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.6, ptr noundef %19, i32 noundef 1, i32 noundef 0) #8
  %21 = load i32, ptr %19, align 4
  %22 = and i32 %21, -2
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %41, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %10, align 8
  %26 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.7, i32 noundef %21) #9
  br label %211

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.platform_device_id, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sh_tmu_device, ptr %10, i32 0, i32 4
  store i32 %35, ptr %36, align 8
  %37 = load i32, ptr %29, align 4
  %38 = tail call i32 @__sw_hweight8(i32 noundef %37) #8
  %39 = getelementptr inbounds %struct.sh_tmu_device, ptr %10, i32 0, i32 7
  store i32 %38, ptr %39, align 4
  br label %41

40:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #9
  br label %211

41:                                               ; preds = %31, %17
  %42 = load ptr, ptr %10, align 8
  %43 = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  %44 = tail call ptr @clk_get(ptr noundef %43, ptr noundef nonnull @.str.3) #8
  %45 = getelementptr inbounds %struct.sh_tmu_device, ptr %10, i32 0, i32 2
  store ptr %44, ptr %45, align 8
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %205, label %47

47:                                               ; preds = %41
  %48 = tail call i32 @clk_prepare(ptr noundef %44) #8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %202, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %45, align 8
  %52 = tail call i32 @clk_enable(ptr noundef %51) #8
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %199, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %45, align 8
  %56 = tail call i32 @clk_get_rate(ptr noundef %55) #8
  %57 = lshr i32 %56, 2
  %58 = getelementptr inbounds %struct.sh_tmu_device, ptr %10, i32 0, i32 3
  store i32 %57, ptr %58, align 4
  %59 = load ptr, ptr %45, align 8
  tail call void @clk_disable(ptr noundef %59) #8
  %60 = load ptr, ptr %10, align 8
  %61 = tail call ptr @platform_get_resource(ptr noundef %60, i32 noundef 512, i32 noundef 0) #8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds %struct.platform_device, ptr %64, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.8) #9
  br label %75

66:                                               ; preds = %54
  %67 = load i32, ptr %61, align 4
  %68 = getelementptr inbounds %struct.resource, ptr %61, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = sub i32 1, %67
  %71 = add i32 %70, %69
  %72 = tail call ptr @ioremap(i32 noundef %67, i32 noundef %71) #8
  %73 = getelementptr inbounds %struct.sh_tmu_device, ptr %10, i32 0, i32 1
  store ptr %72, ptr %73, align 4
  %74 = icmp eq ptr %72, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %66, %63
  %76 = load ptr, ptr %10, align 8
  %77 = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.5) #9
  br label %199

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.sh_tmu_device, ptr %10, i32 0, i32 7
  %80 = load i32, ptr %79, align 4
  %81 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %80, i32 384) #8
  %82 = extractvalue { i32, i1 } %81, 1
  br i1 %82, label %83, label %85, !prof !8

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.sh_tmu_device, ptr %10, i32 0, i32 6
  store ptr null, ptr %84, align 8
  br label %195

85:                                               ; preds = %78
  %86 = extractvalue { i32, i1 } %81, 0
  %87 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %86, i32 noundef 3520) #11
  %88 = getelementptr inbounds %struct.sh_tmu_device, ptr %10, i32 0, i32 6
  store ptr %87, ptr %88, align 8
  %89 = icmp eq ptr %87, null
  br i1 %89, label %195, label %90

90:                                               ; preds = %85
  %91 = load i32, ptr %79, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %192, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.sh_tmu_device, ptr %10, i32 0, i32 4
  br label %95

95:                                               ; preds = %190, %93
  %96 = phi ptr [ %87, %93 ], [ %191, %190 ]
  %97 = phi i32 [ 0, %93 ], [ %187, %190 ]
  %98 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 %97
  %99 = icmp eq i32 %97, 0
  %100 = icmp ult i32 %97, 2
  br i1 %100, label %101, label %186

101:                                              ; preds = %95
  store ptr %10, ptr %98, align 64
  %102 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 %97, i32 1
  store i32 %97, ptr %102, align 4
  %103 = load i32, ptr %94, align 8
  %104 = icmp eq i32 %103, 1
  %105 = load ptr, ptr %73, align 4
  %106 = select i1 %104, i32 4, i32 8
  %107 = getelementptr i8, ptr %105, i32 %106
  %108 = mul nuw nsw i32 %97, 12
  %109 = getelementptr i8, ptr %107, i32 %108
  %110 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 %97, i32 2
  store ptr %109, ptr %110, align 8
  %111 = load ptr, ptr %10, align 8
  %112 = tail call i32 @platform_get_irq(ptr noundef %111, i32 noundef %97) #8
  %113 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 %97, i32 3
  store i32 %112, ptr %113, align 4
  %114 = icmp slt i32 %112, 0
  br i1 %114, label %193, label %115

115:                                              ; preds = %101
  %116 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 %97, i32 8
  store i8 0, ptr %116, align 8
  %117 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 %97, i32 9
  store i32 0, ptr %117, align 4
  %118 = load ptr, ptr %10, align 8
  %119 = getelementptr inbounds %struct.platform_device, ptr %118, i32 0, i32 3, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.platform_device, ptr %118, i32 0, i32 3
  %124 = load ptr, ptr %123, align 4
  br label %125

125:                                              ; preds = %122, %115
  %126 = phi ptr [ %124, %122 ], [ %120, %115 ]
  %127 = load ptr, ptr %98, align 64
  br i1 %99, label %128, label %167

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.sh_tmu_device, ptr %127, i32 0, i32 8
  store i8 1, ptr %129, align 4
  %130 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 0, i32 6
  %131 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 0, i32 6, i32 21
  store ptr %126, ptr %131, align 4
  %132 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 0, i32 6, i32 9
  store i32 3, ptr %132, align 4
  %133 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 0, i32 6, i32 22
  store i32 200, ptr %133, align 8
  %134 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 0, i32 6, i32 25
  store ptr @__cpu_possible_mask, ptr %134, align 4
  %135 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 0, i32 6, i32 1
  store ptr @sh_tmu_clock_event_next, ptr %135, align 4
  %136 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 0, i32 6, i32 14
  store ptr @sh_tmu_clock_event_shutdown, ptr %136, align 8
  %137 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 0, i32 6, i32 11
  store ptr @sh_tmu_clock_event_set_periodic, ptr %137, align 4
  %138 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 0, i32 6, i32 12
  store ptr @sh_tmu_clock_event_set_oneshot, ptr %138, align 64
  %139 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 0, i32 6, i32 17
  store ptr @sh_tmu_clock_event_suspend, ptr %139, align 4
  %140 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 0, i32 6, i32 18
  store ptr @sh_tmu_clock_event_resume, ptr %140, align 8
  %141 = load ptr, ptr %98, align 64
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.platform_device, ptr %142, i32 0, i32 3
  %144 = load i32, ptr %102, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %143, ptr noundef nonnull @.str.9, i32 noundef %144) #9
  %145 = load ptr, ptr %98, align 64
  %146 = getelementptr inbounds %struct.sh_tmu_device, ptr %145, i32 0, i32 3
  %147 = load i32, ptr %146, align 4
  tail call void @clockevents_config_and_register(ptr noundef %130, i32 noundef %147, i32 noundef 768, i32 noundef -1) #8
  %148 = load i32, ptr %113, align 4
  %149 = load ptr, ptr %98, align 64
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.platform_device, ptr %150, i32 0, i32 3, i32 3
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %128
  %155 = getelementptr inbounds %struct.platform_device, ptr %150, i32 0, i32 3
  %156 = load ptr, ptr %155, align 4
  br label %157

157:                                              ; preds = %154, %128
  %158 = phi ptr [ %156, %154 ], [ %152, %128 ]
  %159 = tail call i32 @request_threaded_irq(i32 noundef %148, ptr noundef nonnull @sh_tmu_interrupt, ptr noundef null, i32 noundef 88576, ptr noundef %158, ptr noundef %98) #8
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %186, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr %98, align 64
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.platform_device, ptr %163, i32 0, i32 3
  %165 = load i32, ptr %102, align 4
  %166 = load i32, ptr %113, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.10, i32 noundef %165, i32 noundef %166) #9
  br label %186

167:                                              ; preds = %125
  %168 = getelementptr inbounds %struct.sh_tmu_device, ptr %127, i32 0, i32 9
  store i8 1, ptr %168, align 1
  %169 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 %97, i32 7
  %170 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 %97, i32 7, i32 8
  store ptr %126, ptr %170, align 8
  %171 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 %97, i32 7, i32 10
  store i32 200, ptr %171, align 4
  store ptr @sh_tmu_clocksource_read, ptr %169, align 8
  %172 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 %97, i32 7, i32 14
  store ptr @sh_tmu_clocksource_enable, ptr %172, align 4
  %173 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 %97, i32 7, i32 15
  store ptr @sh_tmu_clocksource_disable, ptr %173, align 8
  %174 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 %97, i32 7, i32 16
  store ptr @sh_tmu_clocksource_suspend, ptr %174, align 4
  %175 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 %97, i32 7, i32 17
  store ptr @sh_tmu_clocksource_resume, ptr %175, align 8
  %176 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 %97, i32 7, i32 1
  store i64 4294967295, ptr %176, align 8
  %177 = getelementptr %struct.sh_tmu_channel, ptr %96, i32 %97, i32 7, i32 13
  store i32 1, ptr %177, align 8
  %178 = load ptr, ptr %98, align 64
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.platform_device, ptr %179, i32 0, i32 3
  %181 = load i32, ptr %102, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %180, ptr noundef nonnull @.str.16, i32 noundef %181) #9
  %182 = load ptr, ptr %98, align 64
  %183 = getelementptr inbounds %struct.sh_tmu_device, ptr %182, i32 0, i32 3
  %184 = load i32, ptr %183, align 4
  %185 = tail call i32 @__clocksource_register_scale(ptr noundef %169, i32 noundef 1, i32 noundef %184) #8
  br label %186

186:                                              ; preds = %167, %161, %157, %95
  %187 = add nuw i32 %97, 1
  %188 = load i32, ptr %79, align 4
  %189 = icmp ult i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = load ptr, ptr %88, align 8
  br label %95

192:                                              ; preds = %186, %90
  store ptr %10, ptr %2, align 8
  br label %214

193:                                              ; preds = %101
  %194 = load ptr, ptr %88, align 8
  br label %195

195:                                              ; preds = %193, %85, %83
  %196 = phi ptr [ null, %85 ], [ null, %83 ], [ %194, %193 ]
  %197 = phi i32 [ -12, %85 ], [ -12, %83 ], [ %112, %193 ]
  tail call void @kfree(ptr noundef %196) #8
  %198 = load ptr, ptr %73, align 4
  tail call void @iounmap(ptr noundef %198) #8
  br label %199

199:                                              ; preds = %195, %75, %50
  %200 = phi i32 [ %52, %50 ], [ -6, %75 ], [ %197, %195 ]
  %201 = load ptr, ptr %45, align 8
  tail call void @clk_unprepare(ptr noundef %201) #8
  br label %202

202:                                              ; preds = %199, %47
  %203 = phi i32 [ %48, %47 ], [ %200, %199 ]
  %204 = load ptr, ptr %45, align 8
  tail call void @clk_put(ptr noundef %204) #8
  br label %211

205:                                              ; preds = %41
  %206 = load ptr, ptr %10, align 8
  %207 = getelementptr inbounds %struct.platform_device, ptr %206, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %207, ptr noundef nonnull @.str.4) #9
  %208 = load ptr, ptr %45, align 8
  %209 = ptrtoint ptr %208 to i32
  %210 = icmp eq ptr %208, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %205, %202, %40, %24
  %212 = phi i32 [ %209, %205 ], [ -22, %24 ], [ -6, %40 ], [ %203, %202 ]
  tail call void @kfree(ptr noundef nonnull %10) #8
  %213 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 0) #8
  br label %226

214:                                              ; preds = %205, %192, %7
  %215 = phi ptr [ %3, %7 ], [ %10, %192 ], [ %10, %205 ]
  %216 = getelementptr inbounds %struct.sh_tmu_device, ptr %215, i32 0, i32 8
  %217 = load i8, ptr %216, align 4, !range !9
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.sh_tmu_device, ptr %215, i32 0, i32 9
  %221 = load i8, ptr %220, align 1, !range !9
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %219, %214
  tail call void @pm_runtime_irq_safe(ptr noundef %4) #8
  br label %226

224:                                              ; preds = %219
  %225 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 0) #8
  br label %226

226:                                              ; preds = %224, %223, %211, %8
  %227 = phi i32 [ %212, %211 ], [ -12, %8 ], [ 0, %224 ], [ 0, %223 ]
  ret i32 %227
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sh_tmu_remove(ptr nocapture noundef readnone %0) #3 {
  ret i32 -16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_tmu_clock_event_next(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 16
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/sh_tmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 388, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %1, i32 -64
  tail call fastcc void @sh_tmu_start_stop_ch(ptr noundef %8, i32 noundef 0) #8
  %9 = getelementptr i8, ptr %1, i32 -56
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %13 = load ptr, ptr %9, align 8
  %14 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 32) #8, !srcloc !15
  %15 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 -1) #8, !srcloc !16
  %16 = load ptr, ptr %9, align 8
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %0) #8, !srcloc !16
  tail call fastcc void @sh_tmu_start_stop_ch(ptr noundef %8, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_tmu_clock_event_shutdown(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 16
  %4 = and i32 %3, -2
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -64
  tail call fastcc void @sh_tmu_disable(ptr noundef %7)
  br label %8

8:                                                ; preds = %6, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_tmu_clock_event_set_periodic(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 16
  %5 = and i32 %4, -2
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call fastcc void @sh_tmu_disable(ptr noundef %2) #8
  br label %8

8:                                                ; preds = %7, %1
  %9 = load ptr, ptr %2, align 64
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %12 = getelementptr i8, ptr %0, i32 -60
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.12, i32 noundef %13, ptr noundef nonnull @.str.13) #9
  %14 = getelementptr i8, ptr %0, i32 300
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %8
  %19 = load ptr, ptr %2, align 64
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %22 = tail call i32 @__pm_runtime_resume(ptr noundef %21, i32 noundef 4) #8
  %23 = load ptr, ptr %2, align 64
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3, i32 11, i32 7
  %26 = load i8, ptr %25, align 4
  %27 = or i8 %26, 2
  store i8 %27, ptr %25, align 4
  %28 = tail call fastcc i32 @__sh_tmu_enable(ptr noundef %2) #8
  br label %29

29:                                               ; preds = %18, %8
  %30 = load ptr, ptr %2, align 64
  %31 = getelementptr inbounds %struct.sh_tmu_device, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 50
  %34 = udiv i32 %33, 100
  %35 = getelementptr i8, ptr %0, i32 -48
  store i32 %34, ptr %35, align 16
  tail call fastcc void @sh_tmu_start_stop_ch(ptr noundef %2, i32 noundef 0) #8
  %36 = getelementptr i8, ptr %0, i32 -56
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr i8, ptr %37, i32 8
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %38) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %40 = load ptr, ptr %36, align 8
  %41 = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %41, i16 32) #8, !srcloc !15
  %42 = load ptr, ptr %36, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %34) #8, !srcloc !16
  %43 = load ptr, ptr %36, align 8
  %44 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %34) #8, !srcloc !16
  tail call fastcc void @sh_tmu_start_stop_ch(ptr noundef %2, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_tmu_clock_event_set_oneshot(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 16
  %5 = and i32 %4, -2
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call fastcc void @sh_tmu_disable(ptr noundef %2) #8
  br label %8

8:                                                ; preds = %7, %1
  %9 = load ptr, ptr %2, align 64
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %12 = getelementptr i8, ptr %0, i32 -60
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.12, i32 noundef %13, ptr noundef nonnull @.str.14) #9
  %14 = getelementptr i8, ptr %0, i32 300
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %8
  %19 = load ptr, ptr %2, align 64
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %22 = tail call i32 @__pm_runtime_resume(ptr noundef %21, i32 noundef 4) #8
  %23 = load ptr, ptr %2, align 64
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3, i32 11, i32 7
  %26 = load i8, ptr %25, align 4
  %27 = or i8 %26, 2
  store i8 %27, ptr %25, align 4
  %28 = tail call fastcc i32 @__sh_tmu_enable(ptr noundef %2) #8
  br label %29

29:                                               ; preds = %18, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_tmu_clock_event_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 64
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void @dev_pm_genpd_suspend(ptr noundef %5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_tmu_clock_event_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 64
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void @dev_pm_genpd_resume(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_tmu_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sh_tmu_channel, ptr %1, i32 0, i32 6, i32 8
  %4 = load i32, ptr %3, align 16
  %5 = icmp eq i32 %4, 3
  %6 = getelementptr inbounds %struct.sh_tmu_channel, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  br i1 %5, label %9, label %10

9:                                                ; preds = %2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 0) #8, !srcloc !15
  br label %11

10:                                               ; preds = %2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 32) #8, !srcloc !15
  br label %11

11:                                               ; preds = %10, %9
  %12 = getelementptr inbounds %struct.sh_tmu_channel, ptr %1, i32 0, i32 6
  %13 = load ptr, ptr %12, align 64
  tail call void %13(ptr noundef %12) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sh_tmu_start_stop_ch(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 64
  %4 = getelementptr inbounds %struct.sh_tmu_device, ptr %3, i32 0, i32 5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = load ptr, ptr %0, align 64
  %7 = getelementptr inbounds %struct.sh_tmu_device, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %21 [
    i32 1, label %9
    i32 0, label %15
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sh_tmu_device, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 2
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #8, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %14 = zext i8 %13 to i32
  br label %26

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.sh_tmu_device, ptr %6, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 4
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #8, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %20 = zext i8 %19 to i32
  br label %26

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.sh_tmu_channel, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %23, i32 -4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  br label %26

26:                                               ; preds = %21, %15, %9
  %27 = phi i32 [ %25, %21 ], [ %20, %15 ], [ %14, %9 ]
  %28 = icmp eq i32 %1, 0
  %29 = getelementptr inbounds %struct.sh_tmu_channel, ptr %0, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = shl nuw i32 1, %30
  %32 = or i32 %31, %27
  %33 = xor i32 %31, -1
  %34 = and i32 %27, %33
  %35 = select i1 %28, i32 %34, i32 %32
  %36 = load ptr, ptr %0, align 64
  %37 = getelementptr inbounds %struct.sh_tmu_device, ptr %36, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  switch i32 %38, label %49 [
    i32 1, label %39
    i32 0, label %44
  ]

39:                                               ; preds = %26
  %40 = trunc i32 %35 to i8
  %41 = getelementptr inbounds %struct.sh_tmu_device, ptr %36, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %43, i8 %40) #8, !srcloc !23
  br label %53

44:                                               ; preds = %26
  %45 = trunc i32 %35 to i8
  %46 = getelementptr inbounds %struct.sh_tmu_device, ptr %36, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %48, i8 %45) #8, !srcloc !23
  br label %53

49:                                               ; preds = %26
  %50 = getelementptr inbounds %struct.sh_tmu_channel, ptr %0, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr i8, ptr %51, i32 -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %35) #8, !srcloc !16
  br label %53

53:                                               ; preds = %49, %44, %39
  %54 = load ptr, ptr %0, align 64
  %55 = getelementptr inbounds %struct.sh_tmu_device, ptr %54, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %55, i32 noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sh_tmu_disable(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sh_tmu_channel, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 197, i32 noundef 9, ptr noundef null) #8
  br label %25

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  store i32 %7, ptr %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  tail call fastcc void @sh_tmu_start_stop_ch(ptr noundef %0, i32 noundef 0) #8
  %10 = getelementptr inbounds %struct.sh_tmu_channel, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 0) #8, !srcloc !15
  %13 = load ptr, ptr %0, align 64
  %14 = getelementptr inbounds %struct.sh_tmu_device, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #8
  %16 = load ptr, ptr %0, align 64
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3, i32 11, i32 7
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, -3
  store i8 %20, ptr %18, align 4
  %21 = load ptr, ptr %0, align 64
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  %24 = tail call i32 @__pm_runtime_idle(ptr noundef %23, i32 noundef 5) #8
  br label %25

25:                                               ; preds = %9, %6, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__sh_tmu_enable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 64
  %3 = getelementptr inbounds %struct.sh_tmu_device, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_enable(ptr noundef %4) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 64
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.sh_tmu_channel, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef %12) #9
  br label %20

13:                                               ; preds = %1
  tail call fastcc void @sh_tmu_start_stop_ch(ptr noundef %0, i32 noundef 0)
  %14 = getelementptr inbounds %struct.sh_tmu_channel, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 -1) #8, !srcloc !16
  %16 = load ptr, ptr %14, align 8
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -1) #8, !srcloc !16
  %18 = load ptr, ptr %14, align 8
  %19 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 0) #8, !srcloc !15
  tail call fastcc void @sh_tmu_start_stop_ch(ptr noundef %0, i32 noundef 1)
  br label %20

20:                                               ; preds = %13, %7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_genpd_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_genpd_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @sh_tmu_clocksource_read(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -248
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %6 = xor i32 %5, -1
  %7 = zext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_tmu_clocksource_enable(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -256
  %3 = getelementptr i8, ptr %0, i32 104
  %4 = load i8, ptr %3, align 8, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 265, i32 noundef 9, ptr noundef null) #8
  br label %25

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 108
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load ptr, ptr %2, align 64
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #8
  %17 = load ptr, ptr %2, align 64
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3, i32 11, i32 7
  %20 = load i8, ptr %19, align 4
  %21 = or i8 %20, 2
  store i8 %21, ptr %19, align 4
  %22 = tail call fastcc i32 @__sh_tmu_enable(ptr noundef %2) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12, %7
  store i8 1, ptr %3, align 8
  br label %25

25:                                               ; preds = %24, %12, %6
  %26 = phi i32 [ 0, %6 ], [ 0, %24 ], [ %22, %12 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_tmu_clocksource_disable(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 104
  %3 = load i8, ptr %2, align 8, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 279, i32 noundef 9, ptr noundef null) #8
  br label %8

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -256
  tail call fastcc void @sh_tmu_disable(ptr noundef %7)
  store i8 0, ptr %2, align 8
  br label %8

8:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_tmu_clocksource_suspend(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -256
  %3 = getelementptr i8, ptr %0, i32 104
  %4 = load i8, ptr %3, align 8, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 108
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  tail call fastcc void @sh_tmu_start_stop_ch(ptr noundef %2, i32 noundef 0) #8
  %12 = getelementptr i8, ptr %0, i32 -248
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 0) #8, !srcloc !15
  %15 = load ptr, ptr %2, align 64
  %16 = getelementptr inbounds %struct.sh_tmu_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #8
  %18 = load ptr, ptr %2, align 64
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  tail call void @dev_pm_genpd_suspend(ptr noundef %20) #8
  br label %21

21:                                               ; preds = %11, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_tmu_clocksource_resume(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -256
  %3 = getelementptr i8, ptr %0, i32 104
  %4 = load i8, ptr %3, align 8, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 108
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 64
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void @dev_pm_genpd_resume(ptr noundef %14) #8
  %15 = tail call fastcc i32 @__sh_tmu_enable(ptr noundef %2)
  br label %16

16:                                               ; preds = %11, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2151755813, i64 2151756306, i64 2151755850, i64 2151755906, i64 2151755940, i64 2151755964, i64 2151756005, i64 2151756026, i64 2151756054, i64 2151756088}
!12 = !{i64 2838010}
!13 = !{i64 2150370338}
!14 = !{i64 2150371560}
!15 = !{i64 2837810}
!16 = !{i64 2838430}
!17 = !{i64 2150372033}
!18 = !{i64 2838628}
!19 = !{i64 2150369865}
!20 = !{i64 2838848}
!21 = !{i64 2150370811}
!22 = !{i64 2150371163}
!23 = !{i64 2838233}
