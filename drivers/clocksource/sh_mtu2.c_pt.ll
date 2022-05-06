; ModuleID = '/llk/IR/drivers/clocksource/sh_mtu2.c_pt.bc'
source_filename = "../drivers/clocksource/sh_mtu2.c"
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
%struct.sh_mtu2_device = type { ptr, ptr, ptr, %struct.raw_spinlock, ptr, i32, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sh_mtu2_channel = type { ptr, i32, ptr, [52 x i8], %struct.clock_event_device }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }

@sh_mtu2_device_driver = internal global %struct.platform_driver { ptr @sh_mtu2_probe, ptr @sh_mtu2_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sh_mtu2_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sh_mtu2_id_table, i8 0 }, align 4
@__initcall__kmod_sh_mtu2__173_528_sh_mtu2_init4 = internal global ptr @sh_mtu2_init, section ".initcall4.init", align 4
@__exitcall_sh_mtu2_exit = internal global ptr @sh_mtu2_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author174 = internal constant [27 x i8] c"sh_mtu2.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description175 = internal constant [45 x i8] c"sh_mtu2.description=SuperH MTU2 Timer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file176 = internal constant [41 x i8] c"sh_mtu2.file=drivers/clocksource/sh_mtu2\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [23 x i8] c"sh_mtu2.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"sh_mtu2\00", align 1
@sh_mtu2_of_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,mtu2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sh_mtu2_id_table = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"sh-mtu2\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"kept as earlytimer\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to remap I/O memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to get I/O memory\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"tgi%ua\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"ch%u: failed to request irq %d\0A\00", align 1
@sh_mtu2_channel_offsets = internal unnamed_addr constant [3 x i32] [i32 768, i32 896, i32 0], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"ch%u: used for clock events\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"ch%u: used for periodic clock events\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"ch%u: cannot enable clock\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__exitcall_sh_mtu2_exit, ptr @__initcall__kmod_sh_mtu2__173_528_sh_mtu2_init4, ptr @sh_mtu2_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sh_mtu2_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_mtu2_device_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sh_mtu2_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_mtu2_device_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mtu2_probe(ptr noundef %0) #2 {
  %2 = alloca [6 x i8], align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call i32 @__pm_runtime_set_status(ptr noundef %5, i32 noundef 0) #11
  tail call void @pm_runtime_enable(ptr noundef %5) #11
  %7 = icmp eq ptr %4, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.1) #12
  br label %130

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 28) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %138, label %13

13:                                               ; preds = %9
  store ptr %0, ptr %11, align 8
  %14 = getelementptr inbounds %struct.sh_mtu2_device, ptr %11, i32 0, i32 3
  store i32 0, ptr %14, align 4
  %15 = tail call ptr @clk_get(ptr noundef %5, ptr noundef nonnull @.str.2) #11
  %16 = getelementptr inbounds %struct.sh_mtu2_device, ptr %11, i32 0, i32 2
  store ptr %15, ptr %16, align 8
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %125, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @clk_prepare(ptr noundef %15) #11
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %122, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #12
  br label %34

25:                                               ; preds = %21
  %26 = load i32, ptr %22, align 4
  %27 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 1, %26
  %30 = add i32 %29, %28
  %31 = tail call ptr @ioremap(i32 noundef %26, i32 noundef %30) #11
  %32 = getelementptr inbounds %struct.sh_mtu2_device, ptr %11, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %25, %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #12
  br label %118

35:                                               ; preds = %25
  %36 = tail call i32 @platform_irq_count(ptr noundef %0) #11
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %112, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @llvm.umin.i32(i32 %36, i32 3) #11
  %40 = getelementptr inbounds %struct.sh_mtu2_device, ptr %11, i32 0, i32 5
  store i32 %39, ptr %40, align 4
  %41 = shl nuw nsw i32 %39, 8
  %42 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %41, i32 noundef 3520) #14
  %43 = getelementptr inbounds %struct.sh_mtu2_device, ptr %11, i32 0, i32 4
  store ptr %42, ptr %43, align 8
  %44 = icmp eq ptr %42, null
  br i1 %44, label %112, label %45

45:                                               ; preds = %38
  %46 = icmp eq i32 %39, 0
  br i1 %46, label %111, label %47

47:                                               ; preds = %109, %45
  %48 = phi ptr [ %110, %109 ], [ %42, %45 ]
  %49 = phi i32 [ %106, %109 ], [ 0, %45 ]
  %50 = getelementptr %struct.sh_mtu2_channel, ptr %48, i32 %49
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #11, !annotation !8
  store ptr %11, ptr %50, align 64
  %51 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.6, i32 noundef %49) #11
  %52 = load ptr, ptr %11, align 8
  %53 = call i32 @platform_get_irq_byname(ptr noundef %52, ptr noundef nonnull %2) #11
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %99, label %55

55:                                               ; preds = %47
  %56 = load ptr, ptr %50, align 64
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %55
  %65 = phi ptr [ %63, %61 ], [ %59, %55 ]
  %66 = call i32 @request_threaded_irq(i32 noundef %53, ptr noundef nonnull @sh_mtu2_interrupt, ptr noundef null, i32 noundef 88576, ptr noundef %65, ptr noundef %50) #11
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %64
  %69 = load ptr, ptr %32, align 4
  %70 = getelementptr [3 x i32], ptr @sh_mtu2_channel_offsets, i32 0, i32 %49
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr i8, ptr %69, i32 %71
  %73 = getelementptr %struct.sh_mtu2_channel, ptr %48, i32 %49, i32 2
  store ptr %72, ptr %73, align 8
  %74 = getelementptr %struct.sh_mtu2_channel, ptr %48, i32 %49, i32 1
  store i32 %49, ptr %74, align 4
  %75 = load ptr, ptr %11, align 8
  %76 = getelementptr inbounds %struct.platform_device, ptr %75, i32 0, i32 3, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.platform_device, ptr %75, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %68
  %83 = phi ptr [ %81, %79 ], [ %77, %68 ]
  %84 = load ptr, ptr %50, align 64
  %85 = getelementptr inbounds %struct.sh_mtu2_device, ptr %84, i32 0, i32 6
  store i8 1, ptr %85, align 4
  %86 = getelementptr %struct.sh_mtu2_channel, ptr %48, i32 %49, i32 4
  %87 = getelementptr %struct.sh_mtu2_channel, ptr %48, i32 %49, i32 4, i32 21
  store ptr %83, ptr %87, align 4
  %88 = getelementptr %struct.sh_mtu2_channel, ptr %48, i32 %49, i32 4, i32 9
  store i32 1, ptr %88, align 4
  %89 = getelementptr %struct.sh_mtu2_channel, ptr %48, i32 %49, i32 4, i32 22
  store i32 200, ptr %89, align 8
  %90 = getelementptr %struct.sh_mtu2_channel, ptr %48, i32 %49, i32 4, i32 25
  store ptr @__cpu_possible_mask, ptr %90, align 4
  %91 = getelementptr %struct.sh_mtu2_channel, ptr %48, i32 %49, i32 4, i32 14
  store ptr @sh_mtu2_clock_event_shutdown, ptr %91, align 8
  %92 = getelementptr %struct.sh_mtu2_channel, ptr %48, i32 %49, i32 4, i32 11
  store ptr @sh_mtu2_clock_event_set_periodic, ptr %92, align 4
  %93 = getelementptr %struct.sh_mtu2_channel, ptr %48, i32 %49, i32 4, i32 17
  store ptr @sh_mtu2_clock_event_suspend, ptr %93, align 4
  %94 = getelementptr %struct.sh_mtu2_channel, ptr %48, i32 %49, i32 4, i32 18
  store ptr @sh_mtu2_clock_event_resume, ptr %94, align 8
  %95 = load ptr, ptr %50, align 64
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.platform_device, ptr %96, i32 0, i32 3
  %98 = load i32, ptr %74, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %97, ptr noundef nonnull @.str.8, i32 noundef %98) #12
  call void @clockevents_register_device(ptr noundef %86) #11
  br label %99

99:                                               ; preds = %82, %47
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #11
  br label %105

100:                                              ; preds = %64
  %101 = load ptr, ptr %50, align 64
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.platform_device, ptr %102, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.7, i32 noundef %49, i32 noundef %53) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #11
  %104 = icmp slt i32 %66, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %100, %99
  %106 = add nuw i32 %49, 1
  %107 = load i32, ptr %40, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load ptr, ptr %43, align 8
  br label %47

111:                                              ; preds = %105, %45
  store ptr %11, ptr %3, align 8
  br label %130

112:                                              ; preds = %100, %38, %35
  %113 = phi i32 [ %36, %35 ], [ -12, %38 ], [ %66, %100 ]
  %114 = getelementptr inbounds %struct.sh_mtu2_device, ptr %11, i32 0, i32 4
  %115 = load ptr, ptr %114, align 8
  call void @kfree(ptr noundef %115) #11
  %116 = load ptr, ptr %32, align 4
  call void @iounmap(ptr noundef %116) #11
  %117 = load ptr, ptr %16, align 8
  br label %118

118:                                              ; preds = %112, %34
  %119 = phi ptr [ %15, %34 ], [ %117, %112 ]
  %120 = phi i32 [ -6, %34 ], [ %113, %112 ]
  call void @clk_unprepare(ptr noundef %119) #11
  %121 = load ptr, ptr %16, align 8
  br label %122

122:                                              ; preds = %118, %18
  %123 = phi ptr [ %15, %18 ], [ %121, %118 ]
  %124 = phi i32 [ %19, %18 ], [ %120, %118 ]
  call void @clk_put(ptr noundef %123) #11
  br label %127

125:                                              ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #12
  %126 = ptrtoint ptr %15 to i32
  br label %127

127:                                              ; preds = %125, %122
  %128 = phi i32 [ %124, %122 ], [ %126, %125 ]
  call void @kfree(ptr noundef nonnull %11) #11
  %129 = call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 0) #11
  br label %138

130:                                              ; preds = %111, %8
  %131 = phi ptr [ %4, %8 ], [ %11, %111 ]
  %132 = getelementptr inbounds %struct.sh_mtu2_device, ptr %131, i32 0, i32 6
  %133 = load i8, ptr %132, align 4, !range !9
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  call void @pm_runtime_irq_safe(ptr noundef %5) #11
  br label %138

136:                                              ; preds = %130
  %137 = call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 0) #11
  br label %138

138:                                              ; preds = %136, %135, %127, %9
  %139 = phi i32 [ %128, %127 ], [ -12, %9 ], [ 0, %136 ], [ 0, %135 ]
  ret i32 %139
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sh_mtu2_remove(ptr nocapture noundef readnone %0) #3 {
  ret i32 -16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mtu2_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sh_mtu2_channel, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 5
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr i8, ptr %7, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 -2) #11, !srcloc !13
  %9 = getelementptr inbounds %struct.sh_mtu2_channel, ptr %1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 64
  tail call void %10(ptr noundef %9) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mtu2_clock_event_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 16
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %39

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -64
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.sh_mtu2_device, ptr %7, i32 0, i32 3
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #11
  %10 = load ptr, ptr %6, align 64
  %11 = getelementptr inbounds %struct.sh_mtu2_device, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 640
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %15 = getelementptr i8, ptr %0, i32 -60
  %16 = load i32, ptr %15, align 4
  %17 = shl nuw i32 1, %16
  %18 = trunc i32 %17 to i8
  %19 = xor i8 %18, -1
  %20 = and i8 %14, %19
  %21 = load ptr, ptr %6, align 64
  %22 = getelementptr inbounds %struct.sh_mtu2_device, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 640
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %20) #11, !srcloc !13
  %25 = load ptr, ptr %6, align 64
  %26 = getelementptr inbounds %struct.sh_mtu2_device, ptr %25, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %9) #11
  %27 = load ptr, ptr %6, align 64
  %28 = getelementptr inbounds %struct.sh_mtu2_device, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void @clk_disable(ptr noundef %29) #11
  %30 = load ptr, ptr %6, align 64
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3, i32 11, i32 7
  %33 = load i8, ptr %32, align 4
  %34 = and i8 %33, -3
  store i8 %34, ptr %32, align 4
  %35 = load ptr, ptr %6, align 64
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %38 = tail call i32 @__pm_runtime_idle(ptr noundef %37, i32 noundef 5) #11
  br label %39

39:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mtu2_clock_event_set_periodic(ptr noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 16
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %39

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 64
  %8 = getelementptr inbounds %struct.sh_mtu2_device, ptr %7, i32 0, i32 3
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #11
  %10 = load ptr, ptr %2, align 64
  %11 = getelementptr inbounds %struct.sh_mtu2_device, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 640
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %15 = getelementptr i8, ptr %0, i32 -60
  %16 = load i32, ptr %15, align 4
  %17 = shl nuw i32 1, %16
  %18 = trunc i32 %17 to i8
  %19 = xor i8 %18, -1
  %20 = and i8 %14, %19
  %21 = load ptr, ptr %2, align 64
  %22 = getelementptr inbounds %struct.sh_mtu2_device, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 640
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %20) #11, !srcloc !13
  %25 = load ptr, ptr %2, align 64
  %26 = getelementptr inbounds %struct.sh_mtu2_device, ptr %25, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %9) #11
  %27 = load ptr, ptr %2, align 64
  %28 = getelementptr inbounds %struct.sh_mtu2_device, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void @clk_disable(ptr noundef %29) #11
  %30 = load ptr, ptr %2, align 64
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3, i32 11, i32 7
  %33 = load i8, ptr %32, align 4
  %34 = and i8 %33, -3
  store i8 %34, ptr %32, align 4
  %35 = load ptr, ptr %2, align 64
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %38 = tail call i32 @__pm_runtime_idle(ptr noundef %37, i32 noundef 5) #11
  br label %39

39:                                               ; preds = %6, %1
  %40 = load ptr, ptr %2, align 64
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  %43 = getelementptr i8, ptr %0, i32 -60
  %44 = load i32, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.9, i32 noundef %44) #12
  %45 = load ptr, ptr %2, align 64
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  %48 = tail call i32 @__pm_runtime_resume(ptr noundef %47, i32 noundef 4) #11
  %49 = load ptr, ptr %2, align 64
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3, i32 11, i32 7
  %52 = load i8, ptr %51, align 4
  %53 = or i8 %52, 2
  store i8 %53, ptr %51, align 4
  %54 = load ptr, ptr %2, align 64
  %55 = getelementptr inbounds %struct.sh_mtu2_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @clk_enable(ptr noundef %56) #11
  %58 = icmp eq i32 %57, 0
  %59 = load ptr, ptr %2, align 64
  br i1 %58, label %64, label %60

60:                                               ; preds = %39
  %61 = load ptr, ptr %59, align 4
  %62 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3
  %63 = load i32, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.10, i32 noundef %63) #12
  br label %121

64:                                               ; preds = %39
  %65 = getelementptr inbounds %struct.sh_mtu2_device, ptr %59, i32 0, i32 3
  %66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %65) #11
  %67 = load ptr, ptr %2, align 64
  %68 = getelementptr inbounds %struct.sh_mtu2_device, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 640
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %70) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %72 = load i32, ptr %43, align 4
  %73 = shl nuw i32 1, %72
  %74 = trunc i32 %73 to i8
  %75 = xor i8 %74, -1
  %76 = and i8 %71, %75
  %77 = load ptr, ptr %2, align 64
  %78 = getelementptr inbounds %struct.sh_mtu2_device, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 640
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %80, i8 %76) #11, !srcloc !13
  %81 = load ptr, ptr %2, align 64
  %82 = getelementptr inbounds %struct.sh_mtu2_device, ptr %81, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %82, i32 noundef %66) #11
  %83 = load ptr, ptr %2, align 64
  %84 = getelementptr inbounds %struct.sh_mtu2_device, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 @clk_get_rate(ptr noundef %85) #11
  %87 = lshr i32 %86, 6
  %88 = add nuw nsw i32 %87, 50
  %89 = udiv i32 %88, 100
  %90 = getelementptr i8, ptr %0, i32 -56
  %91 = load ptr, ptr %90, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %91, i8 35) #11, !srcloc !13
  %92 = load ptr, ptr %90, align 8
  %93 = getelementptr i8, ptr %92, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %93, i8 17) #11, !srcloc !13
  %94 = trunc i32 %89 to i16
  %95 = load ptr, ptr %90, align 8
  %96 = getelementptr i8, ptr %95, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %96, i16 %94) #11, !srcloc !15
  %97 = load ptr, ptr %90, align 8
  %98 = getelementptr i8, ptr %97, i32 6
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %98, i16 0) #11, !srcloc !15
  %99 = load ptr, ptr %90, align 8
  %100 = getelementptr i8, ptr %99, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %100, i8 0) #11, !srcloc !13
  %101 = load ptr, ptr %90, align 8
  %102 = getelementptr i8, ptr %101, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %102, i8 1) #11, !srcloc !13
  %103 = load ptr, ptr %2, align 64
  %104 = getelementptr inbounds %struct.sh_mtu2_device, ptr %103, i32 0, i32 3
  %105 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %104) #11
  %106 = load ptr, ptr %2, align 64
  %107 = getelementptr inbounds %struct.sh_mtu2_device, ptr %106, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr i8, ptr %108, i32 640
  %110 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %109) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %111 = load i32, ptr %43, align 4
  %112 = shl nuw i32 1, %111
  %113 = trunc i32 %112 to i8
  %114 = or i8 %110, %113
  %115 = load ptr, ptr %2, align 64
  %116 = getelementptr inbounds %struct.sh_mtu2_device, ptr %115, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %117, i32 640
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %118, i8 %114) #11, !srcloc !13
  %119 = load ptr, ptr %2, align 64
  %120 = getelementptr inbounds %struct.sh_mtu2_device, ptr %119, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %120, i32 noundef %105) #11
  br label %121

121:                                              ; preds = %64, %60
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_mtu2_clock_event_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 64
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void @dev_pm_genpd_suspend(ptr noundef %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_mtu2_clock_event_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 64
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void @dev_pm_genpd_resume(ptr noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_genpd_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_genpd_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

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
!10 = !{i64 2835965}
!11 = !{i64 2150367202}
!12 = !{i64 2150368500}
!13 = !{i64 2835570}
!14 = !{i64 2150368897}
!15 = !{i64 2835147}
