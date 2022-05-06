; ModuleID = '/llk/IR/drivers/dma/sh/usb-dmac.c_pt.bc'
source_filename = "../drivers/dma/sh/usb-dmac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_dmac = type { %struct.dma_device, ptr, ptr, i32, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.usb_dmac_chan = type { %struct.virt_dma_chan, ptr, i32, i32, ptr, i32, %struct.list_head, %struct.list_head }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.usb_dmac_desc = type { %struct.virt_dma_desc, i32, i32, i32, i32, i32, %struct.list_head, i32, [0 x %struct.usb_dmac_sg] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.usb_dmac_sg = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@usb_dmac_of_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usb-dmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description230 = internal constant [46 x i8] c"description=Renesas USB DMA Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [60 x i8] c"author=Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@usb_dmac_driver = internal global %struct.platform_driver { ptr @usb_dmac_probe, ptr @usb_dmac_remove, ptr @usb_dmac_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usb_dmac_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_dmac_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [9 x i8] c"usb-dmac\00", align 1
@usb_dmac_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @usb_dmac_runtime_suspend, ptr @usb_dmac_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"runtime PM get sync failed (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to reset device\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"unable to read dma-channels property\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"invalid number of channels %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"DMAOR initialization failed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ch%u\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s:%u\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"failed to request IRQ %u (%d)\0A\00", align 1
@usb_dmac_chan_start_sg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"drivers/dma/sh/usb-dmac.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"%s: bad parameter: len=%d\0A\00", align 1
@__func__.usb_dmac_prep_slave_sg = private unnamed_addr constant [23 x i8] c"usb_dmac_prep_slave_sg\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_license232], section "llvm.metadata"

@__mod_of__usb_dmac_of_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @usb_dmac_of_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @usb_dmac_driver, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @usb_dmac_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_dmac_probe(ptr noundef %0) #2 {
  %2 = alloca [5 x i8], align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 268, i32 noundef 3520) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %126, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_dmac, ptr %4, i32 0, i32 1
  store ptr %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %8, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.usb_dmac, ptr %4, i32 0, i32 3
  %12 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef %11, i32 noundef 1, i32 noundef 0) #11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #12
  br label %126

15:                                               ; preds = %6
  %16 = load i32, ptr %11, align 4
  %17 = add i32 %16, -100
  %18 = icmp ult i32 %17, -99
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %16) #12
  br label %126

20:                                               ; preds = %15
  %21 = mul nuw nsw i32 %16, 176
  %22 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %21, i32 noundef 3520) #11
  %23 = getelementptr inbounds %struct.usb_dmac, ptr %4, i32 0, i32 4
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %126, label %25

25:                                               ; preds = %20
  %26 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %27 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %26) #11
  %28 = getelementptr inbounds %struct.usb_dmac, ptr %4, i32 0, i32 2
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = ptrtoint ptr %27 to i32
  br label %126

32:                                               ; preds = %25
  tail call void @pm_runtime_enable(ptr noundef %3) #11
  %33 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #11
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %33) #12
  br label %123

36:                                               ; preds = %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  %37 = load ptr, ptr %28, align 4
  %38 = getelementptr i8, ptr %37, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 1) #11, !srcloc !9
  %39 = load ptr, ptr %28, align 4
  %40 = getelementptr i8, ptr %39, i32 96
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %42 = and i32 %41, 3
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  %45 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.6) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #12
  br label %120

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 3
  store volatile ptr %47, ptr %47, align 4
  %48 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 3, i32 1
  store ptr %47, ptr %48, align 4
  %49 = load i32, ptr %11, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %99, label %51

51:                                               ; preds = %95, %46
  %52 = phi i32 [ %96, %95 ], [ 0, %46 ]
  %53 = load ptr, ptr %23, align 4
  %54 = getelementptr %struct.usb_dmac_chan, ptr %53, i32 %52
  %55 = load ptr, ptr %7, align 4
  %56 = getelementptr i8, ptr %55, i32 -16
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %2, i8 0, i32 5, i1 false) #11, !annotation !12
  %57 = getelementptr %struct.usb_dmac_chan, ptr %53, i32 %52, i32 2
  store i32 %52, ptr %57, align 4
  %58 = load ptr, ptr %28, align 4
  %59 = shl i32 %52, 5
  %60 = add i32 %59, 32
  %61 = getelementptr i8, ptr %58, i32 %60
  %62 = getelementptr %struct.usb_dmac_chan, ptr %53, i32 %52, i32 1
  store ptr %61, ptr %62, align 4
  %63 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.7, i32 noundef %52) #11
  %64 = call i32 @platform_get_irq_byname(ptr noundef %56, ptr noundef nonnull %2) #11
  %65 = getelementptr %struct.usb_dmac_chan, ptr %53, i32 %52, i32 3
  store i32 %64, ptr %65, align 4
  %66 = icmp slt i32 %64, 0
  br i1 %66, label %89, label %67

67:                                               ; preds = %51
  %68 = load ptr, ptr %7, align 4
  %69 = getelementptr inbounds %struct.device, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load ptr, ptr %68, align 4
  br label %74

74:                                               ; preds = %72, %67
  %75 = phi ptr [ %73, %72 ], [ %70, %67 ]
  %76 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %68, i32 noundef 3264, ptr noundef nonnull @.str.8, ptr noundef %75, i32 noundef %52) #11
  %77 = icmp eq ptr %76, null
  br i1 %77, label %89, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %7, align 4
  %80 = load i32, ptr %65, align 4
  %81 = call i32 @devm_request_threaded_irq(ptr noundef %79, i32 noundef %80, ptr noundef nonnull @usb_dmac_isr_channel, ptr noundef null, i32 noundef 128, ptr noundef nonnull %76, ptr noundef %54) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.virt_dma_chan, ptr %54, i32 0, i32 2
  store ptr @usb_dmac_virt_desc_free, ptr %84, align 4
  call void @vchan_init(ptr noundef %54, ptr noundef %4) #11
  %85 = getelementptr %struct.usb_dmac_chan, ptr %53, i32 %52, i32 7
  store volatile ptr %85, ptr %85, align 4
  %86 = getelementptr %struct.usb_dmac_chan, ptr %53, i32 %52, i32 7, i32 1
  store ptr %85, ptr %86, align 4
  %87 = getelementptr %struct.usb_dmac_chan, ptr %53, i32 %52, i32 6
  store volatile ptr %87, ptr %87, align 4
  %88 = getelementptr %struct.usb_dmac_chan, ptr %53, i32 %52, i32 6, i32 1
  store ptr %87, ptr %88, align 4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #11
  br label %95

89:                                               ; preds = %74, %51
  %90 = phi i32 [ -12, %74 ], [ -19, %51 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #11
  br label %120

91:                                               ; preds = %78
  %92 = load ptr, ptr %7, align 4
  %93 = load i32, ptr %65, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.9, i32 noundef %93, i32 noundef %81) #12
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #11
  %94 = icmp slt i32 %81, 0
  br i1 %94, label %120, label %95

95:                                               ; preds = %91, %83
  %96 = add nuw i32 %52, 1
  %97 = load i32, ptr %11, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %51, label %99

99:                                               ; preds = %95, %46
  %100 = load ptr, ptr %9, align 8
  %101 = call i32 @of_dma_controller_register(ptr noundef %100, ptr noundef nonnull @usb_dmac_of_xlate, ptr noundef null) #11
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %120, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 6
  call void @_set_bit(i32 noundef 11, ptr noundef %104) #11
  %105 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 15
  store ptr %3, ptr %105, align 4
  %106 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 19
  store i32 32, ptr %106, align 4
  %107 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 20
  store i32 32, ptr %107, align 4
  %108 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 21
  store i32 6, ptr %108, align 4
  %109 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 26
  store i32 2, ptr %109, align 4
  %110 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 27
  store ptr @usb_dmac_alloc_chan_resources, ptr %110, align 4
  %111 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 29
  store ptr @usb_dmac_free_chan_resources, ptr %111, align 4
  %112 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 39
  store ptr @usb_dmac_prep_slave_sg, ptr %112, align 4
  %113 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 47
  store ptr @usb_dmac_chan_terminate_all, ptr %113, align 4
  %114 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 49
  store ptr @usb_dmac_tx_status, ptr %114, align 4
  %115 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 50
  store ptr @usb_dmac_issue_pending, ptr %115, align 4
  %116 = call i32 @dma_async_device_register(ptr noundef nonnull %4) #11
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %103
  %119 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #11
  br label %126

120:                                              ; preds = %103, %99, %91, %89, %44
  %121 = phi i32 [ -5, %44 ], [ %101, %99 ], [ %116, %103 ], [ %90, %89 ], [ %81, %91 ]
  %122 = load ptr, ptr %9, align 8
  call void @of_dma_controller_free(ptr noundef %122) #11
  br label %123

123:                                              ; preds = %120, %35
  %124 = phi i32 [ %33, %35 ], [ %121, %120 ]
  %125 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #11
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #11
  br label %126

126:                                              ; preds = %123, %118, %30, %20, %19, %14, %1
  %127 = phi i32 [ %31, %30 ], [ %124, %123 ], [ 0, %118 ], [ -12, %1 ], [ -12, %20 ], [ -22, %19 ], [ %12, %14 ]
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_dmac_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_dmac, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_dmac, ptr %3, i32 0, i32 4
  %9 = getelementptr inbounds %struct.usb_dmac, ptr %3, i32 0, i32 1
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i32 [ 0, %7 ], [ %17, %10 ]
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr %struct.usb_dmac_chan, ptr %12, i32 %11
  tail call fastcc void @usb_dmac_chan_halt(ptr noundef %13) #11
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr %struct.usb_dmac_chan, ptr %12, i32 %11, i32 3
  %16 = load i32, ptr %15, align 4
  tail call void @devm_free_irq(ptr noundef %14, i32 noundef %16, ptr noundef %13) #11
  %17 = add nuw i32 %11, 1
  %18 = load i32, ptr %4, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %10, label %20

20:                                               ; preds = %10, %1
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %23 = load ptr, ptr %22, align 8
  tail call void @of_dma_controller_free(ptr noundef %23) #11
  tail call void @dma_async_device_unregister(ptr noundef %3) #11
  tail call void @__pm_runtime_disable(ptr noundef %21, i1 noundef zeroext true) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_dmac_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  %4 = getelementptr inbounds %struct.usb_dmac, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #11, !srcloc !9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @usb_dmac_of_xlate(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.dma_cap_mask_t, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  store i32 0, ptr %3, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %3) #11
  %8 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call ptr @__dma_request_channel(ptr noundef nonnull %3, ptr noundef nonnull @usb_dmac_chan_filter, ptr noundef %0, ptr noundef %9) #11
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi ptr [ null, %2 ], [ %10, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_dmac_alloc_chan_resources(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 16
  br i1 %5, label %6, label %52

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 7
  %9 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 7, i32 1
  br label %10

10:                                               ; preds = %43, %6
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 172) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store ptr %2, ptr %2, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %15, align 4
  %16 = load volatile ptr, ptr %8, align 4
  %17 = icmp eq ptr %16, %8
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %2, ptr %20, align 4
  store ptr %16, ptr %2, align 8
  store ptr %2, ptr %19, align 4
  store ptr %19, ptr %15, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %9, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 6
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 6, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %2, ptr %29, align 4
  store ptr %23, ptr %2, align 8
  store ptr %26, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %22, ptr %22, align 4
  store ptr %22, ptr %27, align 4
  br label %31

31:                                               ; preds = %25, %21
  %32 = load ptr, ptr %2, align 8
  %33 = icmp eq ptr %32, %2
  br i1 %33, label %42, label %34

34:                                               ; preds = %34, %31
  %35 = phi ptr [ %37, %34 ], [ %32, %31 ]
  %36 = getelementptr i8, ptr %35, i32 -96
  %37 = load ptr, ptr %35, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  store volatile ptr %37, ptr %39, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %38, align 4
  call void @kfree(ptr noundef %36) #11
  %41 = icmp eq ptr %37, %2
  br i1 %41, label %42, label %34

42:                                               ; preds = %34, %31
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %57

43:                                               ; preds = %10
  %44 = getelementptr inbounds %struct.usb_dmac_desc, ptr %12, i32 0, i32 2
  store i32 8, ptr %44, align 8
  %45 = getelementptr inbounds %struct.usb_dmac_desc, ptr %12, i32 0, i32 6
  store volatile ptr %45, ptr %45, align 8
  %46 = getelementptr inbounds %struct.usb_dmac_desc, ptr %12, i32 0, i32 6, i32 1
  store ptr %45, ptr %46, align 4
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #11
  %48 = load ptr, ptr %9, align 4
  store ptr %45, ptr %9, align 4
  store ptr %8, ptr %45, align 8
  store ptr %48, ptr %46, align 4
  store volatile ptr %45, ptr %48, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %47) #11
  %49 = load i32, ptr %3, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %3, align 4
  %51 = icmp slt i32 %50, 16
  br i1 %51, label %10, label %52

52:                                               ; preds = %43, %1
  %53 = load ptr, ptr %0, align 4
  %54 = getelementptr inbounds %struct.dma_device, ptr %53, i32 0, i32 15
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @__pm_runtime_resume(ptr noundef %55, i32 noundef 4) #11
  br label %57

57:                                               ; preds = %52, %42
  %58 = phi i32 [ -12, %42 ], [ %56, %52 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_dmac_free_chan_resources(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  tail call fastcc void @usb_dmac_chan_halt(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store ptr %3, ptr %3, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 7
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %3, ptr %13, align 4
  store ptr %8, ptr %3, align 8
  store ptr %3, ptr %12, align 4
  store ptr %12, ptr %6, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %11, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 6
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 6, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %3, ptr %22, align 4
  store ptr %16, ptr %3, align 8
  store ptr %19, ptr %21, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %15, ptr %15, align 4
  store ptr %15, ptr %20, align 4
  br label %24

24:                                               ; preds = %18, %14
  %25 = load ptr, ptr %3, align 8
  %26 = icmp eq ptr %25, %3
  br i1 %26, label %35, label %27

27:                                               ; preds = %27, %24
  %28 = phi ptr [ %30, %27 ], [ %25, %24 ]
  %29 = getelementptr i8, ptr %28, i32 -96
  %30 = load ptr, ptr %28, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  store volatile ptr %30, ptr %32, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %31, align 4
  call void @kfree(ptr noundef %29) #11
  %34 = icmp eq ptr %30, %3
  br i1 %34, label %35, label %27

35:                                               ; preds = %27, %24
  %36 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 5
  store i32 0, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store ptr %2, ptr %2, align 8
  %37 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %37, align 4
  %38 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %39 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr %37, align 4
  %44 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %43, ptr %46, align 4
  store ptr %40, ptr %43, align 4
  store ptr %2, ptr %45, align 4
  store ptr %45, ptr %37, align 4
  store volatile ptr %39, ptr %39, align 4
  store ptr %39, ptr %44, align 4
  br label %47

47:                                               ; preds = %42, %35
  %48 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %37, align 4
  %53 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %52, ptr %55, align 4
  store ptr %49, ptr %52, align 4
  store ptr %2, ptr %54, align 4
  store ptr %54, ptr %37, align 4
  store volatile ptr %48, ptr %48, align 4
  store ptr %48, ptr %53, align 4
  br label %56

56:                                               ; preds = %51, %47
  %57 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %58 = load volatile ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %57
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %37, align 4
  %62 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %61, ptr %64, align 4
  store ptr %58, ptr %61, align 4
  store ptr %2, ptr %63, align 4
  store ptr %63, ptr %37, align 4
  store volatile ptr %57, ptr %57, align 4
  store ptr %57, ptr %62, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %67 = load volatile ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %66
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %37, align 4
  %71 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  store ptr %70, ptr %73, align 4
  store ptr %67, ptr %70, align 4
  store ptr %2, ptr %72, align 4
  store ptr %72, ptr %37, align 4
  store volatile ptr %66, ptr %66, align 4
  store ptr %66, ptr %71, align 4
  br label %74

74:                                               ; preds = %69, %65
  %75 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %76 = load volatile ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %75
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %37, align 4
  %80 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  store ptr %79, ptr %82, align 4
  store ptr %76, ptr %79, align 4
  store ptr %2, ptr %81, align 4
  store ptr %81, ptr %37, align 4
  store volatile ptr %75, ptr %75, align 4
  store ptr %75, ptr %80, align 4
  br label %83

83:                                               ; preds = %78, %74
  %84 = load ptr, ptr %2, align 8
  %85 = icmp eq ptr %84, %2
  br i1 %85, label %93, label %86

86:                                               ; preds = %86, %83
  %87 = phi ptr [ %91, %86 ], [ %84, %83 ]
  %88 = getelementptr i8, ptr %87, i32 -64
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, -65
  store i32 %90, ptr %88, align 4
  %91 = load ptr, ptr %87, align 4
  %92 = icmp eq ptr %91, %2
  br i1 %92, label %93, label %86

93:                                               ; preds = %86, %83
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %38) #11
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  %94 = load ptr, ptr %0, align 4
  %95 = getelementptr inbounds %struct.dma_device, ptr %94, i32 0, i32 15
  %96 = load ptr, ptr %95, align 4
  %97 = call i32 @__pm_runtime_idle(ptr noundef %96, i32 noundef 5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @usb_dmac_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.usb_dmac_prep_slave_sg, i32 noundef 0) #12
  br label %89

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #11
  %15 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 7
  br label %16

16:                                               ; preds = %20, %12
  %17 = phi ptr [ %15, %12 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %15
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 -16
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, %2
  br i1 %23, label %16, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %18, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  %30 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 6, i32 1
  %31 = load ptr, ptr %30, align 4
  store ptr %18, ptr %30, align 4
  store ptr %25, ptr %18, align 4
  store ptr %31, ptr %26, align 4
  store volatile ptr %18, ptr %31, align 4
  br label %56

32:                                               ; preds = %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #11
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 8) #11
  %34 = extractvalue { i32, i1 } %33, 1
  %35 = extractvalue { i32, i1 } %33, 0
  %36 = tail call i32 @llvm.uadd.sat.i32(i32 %35, i32 108) #11
  %37 = select i1 %34, i32 -1, i32 %36
  %38 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %37, i32 noundef 2304) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %89, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.usb_dmac_desc, ptr %38, i32 0, i32 2
  store i32 %2, ptr %41, align 16
  %42 = getelementptr inbounds %struct.usb_dmac_desc, ptr %38, i32 0, i32 6
  store volatile ptr %42, ptr %42, align 32
  %43 = getelementptr inbounds %struct.usb_dmac_desc, ptr %38, i32 0, i32 6, i32 1
  store ptr %42, ptr %43, align 4
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #11
  %45 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 7, i32 1
  %46 = load ptr, ptr %45, align 4
  store ptr %42, ptr %45, align 4
  store ptr %15, ptr %42, align 32
  store ptr %46, ptr %43, align 4
  store volatile ptr %42, ptr %46, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %44) #11
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #11
  %48 = load ptr, ptr %45, align 4
  %49 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 6
  %50 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %48, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %51, ptr %53, align 4
  store volatile ptr %52, ptr %51, align 4
  %54 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 6, i32 1
  %55 = load ptr, ptr %54, align 4
  store ptr %48, ptr %54, align 4
  store ptr %49, ptr %48, align 4
  store ptr %55, ptr %50, align 4
  store volatile ptr %48, ptr %55, align 4
  br label %56

56:                                               ; preds = %40, %24
  %57 = phi i32 [ %47, %40 ], [ %14, %24 ]
  %58 = phi ptr [ %48, %40 ], [ %18, %24 ]
  %59 = getelementptr i8, ptr %58, i32 -96
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %57) #11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %89, label %61

61:                                               ; preds = %56
  %62 = getelementptr i8, ptr %58, i32 -20
  store i32 %3, ptr %62, align 4
  %63 = getelementptr i8, ptr %58, i32 -12
  store i32 %2, ptr %63, align 4
  %64 = call i32 @llvm.umax.i32(i32 %2, i32 1)
  br label %65

65:                                               ; preds = %65, %61
  %66 = phi i32 [ %74, %65 ], [ 0, %61 ]
  %67 = phi ptr [ %75, %65 ], [ %1, %61 ]
  %68 = getelementptr inbounds %struct.scatterlist, ptr %67, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr %struct.usb_dmac_desc, ptr %59, i32 0, i32 8, i32 %66
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.scatterlist, ptr %67, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr %struct.usb_dmac_desc, ptr %59, i32 0, i32 8, i32 %66, i32 1
  store i32 %72, ptr %73, align 4
  %74 = add nuw i32 %66, 1
  %75 = tail call ptr @sg_next(ptr noundef %67) #11
  %76 = icmp eq i32 %74, %64
  br i1 %76, label %77, label %65

77:                                               ; preds = %65
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %59, ptr noundef %0) #11
  %78 = getelementptr i8, ptr %58, i32 -92
  store i32 %4, ptr %78, align 4
  %79 = getelementptr i8, ptr %58, i32 -80
  store ptr @vchan_tx_submit, ptr %79, align 4
  %80 = getelementptr i8, ptr %58, i32 -76
  store ptr @vchan_tx_desc_free, ptr %80, align 4
  %81 = getelementptr i8, ptr %58, i32 -36
  store i32 0, ptr %81, align 4
  %82 = getelementptr i8, ptr %58, i32 -32
  store i32 0, ptr %82, align 4
  %83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #11
  %84 = getelementptr i8, ptr %58, i32 -28
  %85 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %86 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %87 = load ptr, ptr %86, align 4
  store ptr %84, ptr %86, align 4
  store ptr %85, ptr %84, align 4
  %88 = getelementptr i8, ptr %58, i32 -24
  store ptr %87, ptr %88, align 4
  store volatile ptr %84, ptr %87, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %83) #11
  br label %89

89:                                               ; preds = %77, %56, %32, %8
  %90 = phi ptr [ %59, %77 ], [ null, %8 ], [ null, %56 ], [ null, %32 ]
  ret ptr %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_dmac_chan_terminate_all(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store ptr %2, ptr %2, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store ptr %3, ptr %3, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %7 = call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  call fastcc void @usb_dmac_chan_halt(ptr noundef %0)
  %8 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %12, ptr %15, align 4
  store ptr %9, ptr %12, align 4
  store ptr %2, ptr %14, align 4
  store ptr %14, ptr %4, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %13, align 4
  br label %16

16:                                               ; preds = %11, %1
  %17 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %21, ptr %24, align 4
  store ptr %18, ptr %21, align 4
  store ptr %2, ptr %23, align 4
  store ptr %23, ptr %4, align 4
  store volatile ptr %17, ptr %17, align 4
  store ptr %17, ptr %22, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %30, ptr %33, align 4
  store ptr %27, ptr %30, align 4
  store ptr %2, ptr %32, align 4
  store ptr %32, ptr %4, align 4
  store volatile ptr %26, ptr %26, align 4
  store ptr %26, ptr %31, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %39, ptr %42, align 4
  store ptr %36, ptr %39, align 4
  store ptr %2, ptr %41, align 4
  store ptr %41, ptr %4, align 4
  store volatile ptr %35, ptr %35, align 4
  store ptr %35, ptr %40, align 4
  br label %43

43:                                               ; preds = %38, %34
  %44 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %48, ptr %51, align 4
  store ptr %45, ptr %48, align 4
  store ptr %2, ptr %50, align 4
  store ptr %50, ptr %4, align 4
  store volatile ptr %44, ptr %44, align 4
  store ptr %44, ptr %49, align 4
  br label %52

52:                                               ; preds = %47, %43
  %53 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store ptr null, ptr %53, align 4
  br label %57

57:                                               ; preds = %56, %52
  %58 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 6
  %59 = load volatile ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %58
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %3, align 8
  %63 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 6, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %3, ptr %65, align 4
  store ptr %59, ptr %3, align 8
  store ptr %62, ptr %64, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %64, ptr %66, align 4
  store volatile ptr %58, ptr %58, align 4
  store ptr %58, ptr %63, align 4
  br label %67

67:                                               ; preds = %61, %57
  %68 = load ptr, ptr %3, align 8
  %69 = icmp eq ptr %68, %3
  br i1 %69, label %81, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 7
  %72 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 7, i32 1
  br label %73

73:                                               ; preds = %73, %70
  %74 = phi ptr [ %68, %70 ], [ %75, %73 ]
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  store ptr %77, ptr %78, align 4
  store volatile ptr %75, ptr %77, align 4
  %79 = load ptr, ptr %72, align 4
  store ptr %74, ptr %72, align 4
  store ptr %71, ptr %74, align 4
  store ptr %79, ptr %76, align 4
  store volatile ptr %74, ptr %79, align 4
  %80 = icmp eq ptr %75, %3
  br i1 %80, label %81, label %73

81:                                               ; preds = %73, %67
  call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #11
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_dmac_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
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
  br i1 %18, label %21, label %22

19:                                               ; preds = %13
  %20 = and i1 %16, %15
  br i1 %20, label %21, label %22

21:                                               ; preds = %19, %17
  br i1 %8, label %95, label %23

22:                                               ; preds = %19, %17
  br i1 %8, label %95, label %42

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #11
  %26 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 7
  %27 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 7, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %26
  br i1 %29, label %89, label %30

30:                                               ; preds = %38, %23
  %31 = phi ptr [ %40, %38 ], [ %28, %23 ]
  %32 = getelementptr i8, ptr %31, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %1
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %31, i32 -4
  %37 = load i32, ptr %36, align 4
  br label %89

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %26
  br i1 %41, label %89, label %30

42:                                               ; preds = %22
  %43 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %43) #11
  %45 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = tail call ptr @vchan_find_desc(ptr noundef %0, i32 noundef %1) #11
  %50 = icmp eq ptr %49, null
  br i1 %50, label %89, label %51

51:                                               ; preds = %48, %42
  %52 = phi ptr [ %46, %42 ], [ %49, %48 ]
  %53 = getelementptr inbounds %struct.usb_dmac_desc, ptr %52, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.usb_dmac_desc, ptr %52, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %54, 1
  %58 = icmp ult i32 %57, %56
  br i1 %58, label %59, label %67

59:                                               ; preds = %59, %51
  %60 = phi i32 [ %65, %59 ], [ %57, %51 ]
  %61 = phi i32 [ %64, %59 ], [ 0, %51 ]
  %62 = getelementptr %struct.usb_dmac_desc, ptr %52, i32 0, i32 8, i32 %60, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, %61
  %65 = add i32 %60, 1
  %66 = icmp eq i32 %65, %56
  br i1 %66, label %67, label %59

67:                                               ; preds = %59, %51
  %68 = phi i32 [ 0, %51 ], [ %64, %59 ]
  %69 = getelementptr inbounds %struct.usb_dmac_desc, ptr %52, i32 0, i32 8
  %70 = getelementptr %struct.usb_dmac_sg, ptr %69, i32 %54
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr %struct.usb_dmac_sg, ptr %69, i32 %54, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.usb_dmac_desc, ptr %52, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 2
  %77 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  br i1 %76, label %79, label %82

79:                                               ; preds = %67
  %80 = getelementptr i8, ptr %78, i32 4
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  br label %84

82:                                               ; preds = %67
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i32 [ %81, %79 ], [ %83, %82 ]
  %86 = add i32 %71, %68
  %87 = add i32 %86, %73
  %88 = sub i32 %87, %85
  br label %89

89:                                               ; preds = %84, %48, %38, %35, %23
  %90 = phi i32 [ %25, %23 ], [ %25, %35 ], [ %44, %48 ], [ %44, %84 ], [ %25, %38 ]
  %91 = phi ptr [ %24, %23 ], [ %24, %35 ], [ %43, %48 ], [ %43, %84 ], [ %24, %38 ]
  %92 = phi i32 [ 0, %23 ], [ 0, %35 ], [ 1, %48 ], [ 1, %84 ], [ 0, %38 ]
  %93 = phi i32 [ 0, %23 ], [ %37, %35 ], [ 0, %48 ], [ %88, %84 ], [ 0, %38 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %91, i32 noundef %90) #11
  %94 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %93, ptr %94, align 4
  br label %95

95:                                               ; preds = %89, %22, %21
  %96 = phi i32 [ 1, %22 ], [ 0, %21 ], [ %92, %89 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_dmac_issue_pending(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #11
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %6 = load volatile ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %10, ptr %13, align 4
  store ptr %6, ptr %10, align 4
  store ptr %5, ptr %12, align 4
  store ptr %12, ptr %9, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %11, align 4
  br label %14

14:                                               ; preds = %8, %1
  %15 = load volatile ptr, ptr %5, align 4
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %34, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load volatile ptr, ptr %5, align 4
  %23 = icmp eq ptr %22, %5
  %24 = getelementptr i8, ptr %22, i32 -68
  %25 = icmp eq ptr %24, null
  %26 = or i1 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store ptr null, ptr %18, align 4
  br label %34

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %22, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  store ptr %24, ptr %18, align 4
  %33 = getelementptr i8, ptr %22, i32 20
  store i32 0, ptr %33, align 4
  tail call fastcc void @usb_dmac_chan_start_sg(ptr noundef %0, i32 noundef 0) #11
  br label %34

34:                                               ; preds = %28, %27, %17, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_dmac_isr_channel(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.usb_dmac_chan, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %8 = and i32 %7, 6
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %7, 1
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %9, i32 0, i32 7
  %13 = xor i1 %9, true
  %14 = select i1 %13, i1 %11, i1 false
  %15 = and i32 %7, 4096
  %16 = or i32 %12, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = shl nuw nsw i32 %15, 12
  %20 = or i32 %19, %7
  %21 = xor i32 %16, -1
  %22 = and i32 %20, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #11, !srcloc !9
  br label %25

25:                                               ; preds = %18, %2
  br i1 %14, label %26, label %93

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.usb_dmac_chan, ptr %1, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !16

30:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/sh/usb-dmac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 581, 0\0A.popsection", ""() #11, !srcloc !17
  unreachable

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.usb_dmac_desc, ptr %28, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.usb_dmac_desc, ptr %28, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  tail call fastcc void @usb_dmac_chan_start_sg(ptr noundef %1, i32 noundef %34) #11
  br label %93

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.usb_dmac_desc, ptr %28, i32 0, i32 8
  %41 = getelementptr %struct.usb_dmac_sg, ptr %40, i32 %33
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr %struct.usb_dmac_sg, ptr %40, i32 %33, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.usb_dmac_desc, ptr %28, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 2
  %48 = load ptr, ptr %4, align 4
  br i1 %47, label %49, label %52

49:                                               ; preds = %39
  %50 = getelementptr i8, ptr %48, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  br label %54

52:                                               ; preds = %39
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi i32 [ %51, %49 ], [ %53, %52 ]
  %56 = add i32 %44, %42
  %57 = sub i32 %56, %55
  %58 = getelementptr inbounds %struct.usb_dmac_desc, ptr %28, i32 0, i32 5
  store i32 %57, ptr %58, align 4
  %59 = load i32, ptr %28, align 4
  %60 = getelementptr inbounds %struct.usb_dmac_desc, ptr %28, i32 0, i32 7
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.virt_dma_desc, ptr %28, i32 0, i32 1
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.virt_dma_desc, ptr %28, i32 0, i32 1, i32 1
  store i32 %57, ptr %62, align 4
  %63 = icmp slt i32 %59, 1
  br i1 %63, label %64, label %65, !prof !16

64:                                               ; preds = %54
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/sh/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #11, !srcloc !18
  unreachable

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %28, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.dma_chan, ptr %67, i32 0, i32 3
  store i32 %59, ptr %68, align 4
  store i32 0, ptr %28, align 4
  %69 = getelementptr inbounds %struct.virt_dma_desc, ptr %28, i32 0, i32 2
  %70 = getelementptr inbounds %struct.virt_dma_chan, ptr %67, i32 0, i32 7
  %71 = getelementptr inbounds %struct.virt_dma_chan, ptr %67, i32 0, i32 7, i32 1
  %72 = load ptr, ptr %71, align 4
  store ptr %69, ptr %71, align 4
  store ptr %70, ptr %69, align 4
  %73 = getelementptr inbounds %struct.virt_dma_desc, ptr %28, i32 0, i32 2, i32 1
  store ptr %72, ptr %73, align 4
  store volatile ptr %69, ptr %72, align 4
  %74 = getelementptr inbounds %struct.virt_dma_chan, ptr %67, i32 0, i32 1, i32 1
  %75 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %74) #11
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.virt_dma_chan, ptr %67, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %78) #11
  br label %79

79:                                               ; preds = %77, %65
  %80 = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 6
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %80
  %83 = getelementptr i8, ptr %81, i32 -68
  %84 = icmp eq ptr %83, null
  %85 = or i1 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store ptr null, ptr %27, align 4
  br label %93

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = load ptr, ptr %81, align 4
  %91 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  store ptr %89, ptr %91, align 4
  store volatile ptr %90, ptr %89, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %81, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %88, align 4
  store ptr %83, ptr %27, align 4
  %92 = getelementptr i8, ptr %81, i32 20
  store i32 0, ptr %92, align 4
  tail call fastcc void @usb_dmac_chan_start_sg(ptr noundef %1, i32 noundef 0) #11
  br label %93

93:                                               ; preds = %87, %86, %38, %25
  %94 = and i32 %7, 4102
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  %97 = load i16, ptr %3, align 4
  %98 = add i16 %97, 1
  store i16 %98, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_dmac_virt_desc_free(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %3, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.usb_dmac_desc, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.usb_dmac_chan, ptr %3, i32 0, i32 7
  %8 = getelementptr inbounds %struct.usb_dmac_desc, ptr %0, i32 0, i32 6, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  %12 = getelementptr inbounds %struct.usb_dmac_chan, ptr %3, i32 0, i32 7, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %6, ptr %12, align 4
  store ptr %7, ptr %6, align 4
  store ptr %13, ptr %8, align 4
  store volatile ptr %6, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usb_dmac_chan_start_sg(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 1
  %11 = load i1, ptr @usb_dmac_chan_start_sg.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !16

14:                                               ; preds = %2
  store i1 true, ptr @usb_dmac_chan_start_sg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 200, i32 noundef 9, ptr noundef null) #11
  br label %15

15:                                               ; preds = %14, %2
  %16 = getelementptr inbounds %struct.usb_dmac_desc, ptr %4, i32 0, i32 8
  %17 = getelementptr %struct.usb_dmac_sg, ptr %16, i32 %1
  %18 = getelementptr inbounds %struct.usb_dmac_desc, ptr %4, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  %21 = load i32, ptr %17, align 4
  %22 = select i1 %20, i32 0, i32 %21
  %23 = select i1 %20, i32 %21, i32 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  %24 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #11, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %23) #11, !srcloc !9
  %27 = getelementptr %struct.usb_dmac_sg, ptr %16, i32 %1, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 31
  %30 = lshr i32 %29, 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #11, !srcloc !9
  %33 = load i32, ptr %27, align 4
  %34 = and i32 %33, 31
  %35 = icmp eq i32 %34, 0
  %36 = sub nuw nsw i32 32, %34
  %37 = shl nsw i32 -1, %36
  %38 = select i1 %35, i32 -1, i32 %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr i8, ptr %39, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #11, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr i8, ptr %41, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 65697) #11, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @usb_dmac_chan_filter(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  ret i1 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usb_dmac_chan_halt(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.usb_dmac_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %6 = and i32 %5, -36
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #11, !srcloc !9
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.usb_dmac, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %17

13:                                               ; preds = %17
  %14 = add nuw i32 %18, 1
  %15 = load i32, ptr %10, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13, %1
  %18 = phi i32 [ %14, %13 ], [ 0, %1 ]
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr i8, ptr %19, i32 20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %35, label %13

24:                                               ; preds = %13, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  %25 = getelementptr inbounds %struct.usb_dmac, ptr %9, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #11, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 1) #11, !srcloc !9
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 21474800) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  %31 = load ptr, ptr %25, align 4
  %32 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #11, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  %33 = load ptr, ptr %25, align 4
  %34 = getelementptr i8, ptr %33, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 1) #11, !srcloc !9
  br label %35

35:                                               ; preds = %24, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_dmac_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_dmac, ptr %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.usb_dmac, ptr %3, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %14, %1
  %9 = phi i32 [ %16, %14 ], [ 0, %1 ]
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr %struct.usb_dmac_chan, ptr %10, i32 %9, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr %struct.usb_dmac_chan, ptr %10, i32 %9
  tail call fastcc void @usb_dmac_chan_halt(ptr noundef %15)
  %16 = add nuw i32 %9, 1
  %17 = load i32, ptr %5, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %8, label %19

19:                                               ; preds = %14, %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_dmac_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  %4 = getelementptr inbounds %struct.usb_dmac, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 1) #11, !srcloc !9
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 96
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.usb_dmac, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.6) #12
  br label %15

15:                                               ; preds = %12, %1
  %16 = phi i32 [ -5, %12 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2153163062}
!9 = !{i64 4981704}
!10 = !{i64 4982122}
!11 = !{i64 2153163527}
!12 = !{!"auto-init"}
!13 = !{i64 2153109756}
!14 = !{i64 2153163861}
!15 = !{i64 2153164047}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2153208028, i64 2153208518, i64 2153208065, i64 2153208121, i64 2153208155, i64 2153208179, i64 2153208220, i64 2153208241, i64 2153208269, i64 2153208303}
!18 = !{i64 2153108814, i64 2153109307, i64 2153108851, i64 2153108907, i64 2153108941, i64 2153108965, i64 2153109006, i64 2153109027, i64 2153109055, i64 2153109089}
!19 = !{i64 2149188627}
!20 = !{i64 2149184451}
!21 = !{i64 2149184526, i64 2149184553, i64 2149184600, i64 2149184622, i64 2149184650, i64 2149184670}
!22 = !{i64 2149211630}
