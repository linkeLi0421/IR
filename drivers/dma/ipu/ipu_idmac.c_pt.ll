; ModuleID = '/llk/IR/drivers/dma/ipu/ipu_idmac.c_pt.bc'
source_filename = "../drivers/dma/ipu/ipu_idmac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipu = type { ptr, ptr, i32, i32, i32, i32, %struct.spinlock, ptr, ptr, %struct.idmac, [32 x %struct.idmac_channel], %struct.tasklet_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.idmac = type { %struct.dma_device }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idmac_channel = type { %struct.dma_chan, i32, %union.ipu_channel_param, i32, i32, ptr, i32, ptr, [2 x ptr], %struct.list_head, %struct.list_head, %struct.spinlock, %struct.mutex, i8, i32, i32, [16 x i8] }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%union.ipu_channel_param = type { %struct.idmac_video_param }
%struct.idmac_video_param = type { i16, i16, i32, i16, i16, i32, i16, i8, i8, i8, i32, i16, i16 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.lock_class_key = type {}
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.idmac_tx_desc = type { %struct.dma_async_tx_descriptor, ptr, i32, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%union.chan_param_mem = type { %struct.chan_param_mem_interleaved }
%struct.chan_param_mem_interleaved = type { [20 x i8], i32, i32, [12 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.chan_param_mem_planar = type <{ [20 x i8], i32, i32, i64 }>

@__initcall__kmod_ipu_idmac__228_1797_ipu_init4 = internal global ptr @ipu_init, section ".initcall4.init", align 4
@__UNIQUE_ID_description229 = internal constant [38 x i8] c"ipu_idmac.description=IPU core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [41 x i8] c"ipu_idmac.file=drivers/dma/ipu/ipu_idmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [25 x i8] c"ipu_idmac.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [52 x i8] c"ipu_idmac.author=Guennadi Liakhovetski <lg@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [34 x i8] c"ipu_idmac.alias=platform:ipu-core\00", section ".modinfo", align 1
@ipu_platform_driver = internal global %struct.platform_driver { ptr null, ptr @ipu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"ipu-core\00", align 1
@ipu_data = internal global %struct.ipu zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to probe IPU: %d\0A\00", align 1
@ipu_idmac_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"&ichan->chan_mutex\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"IDMAC EOF %d\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"drivers/dma/ipu/ipu_idmac.c\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Descriptor %p not prepared!\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"Stride length must be 32-bit aligned, stride = %d, bytes = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Stride must be 8 pixel multiple\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"mx3 ipu: unimplemented pixel format %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"NFB4EOF on channel %d, ready %x, %x, cur %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"IRQ without queued buffers on channel %x, active %d, ready %x, %x!\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Submitted buffer %p, next buffer %p\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Channel already uninitialized %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Invalid DMA direction %d!\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__initcall__kmod_ipu_idmac__228_1797_ipu_init4], section "llvm.metadata"
@switch.table.idmac_tx_submit = private unnamed_addr constant [11 x i32] [i32 2, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipu_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @ipu_platform_driver, ptr noundef nonnull @ipu_probe, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipu_probe(ptr noundef %0) #0 section ".init.text" {
  store i32 0, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6), align 4
  %2 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #10
  %3 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #10
  %4 = icmp ne ptr %2, null
  %5 = icmp ne ptr %3, null
  %6 = select i1 %4, i1 %5, i1 false
  br i1 %6, label %7, label %65

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  store ptr %8, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 8), align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr @ipu_data, ptr %9, align 8
  %10 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %63, label %12

12:                                               ; preds = %7
  store i32 %10, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 2), align 4
  %13 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %63, label %15

15:                                               ; preds = %12
  store i32 %13, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 3), align 4
  %16 = load i32, ptr %2, align 4
  %17 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 1, %16
  %20 = add i32 %19, %18
  %21 = tail call ptr @ioremap(i32 noundef %16, i32 noundef %20) #10
  store ptr %21, ptr @ipu_data, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %63, label %23

23:                                               ; preds = %15
  %24 = load i32, ptr %3, align 4
  %25 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 1, %24
  %28 = add i32 %27, %26
  %29 = tail call ptr @ioremap(i32 noundef %24, i32 noundef %28) #10
  store ptr %29, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %23
  %32 = tail call ptr @clk_get(ptr noundef %8, ptr noundef null) #10
  store ptr %32, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 7), align 4
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = ptrtoint ptr %32 to i32
  br label %57

36:                                               ; preds = %31
  tail call fastcc void @clk_prepare_enable(ptr noundef %32)
  %37 = load ptr, ptr @ipu_data, align 4
  %38 = getelementptr i8, ptr %37, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #10, !srcloc !8
  %39 = load ptr, ptr @ipu_data, align 4
  %40 = getelementptr i8, ptr %39, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #10, !srcloc !8
  %41 = load ptr, ptr @ipu_data, align 4
  %42 = getelementptr i8, ptr %41, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #10, !srcloc !8
  %43 = load ptr, ptr @ipu_data, align 4
  %44 = getelementptr i8, ptr %43, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #10, !srcloc !8
  %45 = load ptr, ptr @ipu_data, align 4
  %46 = getelementptr i8, ptr %45, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #10, !srcloc !8
  %47 = tail call i32 @ipu_irq_attach_irq(ptr noundef nonnull @ipu_data, ptr noundef %0) #10
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %36
  %50 = tail call fastcc i32 @ipu_idmac_init() #11
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @tasklet_setup(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 11), ptr noundef nonnull @ipu_gc_tasklet) #10
  store ptr %8, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 8), align 4
  br label %65

53:                                               ; preds = %49, %36
  %54 = phi i32 [ %47, %36 ], [ %50, %49 ]
  tail call void @ipu_irq_detach_irq(ptr noundef nonnull @ipu_data, ptr noundef %0) #10
  %55 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 7), align 4
  tail call void @clk_disable(ptr noundef %55) #10
  tail call void @clk_unprepare(ptr noundef %55) #10
  %56 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 7), align 4
  tail call void @clk_put(ptr noundef %56) #10
  br label %57

57:                                               ; preds = %53, %34
  %58 = phi i32 [ %35, %34 ], [ %54, %53 ]
  %59 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  tail call void @iounmap(ptr noundef %59) #10
  br label %60

60:                                               ; preds = %57, %23
  %61 = phi i32 [ %58, %57 ], [ -12, %23 ]
  %62 = load ptr, ptr @ipu_data, align 4
  tail call void @iounmap(ptr noundef %62) #10
  br label %63

63:                                               ; preds = %60, %15, %12, %7
  %64 = phi i32 [ %10, %7 ], [ %13, %12 ], [ %61, %60 ], [ -12, %15 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1, i32 noundef %64) #12
  br label %65

65:                                               ; preds = %63, %52, %1
  %66 = phi i32 [ %64, %63 ], [ 0, %52 ], [ -22, %1 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipu_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ipu, ptr %3, i32 0, i32 10
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi i32 [ 0, %1 ], [ %9, %5 ]
  %7 = getelementptr %struct.idmac_channel, ptr %4, i32 %6
  %8 = getelementptr %struct.idmac_channel, ptr %4, i32 %6, i32 12
  tail call void @mutex_lock(ptr noundef %8) #10
  tail call fastcc void @__idmac_terminate_all(ptr noundef %7) #10
  tail call void @mutex_unlock(ptr noundef %8) #10
  %9 = add nuw nsw i32 %6, 1
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %11, label %5

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ipu, ptr %3, i32 0, i32 9
  tail call void @dma_async_device_unregister(ptr noundef %12) #10
  tail call void @ipu_irq_detach_irq(ptr noundef %3, ptr noundef %0) #10
  %13 = getelementptr inbounds %struct.ipu, ptr %3, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #10
  tail call void @clk_unprepare(ptr noundef %14) #10
  %15 = load ptr, ptr %13, align 4
  tail call void @clk_put(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.ipu, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @iounmap(ptr noundef %17) #10
  %18 = load ptr, ptr %3, align 4
  tail call void @iounmap(ptr noundef %18) #10
  %19 = getelementptr inbounds %struct.ipu, ptr %3, i32 0, i32 11
  tail call void @tasklet_kill(ptr noundef %19) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_irq_detach_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idmac_terminate_all(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %2) #10
  tail call fastcc void @__idmac_terminate_all(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %2) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__idmac_terminate_all(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 2
  tail call fastcc void @ipu_disable_channel(ptr noundef %2, ptr noundef %0, i1 noundef zeroext %5)
  %6 = getelementptr i8, ptr %2, i32 6524
  %7 = getelementptr i8, ptr %2, i32 6532
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #10, !srcloc !9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #10, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void @tasklet_unlock_wait(ptr noundef %6) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %9 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 11
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #10
  %11 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 10
  %12 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 9
  %13 = load volatile ptr, ptr %11, align 4
  %14 = icmp eq ptr %13, %11
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 10, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %19, align 4
  store ptr %13, ptr %12, align 4
  store ptr %16, ptr %18, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %17, align 4
  br label %21

21:                                               ; preds = %15, %1
  %22 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %48, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %46, %25
  %30 = phi ptr [ %47, %46 ], [ %23, %25 ]
  %31 = phi i32 [ %43, %46 ], [ 0, %25 ]
  %32 = getelementptr %struct.idmac_tx_desc, ptr %30, i32 %31, i32 3
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load ptr, ptr %12, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %32, ptr %37, align 4
  store ptr %36, ptr %32, align 4
  %38 = getelementptr %struct.idmac_tx_desc, ptr %30, i32 %31, i32 3, i32 1
  store ptr %12, ptr %38, align 4
  store volatile ptr %32, ptr %12, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = getelementptr %struct.idmac_tx_desc, ptr %30, i32 %31, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -3
  store i32 %42, ptr %40, align 4
  %43 = add nuw i32 %31, 1
  %44 = load i32, ptr %26, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load ptr, ptr %22, align 4
  br label %29

48:                                               ; preds = %39, %25, %21
  %49 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 8
  store ptr null, ptr %49, align 4
  %50 = getelementptr %struct.idmac_channel, ptr %0, i32 0, i32 8, i32 1
  store ptr null, ptr %50, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #10, !srcloc !9
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #10, !srcloc !14
  store i32 1, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipu_disable_channel(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -36
  %7 = shl nuw i32 1, %5
  br i1 %2, label %8, label %48

8:                                                ; preds = %3
  %9 = and i32 %5, -2
  %10 = icmp eq i32 %9, 14
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %0, i32 -32
  %13 = icmp eq i32 %5, 7
  br label %14

14:                                               ; preds = %28, %11
  %15 = phi i32 [ %29, %28 ], [ 40, %11 ]
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr i8, ptr %16, i32 40
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !15
  %19 = and i32 %18, %7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 28
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !15
  %25 = and i32 %24, 12
  %26 = icmp eq i32 %25, 4
  %27 = select i1 %13, i1 %26, i1 false
  br i1 %27, label %28, label %48

28:                                               ; preds = %21, %14
  %29 = add nsw i32 %15, -1
  tail call void @msleep(i32 noundef 10) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %48, label %14

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 15
  %33 = load i32, ptr %32, align 4
  %34 = tail call zeroext i1 @ipu_irq_status(i32 noundef %33) #10
  br i1 %34, label %48, label %35

35:                                               ; preds = %31
  tail call void @msleep(i32 noundef 5) #10
  %36 = load i32, ptr %32, align 4
  %37 = tail call zeroext i1 @ipu_irq_status(i32 noundef %36) #10
  br i1 %37, label %48, label %38

38:                                               ; preds = %35
  tail call void @msleep(i32 noundef 5) #10
  %39 = load i32, ptr %32, align 4
  %40 = tail call zeroext i1 @ipu_irq_status(i32 noundef %39) #10
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  tail call void @msleep(i32 noundef 5) #10
  %42 = load i32, ptr %32, align 4
  %43 = tail call zeroext i1 @ipu_irq_status(i32 noundef %42) #10
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  tail call void @msleep(i32 noundef 5) #10
  %45 = load i32, ptr %32, align 4
  %46 = tail call zeroext i1 @ipu_irq_status(i32 noundef %45) #10
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void @msleep(i32 noundef 5) #10
  br label %48

48:                                               ; preds = %47, %44, %41, %38, %35, %31, %28, %21, %3
  %49 = getelementptr i8, ptr %0, i32 -12
  %50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %49) #10
  switch i32 %5, label %59 [
    i32 0, label %52
    i32 7, label %51
  ]

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ -1073741826, %51 ], [ -2, %48 ]
  %54 = getelementptr i8, ptr %0, i32 -32
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #10, !srcloc !15
  %57 = and i32 %56, %53
  %58 = load ptr, ptr %54, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %57) #10, !srcloc !8
  br label %59

59:                                               ; preds = %52, %48
  %60 = getelementptr i8, ptr %0, i32 -32
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 32
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #10, !srcloc !15
  %64 = xor i32 %7, -1
  %65 = and i32 %63, %64
  %66 = load ptr, ptr %60, align 4
  %67 = getelementptr i8, ptr %66, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #10, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %50) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipu_irq_status(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #10
  br label %8

8:                                                ; preds = %7, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_irq_attach_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ipu_idmac_init() unnamed_addr #0 section ".init.text" {
  tail call void @_set_bit(i32 noundef 11, ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 6)) #10
  tail call void @_set_bit(i32 noundef 9, ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 6)) #10
  %1 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 8), align 4
  store ptr %1, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 15), align 4
  store ptr @idmac_alloc_chan_resources, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 27), align 4
  store ptr @idmac_free_chan_resources, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 29), align 4
  store ptr @idmac_tx_status, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 49), align 4
  store ptr @idmac_issue_pending, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 50), align 4
  store ptr @idmac_prep_slave_sg, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 39), align 4
  store ptr @idmac_pause, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 45), align 4
  store ptr @idmac_terminate_all, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 47), align 4
  store volatile ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 3), ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 3), align 4
  store ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 3), ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 3, i32 1), align 4
  br label %2

2:                                                ; preds = %2, %0
  %3 = phi i32 [ 0, %0 ], [ %17, %2 ]
  %4 = getelementptr %struct.idmac_channel, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 10), i32 %3
  %5 = getelementptr %struct.idmac_channel, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 10), i32 %3, i32 11
  store i32 0, ptr %5, align 4
  %6 = getelementptr %struct.idmac_channel, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 10), i32 %3, i32 12
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @ipu_idmac_init.__key) #10
  %7 = getelementptr %struct.idmac_channel, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 10), i32 %3, i32 4
  store i32 0, ptr %7, align 4
  %8 = getelementptr %struct.idmac_channel, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 10), i32 %3, i32 13
  store i8 0, ptr %8, align 4
  %9 = getelementptr %struct.idmac_channel, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 10), i32 %3, i32 16
  %10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %9, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %3)
  store ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9), ptr %4, align 4
  %11 = getelementptr inbounds %struct.dma_chan, ptr %4, i32 0, i32 2
  store i32 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_chan, ptr %4, i32 0, i32 3
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dma_chan, ptr %4, i32 0, i32 4
  store i32 %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dma_chan, ptr %4, i32 0, i32 8
  %15 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 3, i32 1), align 4
  store ptr %14, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 3, i32 1), align 4
  store ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 3), ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %14, ptr %15, align 4
  %17 = add nuw nsw i32 %3, 1
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %19, label %2

19:                                               ; preds = %2
  %20 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  %21 = getelementptr i8, ptr %20, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 112) #10, !srcloc !8
  %22 = tail call i32 @dma_async_device_register(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9)) #10
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_gc_tasklet(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -6272
  br label %3

3:                                                ; preds = %59, %1
  %4 = phi i32 [ 0, %1 ], [ %60, %59 ]
  %5 = getelementptr %struct.idmac_channel, ptr %2, i32 %4
  %6 = getelementptr inbounds %struct.idmac_channel, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %59, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.idmac_channel, ptr %5, i32 0, i32 7
  %11 = getelementptr inbounds %struct.idmac_channel, ptr %5, i32 0, i32 11
  %12 = getelementptr inbounds %struct.idmac_channel, ptr %5, i32 0, i32 9
  %13 = getelementptr inbounds %struct.idmac_channel, ptr %5, i32 0, i32 8
  %14 = getelementptr [2 x ptr], ptr %13, i32 0, i32 1
  br label %15

15:                                               ; preds = %55, %9
  %16 = phi i32 [ 0, %9 ], [ %56, %55 ]
  %17 = load ptr, ptr %10, align 4
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #10
  %19 = getelementptr %struct.idmac_tx_desc, ptr %17, i32 %16, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %15
  %24 = getelementptr %struct.idmac_tx_desc, ptr %17, i32 %16, i32 3
  %25 = getelementptr %struct.idmac_tx_desc, ptr %17, i32 %16, i32 3, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  %29 = load ptr, ptr %12, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %24, ptr %30, align 4
  store ptr %29, ptr %24, align 4
  store ptr %12, ptr %25, align 4
  store volatile ptr %24, ptr %12, align 4
  %31 = getelementptr %struct.idmac_tx_desc, ptr %17, i32 %16, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %23
  %35 = getelementptr %struct.idmac_tx_desc, ptr %17, i32 %16, i32 1
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %47, %34
  %38 = phi i32 [ %48, %47 ], [ 0, %34 ]
  %39 = phi ptr [ %49, %47 ], [ %36, %34 ]
  %40 = load ptr, ptr %13, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %14, align 4
  %44 = icmp eq ptr %43, %39
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %37
  %46 = phi ptr [ %13, %37 ], [ %14, %42 ]
  store ptr null, ptr %46, align 4
  br label %47

47:                                               ; preds = %45, %42
  %48 = add nuw i32 %38, 1
  %49 = tail call ptr @sg_next(ptr noundef %39) #10
  %50 = load i32, ptr %31, align 4
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %37, label %52

52:                                               ; preds = %47, %23
  %53 = load i32, ptr %19, align 4
  %54 = and i32 %53, -3
  store i32 %54, ptr %19, align 4
  br label %55

55:                                               ; preds = %52, %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %18) #10
  %56 = add nuw i32 %16, 1
  %57 = load i32, ptr %6, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %15, label %59

59:                                               ; preds = %55, %3
  %60 = add nuw nsw i32 %4, 1
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %62, label %3

62:                                               ; preds = %59
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idmac_alloc_chan_resources(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %7, !prof !16

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ipu/ipu_idmac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #10, !srcloc !17
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !18

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1509, i32 noundef 9, ptr noundef null) #10
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  store i32 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @ipu_irq_map(i32 noundef %16) #10
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %99, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 15
  store i32 %17, ptr %20, align 4
  tail call fastcc void @ipu_disable_channel(ptr noundef %2, ptr noundef %0, i1 noundef zeroext true)
  %21 = load i32, ptr %15, align 4
  %22 = getelementptr i8, ptr %2, i32 -36
  switch i32 %21, label %95 [
    i32 15, label %23
    i32 14, label %23
    i32 7, label %23
  ]

23:                                               ; preds = %19, %19, %19
  %24 = getelementptr i8, ptr %2, i32 -12
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #10
  switch i32 %21, label %38 [
    i32 7, label %26
    i32 15, label %37
    i32 14, label %37
  ]

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %2, i32 -32
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #10, !srcloc !15
  %30 = and i32 %29, 2147483647
  %31 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #10, !srcloc !8
  %32 = getelementptr i8, ptr %2, i32 -16
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, 128
  store i32 %34, ptr %32, align 4
  %35 = load ptr, ptr %22, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #10, !srcloc !15
  br label %49

37:                                               ; preds = %23, %23
  br label %38

38:                                               ; preds = %37, %23
  %39 = phi i1 [ true, %23 ], [ false, %37 ]
  %40 = phi i32 [ 0, %23 ], [ 4, %37 ]
  %41 = shl nuw nsw i32 1, %21
  %42 = getelementptr i8, ptr %2, i32 -16
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, ptr %42, align 4
  %45 = load ptr, ptr %22, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #10, !srcloc !15
  switch i32 %21, label %48 [
    i32 15, label %47
    i32 7, label %49
    i32 14, label %47
  ]

47:                                               ; preds = %38, %38
  br label %49

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %47, %38, %26
  %50 = phi i32 [ %46, %48 ], [ %46, %47 ], [ %46, %38 ], [ %36, %26 ]
  %51 = phi i32 [ %40, %48 ], [ %40, %47 ], [ %40, %38 ], [ 16, %26 ]
  %52 = phi i1 [ %39, %48 ], [ %39, %47 ], [ %39, %38 ], [ false, %26 ]
  %53 = phi i32 [ 0, %48 ], [ 80, %47 ], [ 3, %38 ], [ 3, %26 ]
  %54 = or i32 %53, %50
  %55 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %54) #10, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #10
  br i1 %52, label %88, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 7
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %88

60:                                               ; preds = %56
  %61 = mul nuw nsw i32 %51, 76
  %62 = tail call noalias ptr @vmalloc(i32 noundef %61) #13
  %63 = icmp eq ptr %62, null
  br i1 %63, label %95, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %0, align 4
  %66 = getelementptr i8, ptr %65, i32 6524
  %67 = getelementptr i8, ptr %65, i32 6532
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #10, !srcloc !9
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #10, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void @tasklet_unlock_wait(ptr noundef %66) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %69 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 6
  store i32 %51, ptr %69, align 4
  store ptr %62, ptr %57, align 4
  %70 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 10
  store volatile ptr %70, ptr %70, align 4
  %71 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 10, i32 1
  store ptr %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 9
  store volatile ptr %72, ptr %72, align 4
  %73 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 9, i32 1
  store ptr %72, ptr %73, align 4
  %74 = icmp eq i32 %51, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %75, %64
  %76 = phi i32 [ %78, %75 ], [ %51, %64 ]
  %77 = phi ptr [ %84, %75 ], [ %62, %64 ]
  %78 = add nsw i32 %76, -1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(60) %77, i8 0, i32 60, i1 false) #10
  tail call void @dma_async_tx_descriptor_init(ptr noundef %77, ptr noundef %0) #10
  %79 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %77, i32 0, i32 4
  store ptr @idmac_tx_submit, ptr %79, align 4
  %80 = getelementptr inbounds %struct.idmac_tx_desc, ptr %77, i32 0, i32 3
  %81 = load ptr, ptr %72, align 4
  %82 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  store ptr %80, ptr %82, align 4
  store ptr %81, ptr %80, align 4
  %83 = getelementptr inbounds %struct.idmac_tx_desc, ptr %77, i32 0, i32 3, i32 1
  store ptr %72, ptr %83, align 4
  store volatile ptr %80, ptr %72, align 4
  %84 = getelementptr %struct.idmac_tx_desc, ptr %77, i32 1
  %85 = icmp eq i32 %78, 0
  br i1 %85, label %86, label %75

86:                                               ; preds = %75, %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #10, !srcloc !9
  %87 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #10, !srcloc !14
  br label %88

88:                                               ; preds = %86, %56, %49
  %89 = load i32, ptr %20, align 4
  %90 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 16
  %91 = tail call i32 @request_threaded_irq(i32 noundef %89, ptr noundef nonnull @idmac_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %90, ptr noundef %0) #10
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  store i32 1, ptr %8, align 4
  br label %99

94:                                               ; preds = %88
  tail call fastcc void @ipu_uninit_channel(ptr noundef %2, ptr noundef %0)
  br label %95

95:                                               ; preds = %94, %60, %19
  %96 = phi i32 [ %91, %94 ], [ -22, %19 ], [ -12, %60 ]
  %97 = load i32, ptr %15, align 4
  %98 = tail call i32 @ipu_irq_unmap(i32 noundef %97) #10
  br label %99

99:                                               ; preds = %95, %93, %12
  %100 = phi i32 [ %91, %93 ], [ %17, %12 ], [ %96, %95 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @idmac_free_chan_resources(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %3) #10
  tail call fastcc void @__idmac_terminate_all(ptr noundef %0)
  %4 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %0) #10
  %11 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @ipu_irq_unmap(i32 noundef %12) #10
  br label %14

14:                                               ; preds = %7, %1
  store i32 0, ptr %4, align 4
  tail call fastcc void @ipu_uninit_channel(ptr noundef %2, ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %3) #10
  %15 = getelementptr i8, ptr %2, i32 6528
  %16 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %15) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %2, i32 6524
  tail call void @__tasklet_schedule(ptr noundef %19) #10
  br label %20

20:                                               ; preds = %18, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idmac_tx_status(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %8 = icmp eq ptr %2, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  store i32 %7, ptr %2, align 4
  %10 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = icmp sgt i32 %7, %5
  %15 = icmp sge i32 %7, %1
  %16 = icmp slt i32 %5, %1
  br i1 %14, label %19, label %17

17:                                               ; preds = %13
  %18 = or i1 %16, %15
  br i1 %18, label %22, label %21

19:                                               ; preds = %13
  %20 = and i1 %16, %15
  br i1 %20, label %22, label %21

21:                                               ; preds = %19, %17
  br label %22

22:                                               ; preds = %21, %19, %17
  %23 = phi i32 [ 1, %21 ], [ 0, %17 ], [ 0, %19 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @idmac_issue_pending(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 -12
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 14
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = shl nuw i32 1, %6
  %11 = load ptr, ptr @ipu_data, align 4
  br i1 %9, label %12, label %14

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #10, !srcloc !8
  br label %16

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %10) #10, !srcloc !8
  br label %16

16:                                               ; preds = %14, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @idmac_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %40 [
    i32 14, label %9
    i32 15, label %9
    i32 7, label %9
  ]

9:                                                ; preds = %6, %6, %6
  %10 = add i32 %3, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.15, i32 noundef %3) #12
  br label %40

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %17) #10
  %18 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 11
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #10
  %20 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 9
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %21, i32 -68
  %25 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %21, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store volatile ptr %21, ptr %21, align 4
  store ptr %21, ptr %25, align 4
  %29 = getelementptr i8, ptr %21, i32 -4
  store i32 %2, ptr %29, align 4
  %30 = getelementptr i8, ptr %21, i32 -8
  store ptr %1, ptr %30, align 4
  %31 = getelementptr i8, ptr %21, i32 -64
  store i32 %4, ptr %31, align 4
  br label %32

32:                                               ; preds = %23, %16
  %33 = phi ptr [ null, %16 ], [ %24, %23 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #10
  tail call void @mutex_unlock(ptr noundef %17) #10
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr i8, ptr %34, i32 6528
  %36 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %35) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = getelementptr i8, ptr %34, i32 6524
  tail call void @__tasklet_schedule(ptr noundef %39) #10
  br label %40

40:                                               ; preds = %38, %32, %12, %6
  %41 = phi ptr [ null, %12 ], [ null, %6 ], [ %33, %32 ], [ %33, %38 ]
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idmac_pause(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr i8, ptr %2, i32 -12
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %16 [
    i32 0, label %9
    i32 7, label %8
  ]

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %1
  %10 = phi i32 [ -1073741826, %8 ], [ -2, %1 ]
  %11 = getelementptr i8, ptr %2, i32 -32
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #10, !srcloc !15
  %14 = and i32 %13, %10
  %15 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #10, !srcloc !8
  br label %16

16:                                               ; preds = %9, %1
  %17 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %27, label %20

20:                                               ; preds = %20, %16
  %21 = phi ptr [ %22, %20 ], [ %18, %16 ]
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  store volatile ptr %22, ptr %24, align 4
  store volatile ptr %21, ptr %21, align 4
  store ptr %21, ptr %23, align 4
  %26 = icmp eq ptr %22, %17
  br i1 %26, label %27, label %20

27:                                               ; preds = %20, %16
  %28 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 8
  store ptr null, ptr %28, align 4
  %29 = getelementptr %struct.idmac_channel, ptr %0, i32 0, i32 8, i32 1
  store ptr null, ptr %29, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  %30 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 4
  store i32 1, ptr %30, align 4
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_irq_map(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idmac_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.dmaengine_result, align 8
  %4 = alloca %struct.dmaengine_result, align 8
  %5 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_chan_dev, ptr %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6)) #10
  %10 = load ptr, ptr @ipu_data, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !15
  %13 = load ptr, ptr @ipu_data, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !15
  %16 = load ptr, ptr @ipu_data, align 4
  %17 = getelementptr i8, ptr %16, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !15
  %19 = load ptr, ptr @ipu_data, align 4
  %20 = getelementptr i8, ptr %19, i32 72
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #10, !srcloc !15
  %22 = shl nuw i32 1, %9
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load ptr, ptr @ipu_data, align 4
  %27 = getelementptr i8, ptr %26, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %22) #10, !srcloc !8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %28 = load i16, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6), align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef %9, i32 noundef %12, i32 noundef %15, i32 noundef %18) #12
  br label %192

30:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %31 = load i16, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6), align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %33 = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %33) #10
  %34 = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 14
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = and i32 %15, %22
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %43, !prof !18

40:                                               ; preds = %30
  %41 = and i32 %12, %22
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43, !prof !18

43:                                               ; preds = %40, %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %44 = load i16, ptr %33, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %192

46:                                               ; preds = %40, %37
  %47 = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 10
  %48 = load volatile ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  %50 = getelementptr %struct.idmac_channel, ptr %1, i32 0, i32 8, i32 %35
  br i1 %49, label %51, label %55, !prof !16

51:                                               ; preds = %46
  store ptr null, ptr %50, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %52 = load i16, ptr %33, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %54 = load i32, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.12, i32 noundef %9, i32 noundef %54, i32 noundef %12, i32 noundef %15) #12
  br label %192

55:                                               ; preds = %46
  %56 = zext i1 %36 to i32
  %57 = getelementptr %struct.idmac_channel, ptr %1, i32 0, i32 8, i32 %56
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %50, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %62 = load i16, ptr %33, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %192

64:                                               ; preds = %55
  %65 = getelementptr i8, ptr %48, i32 -68
  %66 = tail call ptr @sg_next(ptr noundef nonnull %59) #10
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load ptr, ptr %48, align 4
  %70 = icmp eq ptr %69, %47
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = getelementptr i8, ptr %69, i32 -68
  %73 = getelementptr i8, ptr %69, i32 -8
  %74 = load ptr, ptr %73, align 4
  br label %75

75:                                               ; preds = %71, %68, %64
  %76 = phi ptr [ %65, %68 ], [ %72, %71 ], [ %65, %64 ]
  %77 = phi ptr [ null, %68 ], [ %74, %71 ], [ %66, %64 ]
  %78 = icmp eq ptr %58, %77
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13, ptr noundef %58, ptr noundef %77) #12
  br label %80

80:                                               ; preds = %79, %75
  %81 = icmp ne ptr %58, null
  br i1 %81, label %107, label %82, !prof !18

82:                                               ; preds = %80
  %83 = load ptr, ptr %50, align 4
  %84 = tail call ptr @sg_next(ptr noundef %83) #10
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86, !prof !18

86:                                               ; preds = %82
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1248, i32 noundef 9, ptr noundef null) #10
  br label %87

87:                                               ; preds = %86, %82
  %88 = load i32, ptr %34, align 4
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = getelementptr %struct.idmac_channel, ptr %1, i32 0, i32 8, i32 %90
  store ptr %77, ptr %91, align 4
  %92 = icmp eq ptr %77, null
  br i1 %92, label %95, label %93, !prof !18

93:                                               ; preds = %87
  %94 = tail call fastcc i32 @ipu_submit_buffer(ptr noundef %1, ptr noundef %76, ptr noundef nonnull %77, i32 noundef %90)
  br label %109

95:                                               ; preds = %87
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6)) #10
  switch i32 %9, label %103 [
    i32 0, label %97
    i32 7, label %96
  ]

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96, %95
  %98 = phi i32 [ -1073741826, %96 ], [ -2, %95 ]
  %99 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #10, !srcloc !15
  %101 = and i32 %100, %98
  %102 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %101) #10, !srcloc !8
  br label %103

103:                                              ; preds = %97, %95
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %104 = load i16, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6), align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %106 = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 4
  store i32 2, ptr %106, align 4
  br label %112

107:                                              ; preds = %80
  %108 = icmp eq ptr %77, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %107, %93
  %110 = tail call ptr @sg_next(ptr noundef nonnull %77) #10
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %109, %107, %103
  %113 = getelementptr inbounds %struct.idmac_tx_desc, ptr %76, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, %47
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = getelementptr i8, ptr %114, i32 -68
  %118 = getelementptr i8, ptr %114, i32 -8
  %119 = load ptr, ptr %118, align 4
  br label %120

120:                                              ; preds = %116, %112, %109
  %121 = phi ptr [ %76, %112 ], [ %117, %116 ], [ %76, %109 ]
  %122 = phi ptr [ null, %112 ], [ %119, %116 ], [ %110, %109 ]
  %123 = load ptr, ptr %50, align 4
  %124 = tail call ptr @sg_next(ptr noundef %123) #10
  %125 = icmp ne ptr %124, null
  %126 = select i1 %125, i1 %81, i1 false
  br i1 %126, label %132, label %127, !prof !24

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = load ptr, ptr %48, align 4
  %131 = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  store ptr %129, ptr %131, align 4
  store volatile ptr %130, ptr %129, align 4
  store volatile ptr %48, ptr %48, align 4
  store ptr %48, ptr %128, align 4
  br label %132

132:                                              ; preds = %127, %120
  store ptr %122, ptr %50, align 4
  %133 = icmp eq ptr %122, null
  br i1 %133, label %158, label %134, !prof !16

134:                                              ; preds = %132
  %135 = load i32, ptr %34, align 4
  %136 = tail call fastcc i32 @ipu_submit_buffer(ptr noundef %1, ptr noundef %121, ptr noundef nonnull %122, i32 noundef %135)
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %121, i32 0, i32 6
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %121, i32 0, i32 7
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %121, i32 0, i32 8
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.idmac_tx_desc, ptr %121, i32 0, i32 3
  %146 = getelementptr inbounds %struct.idmac_tx_desc, ptr %121, i32 0, i32 3, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = load ptr, ptr %145, align 4
  %149 = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  store ptr %147, ptr %149, align 4
  store volatile ptr %148, ptr %147, align 4
  store volatile ptr %145, ptr %145, align 4
  store ptr %145, ptr %146, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %150 = load i16, ptr %33, align 4
  %151 = add i16 %150, 1
  store i16 %151, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8
  %152 = icmp eq ptr %142, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %138
  call void %142(ptr noundef %144, ptr noundef nonnull %4) #10
  br label %157

154:                                              ; preds = %138
  %155 = icmp eq ptr %140, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %154
  tail call void %140(ptr noundef %144) #10
  br label %157

157:                                              ; preds = %156, %154, %153
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @_raw_spin_lock(ptr noundef %33) #10
  br label %158

158:                                              ; preds = %157, %134, %132
  %159 = load i32, ptr %34, align 4
  %160 = icmp eq i32 %159, 0
  %161 = zext i1 %160 to i32
  store i32 %161, ptr %34, align 4
  br i1 %126, label %189, label %162

162:                                              ; preds = %158
  %163 = load i32, ptr %65, align 4
  %164 = icmp slt i32 %163, 1
  br i1 %164, label %165, label %166, !prof !16

165:                                              ; preds = %162
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ipu/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !25
  unreachable

166:                                              ; preds = %162
  %167 = getelementptr i8, ptr %48, i32 -56
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.dma_chan, ptr %168, i32 0, i32 3
  store i32 %163, ptr %169, align 4
  store i32 0, ptr %65, align 4
  %170 = getelementptr i8, ptr %48, i32 -44
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr i8, ptr %48, i32 -40
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr i8, ptr %48, i32 -36
  %175 = load ptr, ptr %174, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %176 = load i16, ptr %33, align 4
  %177 = add i16 %176, 1
  store i16 %177, ptr %33, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %178 = getelementptr i8, ptr %48, i32 -64
  %179 = load i32, ptr %178, align 4
  %180 = and i32 %179, 1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store i64 0, ptr %3, align 8
  %183 = icmp eq ptr %173, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %182
  call void %173(ptr noundef %175, ptr noundef nonnull %3) #10
  br label %188

185:                                              ; preds = %182
  %186 = icmp eq ptr %171, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %185
  call void %171(ptr noundef %175) #10
  br label %188

188:                                              ; preds = %187, %185, %184
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %192

189:                                              ; preds = %158
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %190 = load i16, ptr %33, align 4
  %191 = add i16 %190, 1
  store i16 %191, ptr %33, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %192

192:                                              ; preds = %189, %188, %166, %61, %51, %43, %25
  %193 = phi i32 [ 1, %25 ], [ 0, %43 ], [ 0, %51 ], [ 1, %61 ], [ 1, %189 ], [ 1, %188 ], [ 1, %166 ]
  ret i32 %193
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipu_uninit_channel(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = shl nuw i32 1, %4
  %6 = getelementptr i8, ptr %0, i32 -36
  %7 = getelementptr i8, ptr %0, i32 -12
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  %9 = getelementptr i8, ptr %0, i32 -16
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, %5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %0, i32 -4
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.14, i32 noundef %4) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #10
  br label %58

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr i8, ptr %17, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #10, !srcloc !15
  %20 = xor i32 %5, -1
  %21 = and i32 %19, %20
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #10, !srcloc !8
  %24 = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 13
  store i8 0, ptr %24, align 4
  switch i32 %4, label %42 [
    i32 7, label %25
    i32 0, label %31
  ]

25:                                               ; preds = %16
  %26 = getelementptr i8, ptr %0, i32 -32
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #10, !srcloc !15
  %29 = and i32 %28, -1073741826
  %30 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #10, !srcloc !8
  br label %37

31:                                               ; preds = %16
  %32 = getelementptr i8, ptr %0, i32 -32
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #10, !srcloc !15
  %35 = and i32 %34, -4
  %36 = load ptr, ptr %32, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #10, !srcloc !8
  br label %37

37:                                               ; preds = %31, %25
  %38 = load i32, ptr %9, align 4
  %39 = and i32 %38, %20
  store i32 %39, ptr %9, align 4
  %40 = load ptr, ptr %6, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #10, !srcloc !15
  br label %50

42:                                               ; preds = %16
  %43 = load i32, ptr %9, align 4
  %44 = and i32 %43, %20
  store i32 %44, ptr %9, align 4
  %45 = load ptr, ptr %6, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #10, !srcloc !15
  %47 = and i32 %4, -2
  %48 = icmp eq i32 %47, 14
  %49 = select i1 %48, i32 -81, i32 -1
  br label %50

50:                                               ; preds = %42, %37
  %51 = phi i32 [ %41, %37 ], [ %46, %42 ]
  %52 = phi i32 [ -4, %37 ], [ %49, %42 ]
  %53 = and i32 %52, %51
  %54 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %53) #10, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #10
  %55 = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 6
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 7
  %57 = load ptr, ptr %56, align 4
  tail call void @vfree(ptr noundef %57) #10
  store ptr null, ptr %56, align 4
  br label %58

58:                                               ; preds = %50, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_irq_unmap(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idmac_tx_submit(ptr noundef %0) #2 {
  %2 = alloca %union.chan_param_mem, align 8
  %3 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %4, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.idmac_tx_desc, ptr %0, i32 0, i32 3
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.7, ptr noundef %0) #12
  br label %346

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.idmac_channel, ptr %4, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %14) #10
  %15 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, -3
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.idmac_channel, ptr %4, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %21, label %257

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.idmac_tx_desc, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = getelementptr %struct.scatterlist, ptr %23, i32 1, i32 3
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i32 [ %29, %27 ], [ 0, %21 ]
  %32 = getelementptr inbounds %struct.idmac_channel, ptr %4, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = getelementptr %struct.idmac_channel, ptr %4, i32 0, i32 8, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39, !prof !18

39:                                               ; preds = %35, %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 851, i32 noundef 9, ptr noundef null) #10
  %40 = load ptr, ptr %22, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %40, %39 ], [ %23, %35 ]
  %43 = getelementptr inbounds %struct.idmac_channel, ptr %4, i32 0, i32 2, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.idmac_channel, ptr %4, i32 0, i32 2, i32 0, i32 3
  %46 = load i16, ptr %45, align 4
  %47 = getelementptr inbounds %struct.idmac_channel, ptr %4, i32 0, i32 2, i32 0, i32 4
  %48 = load i16, ptr %47, align 2
  %49 = getelementptr inbounds %struct.idmac_channel, ptr %4, i32 0, i32 2, i32 0, i32 6
  %50 = load i16, ptr %49, align 4
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.scatterlist, ptr %42, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dma_chan, ptr %4, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr i8, ptr %56, i32 -36
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false) #10
  %58 = add i32 %44, -6
  %59 = icmp ult i32 %58, 11
  br i1 %59, label %60, label %63

60:                                               ; preds = %41
  %61 = getelementptr inbounds [11 x i32], ptr @switch.table.idmac_tx_submit, i32 0, i32 %58
  %62 = load i32, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %41
  %64 = phi i32 [ 1, %41 ], [ %62, %60 ]
  %65 = mul nuw nsw i32 %64, %51
  %66 = and i32 %65, 3
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = getelementptr i8, ptr %56, i32 -4
  %70 = load ptr, ptr %69, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.8, i32 noundef %51, i32 noundef %65) #12
  br label %244

71:                                               ; preds = %63
  %72 = icmp ugt i32 %55, 13
  %73 = and i32 %51, 7
  %74 = icmp eq i32 %73, 0
  %75 = or i1 %74, %72
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = getelementptr i8, ptr %56, i32 -4
  %78 = load ptr, ptr %77, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.9) #12
  br label %244

79:                                               ; preds = %71
  %80 = add i16 %46, 4095
  %81 = zext i16 %80 to i160
  %82 = shl nuw nsw i160 %81, 108
  %83 = zext i16 %48 to i32
  %84 = add nsw i32 %83, -1
  %85 = and i32 %84, 255
  %86 = zext i32 %85 to i160
  %87 = shl nuw nsw i160 %86, 120
  %88 = and i160 %82, 1328903477231257446177023904259768320
  %89 = or i160 %87, %88
  %90 = lshr i32 %84, 8
  %91 = and i32 %90, 15
  %92 = zext i32 %91 to i160
  %93 = shl nuw nsw i160 %92, 128
  %94 = or i160 %89, %93
  %95 = and i32 %65, 65535
  %96 = getelementptr inbounds %struct.chan_param_mem_planar, ptr %2, i32 0, i32 3
  %97 = shl nuw nsw i32 %95, 3
  %98 = add nuw nsw i32 %97, 131064
  %99 = and i32 %98, 131064
  %100 = zext i32 %99 to i64
  store i64 %100, ptr %96, align 4
  switch i32 %44, label %213 [
    i32 0, label %101
    i32 13, label %103
    i32 6, label %105
    i32 12, label %110
    i32 11, label %115
    i32 17, label %120
    i32 15, label %120
    i32 16, label %120
    i32 18, label %125
    i32 14, label %125
    i32 10, label %130
    i32 4, label %135
    i32 2, label %135
    i32 5, label %161
    i32 3, label %187
  ]

101:                                              ; preds = %79
  %102 = or i64 %100, 9631039491
  br label %215

103:                                              ; preds = %79
  %104 = or i64 %100, 8825733120
  br label %215

105:                                              ; preds = %79
  %106 = load i96, ptr %96, align 4
  %107 = and i96 %106, -18446744054349561864
  %108 = or i96 %107, 10827046038943563778
  store i96 %108, ptr %96, align 4
  %109 = trunc i96 %108 to i64
  br label %215

110:                                              ; preds = %79
  %111 = load i96, ptr %96, align 4
  %112 = and i96 %111, -18446744054349561864
  %113 = or i96 %112, 18438308629326594049
  store i96 %113, ptr %96, align 4
  %114 = trunc i96 %113 to i64
  br label %215

115:                                              ; preds = %79
  %116 = load i96, ptr %96, align 4
  %117 = and i96 %116, -18446744054349561864
  %118 = or i96 %117, 18437746229128986625
  store i96 %118, ptr %96, align 4
  %119 = trunc i96 %118 to i64
  br label %215

120:                                              ; preds = %79, %79, %79
  %121 = load i96, ptr %96, align 4
  %122 = and i96 %121, -147573952570316423176
  %123 = or i96 %122, 147538786093476872192
  store i96 %123, ptr %96, align 4
  %124 = trunc i96 %123 to i64
  br label %215

125:                                              ; preds = %79, %79
  %126 = load i96, ptr %96, align 4
  %127 = and i96 %126, -147573952570316423176
  %128 = or i96 %127, 147538223693279264768
  store i96 %128, ptr %96, align 4
  %129 = trunc i96 %128 to i64
  br label %215

130:                                              ; preds = %79
  %131 = load i96, ptr %96, align 4
  %132 = and i96 %131, -14999748616
  %133 = or i96 %132, 8825602050
  store i96 %133, ptr %96, align 4
  %134 = trunc i96 %133 to i64
  br label %215

135:                                              ; preds = %79, %79
  %136 = load i96, ptr %96, align 4
  %137 = and i96 %136, -14999748616
  %138 = or i96 %137, 8825208835
  store i96 %138, ptr %96, align 4
  %139 = mul nuw i32 %95, %83
  %140 = lshr i32 %139, 2
  %141 = add i32 %140, %139
  %142 = and i32 %139, 2047
  %143 = zext i32 %142 to i160
  %144 = shl nuw nsw i160 %143, 53
  %145 = or i160 %144, %94
  %146 = lshr i32 %139, 11
  %147 = zext i32 %146 to i160
  %148 = shl nuw nsw i160 %147, 64
  %149 = and i32 %141, 131071
  %150 = zext i32 %149 to i160
  %151 = shl nuw nsw i160 %150, 79
  %152 = and i160 %148, 604444463063240877801472
  %153 = or i160 %145, %152
  %154 = or i160 %153, %151
  %155 = lshr i32 %141, 17
  %156 = and i32 %155, 511
  %157 = zext i32 %156 to i160
  %158 = shl nuw nsw i160 %157, 96
  %159 = or i160 %154, %158
  store i160 %159, ptr %2, align 8
  %160 = trunc i96 %138 to i64
  br label %215

161:                                              ; preds = %79
  %162 = load i96, ptr %96, align 4
  %163 = and i96 %162, -14999748616
  %164 = or i96 %163, 8825077763
  store i96 %164, ptr %96, align 4
  %165 = mul nuw i32 %95, %83
  %166 = lshr i32 %165, 1
  %167 = add i32 %166, %165
  %168 = and i32 %167, 2047
  %169 = zext i32 %168 to i160
  %170 = shl nuw nsw i160 %169, 53
  %171 = or i160 %170, %94
  %172 = lshr i32 %167, 11
  %173 = zext i32 %172 to i160
  %174 = shl nuw nsw i160 %173, 64
  %175 = and i32 %165, 131071
  %176 = zext i32 %175 to i160
  %177 = shl nuw nsw i160 %176, 79
  %178 = and i160 %174, 604444463063240877801472
  %179 = or i160 %171, %178
  %180 = or i160 %179, %177
  %181 = lshr i32 %165, 17
  %182 = and i32 %181, 511
  %183 = zext i32 %182 to i160
  %184 = shl nuw nsw i160 %183, 96
  %185 = or i160 %180, %184
  store i160 %185, ptr %2, align 8
  %186 = trunc i96 %164 to i64
  br label %215

187:                                              ; preds = %79
  %188 = load i96, ptr %96, align 4
  %189 = and i96 %188, -14999748616
  %190 = or i96 %189, 8825077763
  store i96 %190, ptr %96, align 4
  %191 = mul nuw i32 %95, %83
  %192 = lshr i32 %191, 1
  %193 = add i32 %192, %191
  %194 = and i32 %191, 2047
  %195 = zext i32 %194 to i160
  %196 = shl nuw nsw i160 %195, 53
  %197 = or i160 %196, %94
  %198 = lshr i32 %191, 11
  %199 = zext i32 %198 to i160
  %200 = shl nuw nsw i160 %199, 64
  %201 = and i32 %193, 131071
  %202 = zext i32 %201 to i160
  %203 = shl nuw nsw i160 %202, 79
  %204 = and i160 %200, 604444463063240877801472
  %205 = or i160 %197, %204
  %206 = or i160 %205, %203
  %207 = lshr i32 %193, 17
  %208 = and i32 %207, 511
  %209 = zext i32 %208 to i160
  %210 = shl nuw nsw i160 %209, 96
  %211 = or i160 %206, %210
  store i160 %211, ptr %2, align 8
  %212 = trunc i96 %190 to i64
  br label %215

213:                                              ; preds = %79
  %214 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 8), align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %214, ptr noundef nonnull @.str.10, i32 noundef %44) #12
  br label %215

215:                                              ; preds = %213, %187, %161, %135, %130, %125, %120, %115, %110, %105, %103, %101
  %216 = phi i64 [ %100, %213 ], [ %212, %187 ], [ %186, %161 ], [ %160, %135 ], [ %134, %130 ], [ %129, %125 ], [ %124, %120 ], [ %119, %115 ], [ %114, %110 ], [ %109, %105 ], [ %104, %103 ], [ %102, %101 ]
  %217 = phi i160 [ %94, %213 ], [ %211, %187 ], [ %185, %161 ], [ %159, %135 ], [ %94, %130 ], [ %94, %125 ], [ %94, %120 ], [ %94, %115 ], [ %94, %110 ], [ %94, %105 ], [ %94, %103 ], [ %94, %101 ]
  %218 = or i160 %217, 70368744177664
  store i160 %218, ptr %2, align 8
  %219 = getelementptr inbounds %struct.chan_param_mem_planar, ptr %2, i32 0, i32 1
  store i32 %53, ptr %219, align 4
  %220 = getelementptr inbounds %struct.chan_param_mem_planar, ptr %2, i32 0, i32 2
  store i32 %31, ptr %220, align 8
  %221 = and i64 %216, -7340033
  store i64 %221, ptr %96, align 4
  %222 = getelementptr i8, ptr %56, i32 -12
  %223 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %222) #10
  %224 = shl i32 %55, 4
  %225 = or i32 %224, 65536
  br label %226

226:                                              ; preds = %226, %215
  %227 = phi i32 [ 10, %215 ], [ %242, %226 ]
  %228 = phi ptr [ %2, %215 ], [ %232, %226 ]
  %229 = phi i32 [ %225, %215 ], [ %241, %226 ]
  %230 = load ptr, ptr @ipu_data, align 4
  %231 = getelementptr i8, ptr %230, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %229) #10, !srcloc !8
  %232 = getelementptr i32, ptr %228, i32 1
  %233 = load i32, ptr %228, align 4
  %234 = load ptr, ptr @ipu_data, align 4
  %235 = getelementptr i8, ptr %234, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %233) #10, !srcloc !8
  %236 = add i32 %229, 1
  %237 = and i32 %236, 7
  %238 = icmp eq i32 %237, 5
  %239 = add i32 %229, 9
  %240 = and i32 %239, -8
  %241 = select i1 %238, i32 %240, i32 %236
  %242 = add nsw i32 %227, -1
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %245, label %226

244:                                              ; preds = %76, %68
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #10
  br label %344

245:                                              ; preds = %226
  %246 = load ptr, ptr %57, align 4
  %247 = getelementptr i8, ptr %246, i32 12
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #10, !srcloc !15
  %249 = icmp eq i32 %31, 0
  %250 = shl nuw i32 1, %55
  %251 = or i32 %248, %250
  %252 = xor i32 %250, -1
  %253 = and i32 %248, %252
  %254 = select i1 %249, i32 %253, i32 %251
  %255 = load ptr, ptr %57, align 4
  %256 = getelementptr i8, ptr %255, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %256, i32 %254) #10, !srcloc !8
  store i32 2, ptr %18, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %222, i32 noundef %223) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #10
  br label %257

257:                                              ; preds = %245, %13
  %258 = load ptr, ptr %3, align 4
  %259 = getelementptr inbounds %struct.dma_chan, ptr %258, i32 0, i32 2
  %260 = load i32, ptr %259, align 4
  %261 = add i32 %260, 1
  %262 = tail call i32 @llvm.smax.i32(i32 %261, i32 1) #10
  store i32 %262, ptr %259, align 4
  store i32 %262, ptr %0, align 4
  %263 = getelementptr inbounds %struct.idmac_channel, ptr %4, i32 0, i32 11
  %264 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %263) #10
  %265 = getelementptr inbounds %struct.idmac_channel, ptr %4, i32 0, i32 10
  %266 = getelementptr inbounds %struct.idmac_channel, ptr %4, i32 0, i32 10, i32 1
  %267 = load ptr, ptr %266, align 4
  store ptr %8, ptr %266, align 4
  store ptr %265, ptr %8, align 4
  %268 = getelementptr inbounds %struct.idmac_tx_desc, ptr %0, i32 0, i32 3, i32 1
  store ptr %267, ptr %268, align 4
  store volatile ptr %8, ptr %267, align 4
  %269 = getelementptr inbounds %struct.idmac_tx_desc, ptr %0, i32 0, i32 1
  %270 = load ptr, ptr %269, align 4
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %273

272:                                              ; preds = %257
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %263, i32 noundef %264) #10
  br label %300

273:                                              ; preds = %257
  %274 = getelementptr %struct.idmac_channel, ptr %4, i32 0, i32 8, i32 0
  %275 = load ptr, ptr %274, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %284

277:                                              ; preds = %273
  store ptr %270, ptr %274, align 4
  %278 = tail call fastcc i32 @ipu_submit_buffer(ptr noundef %4, ptr noundef %0, ptr noundef nonnull %270, i32 noundef 0) #10
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %292, %277
  %281 = phi i32 [ %278, %277 ], [ %293, %292 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %263, i32 noundef %264) #10
  br label %337

282:                                              ; preds = %277
  %283 = tail call ptr @sg_next(ptr noundef nonnull %270) #10
  br label %284

284:                                              ; preds = %282, %273
  %285 = phi ptr [ %270, %273 ], [ %283, %282 ]
  %286 = phi i32 [ 0, %273 ], [ %278, %282 ]
  %287 = icmp eq ptr %285, null
  br i1 %287, label %297, label %288

288:                                              ; preds = %284
  %289 = getelementptr %struct.idmac_channel, ptr %4, i32 0, i32 8, i32 1
  %290 = load ptr, ptr %289, align 4
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %297

292:                                              ; preds = %288
  store ptr %285, ptr %289, align 4
  %293 = tail call fastcc i32 @ipu_submit_buffer(ptr noundef %4, ptr noundef %0, ptr noundef nonnull %285, i32 noundef 1) #10
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %280, label %295

295:                                              ; preds = %292
  %296 = tail call ptr @sg_next(ptr noundef nonnull %285) #10
  br label %297

297:                                              ; preds = %295, %288, %284
  %298 = phi i32 [ %286, %284 ], [ %286, %288 ], [ %293, %295 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %263, i32 noundef %264) #10
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %337, label %300

300:                                              ; preds = %297, %272
  %301 = load i32, ptr %18, align 4
  %302 = icmp ult i32 %301, 3
  br i1 %302, label %303, label %344

303:                                              ; preds = %300
  %304 = getelementptr i8, ptr %5, i32 -36
  %305 = getelementptr inbounds %struct.dma_chan, ptr %4, i32 0, i32 4
  %306 = load i32, ptr %305, align 4
  %307 = getelementptr i8, ptr %5, i32 -12
  %308 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %307) #10
  %309 = shl nuw i32 1, %306
  %310 = load ptr, ptr %304, align 4
  %311 = getelementptr i8, ptr %310, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %311, i32 %309) #10, !srcloc !8
  %312 = getelementptr inbounds %struct.idmac_channel, ptr %4, i32 0, i32 14
  store i32 0, ptr %312, align 4
  store i32 3, ptr %18, align 4
  switch i32 %306, label %321 [
    i32 14, label %313
    i32 15, label %313
    i32 7, label %313
  ]

313:                                              ; preds = %303, %303, %303
  %314 = getelementptr i8, ptr %5, i32 -32
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr i8, ptr %315, i32 36
  %317 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %316) #10, !srcloc !15
  %318 = or i32 %317, %309
  %319 = load ptr, ptr %314, align 4
  %320 = getelementptr i8, ptr %319, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %320, i32 %318) #10, !srcloc !8
  br label %321

321:                                              ; preds = %313, %303
  %322 = getelementptr i8, ptr %5, i32 -32
  %323 = load ptr, ptr %322, align 4
  %324 = getelementptr i8, ptr %323, i32 32
  %325 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %324) #10, !srcloc !15
  %326 = or i32 %325, %309
  %327 = load ptr, ptr %322, align 4
  %328 = getelementptr i8, ptr %327, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %328, i32 %326) #10, !srcloc !8
  switch i32 %306, label %336 [
    i32 0, label %330
    i32 7, label %329
  ]

329:                                              ; preds = %321
  br label %330

330:                                              ; preds = %329, %321
  %331 = phi i32 [ 1073741825, %329 ], [ 1, %321 ]
  %332 = load ptr, ptr %322, align 4
  %333 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %332) #10, !srcloc !15
  %334 = or i32 %333, %331
  %335 = load ptr, ptr %322, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %335, i32 %334) #10, !srcloc !8
  br label %336

336:                                              ; preds = %330, %321
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %307, i32 noundef %308) #10
  br label %344

337:                                              ; preds = %297, %280
  %338 = phi i32 [ %281, %280 ], [ %298, %297 ]
  %339 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %263) #10
  %340 = load ptr, ptr %268, align 4
  %341 = load ptr, ptr %8, align 4
  %342 = getelementptr inbounds %struct.list_head, ptr %341, i32 0, i32 1
  store ptr %340, ptr %342, align 4
  store volatile ptr %341, ptr %340, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %268, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %263, i32 noundef %339) #10
  store i32 %338, ptr %0, align 4
  %343 = getelementptr inbounds %struct.dma_chan, ptr %4, i32 0, i32 2
  store i32 %338, ptr %343, align 4
  br label %344

344:                                              ; preds = %337, %336, %300, %244
  %345 = phi i32 [ %338, %337 ], [ -22, %244 ], [ %262, %336 ], [ %262, %300 ]
  tail call void @mutex_unlock(ptr noundef %14) #10
  br label %346

346:                                              ; preds = %344, %11
  %347 = phi i32 [ %345, %344 ], [ -16, %11 ]
  ret i32 %347
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ipu_submit_buffer(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %77

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6)) #10
  %15 = icmp eq i32 %3, 0
  %16 = load ptr, ptr @ipu_data, align 4
  br i1 %15, label %17, label %33

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %16, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #10, !srcloc !15
  %20 = shl nuw i32 1, %6
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %59, label %23

23:                                               ; preds = %17
  switch i32 %6, label %31 [
    i32 0, label %25
    i32 7, label %24
  ]

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24, %23
  %26 = phi i32 [ -1073741826, %24 ], [ -2, %23 ]
  %27 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #10, !srcloc !15
  %29 = and i32 %28, %26
  %30 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #10, !srcloc !8
  br label %31

31:                                               ; preds = %25, %23
  %32 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 4
  store i32 2, ptr %32, align 4
  br label %59

33:                                               ; preds = %11
  %34 = getelementptr i8, ptr %16, i32 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #10, !srcloc !15
  %36 = shl nuw i32 1, %6
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %33
  switch i32 %6, label %47 [
    i32 0, label %41
    i32 7, label %40
  ]

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40, %39
  %42 = phi i32 [ -1073741826, %40 ], [ -2, %39 ]
  %43 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #10, !srcloc !15
  %45 = and i32 %44, %42
  %46 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %45) #10, !srcloc !8
  br label %47

47:                                               ; preds = %41, %39
  %48 = getelementptr inbounds %struct.idmac_channel, ptr %0, i32 0, i32 4
  store i32 2, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %33
  %50 = load ptr, ptr @ipu_data, align 4
  %51 = getelementptr i8, ptr %50, i32 12
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #10, !srcloc !15
  %53 = and i32 %52, %36
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = or i32 %52, %36
  %57 = load ptr, ptr @ipu_data, align 4
  %58 = getelementptr i8, ptr %57, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #10, !srcloc !8
  br label %68

59:                                               ; preds = %31, %17
  %60 = shl i32 %6, 4
  %61 = or i32 %60, 65544
  %62 = load ptr, ptr @ipu_data, align 4
  %63 = getelementptr i8, ptr %62, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #10, !srcloc !8
  %64 = load ptr, ptr @ipu_data, align 4
  %65 = getelementptr i8, ptr %64, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %13) #10, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6), i32 noundef %14) #10
  %66 = load ptr, ptr @ipu_data, align 4
  %67 = getelementptr i8, ptr %66, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %20) #10, !srcloc !8
  br label %77

68:                                               ; preds = %55, %49
  %69 = shl i32 %6, 4
  %70 = or i32 %69, 65545
  %71 = load ptr, ptr @ipu_data, align 4
  %72 = getelementptr i8, ptr %71, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #10, !srcloc !8
  %73 = load ptr, ptr @ipu_data, align 4
  %74 = getelementptr i8, ptr %73, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %13) #10, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6), i32 noundef %14) #10
  %75 = load ptr, ptr @ipu_data, align 4
  %76 = getelementptr i8, ptr %75, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %36) #10, !srcloc !8
  br label %77

77:                                               ; preds = %68, %59, %4
  %78 = phi i32 [ -4, %4 ], [ 0, %59 ], [ 0, %68 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!8 = !{i64 4997042}
!9 = !{i64 654331, i64 2148155897, i64 2148155923, i64 2148155970, i64 2148155992, i64 2148156020, i64 2148156040}
!10 = !{i64 2148219159, i64 2148219185, i64 2148219214, i64 2148219248, i64 2148219279, i64 2148219302}
!11 = !{i64 2152892662}
!12 = !{i64 2152893252}
!13 = !{i64 2152893573}
!14 = !{i64 2148221516, i64 2148221542, i64 2148221571, i64 2148221605, i64 2148221636, i64 2148221659}
!15 = !{i64 4997460}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2153105474, i64 2153105967, i64 2153105511, i64 2153105567, i64 2153105601, i64 2153105625, i64 2153105666, i64 2153105687, i64 2153105715, i64 2153105749}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2152989574}
!20 = !{i64 2149274303}
!21 = !{i64 2149270127}
!22 = !{i64 2149270202, i64 2149270229, i64 2149270276, i64 2149270298, i64 2149270326, i64 2149270346}
!23 = !{i64 2149297306}
!24 = !{!"branch_weights", i32 2000, i32 2002}
!25 = !{i64 2152988631, i64 2152989125, i64 2152988668, i64 2152988724, i64 2152988758, i64 2152988782, i64 2152988823, i64 2152988844, i64 2152988872, i64 2152988906}
