; ModuleID = '/llk/IR/drivers/media/platform/sti/hva/hva-hw.c_pt.bc'
source_filename = "../drivers/media/platform/sti/hva/hva-hw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
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
%struct.hva_dev = type { %struct.v4l2_device, ptr, ptr, ptr, %struct.mutex, ptr, [16 x ptr], i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, %struct.mutex, %struct.completion, i32, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hva_ctx = type { ptr, %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.hva_controls, i8, i8, [100 x i8], %struct.work_struct, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hva_streaminfo, %struct.hva_frameinfo, ptr, ptr, i8, i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.hva_controls = type { %struct.v4l2_fract, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i8, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.hva_streaminfo = type { i32, i32, i32, [32 x i8], [32 x i8] }
%struct.hva_frameinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.hva_buffer = type { ptr, i32, ptr, i32 }

@.str = private unnamed_addr constant [40 x i8] c"drivers/media/platform/sti/hva/hva-hw.c\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s     failed to get regs\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"[---:----]\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s     failed to get esram\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"%s     esram reserved for address: 0x%x size:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"clk_hva\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"%s     failed to get clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"%s     failed to prepare clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"hva_its_irq\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"%s     failed to install status IRQ 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"hva_err_irq\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"%s     failed to install error IRQ 0x%x\0A\00", align 1
@hva_hw_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"&hva->protect_mutex\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"%s     failed to set PM\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"%s     found hva device (version 0x%lx)\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"%s     failed to prepare hva clk\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"%s     failed to set clock frequency\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"%s     failed to get pm_runtime\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"%s     %s: time out on completion\0A\00", align 1
@__func__.hva_hw_execute_task = private unnamed_addr constant [20 x i8] c"hva_hw_execute_task\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"%s     %s: bad context identifier: %d\0A\00", align 1
@__func__.hva_hw_its_irq_thread = private unnamed_addr constant [22 x i8] c"hva_hw_its_irq_thread\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"%s     %s:h264 bitstream oversize\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"%s     %s: h264 slice limit size is reached\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"%s     %s: h264 max slice number is reached\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"%s     %s:task list full\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"%s     %s: command not known\0A\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"%s     %s: wrong codec or resolution\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"%s     %s: status not recognized\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"%s     bad context identifier: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"%s     local memory interface error: 0x%08x\0A\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"%s     external memory interface error: 0x%08x\0A\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"%s     hec memory interface error: 0x%08x\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"%s     unknown IP hardware version 0x%lx\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hva_hw_probe(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 304, i32 noundef 9, ptr noundef null) #3
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #3
  %8 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 9
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  %11 = load ptr, ptr %8, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %100

13:                                               ; preds = %6
  %14 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #3
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2) #4
  br label %100

17:                                               ; preds = %13
  %18 = load i32, ptr %14, align 4
  %19 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 10
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.resource, ptr %14, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %14, align 4
  %23 = add i32 %21, 1
  %24 = sub i32 %23, %22
  %25 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 11
  store i32 %24, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef %18, i32 noundef %24) #4
  %26 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.5) #3
  %27 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 12
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #4
  %30 = load ptr, ptr %27, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %100

32:                                               ; preds = %17
  %33 = tail call i32 @clk_prepare(ptr noundef %26) #3
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2) #4
  store ptr inttoptr (i32 -22 to ptr), ptr %27, align 4
  br label %100

36:                                               ; preds = %32
  %37 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #3
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %95, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 13
  store i32 %37, ptr %40, align 4
  %41 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %37, ptr noundef nonnull @hva_hw_its_interrupt, ptr noundef nonnull @hva_hw_its_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.8, ptr noundef %1) #3
  %42 = icmp eq i32 %41, 0
  %43 = load i32, ptr %40, align 4
  br i1 %42, label %45, label %44

44:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef %43) #4
  br label %95

45:                                               ; preds = %39
  tail call void @disable_irq(i32 noundef %43) #3
  %46 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #3
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %95, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 14
  store i32 %46, ptr %49, align 4
  %50 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %46, ptr noundef nonnull @hva_hw_err_interrupt, ptr noundef nonnull @hva_hw_err_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.10, ptr noundef %1) #3
  %51 = icmp eq i32 %50, 0
  %52 = load i32, ptr %49, align 4
  br i1 %51, label %54, label %53

53:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef %52) #4
  br label %95

54:                                               ; preds = %48
  tail call void @disable_irq(i32 noundef %52) #3
  %55 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %55, ptr noundef nonnull @.str.12, ptr noundef nonnull @hva_hw_probe.__key) #3
  %56 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 17
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 17, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %57, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_completion.__key) #3
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef 3) #3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #3
  %58 = tail call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 2) #3
  tail call void @pm_runtime_enable(ptr noundef %3) #3
  %59 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #3
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #3, !srcloc !10
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 0, i32 -1, ptr elementtype(i32) %62) #3, !srcloc !11
  %64 = extractvalue { i32, i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  br label %67

67:                                               ; preds = %66, %61
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2) #4
  br label %93

68:                                               ; preds = %54
  %69 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 @__pm_runtime_resume(ptr noundef %70, i32 noundef 4) #3
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #3, !srcloc !10
  %75 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %74, ptr %74, i32 0, i32 -1, ptr elementtype(i32) %74) #3, !srcloc !11
  %76 = extractvalue { i32, i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  br label %79

79:                                               ; preds = %78, %73
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.2) #4
  tail call void @mutex_unlock(ptr noundef %55) #3
  br label %90

80:                                               ; preds = %68
  %81 = load ptr, ptr %8, align 4
  %82 = getelementptr i8, ptr %81, i32 332
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #3, !srcloc !13
  %84 = and i32 %83, 65535
  %85 = tail call i32 @__pm_runtime_suspend(ptr noundef %70, i32 noundef 13) #3
  %86 = icmp eq i32 %84, 1024
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2, i32 noundef %84) #4
  %88 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 18
  store i32 0, ptr %88, align 4
  %89 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #3
  br label %93

90:                                               ; preds = %80, %79
  %91 = phi i32 [ 1024, %80 ], [ -14, %79 ]
  %92 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 18
  store i32 %91, ptr %92, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef %91) #4
  br label %100

93:                                               ; preds = %87, %67
  %94 = phi i32 [ %59, %67 ], [ -22, %87 ]
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #3
  br label %95

95:                                               ; preds = %93, %53, %45, %44, %36
  %96 = phi i32 [ %37, %36 ], [ %41, %44 ], [ %46, %45 ], [ %50, %53 ], [ %94, %93 ]
  %97 = load ptr, ptr %27, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call void @clk_unprepare(ptr noundef nonnull %97) #3
  br label %100

100:                                              ; preds = %99, %95, %90, %35, %29, %16, %10
  %101 = phi i32 [ %12, %10 ], [ %31, %29 ], [ %33, %35 ], [ 0, %90 ], [ -19, %16 ], [ %96, %99 ], [ %96, %95 ]
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_hw_its_interrupt(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 280
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !13
  %7 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 26
  store i32 %6, ptr %7, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 284
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !13
  %11 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 25
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 1) #3, !srcloc !14
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_hw_its_irq_thread(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 26
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 8
  %8 = and i32 %7, 255
  %9 = icmp ugt i32 %8, 15
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.hva_hw_its_irq_thread, i32 noundef %8) #4
  br label %44

11:                                               ; preds = %2
  %12 = getelementptr %struct.hva_dev, ptr %1, i32 0, i32 6, i32 %8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %11
  %16 = trunc i32 %6 to i8
  switch i8 %16, label %41 [
    i8 0, label %17
    i8 8, label %19
    i8 4, label %21
    i8 2, label %23
    i8 5, label %26
    i8 7, label %29
    i8 -16, label %32
    i8 -15, label %35
    i8 -12, label %38
  ]

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 21
  store i8 0, ptr %18, align 4
  br label %44

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 21
  store i8 0, ptr %20, align 4
  br label %44

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 21
  store i8 0, ptr %22, align 4
  br label %44

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.20, ptr noundef %24, ptr noundef nonnull @__func__.hva_hw_its_irq_thread) #4
  %25 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 21
  store i8 1, ptr %25, align 4
  br label %44

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %27, ptr noundef nonnull @__func__.hva_hw_its_irq_thread) #4
  %28 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 21
  store i8 1, ptr %28, align 4
  br label %44

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.22, ptr noundef %30, ptr noundef nonnull @__func__.hva_hw_its_irq_thread) #4
  %31 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 21
  store i8 1, ptr %31, align 4
  br label %44

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.23, ptr noundef %33, ptr noundef nonnull @__func__.hva_hw_its_irq_thread) #4
  %34 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 21
  store i8 1, ptr %34, align 4
  br label %44

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.24, ptr noundef %36, ptr noundef nonnull @__func__.hva_hw_its_irq_thread) #4
  %37 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 21
  store i8 1, ptr %37, align 4
  br label %44

38:                                               ; preds = %15
  %39 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.25, ptr noundef %39, ptr noundef nonnull @__func__.hva_hw_its_irq_thread) #4
  %40 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 21
  store i8 1, ptr %40, align 4
  br label %44

41:                                               ; preds = %15
  %42 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.26, ptr noundef %42, ptr noundef nonnull @__func__.hva_hw_its_irq_thread) #4
  %43 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 21
  store i8 1, ptr %43, align 4
  br label %44

44:                                               ; preds = %41, %38, %35, %32, %29, %26, %23, %21, %19, %17, %11, %10
  %45 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 17
  tail call void @complete(ptr noundef %45) #3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_hw_err_interrupt(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 280
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !13
  %7 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 26
  store i32 %6, ptr %7, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 284
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !13
  %11 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 25
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 296
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #3, !srcloc !13
  %15 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 27
  store i32 %14, ptr %15, align 4
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 300
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #3, !srcloc !13
  %19 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 28
  store i32 %18, ptr %19, align 4
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 304
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #3, !srcloc !13
  %23 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 29
  store i32 %22, ptr %23, align 4
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr i8, ptr %24, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 1) #3, !srcloc !14
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_hw_err_irq_thread(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 26
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 8
  %8 = and i32 %7, 255
  %9 = icmp ugt i32 %8, 15
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2, i32 noundef %8) #4
  br label %36

11:                                               ; preds = %2
  %12 = getelementptr %struct.hva_dev, ptr %1, i32 0, i32 6, i32 %8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 27
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.28, ptr noundef %20, i32 noundef %17) #4
  %21 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 21
  store i8 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 28
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.29, ptr noundef %27, i32 noundef %24) #4
  %28 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 21
  store i8 1, ptr %28, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 29
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.30, ptr noundef %34, i32 noundef %31) #4
  %35 = getelementptr inbounds %struct.hva_ctx, ptr %13, i32 0, i32 21
  store i8 1, ptr %35, align 4
  br label %36

36:                                               ; preds = %33, %29, %11, %10
  %37 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 17
  tail call void @complete(ptr noundef %37) #3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hva_hw_remove(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hva_dev, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hva_dev, ptr %0, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  tail call void @disable_irq(i32 noundef %5) #3
  %6 = getelementptr inbounds %struct.hva_dev, ptr %0, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  tail call void @disable_irq(i32 noundef %7) #3
  %8 = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #3
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hva_hw_runtime_suspend(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #3
  tail call void @clk_unprepare(ptr noundef %5) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hva_hw_runtime_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #3
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2) #4
  br label %21

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 4
  %17 = tail call i32 @clk_set_rate(ptr noundef %16, i32 noundef 300000000) #3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2) #4
  %20 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %20) #3
  tail call void @clk_unprepare(ptr noundef %20) #3
  br label %21

21:                                               ; preds = %19, %15, %12
  %22 = phi i32 [ -22, %12 ], [ -22, %19 ], [ 0, %15 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hva_hw_execute_task(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.hva_dev, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hva_dev, ptr %4, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %9) #3
  %10 = getelementptr inbounds %struct.hva_dev, ptr %4, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  tail call void @enable_irq(i32 noundef %11) #3
  %12 = getelementptr inbounds %struct.hva_dev, ptr %4, i32 0, i32 14
  %13 = load i32, ptr %12, align 4
  tail call void @enable_irq(i32 noundef %13) #3
  %14 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #3
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #3, !srcloc !10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 0, i32 -1, ptr elementtype(i32) %17) #3, !srcloc !11
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  br label %22

22:                                               ; preds = %21, %16
  %23 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17, ptr noundef %23) #4
  %24 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 23
  br label %66

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.hva_dev, ptr %4, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 328
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #3, !srcloc !13
  %30 = icmp eq i32 %1, 2
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = or i32 %29, 1
  %33 = load ptr, ptr %26, align 4
  %34 = getelementptr i8, ptr %33, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #3, !srcloc !14
  %35 = load ptr, ptr %26, align 4
  %36 = getelementptr i8, ptr %35, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 258048) #3, !srcloc !14
  %37 = load ptr, ptr %26, align 4
  %38 = getelementptr i8, ptr %37, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #3, !srcloc !14
  %39 = load ptr, ptr %26, align 4
  %40 = getelementptr i8, ptr %39, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 196) #3, !srcloc !14
  %41 = zext i8 %8 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = or i32 %42, 2
  %44 = load ptr, ptr %26, align 4
  %45 = getelementptr i8, ptr %44, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #3, !srcloc !14
  %46 = getelementptr inbounds %struct.hva_buffer, ptr %2, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %26, align 4
  %49 = getelementptr i8, ptr %48, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #3, !srcloc !14
  %50 = getelementptr inbounds %struct.hva_dev, ptr %4, i32 0, i32 17
  %51 = tail call i32 @wait_for_completion_timeout(ptr noundef %50, i32 noundef 200) #3
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %58

53:                                               ; preds = %25
  %54 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 24
  br label %66

55:                                               ; preds = %31
  %56 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef %56, ptr noundef nonnull @__func__.hva_hw_execute_task) #4
  %57 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 24
  br label %66

58:                                               ; preds = %31
  %59 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 21
  %60 = load i8, ptr %59, align 4, !range !15
  %61 = icmp eq i8 %60, 0
  %62 = select i1 %61, i32 0, i32 -14
  %63 = xor i1 %61, true
  %64 = zext i1 %63 to i32
  %65 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 24
  br label %66

66:                                               ; preds = %58, %55, %53, %22
  %67 = phi ptr [ %65, %58 ], [ %57, %55 ], [ %54, %53 ], [ %24, %22 ]
  %68 = phi i32 [ %64, %58 ], [ 1, %55 ], [ 1, %53 ], [ 1, %22 ]
  %69 = phi i32 [ %62, %58 ], [ -14, %55 ], [ -14, %53 ], [ -14, %22 ]
  %70 = phi i32 [ %32, %58 ], [ %32, %55 ], [ %29, %53 ], [ 0, %22 ]
  %71 = load i32, ptr %67, align 4
  %72 = add i32 %71, %68
  store i32 %72, ptr %67, align 4
  %73 = load i32, ptr %10, align 4
  tail call void @disable_irq(i32 noundef %73) #3
  %74 = load i32, ptr %12, align 4
  tail call void @disable_irq(i32 noundef %74) #3
  %75 = icmp eq i32 %1, 2
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = and i32 %70, -2
  %78 = getelementptr inbounds %struct.hva_dev, ptr %4, i32 0, i32 9
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %77) #3, !srcloc !14
  br label %81

81:                                               ; preds = %76, %66
  br i1 %15, label %84, label %82

82:                                               ; preds = %81
  %83 = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #3
  br label %84

84:                                               ; preds = %82, %81
  tail call void @mutex_unlock(ptr noundef %9) #3
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!9 = !{i64 2147955608}
!10 = !{i64 453918, i64 2147943889, i64 2147943915, i64 2147943962, i64 2147943984, i64 2147944012, i64 2147944032}
!11 = !{i64 440487, i64 440512, i64 440534, i64 440550, i64 440562, i64 440582, i64 440606, i64 440622, i64 440634}
!12 = !{i64 2147955734}
!13 = !{i64 3095045}
!14 = !{i64 3094627}
!15 = !{i8 0, i8 2}
