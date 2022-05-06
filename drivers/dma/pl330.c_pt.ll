; ModuleID = '/llk/IR/drivers/dma/pl330.c_pt.bc'
source_filename = "../drivers/dma/pl330.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pl330_dmac = type { %struct.dma_device, %struct.list_head, %struct.spinlock, i32, ptr, %struct.pl330_config, %struct.spinlock, [32 x i32], i32, ptr, ptr, ptr, %struct.tasklet_struct, %struct._pl330_tbd, i32, %struct.list_head, i32, ptr, i32, ptr, ptr }
%struct.pl330_config = type { i32, i32, i32, i32, i8, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct._pl330_tbd = type { i8, i8, i8 }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.dma_pl330_chan = type { %struct.tasklet_struct, %struct.dma_chan, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, %struct.dma_slave_config, i8, i8 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.pl330_thread = type { i8, i32, i8, ptr, [2 x %struct._pl330_req], i32, i32 }
%struct._pl330_req = type { i32, ptr, ptr }
%struct.dma_pl330_desc = type { %struct.list_head, %struct.dma_async_tx_descriptor, %struct.pl330_xfer, %struct.pl330_reqcfg, i32, i32, i8, ptr, i32, i8, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.pl330_xfer = type { i32, i32, i32 }
%struct.pl330_reqcfg = type { i8, i8, i8, i8, i8, i32, i32, i32, ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dmaengine_result = type { i32, i32 }
%struct._xfer_spec = type { i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_pl330__254_3263_pl330_driver_init6 = internal global ptr @pl330_driver_init, section ".initcall6.init", align 4
@pl330_driver = internal global %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl330_pm, ptr null, ptr null }, ptr @pl330_probe, ptr @pl330_remove, ptr null, ptr @pl330_ids }, align 4
@__exitcall_pl330_driver_exit = internal global ptr @pl330_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author255 = internal constant [56 x i8] c"pl330.author=Jaswinder Singh <jassisinghbrar@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description256 = internal constant [44 x i8] c"pl330.description=API Driver for PL330 DMAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file257 = internal constant [29 x i8] c"pl330.file=drivers/dma/pl330\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [18 x i8] c"pl330.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"dma-pl330\00", align 1
@pl330_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl330_suspend, ptr @pl330_resume, ptr @pl330_suspend, ptr @pl330_resume, ptr @pl330_suspend, ptr @pl330_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pl330_ids = internal constant [2 x %struct.amba_id] [%struct.amba_id { i32 267056, i32 1048575, ptr null }, %struct.amba_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to get reset!\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Couldn't deassert the device from reset!\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"dma-ocp\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to get OCP reset!\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Couldn't deassert the device from OCP reset!\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"unable to allocate desc\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"unable to register DMAC\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"unable to register DMA to the generic DT DMA helpers\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"unable to set the seg size\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Loaded driver for PL330 DMAC-%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"\09DBUFF-%ux%ubytes Num_Chans-%u Num_Peri-%u Num_Events-%u\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"arm,pl330-broken-no-flushp\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"arm,pl330-periph-burst\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Reset Channel-%d\09 CS-%x FTC-%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"%s:%d Unexpected!\0A\00", align 1
@__func__.pl330_update = private unnamed_addr constant [13 x i8] c"pl330_update\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"DMAC halted!\0A\00", align 1
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [25 x i8] c"%s:%d Recipe for ABORT!\0A\00", align 1
@__func__._trigger = private unnamed_addr constant [9 x i8] c"_trigger\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"PERIPH_ID 0x%x !\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"%s:%d Can't work without events!\0A\00", align 1
@__func__.pl330_add = private unnamed_addr constant [10 x i8] c"pl330_add\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"Unable to create channels for DMAC\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"%s:%d Can't allocate memory!\0A\00", align 1
@__func__.dmac_alloc_resources = private unnamed_addr constant [21 x i8] c"dmac_alloc_resources\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"%s:%d Can't to create channels for DMAC!\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.24 = private unnamed_addr constant [20 x i8] c"%s:%d Bad Desc(%d)\0A\00", align 1
@__func__.fill_queue = private unnamed_addr constant [11 x i8] c"fill_queue\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"%s:%d\0A\00", align 1
@__func__.pl330_submit_req = private unnamed_addr constant [17 x i8] c"pl330_submit_req\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"%s:%d Invalid peripheral(%u)!\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"%s:%d Try increasing mcbufsz (%i/%i)\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"drivers/dma/pl330.c\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"%s:%d Unable to fetch desc\0A\00", align 1
@__func__.__pl330_prep_dma_memcpy = private unnamed_addr constant [24 x i8] c"__pl330_prep_dma_memcpy\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"%s:%d Invalid dma direction\0A\00", align 1
@__func__.pl330_prep_dma_cyclic = private unnamed_addr constant [22 x i8] c"pl330_prep_dma_cyclic\00", align 1
@__func__.pl330_prep_slave_sg = private unnamed_addr constant [20 x i8] c"pl330_prep_slave_sg\00", align 1
@pl330_debugfs_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pl330_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.31 = private unnamed_addr constant [26 x i8] c"PL330 physical channels:\0A\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"THREAD:\09\09CHANNEL:\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"--------\09-----\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"%d\09\09\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"--\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_license258, ptr @__exitcall_pl330_driver_exit, ptr @__initcall__kmod_pl330__254_3263_pl330_driver_init6, ptr @pl330_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pl330_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @amba_driver_register(ptr noundef nonnull @pl330_driver) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pl330_driver_exit() #0 section ".exit.text" {
  tail call void @amba_driver_unregister(ptr noundef nonnull @pl330_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl330_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @dma_set_mask(ptr noundef %0, i64 noundef 4294967295) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %211

7:                                                ; preds = %2
  %8 = tail call i32 @dma_set_coherent_mask(ptr noundef %0, i64 noundef 4294967295) #11
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 504, i32 noundef 3520) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %211, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.pl330_dmac, ptr %9, i32 0, i32 3
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.pl330_dmac, ptr %9, i32 0, i32 18
  %15 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.13, ptr noundef null) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i32, ptr %14, align 4
  %19 = or i32 %18, 1
  store i32 %19, ptr %14, align 4
  br label %20

20:                                               ; preds = %17, %11
  %21 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef null) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %14, align 4
  %25 = or i32 %24, 2
  store i32 %25, ptr %14, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  %28 = tail call ptr @devm_ioremap_resource(ptr noundef %0, ptr noundef %27) #11
  %29 = getelementptr inbounds %struct.pl330_dmac, ptr %9, i32 0, i32 4
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = ptrtoint ptr %28 to i32
  br label %211

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %9, ptr %34, align 8
  %35 = tail call ptr @__devm_reset_control_get(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %36 = getelementptr inbounds %struct.pl330_dmac, ptr %9, i32 0, i32 19
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = ptrtoint ptr %35 to i32
  %40 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %0, i32 noundef %39, ptr noundef nonnull @.str.2) #11
  br label %211

41:                                               ; preds = %33
  %42 = tail call i32 @reset_control_deassert(ptr noundef %35) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #12
  br label %211

45:                                               ; preds = %41
  %46 = tail call ptr @__devm_reset_control_get(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %47 = getelementptr inbounds %struct.pl330_dmac, ptr %9, i32 0, i32 20
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = ptrtoint ptr %46 to i32
  %51 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %0, i32 noundef %50, ptr noundef nonnull @.str.5) #11
  br label %211

52:                                               ; preds = %45
  %53 = tail call i32 @reset_control_deassert(ptr noundef %46) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  br label %61

57:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6) #12
  br label %211

58:                                               ; preds = %71
  %59 = add nuw nsw i32 %62, 1
  %60 = icmp eq i32 %59, 9
  br i1 %60, label %75, label %61

61:                                               ; preds = %58, %55
  %62 = phi i32 [ 0, %55 ], [ %59, %58 ]
  %63 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %56, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load ptr, ptr %0, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi ptr [ %70, %69 ], [ %67, %66 ]
  %73 = tail call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %64, ptr noundef nonnull @pl330_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %72, ptr noundef %9) #11
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %58, label %211

75:                                               ; preds = %61, %58
  %76 = getelementptr inbounds %struct.pl330_dmac, ptr %9, i32 0, i32 5
  %77 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 4
  %78 = load i32, ptr %77, align 8
  store i32 %78, ptr %76, align 4
  %79 = tail call fastcc i32 @pl330_add(ptr noundef nonnull %9)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %211

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.pl330_dmac, ptr %9, i32 0, i32 1
  store volatile ptr %82, ptr %82, align 4
  %83 = getelementptr inbounds %struct.pl330_dmac, ptr %9, i32 0, i32 1, i32 1
  store ptr %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.pl330_dmac, ptr %9, i32 0, i32 2
  store i32 0, ptr %84, align 4
  %85 = tail call fastcc i32 @add_desc(ptr noundef %82, ptr noundef %84, i32 noundef 3264, i32 noundef 16)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.7) #12
  br label %88

88:                                               ; preds = %87, %81
  %89 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 3
  store volatile ptr %89, ptr %89, align 4
  %90 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 3, i32 1
  store ptr %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.pl330_dmac, ptr %9, i32 0, i32 5, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = lshr i32 %92, 25
  %94 = and i32 %93, 63
  %95 = lshr i32 %92, 21
  %96 = and i32 %95, 15
  %97 = tail call i32 @llvm.umax.i32(i32 %94, i32 %96)
  %98 = getelementptr inbounds %struct.pl330_dmac, ptr %9, i32 0, i32 16
  store i32 %97, ptr %98, align 4
  %99 = mul nuw nsw i32 %97, 196
  %100 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %99, i32 noundef 3520) #13
  %101 = getelementptr inbounds %struct.pl330_dmac, ptr %9, i32 0, i32 17
  store ptr %100, ptr %101, align 4
  %102 = icmp eq ptr %100, null
  br i1 %102, label %200, label %103

103:                                              ; preds = %88
  %104 = icmp eq i32 %97, 0
  br i1 %104, label %128, label %105

105:                                              ; preds = %126, %103
  %106 = phi ptr [ %127, %126 ], [ %100, %103 ]
  %107 = phi i32 [ %124, %126 ], [ 0, %103 ]
  %108 = load ptr, ptr %3, align 8
  %109 = getelementptr %struct.dma_pl330_chan, ptr %106, i32 %107, i32 1
  %110 = getelementptr %struct.dma_pl330_chan, ptr %106, i32 %107, i32 1, i32 14
  store ptr %108, ptr %110, align 4
  %111 = getelementptr %struct.dma_pl330_chan, ptr %106, i32 %107, i32 2
  store volatile ptr %111, ptr %111, align 4
  %112 = getelementptr %struct.dma_pl330_chan, ptr %106, i32 %107, i32 2, i32 1
  store ptr %111, ptr %112, align 4
  %113 = getelementptr %struct.dma_pl330_chan, ptr %106, i32 %107, i32 3
  store volatile ptr %113, ptr %113, align 4
  %114 = getelementptr %struct.dma_pl330_chan, ptr %106, i32 %107, i32 3, i32 1
  store ptr %113, ptr %114, align 4
  %115 = getelementptr %struct.dma_pl330_chan, ptr %106, i32 %107, i32 4
  store volatile ptr %115, ptr %115, align 4
  %116 = getelementptr %struct.dma_pl330_chan, ptr %106, i32 %107, i32 4, i32 1
  store ptr %115, ptr %116, align 4
  %117 = getelementptr %struct.dma_pl330_chan, ptr %106, i32 %107, i32 6
  store i32 0, ptr %117, align 4
  %118 = getelementptr %struct.dma_pl330_chan, ptr %106, i32 %107, i32 7
  store ptr null, ptr %118, align 4
  store ptr %9, ptr %109, align 4
  %119 = getelementptr %struct.dma_pl330_chan, ptr %106, i32 %107, i32 5
  store ptr %9, ptr %119, align 4
  %120 = getelementptr %struct.dma_pl330_chan, ptr %106, i32 %107, i32 12
  store i32 3, ptr %120, align 4
  %121 = getelementptr %struct.dma_pl330_chan, ptr %106, i32 %107, i32 1, i32 8
  %122 = load ptr, ptr %90, align 4
  store ptr %121, ptr %90, align 4
  store ptr %89, ptr %121, align 4
  %123 = getelementptr %struct.dma_pl330_chan, ptr %106, i32 %107, i32 1, i32 8, i32 1
  store ptr %122, ptr %123, align 4
  store volatile ptr %121, ptr %122, align 4
  %124 = add nuw nsw i32 %107, 1
  %125 = icmp eq i32 %124, %97
  br i1 %125, label %128, label %126

126:                                              ; preds = %105
  %127 = load ptr, ptr %101, align 4
  br label %105

128:                                              ; preds = %105, %103
  %129 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %129) #11
  %130 = load i32, ptr %91, align 4
  %131 = and i32 %130, 2113929216
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  tail call void @_set_bit(i32 noundef 11, ptr noundef %129) #11
  tail call void @_set_bit(i32 noundef 12, ptr noundef %129) #11
  tail call void @_set_bit(i32 noundef 9, ptr noundef %129) #11
  br label %134

134:                                              ; preds = %133, %128
  %135 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 27
  store ptr @pl330_alloc_chan_resources, ptr %135, align 4
  %136 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 29
  store ptr @pl330_free_chan_resources, ptr %136, align 4
  %137 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 30
  store ptr @pl330_prep_dma_memcpy, ptr %137, align 4
  %138 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 40
  store ptr @pl330_prep_dma_cyclic, ptr %138, align 4
  %139 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 49
  store ptr @pl330_tx_status, ptr %139, align 4
  %140 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 39
  store ptr @pl330_prep_slave_sg, ptr %140, align 4
  %141 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 44
  store ptr @pl330_config, ptr %141, align 4
  %142 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 45
  store ptr @pl330_pause, ptr %142, align 4
  %143 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 47
  store ptr @pl330_terminate_all, ptr %143, align 4
  %144 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 50
  store ptr @pl330_issue_pending, ptr %144, align 4
  %145 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 19
  store i32 279, ptr %145, align 4
  %146 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 20
  store i32 279, ptr %146, align 4
  %147 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 21
  store i32 6, ptr %147, align 4
  %148 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 26
  store i32 2, ptr %148, align 4
  %149 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 23
  store i32 16, ptr %149, align 4
  %150 = tail call i32 @dma_async_device_register(ptr noundef nonnull %9) #11
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %134
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8) #12
  %153 = load ptr, ptr %89, align 4
  %154 = icmp eq ptr %153, %89
  br i1 %154, label %200, label %186

155:                                              ; preds = %134
  %156 = load ptr, ptr %3, align 8
  %157 = icmp eq ptr %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %155
  %159 = tail call i32 @of_dma_controller_register(ptr noundef nonnull %156, ptr noundef nonnull @of_dma_pl330_xlate, ptr noundef nonnull %9) #11
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9) #12
  br label %162

162:                                              ; preds = %161, %158, %155
  %163 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 20
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %162
  store i32 1900800, ptr %164, align 4
  br label %168

167:                                              ; preds = %162
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10) #12
  br label %168

168:                                              ; preds = %167, %166
  tail call fastcc void @init_pl330_debugfs(ptr noundef nonnull %9)
  %169 = load i32, ptr %77, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %169) #12
  %170 = load i32, ptr %91, align 4
  %171 = lshr i32 %170, 10
  %172 = and i32 %171, 2047
  %173 = lshr i32 %170, 3
  %174 = and i32 %173, 127
  %175 = lshr i32 %170, 21
  %176 = and i32 %175, 15
  %177 = lshr i32 %170, 25
  %178 = and i32 %177, 63
  %179 = getelementptr inbounds %struct.pl330_dmac, ptr %9, i32 0, i32 5, i32 4
  %180 = load i8, ptr %179, align 4
  %181 = and i8 %180, 63
  %182 = zext i8 %181 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %172, i32 noundef %174, i32 noundef %176, i32 noundef %178, i32 noundef %182) #12
  tail call void @pm_runtime_irq_safe(ptr noundef %0) #11
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %0, i1 noundef zeroext true) #11
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %0, i32 noundef 20) #11
  %183 = tail call i64 @ktime_get_mono_fast_ns() #11
  %184 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %183, ptr %184, align 8
  %185 = tail call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 13) #11
  br label %211

186:                                              ; preds = %198, %152
  %187 = phi ptr [ %188, %198 ], [ %153, %152 ]
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.list_head, ptr %187, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.list_head, ptr %188, i32 0, i32 1
  store ptr %190, ptr %191, align 4
  store volatile ptr %188, ptr %190, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %187, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %189, align 4
  %192 = getelementptr i8, ptr %187, i32 64
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %186
  %196 = getelementptr i8, ptr %187, i32 -32
  %197 = tail call i32 @pl330_terminate_all(ptr noundef %196)
  tail call void @pl330_free_chan_resources(ptr noundef %196)
  br label %198

198:                                              ; preds = %195, %186
  %199 = icmp eq ptr %188, %89
  br i1 %199, label %200, label %186

200:                                              ; preds = %198, %152, %88
  %201 = phi i32 [ -12, %88 ], [ %150, %152 ], [ %150, %198 ]
  tail call fastcc void @pl330_del(ptr noundef nonnull %9)
  %202 = load ptr, ptr %47, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %206, label %204

204:                                              ; preds = %200
  %205 = tail call i32 @reset_control_assert(ptr noundef nonnull %202) #11
  br label %206

206:                                              ; preds = %204, %200
  %207 = load ptr, ptr %36, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %206
  %210 = tail call i32 @reset_control_assert(ptr noundef nonnull %207) #11
  br label %211

211:                                              ; preds = %209, %206, %168, %75, %71, %57, %49, %44, %38, %31, %7, %2
  %212 = phi i32 [ %32, %31 ], [ %40, %38 ], [ %42, %44 ], [ %51, %49 ], [ %53, %57 ], [ 0, %168 ], [ -12, %7 ], [ %79, %75 ], [ %201, %209 ], [ %201, %206 ], [ %5, %2 ], [ %73, %71 ]
  ret i32 %212
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl330_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #11, !srcloc !8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #11, !srcloc !9
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @of_dma_controller_free(ptr noundef nonnull %9) #11
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 0
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @devm_free_irq(ptr noundef %0, i32 noundef %14, ptr noundef %3) #11
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @devm_free_irq(ptr noundef %0, i32 noundef %19, ptr noundef %3) #11
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @devm_free_irq(ptr noundef %0, i32 noundef %24, ptr noundef %3) #11
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @devm_free_irq(ptr noundef %0, i32 noundef %29, ptr noundef %3) #11
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @devm_free_irq(ptr noundef %0, i32 noundef %34, ptr noundef %3) #11
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @devm_free_irq(ptr noundef %0, i32 noundef %39, ptr noundef %3) #11
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @devm_free_irq(ptr noundef %0, i32 noundef %44, ptr noundef %3) #11
  br label %47

47:                                               ; preds = %46, %42
  %48 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void @devm_free_irq(ptr noundef %0, i32 noundef %49, ptr noundef %3) #11
  br label %52

52:                                               ; preds = %51, %47
  %53 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 8
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @devm_free_irq(ptr noundef %0, i32 noundef %54, ptr noundef %3) #11
  br label %57

57:                                               ; preds = %56, %52
  tail call void @dma_async_device_unregister(ptr noundef %3) #11
  %58 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %58
  br i1 %60, label %75, label %61

61:                                               ; preds = %73, %57
  %62 = phi ptr [ %63, %73 ], [ %59, %57 ]
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %65, ptr %66, align 4
  store volatile ptr %63, ptr %65, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %62, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %64, align 4
  %67 = getelementptr i8, ptr %62, i32 64
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %61
  %71 = getelementptr i8, ptr %62, i32 -32
  %72 = tail call i32 @pl330_terminate_all(ptr noundef %71)
  tail call void @pl330_free_chan_resources(ptr noundef %71)
  br label %73

73:                                               ; preds = %70, %61
  %74 = icmp eq ptr %63, %58
  br i1 %74, label %75, label %61

75:                                               ; preds = %73, %57
  tail call fastcc void @pl330_del(ptr noundef %3)
  %76 = getelementptr inbounds %struct.pl330_dmac, ptr %3, i32 0, i32 20
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = tail call i32 @reset_control_assert(ptr noundef nonnull %77) #11
  br label %81

81:                                               ; preds = %79, %75
  %82 = getelementptr inbounds %struct.pl330_dmac, ptr %3, i32 0, i32 19
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = tail call i32 @reset_control_assert(ptr noundef nonnull %83) #11
  br label %87

87:                                               ; preds = %85, %81
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl330_suspend(ptr noundef %0) #2 {
  %2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  tail call void @clk_unprepare(ptr noundef %4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl330_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #11
  br label %8

8:                                                ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl330_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 6
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %7 = getelementptr i8, ptr %4, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 13, i32 1
  store i8 %10, ptr %11, align 1
  %12 = getelementptr i8, ptr %4, i32 52
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %14 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 5, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 21
  %17 = and i32 %16, 15
  %18 = shl nsw i32 -1, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %13, %19
  %21 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 13
  %22 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 13, i32 2
  %23 = load i8, ptr %22, align 2
  %24 = trunc i32 %20 to i8
  %25 = or i8 %23, %24
  store i8 %25, ptr %22, align 2
  %26 = icmp eq i32 %20, 0
  %27 = and i32 %15, 31457280
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %58, label %30

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %32 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 10
  br label %33

33:                                               ; preds = %52, %30
  %34 = phi i32 [ %15, %30 ], [ %53, %52 ]
  %35 = phi i32 [ 0, %30 ], [ %54, %52 ]
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %20
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %31, align 4
  %41 = shl i32 %35, 3
  %42 = add nuw nsw i32 %41, 256
  %43 = getelementptr i8, ptr %4, i32 %42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %45 = shl i32 %35, 2
  %46 = add nuw nsw i32 %45, 64
  %47 = getelementptr i8, ptr %4, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.15, i32 noundef %35, i32 noundef %44, i32 noundef %48) #12
  %49 = load ptr, ptr %32, align 4
  %50 = getelementptr %struct.pl330_thread, ptr %49, i32 %35
  tail call fastcc void @_stop(ptr noundef %50) #11
  %51 = load i32, ptr %14, align 4
  br label %52

52:                                               ; preds = %39, %33
  %53 = phi i32 [ %51, %39 ], [ %34, %33 ]
  %54 = add nuw nsw i32 %35, 1
  %55 = lshr i32 %53, 21
  %56 = and i32 %55, 15
  %57 = icmp ult i32 %54, %56
  br i1 %57, label %33, label %58

58:                                               ; preds = %52, %2
  %59 = getelementptr i8, ptr %4, i32 36
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !15
  %61 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 5, i32 4
  %62 = load i8, ptr %61, align 4
  %63 = and i8 %62, 63
  %64 = icmp ult i8 %63, 32
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = zext i8 %63 to i32
  %67 = shl nsw i32 -1, %66
  %68 = and i32 %67, %60
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  store i8 1, ptr %21, align 4
  %71 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %72 = load ptr, ptr %71, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.pl330_update, i32 noundef 1673) #12
  br label %143

73:                                               ; preds = %65
  %74 = icmp eq i8 %63, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %73, %58
  %76 = getelementptr i8, ptr %4, i32 32
  %77 = getelementptr i8, ptr %4, i32 44
  %78 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 10
  %79 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 15
  %80 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 15, i32 1
  br label %86

81:                                               ; preds = %111, %73
  %82 = phi i32 [ 0, %73 ], [ %112, %111 ]
  %83 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 15
  %84 = load volatile ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %83
  br i1 %85, label %143, label %118

86:                                               ; preds = %111, %75
  %87 = phi i32 [ 0, %75 ], [ %113, %111 ]
  %88 = phi i32 [ 0, %75 ], [ %112, %111 ]
  %89 = shl nuw i32 1, %87
  %90 = and i32 %89, %60
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %111, label %92

92:                                               ; preds = %86
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !16
  %94 = and i32 %93, %89
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !17
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %89) #11, !srcloc !18
  br label %97

97:                                               ; preds = %96, %92
  %98 = getelementptr %struct.pl330_dmac, ptr %1, i32 0, i32 7, i32 %87
  %99 = load i32, ptr %98, align 4
  %100 = load ptr, ptr %78, align 4
  %101 = getelementptr %struct.pl330_thread, ptr %100, i32 %99, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = getelementptr %struct.pl330_thread, ptr %100, i32 %99
  %106 = getelementptr %struct.pl330_thread, ptr %100, i32 %99, i32 4, i32 %102, i32 2
  %107 = load ptr, ptr %106, align 4
  store ptr null, ptr %106, align 4
  store i32 -1, ptr %101, align 4
  tail call fastcc void @_start(ptr noundef %105) #11
  %108 = getelementptr inbounds %struct.dma_pl330_desc, ptr %107, i32 0, i32 10
  %109 = load ptr, ptr %80, align 4
  store ptr %108, ptr %80, align 4
  store ptr %79, ptr %108, align 4
  %110 = getelementptr inbounds %struct.dma_pl330_desc, ptr %107, i32 0, i32 10, i32 1
  store ptr %109, ptr %110, align 4
  store volatile ptr %108, ptr %109, align 4
  br label %111

111:                                              ; preds = %104, %97, %86
  %112 = phi i32 [ %88, %86 ], [ 1, %97 ], [ 1, %104 ]
  %113 = add nuw nsw i32 %87, 1
  %114 = load i8, ptr %61, align 4
  %115 = and i8 %114, 63
  %116 = zext i8 %115 to i32
  %117 = icmp ult i32 %113, %116
  br i1 %117, label %86, label %81

118:                                              ; preds = %139, %81
  %119 = phi ptr [ %141, %139 ], [ %84, %81 ]
  %120 = phi i32 [ %140, %139 ], [ %6, %81 ]
  %121 = getelementptr i8, ptr %119, i32 -128
  %122 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = load ptr, ptr %119, align 4
  %125 = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  store ptr %123, ptr %125, align 4
  store volatile ptr %124, ptr %123, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %119, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %122, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %120) #11
  %126 = icmp eq ptr %121, null
  br i1 %126, label %139, label %127

127:                                              ; preds = %118
  %128 = getelementptr i8, ptr %119, i32 -12
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %139, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.dma_pl330_chan, ptr %129, i32 0, i32 6
  %133 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %132) #11
  %134 = getelementptr i8, ptr %119, i32 -24
  store i32 3, ptr %134, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %132, i32 noundef %133) #11
  %135 = getelementptr inbounds %struct.tasklet_struct, ptr %129, i32 0, i32 1
  %136 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %135) #11
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  tail call void @__tasklet_schedule(ptr noundef nonnull %129) #11
  br label %139

139:                                              ; preds = %138, %131, %127, %118
  %140 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %141 = load volatile ptr, ptr %83, align 4
  %142 = icmp eq ptr %141, %83
  br i1 %142, label %143, label %118

143:                                              ; preds = %139, %81, %70
  %144 = phi i32 [ 1, %70 ], [ %82, %81 ], [ %82, %139 ]
  %145 = phi i32 [ %6, %70 ], [ %6, %81 ], [ %140, %139 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %145) #11
  %146 = load i8, ptr %21, align 4, !range !19
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i8, ptr %11, align 1, !range !19
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i8, ptr %22, align 2
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %151, %148, %143
  %155 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 12, i32 1
  %156 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %155) #11
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 12
  tail call void @__tasklet_schedule(ptr noundef %159) #11
  br label %163

160:                                              ; preds = %151
  %161 = icmp ne i32 %144, 0
  %162 = zext i1 %161 to i32
  br label %163

163:                                              ; preds = %160, %158, %154
  %164 = phi i32 [ 1, %154 ], [ 1, %158 ], [ %162, %160 ]
  ret i32 %164
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pl330_add(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1048575
  %5 = icmp eq i32 %4, 267056
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.19, i32 noundef %3) #12
  br label %168

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 3604
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !20
  %14 = and i32 %13, 7
  %15 = shl nuw nsw i32 8, %14
  %16 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 5, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %15, 1016
  %19 = and i32 %17, -1024
  %20 = or i32 %19, %18
  store i32 %20, ptr %16, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !21
  %22 = load i32, ptr %16, align 4
  %23 = lshr i32 %21, 10
  %24 = and i32 %23, 1047552
  %25 = add nuw nsw i32 %24, 1024
  %26 = and i32 %22, -2096129
  %27 = or i32 %26, %25
  store i32 %27, ptr %16, align 4
  %28 = getelementptr i8, ptr %11, i32 3584
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !22
  %30 = load i32, ptr %16, align 4
  %31 = shl i32 %29, 17
  %32 = and i32 %31, 14680064
  %33 = add nuw nsw i32 %32, 2097152
  %34 = and i32 %30, -31457281
  %35 = or i32 %34, %33
  store i32 %35, ptr %16, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !23
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  %39 = load i32, ptr %16, align 4
  br i1 %38, label %49, label %40

40:                                               ; preds = %9
  %41 = shl i32 %36, 13
  %42 = and i32 %41, 1040187392
  %43 = add nuw nsw i32 %42, 33554432
  %44 = and i32 %39, -2113929217
  %45 = or i32 %44, %43
  store i32 %45, ptr %16, align 4
  %46 = getelementptr i8, ptr %11, i32 3600
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !24
  %48 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 5, i32 3
  store i32 %47, ptr %48, align 4
  br label %51

49:                                               ; preds = %9
  %50 = and i32 %39, -2113929217
  store i32 %50, ptr %16, align 4
  br label %51

51:                                               ; preds = %49, %40
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !25
  %53 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 5, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -2
  %56 = lshr i32 %52, 2
  %57 = and i32 %56, 1
  %58 = or i32 %55, %57
  store i32 %58, ptr %53, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !26
  %60 = lshr i32 %59, 17
  %61 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 5, i32 4
  %62 = trunc i32 %60 to i8
  %63 = and i8 %62, 31
  %64 = add nuw nsw i8 %63, 1
  %65 = load i8, ptr %61, align 4
  %66 = and i8 %65, -64
  %67 = or i8 %64, %66
  store i8 %67, ptr %61, align 4
  %68 = getelementptr i8, ptr %11, i32 3596
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !27
  %70 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 5, i32 5
  store i32 %69, ptr %70, align 4
  %71 = load i8, ptr %61, align 4
  %72 = and i8 %71, 63
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %51
  %75 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 15
  %76 = load ptr, ptr %75, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.pl330_add, i32 noundef 1957) #12
  br label %168

77:                                               ; preds = %51
  %78 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 6
  store i32 0, ptr %78, align 4
  %79 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 15
  store volatile ptr %79, ptr %79, align 4
  %80 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 15, i32 1
  store ptr %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 512, ptr %81, align 4
  br label %85

85:                                               ; preds = %84, %77
  br label %86

86:                                               ; preds = %86, %85
  %87 = phi i32 [ %89, %86 ], [ 0, %85 ]
  %88 = getelementptr %struct.pl330_dmac, ptr %0, i32 0, i32 7, i32 %87
  store i32 -1, ptr %88, align 4
  %89 = add nuw nsw i32 %87, 1
  %90 = load i8, ptr %61, align 4
  %91 = and i8 %90, 63
  %92 = zext i8 %91 to i32
  %93 = icmp ult i32 %89, %92
  br i1 %93, label %86, label %94

94:                                               ; preds = %86
  %95 = load i32, ptr %81, align 4
  %96 = load i32, ptr %16, align 4
  %97 = lshr i32 %96, 21
  %98 = and i32 %97, 15
  %99 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 15
  %100 = load ptr, ptr %99, align 4
  %101 = mul i32 %98, %95
  %102 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 8
  %103 = tail call ptr @dma_alloc_attrs(ptr noundef %100, i32 noundef %101, ptr noundef %102, i32 noundef 3264, i32 noundef 512) #11
  %104 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 9
  store ptr %103, ptr %104, align 4
  %105 = icmp eq ptr %103, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %94
  %107 = load ptr, ptr %99, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.dmac_alloc_resources, i32 noundef 1923) #12
  br label %157

108:                                              ; preds = %94
  %109 = load i32, ptr %16, align 4
  %110 = lshr i32 %109, 21
  %111 = and i32 %110, 15
  %112 = mul nuw nsw i32 %111, 48
  %113 = add nuw nsw i32 %112, 48
  %114 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %113, i32 noundef 3520) #13
  %115 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 10
  store ptr %114, ptr %115, align 4
  %116 = icmp eq ptr %114, null
  br i1 %116, label %150, label %117

117:                                              ; preds = %108
  %118 = icmp eq i32 %111, 0
  br i1 %118, label %159, label %119

119:                                              ; preds = %119, %117
  %120 = phi ptr [ %149, %119 ], [ %114, %117 ]
  %121 = phi i32 [ %147, %119 ], [ 0, %117 ]
  %122 = getelementptr %struct.pl330_thread, ptr %120, i32 %121
  %123 = trunc i32 %121 to i8
  store i8 %123, ptr %122, align 4
  %124 = getelementptr %struct.pl330_thread, ptr %120, i32 %121, i32 3
  store ptr %0, ptr %124, align 4
  %125 = load ptr, ptr %104, align 4
  %126 = load i32, ptr %81, align 4
  %127 = mul i32 %126, %121
  %128 = getelementptr i8, ptr %125, i32 %127
  %129 = getelementptr %struct.pl330_thread, ptr %120, i32 %121, i32 4
  %130 = getelementptr %struct.pl330_thread, ptr %120, i32 %121, i32 4, i32 0, i32 1
  store ptr %128, ptr %130, align 4
  %131 = load i32, ptr %102, align 4
  %132 = load i32, ptr %81, align 4
  %133 = mul i32 %132, %121
  %134 = add i32 %133, %131
  store i32 %134, ptr %129, align 4
  %135 = getelementptr %struct.pl330_thread, ptr %120, i32 %121, i32 4, i32 0, i32 2
  store ptr null, ptr %135, align 4
  %136 = load i32, ptr %81, align 4
  %137 = lshr i32 %136, 1
  %138 = getelementptr i8, ptr %128, i32 %137
  %139 = getelementptr %struct.pl330_thread, ptr %120, i32 %121, i32 4, i32 1
  %140 = getelementptr %struct.pl330_thread, ptr %120, i32 %121, i32 4, i32 1, i32 1
  store ptr %138, ptr %140, align 4
  %141 = load i32, ptr %81, align 4
  %142 = lshr i32 %141, 1
  %143 = add i32 %142, %134
  store i32 %143, ptr %139, align 4
  %144 = getelementptr %struct.pl330_thread, ptr %120, i32 %121, i32 4, i32 1, i32 2
  store ptr null, ptr %144, align 4
  %145 = getelementptr %struct.pl330_thread, ptr %120, i32 %121, i32 6
  store i32 -1, ptr %145, align 4
  %146 = getelementptr %struct.pl330_thread, ptr %120, i32 %121, i32 2
  store i8 1, ptr %146, align 4
  %147 = add nuw nsw i32 %121, 1
  %148 = icmp eq i32 %147, %111
  %149 = load ptr, ptr %115, align 4
  br i1 %148, label %159, label %119

150:                                              ; preds = %108
  %151 = load ptr, ptr %99, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.dmac_alloc_resources, i32 noundef 1930) #12
  %152 = load ptr, ptr %99, align 4
  %153 = load i32, ptr %81, align 4
  %154 = mul i32 %153, %98
  %155 = load ptr, ptr %104, align 4
  %156 = load i32, ptr %102, align 4
  tail call void @dma_free_attrs(ptr noundef %152, i32 noundef %154, ptr noundef %155, i32 noundef %156, i32 noundef 512) #11
  br label %157

157:                                              ; preds = %150, %106
  %158 = load ptr, ptr %99, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.21) #12
  br label %168

159:                                              ; preds = %119, %117
  %160 = phi ptr [ %114, %117 ], [ %149, %119 ]
  %161 = getelementptr %struct.pl330_thread, ptr %160, i32 %111
  %162 = trunc i32 %111 to i8
  store i8 %162, ptr %161, align 4
  %163 = getelementptr %struct.pl330_thread, ptr %160, i32 %111, i32 3
  store ptr %0, ptr %163, align 4
  %164 = getelementptr %struct.pl330_thread, ptr %160, i32 %111, i32 2
  store i8 0, ptr %164, align 4
  %165 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 11
  store ptr %161, ptr %165, align 4
  %166 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 12
  tail call void @tasklet_setup(ptr noundef %166, ptr noundef nonnull @pl330_dotask) #11
  %167 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 14
  store i32 1, ptr %167, align 4
  br label %168

168:                                              ; preds = %159, %157, %74, %6
  %169 = phi i32 [ -22, %6 ], [ -22, %74 ], [ -12, %157 ], [ 0, %159 ]
  ret i32 %169
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @add_desc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 136) #11
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %29, label %7, !prof !28

7:                                                ; preds = %4
  %8 = extractvalue { i32, i1 } %5, 0
  %9 = or i32 %2, 256
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef %9) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i32 [ 0, %15 ], [ %26, %17 ]
  %19 = getelementptr %struct.dma_pl330_desc, ptr %10, i32 %18
  %20 = getelementptr %struct.dma_pl330_desc, ptr %10, i32 %18, i32 3, i32 7
  store i32 0, ptr %20, align 8
  %21 = getelementptr %struct.dma_pl330_desc, ptr %10, i32 %18, i32 3, i32 6
  store i32 0, ptr %21, align 4
  %22 = getelementptr %struct.dma_pl330_desc, ptr %10, i32 %18, i32 3, i32 5
  store i32 0, ptr %22, align 8
  %23 = getelementptr %struct.dma_pl330_desc, ptr %10, i32 %18, i32 1, i32 4
  store ptr @pl330_tx_submit, ptr %23, align 8
  store volatile ptr %19, ptr %19, align 8
  %24 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %19, ptr %24, align 4
  %25 = load ptr, ptr %16, align 4
  store ptr %19, ptr %16, align 4
  store ptr %0, ptr %19, align 8
  store ptr %25, ptr %24, align 4
  store volatile ptr %19, ptr %25, align 4
  %26 = add nuw nsw i32 %18, 1
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %28, label %17

28:                                               ; preds = %17, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %13) #11
  br label %29

29:                                               ; preds = %28, %7, %4
  %30 = phi i32 [ %3, %28 ], [ 0, %7 ], [ 0, %4 ]
  ret i32 %30
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl330_alloc_chan_resources(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = select i1 %2, ptr null, ptr %3
  %5 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pl330_dmac, ptr %6, i32 0, i32 6
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #11
  %9 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 14
  store i8 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.pl330_dmac, ptr %6, i32 0, i32 14
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %61, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.pl330_dmac, ptr %6, i32 0, i32 5, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 21
  %19 = and i32 %18, 15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %61, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.pl330_dmac, ptr %6, i32 0, i32 10
  %23 = getelementptr inbounds %struct.pl330_dmac, ptr %6, i32 0, i32 5, i32 5
  br label %24

24:                                               ; preds = %58, %21
  %25 = phi i32 [ 0, %21 ], [ %59, %58 ]
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr %struct.pl330_thread, ptr %26, i32 %25, i32 2
  %28 = load i8, ptr %27, align 4, !range !19
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %24
  %31 = getelementptr %struct.pl330_thread, ptr %26, i32 %25, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.pl330_dmac, ptr %32, i32 0, i32 5, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i32, ptr %23, align 4
  %39 = shl nuw i32 1, %25
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %37, %30
  %43 = getelementptr inbounds %struct.pl330_dmac, ptr %32, i32 0, i32 5, i32 4
  %44 = load i8, ptr %43, align 4
  %45 = and i8 %44, 63
  %46 = zext i8 %45 to i32
  %47 = icmp eq i8 %45, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %53, %42
  %49 = phi i32 [ %54, %53 ], [ 0, %42 ]
  %50 = getelementptr %struct.pl330_dmac, ptr %32, i32 0, i32 7, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = add nuw nsw i32 %49, 1
  %55 = icmp eq i32 %54, %46
  br i1 %55, label %56, label %48

56:                                               ; preds = %53, %42
  %57 = getelementptr %struct.pl330_thread, ptr %26, i32 %25, i32 1
  store i32 -1, ptr %57, align 4
  br label %58

58:                                               ; preds = %56, %37, %24
  %59 = add nuw nsw i32 %25, 1
  %60 = icmp eq i32 %59, %19
  br i1 %60, label %61, label %24

61:                                               ; preds = %58, %15, %1
  %62 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 7
  store ptr null, ptr %62, align 4
  br label %75

63:                                               ; preds = %48
  %64 = getelementptr %struct.pl330_thread, ptr %26, i32 %25
  %65 = load i8, ptr %64, align 4
  %66 = zext i8 %65 to i32
  store i32 %66, ptr %50, align 4
  %67 = getelementptr %struct.pl330_thread, ptr %26, i32 %25, i32 1
  store i32 %49, ptr %67, align 4
  store i8 0, ptr %27, align 4
  %68 = getelementptr %struct.pl330_thread, ptr %26, i32 %25, i32 5
  store i32 1, ptr %68, align 4
  %69 = getelementptr %struct.pl330_thread, ptr %26, i32 %25, i32 4, i32 0, i32 2
  store ptr null, ptr %69, align 4
  %70 = getelementptr %struct.pl330_thread, ptr %26, i32 %25, i32 4, i32 1, i32 2
  store ptr null, ptr %70, align 4
  %71 = getelementptr %struct.pl330_thread, ptr %26, i32 %25, i32 6
  store i32 -1, ptr %71, align 4
  %72 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 7
  store ptr %64, ptr %72, align 4
  %73 = icmp eq ptr %64, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %63
  tail call void @tasklet_setup(ptr noundef %4, ptr noundef nonnull @pl330_tasklet) #11
  br label %75

75:                                               ; preds = %74, %63, %61
  %76 = phi i32 [ 1, %74 ], [ -12, %61 ], [ -12, %63 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #11
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl330_free_chan_resources(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = select i1 %2, ptr null, ptr %3
  %5 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  tail call void @tasklet_kill(ptr noundef %4) #11
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #11
  %11 = getelementptr inbounds %struct.pl330_dmac, ptr %6, i32 0, i32 6
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #11
  %13 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  tail call fastcc void @pl330_release_channel(ptr noundef %14)
  store ptr null, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 14
  %16 = load i8, ptr %15, align 4, !range !19
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 3
  %20 = load ptr, ptr %5, align 4
  %21 = load volatile ptr, ptr %19, align 4
  %22 = icmp eq ptr %21, %19
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.pl330_dmac, ptr %20, i32 0, i32 1
  %25 = getelementptr inbounds %struct.pl330_dmac, ptr %20, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 3, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %26, ptr %29, align 4
  store ptr %21, ptr %26, align 4
  store ptr %24, ptr %28, align 4
  store ptr %28, ptr %25, align 4
  store volatile ptr %19, ptr %19, align 4
  store ptr %19, ptr %27, align 4
  br label %30

30:                                               ; preds = %23, %18, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #11
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 15
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i64 @ktime_get_mono_fast_ns() #11
  %35 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 11, i32 22
  store volatile i64 %34, ptr %35, align 8
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @__pm_runtime_suspend(ptr noundef %38, i32 noundef 13) #11
  %40 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 12
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %53, label %43

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 15
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 11
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = shl nuw i32 1, %51
  tail call void @dma_unmap_resource(ptr noundef %47, i32 noundef %49, i32 noundef %52, i32 noundef %41, i32 noundef 0) #11
  br label %53

53:                                               ; preds = %43, %30
  store i32 3, ptr %40, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pl330_prep_dma_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = icmp eq ptr %0, null
  %7 = getelementptr i8, ptr %0, i32 -24
  %8 = select i1 %6, ptr null, ptr %7
  %9 = icmp eq ptr %8, null
  %10 = icmp eq i32 %3, 0
  %11 = or i1 %9, %10
  br i1 %11, label %89, label %12, !prof !28

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.dma_pl330_chan, ptr %8, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call fastcc ptr @pl330_get_desc(ptr noundef nonnull %8) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.__pl330_prep_dma_memcpy, i32 noundef 2631) #12
  br label %89

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.dma_pl330_desc, ptr %15, i32 0, i32 2
  %23 = getelementptr inbounds %struct.dma_pl330_desc, ptr %15, i32 0, i32 2, i32 2
  store i32 %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dma_pl330_desc, ptr %15, i32 0, i32 2, i32 1
  store i32 %1, ptr %24, align 4
  store i32 %2, ptr %22, align 4
  %25 = getelementptr inbounds %struct.dma_pl330_desc, ptr %15, i32 0, i32 3
  %26 = load i8, ptr %25, align 4
  %27 = or i8 %26, 3
  store i8 %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.dma_pl330_desc, ptr %15, i32 0, i32 8
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.pl330_dmac, ptr %14, i32 0, i32 5, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 3
  %32 = and i32 %31, 127
  %33 = or i32 %2, %1
  %34 = or i32 %33, %3
  %35 = add nsw i32 %32, -1
  %36 = and i32 %35, %34
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %38, %21
  %39 = phi i32 [ %40, %38 ], [ %32, %21 ]
  %40 = sdiv i32 %39, 2
  %41 = add nsw i32 %40, -1
  %42 = and i32 %41, %34
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %38

44:                                               ; preds = %38, %21
  %45 = phi i32 [ %32, %21 ], [ %40, %38 ]
  %46 = getelementptr inbounds %struct.dma_pl330_desc, ptr %15, i32 0, i32 3, i32 4
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, 31
  br label %49

49:                                               ; preds = %49, %44
  %50 = phi i8 [ %48, %44 ], [ %55, %49 ]
  %51 = lshr i8 %50, 5
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 1, %52
  %54 = icmp eq i32 %45, %53
  %55 = add i8 %50, 32
  br i1 %54, label %56, label %49

56:                                               ; preds = %49
  store i8 %50, ptr %46, align 4
  %57 = getelementptr inbounds %struct.dma_pl330_desc, ptr %15, i32 0, i32 7
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dma_pl330_chan, ptr %58, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.pl330_dmac, ptr %60, i32 0, i32 5, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = lshr i32 %62, 3
  %64 = and i32 %63, 127
  %65 = lshr i32 %62, 10
  %66 = lshr i32 %62, 21
  %67 = trunc i32 %65 to i16
  %68 = and i16 %67, 2047
  %69 = trunc i32 %66 to i16
  %70 = and i16 %69, 15
  %71 = udiv i16 %68, %70
  %72 = zext i16 %71 to i32
  %73 = mul nuw nsw i32 %64, %72
  %74 = lshr i32 %73, %52
  %75 = tail call i32 @llvm.umin.i32(i32 %74, i32 16) #11
  %76 = trunc i32 %75 to i8
  %77 = and i8 %50, -32
  %78 = or i8 %77, %76
  store i8 %78, ptr %46, align 4
  %79 = shl nsw i32 %45, 3
  %80 = load i32, ptr %29, align 4
  %81 = and i32 %80, 1023
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %56
  %84 = or i8 %77, 1
  store i8 %84, ptr %46, align 4
  br label %85

85:                                               ; preds = %83, %56
  %86 = getelementptr inbounds %struct.dma_pl330_desc, ptr %15, i32 0, i32 5
  store i32 %3, ptr %86, align 4
  %87 = getelementptr inbounds %struct.dma_pl330_desc, ptr %15, i32 0, i32 1
  %88 = getelementptr inbounds %struct.dma_pl330_desc, ptr %15, i32 0, i32 1, i32 1
  store i32 %4, ptr %88, align 4
  br label %89

89:                                               ; preds = %85, %17, %5
  %90 = phi ptr [ %87, %85 ], [ null, %5 ], [ null, %17 ]
  ret ptr %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pl330_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = icmp eq ptr %0, null
  %8 = getelementptr i8, ptr %0, i32 -24
  %9 = select i1 %7, ptr null, ptr %8
  %10 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = udiv i32 %2, %3
  %13 = mul i32 %12, %3
  %14 = sub i32 %2, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %182

16:                                               ; preds = %6
  %17 = add i32 %4, -1
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.pl330_prep_dma_cyclic, i32 noundef 2685) #12
  br label %182

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 11
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = shl nuw i32 1, %34
  tail call void @dma_unmap_resource(ptr noundef %30, i32 noundef %32, i32 noundef %35, i32 noundef %24, i32 noundef 0) #11
  br label %36

36:                                               ; preds = %26, %22
  store i32 3, ptr %23, align 4
  switch i32 %4, label %73 [
    i32 1, label %37
    i32 2, label %52
  ]

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 13, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 10
  store i32 %39, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 13, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = tail call i32 @llvm.cttz.i32(i32 %45, i1 true) #11, !range !29
  %49 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 8
  store i32 %48, ptr %49, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 13, i32 6
  br label %67

52:                                               ; preds = %36
  %53 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 13, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 10
  store i32 %54, ptr %57, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 13, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = tail call i32 @llvm.cttz.i32(i32 %60, i1 true) #11, !range !29
  %64 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 8
  store i32 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %62, %58
  %66 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 13, i32 5
  br label %67

67:                                               ; preds = %65, %50
  %68 = phi ptr [ %66, %65 ], [ %51, %50 ]
  %69 = load i32, ptr %68, align 4
  %70 = tail call i32 @llvm.smax.i32(i32 %69, i32 1) #11
  %71 = tail call i32 @llvm.smin.i32(i32 %70, i32 16) #11
  %72 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 9
  store i32 %71, ptr %72, align 4
  br label %73

73:                                               ; preds = %67, %36
  %74 = icmp eq i32 %4, 2
  %75 = select i1 %74, i32 1, i32 3
  %76 = icmp eq i32 %4, 1
  %77 = select i1 %76, i32 2, i32 %75
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %93, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.dma_device, ptr %81, i32 0, i32 15
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 10
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 8
  %87 = load i32, ptr %86, align 4
  store i32 3, ptr %23, align 4
  %88 = shl nuw i32 1, %87
  %89 = tail call i32 @dma_map_resource(ptr noundef %83, i32 noundef %85, i32 noundef %88, i32 noundef %77, i32 noundef 0) #11
  %90 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 11
  store i32 %89, ptr %90, align 4
  %91 = icmp eq i32 %89, -1
  br i1 %91, label %182, label %92

92:                                               ; preds = %79
  store i32 %77, ptr %23, align 4
  br label %93

93:                                               ; preds = %92, %73
  %94 = icmp ugt i32 %3, %2
  br i1 %94, label %182, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 11
  %97 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 8
  %98 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 9
  %99 = call i32 @llvm.umax.i32(i32 %12, i32 1)
  br label %100

100:                                              ; preds = %173, %95
  %101 = phi i32 [ %1, %95 ], [ %175, %173 ]
  %102 = phi i32 [ 0, %95 ], [ %151, %173 ]
  %103 = phi i32 [ 0, %95 ], [ %150, %173 ]
  %104 = phi i32 [ 0, %95 ], [ %176, %173 ]
  %105 = phi ptr [ null, %95 ], [ %174, %173 ]
  %106 = tail call fastcc ptr @pl330_get_desc(ptr noundef %9)
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %136

108:                                              ; preds = %100
  %109 = load ptr, ptr %10, align 4
  %110 = getelementptr inbounds %struct.dma_device, ptr %109, i32 0, i32 15
  %111 = load ptr, ptr %110, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.pl330_prep_dma_cyclic, i32 noundef 2700) #12
  %112 = icmp eq ptr %105, null
  br i1 %112, label %182, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.pl330_dmac, ptr %11, i32 0, i32 2
  %115 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %114) #11
  %116 = load volatile ptr, ptr %105, align 4
  %117 = icmp eq ptr %116, %105
  br i1 %117, label %130, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.pl330_dmac, ptr %11, i32 0, i32 1
  %120 = getelementptr inbounds %struct.pl330_dmac, ptr %11, i32 0, i32 1, i32 1
  br label %121

121:                                              ; preds = %121, %118
  %122 = phi ptr [ %116, %118 ], [ %128, %121 ]
  %123 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = load ptr, ptr %122, align 4
  %126 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  store ptr %124, ptr %126, align 4
  store volatile ptr %125, ptr %124, align 4
  %127 = load ptr, ptr %120, align 4
  store ptr %122, ptr %120, align 4
  store ptr %119, ptr %122, align 4
  store ptr %127, ptr %123, align 4
  store volatile ptr %122, ptr %127, align 4
  %128 = load volatile ptr, ptr %105, align 4
  %129 = icmp eq ptr %128, %105
  br i1 %129, label %130, label %121

130:                                              ; preds = %121, %113
  %131 = getelementptr inbounds %struct.pl330_dmac, ptr %11, i32 0, i32 1
  %132 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  store volatile ptr %105, ptr %133, align 4
  %134 = getelementptr inbounds %struct.pl330_dmac, ptr %11, i32 0, i32 1, i32 1
  %135 = load ptr, ptr %134, align 4
  store ptr %105, ptr %134, align 4
  store ptr %131, ptr %105, align 4
  store ptr %135, ptr %132, align 4
  store volatile ptr %105, ptr %135, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %114, i32 noundef %115) #11
  br label %182

136:                                              ; preds = %100
  switch i32 %4, label %149 [
    i32 1, label %137
    i32 2, label %143
  ]

137:                                              ; preds = %136
  %138 = getelementptr inbounds %struct.dma_pl330_desc, ptr %106, i32 0, i32 3
  %139 = load i8, ptr %138, align 4
  %140 = and i8 %139, -4
  %141 = or i8 %140, 2
  store i8 %141, ptr %138, align 4
  %142 = load i32, ptr %96, align 4
  br label %149

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.dma_pl330_desc, ptr %106, i32 0, i32 3
  %145 = load i8, ptr %144, align 4
  %146 = and i8 %145, -4
  %147 = or i8 %146, 1
  store i8 %147, ptr %144, align 4
  %148 = load i32, ptr %96, align 4
  br label %149

149:                                              ; preds = %143, %137, %136
  %150 = phi i32 [ %103, %136 ], [ %101, %143 ], [ %142, %137 ]
  %151 = phi i32 [ %102, %136 ], [ %148, %143 ], [ %101, %137 ]
  %152 = getelementptr inbounds %struct.dma_pl330_desc, ptr %106, i32 0, i32 8
  store i32 %4, ptr %152, align 4
  %153 = load i32, ptr %97, align 4
  %154 = getelementptr inbounds %struct.dma_pl330_desc, ptr %106, i32 0, i32 3, i32 4
  %155 = trunc i32 %153 to i8
  %156 = load i8, ptr %154, align 4
  %157 = shl i8 %155, 5
  %158 = and i8 %156, 31
  %159 = or i8 %158, %157
  store i8 %159, ptr %154, align 4
  %160 = load i32, ptr %98, align 4
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 31
  %163 = or i8 %162, %157
  store i8 %163, ptr %154, align 4
  %164 = getelementptr inbounds %struct.dma_pl330_desc, ptr %106, i32 0, i32 5
  store i32 %3, ptr %164, align 4
  %165 = getelementptr inbounds %struct.dma_pl330_desc, ptr %106, i32 0, i32 2
  %166 = getelementptr inbounds %struct.dma_pl330_desc, ptr %106, i32 0, i32 2, i32 2
  store i32 %3, ptr %166, align 4
  %167 = getelementptr inbounds %struct.dma_pl330_desc, ptr %106, i32 0, i32 2, i32 1
  store i32 %150, ptr %167, align 4
  store i32 %151, ptr %165, align 4
  %168 = icmp eq ptr %105, null
  br i1 %168, label %173, label %169

169:                                              ; preds = %149
  %170 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %171 = load ptr, ptr %170, align 4
  store ptr %106, ptr %170, align 4
  store ptr %105, ptr %106, align 4
  %172 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  store ptr %171, ptr %172, align 4
  store volatile ptr %106, ptr %171, align 4
  br label %173

173:                                              ; preds = %169, %149
  %174 = phi ptr [ %105, %169 ], [ %106, %149 ]
  %175 = add i32 %101, %3
  %176 = add nuw i32 %104, 1
  %177 = icmp eq i32 %176, %99
  br i1 %177, label %178, label %100

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 14
  store i8 1, ptr %179, align 4
  %180 = getelementptr inbounds %struct.dma_pl330_desc, ptr %106, i32 0, i32 1
  %181 = getelementptr inbounds %struct.dma_pl330_desc, ptr %106, i32 0, i32 1, i32 1
  store i32 %5, ptr %181, align 4
  br label %182

182:                                              ; preds = %178, %130, %108, %93, %79, %19, %6
  %183 = phi ptr [ %180, %178 ], [ null, %19 ], [ null, %6 ], [ null, %108 ], [ null, %130 ], [ null, %79 ], [ null, %93 ]
  ret ptr %183
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl330_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = icmp eq ptr %0, null
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = select i1 %4, ptr null, ptr %5
  %7 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  %11 = icmp eq ptr %2, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  store i32 %10, ptr %2, align 4
  %13 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = icmp sgt i32 %10, %8
  %18 = icmp sge i32 %10, %1
  %19 = icmp slt i32 %8, %1
  br i1 %17, label %22, label %20

20:                                               ; preds = %16
  %21 = or i1 %19, %18
  br i1 %21, label %24, label %25

22:                                               ; preds = %16
  %23 = and i1 %19, %18
  br i1 %23, label %24, label %25

24:                                               ; preds = %22, %20
  br i1 %11, label %147, label %143

25:                                               ; preds = %22, %20
  br i1 %11, label %147, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.dma_pl330_chan, ptr %6, i32 0, i32 6
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #11
  %29 = getelementptr inbounds %struct.dma_pl330_chan, ptr %6, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.pl330_thread, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.pl330_dmac, ptr %32, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %33) #11
  %34 = load ptr, ptr %29, align 4
  %35 = getelementptr inbounds %struct.pl330_thread, ptr %34, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = getelementptr %struct.pl330_thread, ptr %34, i32 0, i32 4, i32 %36, i32 2
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %26
  %42 = phi ptr [ %40, %38 ], [ null, %26 ]
  %43 = getelementptr inbounds %struct.pl330_thread, ptr %34, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.pl330_thread, ptr %34, i32 0, i32 4, i32 %44, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.dma_pl330_chan, ptr %6, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %134, label %50

50:                                               ; preds = %41
  %51 = icmp ne ptr %42, null
  %52 = getelementptr inbounds %struct.dma_pl330_chan, ptr %6, i32 0, i32 5
  %53 = getelementptr inbounds %struct.dma_pl330_desc, ptr %42, i32 0, i32 3
  %54 = getelementptr inbounds %struct.dma_pl330_desc, ptr %42, i32 0, i32 2
  %55 = getelementptr inbounds %struct.dma_pl330_desc, ptr %42, i32 0, i32 2, i32 1
  br label %56

56:                                               ; preds = %127, %50
  %57 = phi ptr [ %48, %50 ], [ %132, %127 ]
  %58 = phi i32 [ 0, %50 ], [ %131, %127 ]
  %59 = getelementptr inbounds %struct.dma_pl330_desc, ptr %57, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.dma_pl330_desc, ptr %57, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  br label %113

65:                                               ; preds = %56
  %66 = icmp eq ptr %57, %42
  %67 = select i1 %51, i1 %66, i1 false
  br i1 %67, label %68, label %106

68:                                               ; preds = %65
  %69 = load ptr, ptr %29, align 4
  %70 = load ptr, ptr %52, align 4
  %71 = getelementptr inbounds %struct.pl330_thread, ptr %69, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.pl330_dmac, ptr %72, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.dma_device, ptr %70, i32 0, i32 15
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 @__pm_runtime_resume(ptr noundef %76, i32 noundef 4) #11
  %78 = load i8, ptr %53, align 4
  %79 = and i8 %78, 2
  %80 = icmp eq i8 %79, 0
  %81 = load i8, ptr %69, align 4
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 5
  br i1 %80, label %88, label %84

84:                                               ; preds = %68
  %85 = add nuw nsw i32 %83, 1024
  %86 = getelementptr i8, ptr %74, i32 %85
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !31
  br label %92

88:                                               ; preds = %68
  %89 = add nuw nsw i32 %83, 1028
  %90 = getelementptr i8, ptr %74, i32 %89
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !32
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi ptr [ %54, %84 ], [ %55, %88 ]
  %94 = phi i32 [ %87, %84 ], [ %91, %88 ]
  %95 = load i32, ptr %93, align 4
  %96 = load ptr, ptr %52, align 4
  %97 = getelementptr inbounds %struct.dma_device, ptr %96, i32 0, i32 15
  %98 = load ptr, ptr %97, align 4
  %99 = tail call i64 @ktime_get_mono_fast_ns() #11
  %100 = getelementptr inbounds %struct.device, ptr %98, i32 0, i32 11, i32 22
  store volatile i64 %99, ptr %100, align 8
  %101 = load ptr, ptr %75, align 4
  %102 = tail call i32 @__pm_runtime_suspend(ptr noundef %101, i32 noundef 13) #11
  %103 = icmp eq i32 %94, 0
  %104 = sub i32 %94, %95
  %105 = select i1 %103, i32 0, i32 %104
  br label %113

106:                                              ; preds = %65
  %107 = icmp ne i32 %60, 2
  %108 = icmp eq ptr %57, %46
  %109 = select i1 %107, i1 true, i1 %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.dma_pl330_desc, ptr %57, i32 0, i32 5
  %112 = load i32, ptr %111, align 4
  br label %113

113:                                              ; preds = %110, %106, %92, %62
  %114 = phi i32 [ %64, %62 ], [ %105, %92 ], [ %112, %110 ], [ 0, %106 ]
  %115 = getelementptr inbounds %struct.dma_pl330_desc, ptr %57, i32 0, i32 5
  %116 = load i32, ptr %115, align 4
  %117 = sub i32 %116, %114
  %118 = add i32 %117, %58
  %119 = getelementptr inbounds %struct.dma_pl330_desc, ptr %57, i32 0, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, %1
  br i1 %121, label %122, label %127

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.dma_pl330_desc, ptr %57, i32 0, i32 4
  %124 = load i32, ptr %123, align 4
  switch i32 %124, label %126 [
    i32 3, label %134
    i32 1, label %125
    i32 2, label %125
  ]

125:                                              ; preds = %122, %122
  br label %134

126:                                              ; preds = %122
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 2450, i32 noundef 9, ptr noundef null) #11
  br label %134

127:                                              ; preds = %113
  %128 = getelementptr inbounds %struct.dma_pl330_desc, ptr %57, i32 0, i32 6
  %129 = load i8, ptr %128, align 4, !range !19
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %130, i32 %118, i32 0
  %132 = load ptr, ptr %57, align 4
  %133 = icmp eq ptr %132, %47
  br i1 %133, label %134, label %56

134:                                              ; preds = %127, %126, %125, %122, %41
  %135 = phi i32 [ %118, %126 ], [ %118, %125 ], [ %118, %122 ], [ 0, %41 ], [ %131, %127 ]
  %136 = phi i32 [ 1, %126 ], [ 1, %125 ], [ 0, %122 ], [ 1, %41 ], [ 1, %127 ]
  %137 = load ptr, ptr %29, align 4
  %138 = getelementptr inbounds %struct.pl330_thread, ptr %137, i32 0, i32 3
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.pl330_dmac, ptr %139, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !33
  %141 = load i16, ptr %140, align 4
  %142 = add i16 %141, 1
  store i16 %142, ptr %140, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !34
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #11
  br label %143

143:                                              ; preds = %134, %24
  %144 = phi i32 [ %135, %134 ], [ 0, %24 ]
  %145 = phi i32 [ %136, %134 ], [ 0, %24 ]
  %146 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %144, ptr %146, align 4
  br label %147

147:                                              ; preds = %143, %25, %24
  %148 = phi i32 [ %145, %143 ], [ 0, %24 ], [ 1, %25 ]
  ret i32 %148
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pl330_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = icmp eq ptr %0, null
  %8 = getelementptr i8, ptr %0, i32 -24
  %9 = select i1 %7, ptr null, ptr %8
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %1, null
  %12 = icmp eq i32 %2, 0
  %13 = or i1 %11, %10
  %14 = or i1 %12, %13
  br i1 %14, label %172, label %15, !prof !28

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = shl nuw i32 1, %27
  tail call void @dma_unmap_resource(ptr noundef %23, i32 noundef %25, i32 noundef %28, i32 noundef %17, i32 noundef 0) #11
  br label %29

29:                                               ; preds = %19, %15
  store i32 3, ptr %16, align 4
  switch i32 %3, label %66 [
    i32 1, label %30
    i32 2, label %45
  ]

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 13, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 10
  store i32 %32, ptr %35, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 13, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @llvm.cttz.i32(i32 %38, i1 true) #11, !range !29
  %42 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 8
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 13, i32 6
  br label %60

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 13, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 10
  store i32 %47, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 13, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = tail call i32 @llvm.cttz.i32(i32 %53, i1 true) #11, !range !29
  %57 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 8
  store i32 %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 13, i32 5
  br label %60

60:                                               ; preds = %58, %43
  %61 = phi ptr [ %59, %58 ], [ %44, %43 ]
  %62 = load i32, ptr %61, align 4
  %63 = tail call i32 @llvm.smax.i32(i32 %62, i32 1) #11
  %64 = tail call i32 @llvm.smin.i32(i32 %63, i32 16) #11
  %65 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 9
  store i32 %64, ptr %65, align 4
  br label %66

66:                                               ; preds = %60, %29
  %67 = add i32 %3, -1
  %68 = icmp ult i32 %67, 3
  br i1 %68, label %69, label %84

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.dma_device, ptr %71, i32 0, i32 15
  %73 = load ptr, ptr %72, align 4
  %74 = sub i32 3, %3
  %75 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 10
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 8
  %78 = load i32, ptr %77, align 4
  store i32 3, ptr %16, align 4
  %79 = shl nuw i32 1, %78
  %80 = tail call i32 @dma_map_resource(ptr noundef %73, i32 noundef %76, i32 noundef %79, i32 noundef %74, i32 noundef 0) #11
  %81 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 11
  store i32 %80, ptr %81, align 4
  %82 = icmp eq i32 %80, -1
  br i1 %82, label %172, label %83

83:                                               ; preds = %69
  store i32 %74, ptr %16, align 4
  br label %84

84:                                               ; preds = %83, %66
  %85 = icmp eq i32 %3, 1
  %86 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 11
  %87 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 8
  %88 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 9
  br label %89

89:                                               ; preds = %141, %84
  %90 = phi i32 [ 0, %84 ], [ %166, %141 ]
  %91 = phi ptr [ %1, %84 ], [ %167, %141 ]
  %92 = phi ptr [ null, %84 ], [ %131, %141 ]
  %93 = tail call fastcc ptr @pl330_get_desc(ptr noundef %9)
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %124

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.dma_pl330_chan, ptr %9, i32 0, i32 5
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.dma_device, ptr %97, i32 0, i32 15
  %99 = load ptr, ptr %98, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.pl330_prep_slave_sg, i32 noundef 2862) #12
  %100 = icmp eq ptr %92, null
  br i1 %100, label %172, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.pl330_dmac, ptr %97, i32 0, i32 2
  %103 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %102) #11
  %104 = load volatile ptr, ptr %92, align 4
  %105 = icmp eq ptr %104, %92
  br i1 %105, label %118, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.pl330_dmac, ptr %97, i32 0, i32 1
  %108 = getelementptr inbounds %struct.pl330_dmac, ptr %97, i32 0, i32 1, i32 1
  br label %109

109:                                              ; preds = %109, %106
  %110 = phi ptr [ %104, %106 ], [ %116, %109 ]
  %111 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %110, align 4
  %114 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  store ptr %112, ptr %114, align 4
  store volatile ptr %113, ptr %112, align 4
  %115 = load ptr, ptr %108, align 4
  store ptr %110, ptr %108, align 4
  store ptr %107, ptr %110, align 4
  store ptr %115, ptr %111, align 4
  store volatile ptr %110, ptr %115, align 4
  %116 = load volatile ptr, ptr %92, align 4
  %117 = icmp eq ptr %116, %92
  br i1 %117, label %118, label %109

118:                                              ; preds = %109, %101
  %119 = getelementptr inbounds %struct.pl330_dmac, ptr %97, i32 0, i32 1
  %120 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  store volatile ptr %92, ptr %121, align 4
  %122 = getelementptr inbounds %struct.pl330_dmac, ptr %97, i32 0, i32 1, i32 1
  %123 = load ptr, ptr %122, align 4
  store ptr %92, ptr %122, align 4
  store ptr %119, ptr %92, align 4
  store ptr %123, ptr %120, align 4
  store volatile ptr %92, ptr %123, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %102, i32 noundef %103) #11
  br label %172

124:                                              ; preds = %89
  %125 = icmp eq ptr %92, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  store ptr %93, ptr %127, align 4
  store ptr %92, ptr %93, align 4
  %129 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  store ptr %128, ptr %129, align 4
  store volatile ptr %93, ptr %128, align 4
  br label %130

130:                                              ; preds = %126, %124
  %131 = phi ptr [ %92, %126 ], [ %93, %124 ]
  %132 = getelementptr inbounds %struct.dma_pl330_desc, ptr %93, i32 0, i32 3
  %133 = load i8, ptr %132, align 4
  %134 = and i8 %133, -4
  br i1 %85, label %135, label %138

135:                                              ; preds = %130
  %136 = or i8 %134, 2
  store i8 %136, ptr %132, align 4
  %137 = getelementptr inbounds %struct.scatterlist, ptr %91, i32 0, i32 3
  br label %141

138:                                              ; preds = %130
  %139 = or i8 %134, 1
  store i8 %139, ptr %132, align 4
  %140 = getelementptr inbounds %struct.scatterlist, ptr %91, i32 0, i32 3
  br label %141

141:                                              ; preds = %138, %135
  %142 = phi ptr [ %86, %135 ], [ %140, %138 ]
  %143 = phi ptr [ %137, %135 ], [ %86, %138 ]
  %144 = load i32, ptr %143, align 4
  %145 = load i32, ptr %142, align 4
  %146 = getelementptr inbounds %struct.scatterlist, ptr %91, i32 0, i32 4
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds %struct.dma_pl330_desc, ptr %93, i32 0, i32 2, i32 2
  store i32 %147, ptr %148, align 4
  %149 = getelementptr inbounds %struct.dma_pl330_desc, ptr %93, i32 0, i32 2, i32 1
  store i32 %145, ptr %149, align 4
  %150 = getelementptr inbounds %struct.dma_pl330_desc, ptr %93, i32 0, i32 2
  store i32 %144, ptr %150, align 4
  %151 = load i32, ptr %87, align 4
  %152 = getelementptr inbounds %struct.dma_pl330_desc, ptr %93, i32 0, i32 3, i32 4
  %153 = trunc i32 %151 to i8
  %154 = load i8, ptr %152, align 4
  %155 = shl i8 %153, 5
  %156 = and i8 %154, 31
  %157 = or i8 %156, %155
  store i8 %157, ptr %152, align 4
  %158 = load i32, ptr %88, align 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 31
  %161 = or i8 %160, %155
  store i8 %161, ptr %152, align 4
  %162 = getelementptr inbounds %struct.dma_pl330_desc, ptr %93, i32 0, i32 8
  store i32 %3, ptr %162, align 4
  %163 = getelementptr inbounds %struct.scatterlist, ptr %91, i32 0, i32 4
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds %struct.dma_pl330_desc, ptr %93, i32 0, i32 5
  store i32 %164, ptr %165, align 4
  %166 = add nuw i32 %90, 1
  %167 = tail call ptr @sg_next(ptr noundef %91) #11
  %168 = icmp eq i32 %166, %2
  br i1 %168, label %169, label %89

169:                                              ; preds = %141
  %170 = getelementptr inbounds %struct.dma_pl330_desc, ptr %93, i32 0, i32 1
  %171 = getelementptr inbounds %struct.dma_pl330_desc, ptr %93, i32 0, i32 1, i32 1
  store i32 %4, ptr %171, align 4
  br label %172

172:                                              ; preds = %169, %118, %95, %69, %6
  %173 = phi ptr [ %170, %169 ], [ null, %6 ], [ null, %95 ], [ null, %118 ], [ null, %69 ]
  ret ptr %173
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pl330_config(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = icmp eq ptr %0, null
  %4 = getelementptr i8, ptr %0, i32 -24
  %5 = select i1 %3, ptr null, ptr %4
  %6 = getelementptr inbounds %struct.dma_pl330_chan, ptr %5, i32 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %6, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl330_pause(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = select i1 %2, ptr null, ptr %3
  %5 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #11
  %10 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 6
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #11
  %12 = getelementptr inbounds %struct.pl330_dmac, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  tail call fastcc void @_stop(ptr noundef %14)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !33
  %15 = load i16, ptr %12, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !34
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #11
  %17 = load ptr, ptr %7, align 4
  %18 = tail call i64 @ktime_get_mono_fast_ns() #11
  %19 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 11, i32 22
  store volatile i64 %18, ptr %19, align 8
  %20 = load ptr, ptr %7, align 4
  %21 = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl330_terminate_all(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = select i1 %2, ptr null, ptr %3
  %5 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #11
  %10 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 6
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #11
  %12 = getelementptr inbounds %struct.pl330_dmac, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  tail call fastcc void @_stop(ptr noundef %14)
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr inbounds %struct.pl330_thread, ptr %15, i32 0, i32 4, i32 0, i32 2
  store ptr null, ptr %16, align 4
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr %struct.pl330_thread, ptr %17, i32 0, i32 4, i32 1, i32 2
  store ptr null, ptr %18, align 4
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr inbounds %struct.pl330_thread, ptr %19, i32 0, i32 6
  store i32 -1, ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !33
  %21 = load i16, ptr %12, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !34
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  %23 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 15
  %24 = load i8, ptr %23, align 1, !range !19
  %25 = icmp eq i8 %24, 0
  store i8 0, ptr %23, align 1
  %26 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %42, label %29

29:                                               ; preds = %36, %1
  %30 = phi ptr [ %40, %36 ], [ %27, %1 ]
  %31 = getelementptr inbounds %struct.dma_pl330_desc, ptr %30, i32 0, i32 4
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dma_pl330_desc, ptr %30, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %36, !prof !28

35:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #11, !srcloc !37
  unreachable

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.dma_pl330_desc, ptr %30, i32 0, i32 1, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dma_chan, ptr %38, i32 0, i32 3
  store i32 %33, ptr %39, align 4
  store i32 0, ptr %32, align 4
  %40 = load ptr, ptr %30, align 4
  %41 = icmp eq ptr %40, %26
  br i1 %41, label %42, label %29

42:                                               ; preds = %36, %1
  %43 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %59, label %46

46:                                               ; preds = %53, %42
  %47 = phi ptr [ %57, %53 ], [ %44, %42 ]
  %48 = getelementptr inbounds %struct.dma_pl330_desc, ptr %47, i32 0, i32 4
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dma_pl330_desc, ptr %47, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %53, !prof !28

52:                                               ; preds = %46
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #11, !srcloc !37
  unreachable

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.dma_pl330_desc, ptr %47, i32 0, i32 1, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.dma_chan, ptr %55, i32 0, i32 3
  store i32 %50, ptr %56, align 4
  store i32 0, ptr %49, align 4
  %57 = load ptr, ptr %47, align 4
  %58 = icmp eq ptr %57, %43
  br i1 %58, label %59, label %46

59:                                               ; preds = %53, %42
  %60 = getelementptr inbounds %struct.pl330_dmac, ptr %6, i32 0, i32 1
  %61 = load volatile ptr, ptr %26, align 4
  %62 = icmp eq ptr %61, %26
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.pl330_dmac, ptr %6, i32 0, i32 1, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 2, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %65, ptr %68, align 4
  store ptr %61, ptr %65, align 4
  store ptr %60, ptr %67, align 4
  store ptr %67, ptr %64, align 4
  store volatile ptr %26, ptr %26, align 4
  store ptr %26, ptr %66, align 4
  br label %69

69:                                               ; preds = %63, %59
  %70 = load volatile ptr, ptr %43, align 4
  %71 = icmp eq ptr %70, %43
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.pl330_dmac, ptr %6, i32 0, i32 1, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 3, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  store ptr %74, ptr %77, align 4
  store ptr %70, ptr %74, align 4
  store ptr %60, ptr %76, align 4
  store ptr %76, ptr %73, align 4
  store volatile ptr %43, ptr %43, align 4
  store ptr %43, ptr %75, align 4
  br label %78

78:                                               ; preds = %72, %69
  %79 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 4
  %80 = load volatile ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %79
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.pl330_dmac, ptr %6, i32 0, i32 1, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 4, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  store ptr %84, ptr %87, align 4
  store ptr %80, ptr %84, align 4
  store ptr %60, ptr %86, align 4
  store ptr %86, ptr %83, align 4
  store volatile ptr %79, ptr %79, align 4
  store ptr %79, ptr %85, align 4
  br label %88

88:                                               ; preds = %82, %78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #11
  %89 = load ptr, ptr %7, align 4
  %90 = tail call i64 @ktime_get_mono_fast_ns() #11
  %91 = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 11, i32 22
  store volatile i64 %90, ptr %91, align 8
  br i1 %25, label %95, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %7, align 4
  %94 = tail call i32 @__pm_runtime_suspend(ptr noundef %93, i32 noundef 13) #11
  br label %95

95:                                               ; preds = %92, %88
  %96 = load ptr, ptr %7, align 4
  %97 = tail call i32 @__pm_runtime_suspend(ptr noundef %96, i32 noundef 13) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl330_issue_pending(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = select i1 %2, ptr null, ptr %3
  %5 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 6
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %7 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 3
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 2
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %14, label %15, !prof !28

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 2478, i32 noundef 9, ptr noundef null) #11
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 15
  store i8 1, ptr %16, align 1
  %17 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @__pm_runtime_resume(ptr noundef %20, i32 noundef 4) #11
  br label %22

22:                                               ; preds = %15, %1
  %23 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 2
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 3, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dma_pl330_chan, ptr %4, i32 0, i32 2, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %28, ptr %31, align 4
  store ptr %24, ptr %28, align 4
  store ptr %7, ptr %30, align 4
  store ptr %30, ptr %27, align 4
  store volatile ptr %23, ptr %23, align 4
  store ptr %23, ptr %29, align 4
  br label %32

32:                                               ; preds = %26, %22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #11
  tail call void @pl330_tasklet(ptr noundef %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @of_dma_pl330_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pl330_dmac, ptr %4, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.pl330_dmac, ptr %4, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.dma_pl330_chan, ptr %18, i32 %12, i32 1
  %20 = tail call ptr @dma_get_slave_channel(ptr noundef %19) #11
  br label %21

21:                                               ; preds = %16, %10, %6, %2
  %22 = phi ptr [ %20, %16 ], [ null, %2 ], [ null, %6 ], [ null, %10 ]
  ret ptr %22
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @init_pl330_debugfs(ptr noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %5, %1 ]
  %11 = tail call ptr @debugfs_create_file(ptr noundef %10, i16 noundef zeroext -32476, ptr noundef null, ptr noundef %0, ptr noundef nonnull @pl330_debugfs_fops) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pl330_del(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 14
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 12
  tail call void @tasklet_kill(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 5, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 31457280
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 10
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %14, %10 ]
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr %struct.pl330_thread, ptr %12, i32 %11
  tail call fastcc void @pl330_release_channel(ptr noundef %13) #11
  %14 = add nuw nsw i32 %11, 1
  %15 = load i32, ptr %4, align 4
  %16 = lshr i32 %15, 21
  %17 = and i32 %16, 15
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %10, label %19

19:                                               ; preds = %10, %1
  %20 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %21) #11
  %22 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %4, align 4
  %25 = lshr i32 %24, 21
  %26 = and i32 %25, 15
  %27 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = mul i32 %26, %28
  %30 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  tail call void @dma_free_attrs(ptr noundef %23, i32 noundef %29, ptr noundef %31, i32 noundef %33, i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_stop(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.pl330_thread, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pl330_dmac, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !38
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.pl330_dmac, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pl330_dmac, ptr %8, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  br label %23

16:                                               ; preds = %1
  %17 = load i8, ptr %0, align 4
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 3
  %20 = add nuw nsw i32 %19, 256
  %21 = getelementptr i8, ptr %10, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  br label %23

23:                                               ; preds = %16, %14
  %24 = phi i32 [ %15, %14 ], [ %22, %16 ]
  %25 = and i32 %24, 15
  %26 = icmp eq i32 %25, 14
  br i1 %26, label %27, label %62

27:                                               ; preds = %23
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr inbounds %struct.pl330_dmac, ptr %28, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %62, label %32

32:                                               ; preds = %58, %27
  %33 = phi ptr [ %61, %58 ], [ %30, %27 ]
  %34 = phi ptr [ %59, %58 ], [ %28, %27 ]
  %35 = getelementptr inbounds %struct.pl330_dmac, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %33, %0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  br label %47

40:                                               ; preds = %32
  %41 = load i8, ptr %0, align 4
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 3
  %44 = add nuw nsw i32 %43, 256
  %45 = getelementptr i8, ptr %36, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  br label %47

47:                                               ; preds = %40, %38
  %48 = phi i32 [ %39, %38 ], [ %46, %40 ]
  %49 = and i32 %48, 15
  switch i32 %49, label %58 [
    i32 14, label %51
    i32 9, label %51
    i32 8, label %50
    i32 7, label %51
    i32 6, label %51
    i32 15, label %62
    i32 5, label %51
  ]

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %50, %47, %47, %47, %47, %47
  %52 = phi i1 [ true, %47 ], [ false, %50 ], [ true, %47 ], [ true, %47 ], [ true, %47 ], [ true, %47 ]
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr inbounds %struct.pl330_dmac, ptr %53, i32 0, i32 11
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %0
  %57 = or i1 %56, %52
  br i1 %57, label %58, label %62

58:                                               ; preds = %51, %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !41
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !42
  %59 = load ptr, ptr %2, align 4
  %60 = getelementptr inbounds %struct.pl330_dmac, ptr %59, i32 0, i32 11
  %61 = load ptr, ptr %60, align 4
  br label %32

62:                                               ; preds = %51, %47, %27, %23
  %63 = load ptr, ptr %2, align 4
  %64 = getelementptr inbounds %struct.pl330_dmac, ptr %63, i32 0, i32 4
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.pl330_dmac, ptr %63, i32 0, i32 11
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  br label %78

71:                                               ; preds = %62
  %72 = load i8, ptr %0, align 4
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 3
  %75 = add nuw nsw i32 %74, 256
  %76 = getelementptr i8, ptr %65, i32 %75
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  br label %78

78:                                               ; preds = %71, %69
  %79 = phi i32 [ %70, %69 ], [ %77, %71 ]
  %80 = and i32 %79, 15
  %81 = icmp eq i32 %80, 9
  %82 = load ptr, ptr %2, align 4
  %83 = getelementptr inbounds %struct.pl330_dmac, ptr %82, i32 0, i32 11
  %84 = load ptr, ptr %83, align 4
  br i1 %81, label %85, label %90

85:                                               ; preds = %78
  %86 = icmp eq ptr %84, %0
  br i1 %86, label %87, label %185

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.pl330_dmac, ptr %82, i32 0, i32 4
  %89 = load ptr, ptr %88, align 4
  br label %94

90:                                               ; preds = %78
  %91 = getelementptr inbounds %struct.pl330_dmac, ptr %82, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %84, %0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90, %87
  %95 = phi ptr [ %89, %87 ], [ %92, %90 ]
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  br label %104

97:                                               ; preds = %90
  %98 = load i8, ptr %0, align 4
  %99 = zext i8 %98 to i32
  %100 = shl nuw nsw i32 %99, 3
  %101 = add nuw nsw i32 %100, 256
  %102 = getelementptr i8, ptr %92, i32 %101
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  br label %104

104:                                              ; preds = %97, %94
  %105 = phi i32 [ %96, %94 ], [ %103, %97 ]
  %106 = and i32 %105, 15
  %107 = icmp eq i32 %106, 8
  %108 = load ptr, ptr %2, align 4
  %109 = getelementptr inbounds %struct.pl330_dmac, ptr %108, i32 0, i32 11
  %110 = load ptr, ptr %109, align 4
  br i1 %107, label %111, label %116

111:                                              ; preds = %104
  %112 = icmp eq ptr %110, %0
  br i1 %112, label %113, label %185

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.pl330_dmac, ptr %108, i32 0, i32 4
  %115 = load ptr, ptr %114, align 4
  br label %120

116:                                              ; preds = %104
  %117 = getelementptr inbounds %struct.pl330_dmac, ptr %108, i32 0, i32 4
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %110, %0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116, %113
  %121 = phi ptr [ %115, %113 ], [ %118, %116 ]
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  br label %130

123:                                              ; preds = %116
  %124 = load i8, ptr %0, align 4
  %125 = zext i8 %124 to i32
  %126 = shl nuw nsw i32 %125, 3
  %127 = add nuw nsw i32 %126, 256
  %128 = getelementptr i8, ptr %118, i32 %127
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  br label %130

130:                                              ; preds = %123, %120
  %131 = phi i32 [ %122, %120 ], [ %129, %123 ]
  %132 = and i32 %131, 15
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %185, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %2, align 4
  %136 = getelementptr inbounds %struct.pl330_dmac, ptr %135, i32 0, i32 11
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, %0
  %139 = getelementptr inbounds %struct.pl330_dmac, ptr %135, i32 0, i32 4
  %140 = load ptr, ptr %139, align 4
  %141 = load i32, ptr @loops_per_jiffy, align 4
  %142 = udiv i32 %141, 1000
  %143 = mul nuw nsw i32 %142, 500
  %144 = getelementptr i8, ptr %140, i32 3328
  br label %145

145:                                              ; preds = %150, %134
  %146 = phi i32 [ %143, %134 ], [ %151, %150 ]
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !43
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %145
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !45
  %151 = add i32 %146, -1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %145

153:                                              ; preds = %145
  %154 = icmp eq i32 %146, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %153, %150
  %156 = load ptr, ptr %2, align 4
  %157 = getelementptr inbounds %struct.dma_device, ptr %156, i32 0, i32 15
  %158 = load ptr, ptr %157, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.17) #12
  br label %170

159:                                              ; preds = %153
  br i1 %138, label %165, label %160

160:                                              ; preds = %159
  %161 = load i8, ptr %0, align 4
  %162 = zext i8 %161 to i32
  %163 = shl nuw nsw i32 %162, 8
  %164 = or i32 %163, 65537
  br label %165

165:                                              ; preds = %160, %159
  %166 = phi i32 [ 65536, %159 ], [ %164, %160 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !46
  tail call void @arm_heavy_mb() #11
  %167 = getelementptr i8, ptr %140, i32 3336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %166) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !47
  tail call void @arm_heavy_mb() #11
  %168 = getelementptr i8, ptr %140, i32 3340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !48
  tail call void @arm_heavy_mb() #11
  %169 = getelementptr i8, ptr %140, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 0) #11, !srcloc !18
  br label %170

170:                                              ; preds = %165, %155
  %171 = getelementptr inbounds %struct.pl330_thread, ptr %0, i32 0, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = shl nuw i32 1, %172
  %174 = and i32 %173, %7
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %170
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !49
  tail call void @arm_heavy_mb() #11
  %177 = load i32, ptr %171, align 4
  %178 = shl nuw i32 1, %177
  %179 = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %178) #11, !srcloc !18
  br label %180

180:                                              ; preds = %176, %170
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !50
  tail call void @arm_heavy_mb() #11
  %181 = load i32, ptr %171, align 4
  %182 = shl nuw i32 1, %181
  %183 = xor i32 %182, -1
  %184 = and i32 %7, %183
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %184) #11, !srcloc !18
  br label %185

185:                                              ; preds = %180, %130, %111, %85
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_start(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.pl330_thread, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pl330_dmac, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pl330_dmac, ptr %3, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  br label %18

11:                                               ; preds = %1
  %12 = load i8, ptr %0, align 4
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 3
  %15 = add nuw nsw i32 %14, 256
  %16 = getelementptr i8, ptr %5, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  br label %18

18:                                               ; preds = %11, %9
  %19 = phi i32 [ %10, %9 ], [ %17, %11 ]
  %20 = and i32 %19, 15
  switch i32 %20, label %235 [
    i32 0, label %139
    i32 14, label %31
    i32 9, label %26
    i32 8, label %21
    i32 15, label %116
  ]

21:                                               ; preds = %18
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.pl330_dmac, ptr %22, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %235, label %117

26:                                               ; preds = %18
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.pl330_dmac, ptr %27, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %235, label %117

31:                                               ; preds = %18
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.pl330_dmac, ptr %32, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %235, label %36

36:                                               ; preds = %64, %31
  %37 = phi ptr [ %67, %64 ], [ %34, %31 ]
  %38 = phi ptr [ %65, %64 ], [ %32, %31 ]
  %39 = getelementptr inbounds %struct.pl330_dmac, ptr %38, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %37, %0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  br label %51

44:                                               ; preds = %36
  %45 = load i8, ptr %0, align 4
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 3
  %48 = add nuw nsw i32 %47, 256
  %49 = getelementptr i8, ptr %40, i32 %48
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  br label %51

51:                                               ; preds = %44, %42
  %52 = phi i32 [ %43, %42 ], [ %50, %44 ]
  %53 = and i32 %52, 15
  switch i32 %53, label %64 [
    i32 14, label %57
    i32 9, label %57
    i32 8, label %56
    i32 7, label %57
    i32 6, label %57
    i32 15, label %54
    i32 5, label %57
  ]

54:                                               ; preds = %51
  %55 = load ptr, ptr %2, align 4
  br label %68

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %51, %51, %51, %51, %51
  %58 = phi i1 [ true, %51 ], [ false, %56 ], [ true, %51 ], [ true, %51 ], [ true, %51 ], [ true, %51 ]
  %59 = load ptr, ptr %2, align 4
  %60 = getelementptr inbounds %struct.pl330_dmac, ptr %59, i32 0, i32 11
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %0
  %63 = or i1 %62, %58
  br i1 %63, label %64, label %68

64:                                               ; preds = %57, %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !51
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !52
  %65 = load ptr, ptr %2, align 4
  %66 = getelementptr inbounds %struct.pl330_dmac, ptr %65, i32 0, i32 11
  %67 = load ptr, ptr %66, align 4
  br label %36

68:                                               ; preds = %57, %54
  %69 = phi ptr [ %55, %54 ], [ %59, %57 ]
  %70 = getelementptr inbounds %struct.pl330_dmac, ptr %69, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.pl330_dmac, ptr %69, i32 0, i32 11
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  br label %84

77:                                               ; preds = %68
  %78 = load i8, ptr %0, align 4
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 3
  %81 = add nuw nsw i32 %80, 256
  %82 = getelementptr i8, ptr %71, i32 %81
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  br label %84

84:                                               ; preds = %77, %75
  %85 = phi i32 [ %76, %75 ], [ %83, %77 ]
  %86 = and i32 %85, 15
  %87 = icmp eq i32 %86, 8
  br i1 %87, label %88, label %116

88:                                               ; preds = %84
  %89 = load ptr, ptr %2, align 4
  %90 = getelementptr inbounds %struct.pl330_dmac, ptr %89, i32 0, i32 11
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %0
  br i1 %92, label %116, label %93

93:                                               ; preds = %112, %88
  %94 = phi ptr [ %115, %112 ], [ %91, %88 ]
  %95 = phi ptr [ %113, %112 ], [ %89, %88 ]
  %96 = getelementptr inbounds %struct.pl330_dmac, ptr %95, i32 0, i32 4
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %94, %0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  br label %108

101:                                              ; preds = %93
  %102 = load i8, ptr %0, align 4
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 3
  %105 = add nuw nsw i32 %104, 256
  %106 = getelementptr i8, ptr %97, i32 %105
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  br label %108

108:                                              ; preds = %101, %99
  %109 = phi i32 [ %100, %99 ], [ %107, %101 ]
  %110 = and i32 %109, 15
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !53
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !54
  %113 = load ptr, ptr %2, align 4
  %114 = getelementptr inbounds %struct.pl330_dmac, ptr %113, i32 0, i32 11
  %115 = load ptr, ptr %114, align 4
  br label %93

116:                                              ; preds = %108, %88, %84, %18
  tail call fastcc void @_stop(ptr noundef %0)
  br label %117

117:                                              ; preds = %116, %26, %21
  br label %118

118:                                              ; preds = %138, %117
  %119 = load ptr, ptr %2, align 4
  %120 = getelementptr inbounds %struct.pl330_dmac, ptr %119, i32 0, i32 4
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.pl330_dmac, ptr %119, i32 0, i32 11
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, %0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  br label %134

127:                                              ; preds = %118
  %128 = load i8, ptr %0, align 4
  %129 = zext i8 %128 to i32
  %130 = shl nuw nsw i32 %129, 3
  %131 = add nuw nsw i32 %130, 256
  %132 = getelementptr i8, ptr %121, i32 %131
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  br label %134

134:                                              ; preds = %127, %125
  %135 = phi i32 [ %126, %125 ], [ %133, %127 ]
  %136 = and i32 %135, 15
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !55
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !56
  br label %118

139:                                              ; preds = %134, %18
  %140 = load ptr, ptr %2, align 4
  %141 = getelementptr inbounds %struct.pl330_dmac, ptr %140, i32 0, i32 4
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.pl330_dmac, ptr %140, i32 0, i32 11
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, %0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  br label %155

148:                                              ; preds = %139
  %149 = load i8, ptr %0, align 4
  %150 = zext i8 %149 to i32
  %151 = shl nuw nsw i32 %150, 3
  %152 = add nuw nsw i32 %151, 256
  %153 = getelementptr i8, ptr %142, i32 %152
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  br label %155

155:                                              ; preds = %148, %146
  %156 = phi i32 [ %147, %146 ], [ %154, %148 ]
  %157 = and i32 %156, 15
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %235

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.pl330_thread, ptr %0, i32 0, i32 5
  %161 = load i32, ptr %160, align 4
  %162 = sub i32 1, %161
  %163 = getelementptr %struct.pl330_thread, ptr %0, i32 0, i32 4, i32 %162, i32 2
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = getelementptr %struct.pl330_thread, ptr %0, i32 0, i32 4, i32 %161, i32 2
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %235, label %170

170:                                              ; preds = %166, %159
  %171 = phi ptr [ %168, %166 ], [ %164, %159 ]
  %172 = phi i32 [ %161, %166 ], [ %162, %159 ]
  %173 = getelementptr %struct.pl330_thread, ptr %0, i32 0, i32 4, i32 %172
  %174 = icmp eq ptr %173, null
  br i1 %174, label %235, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.pl330_thread, ptr %0, i32 0, i32 6
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %172, %177
  br i1 %178, label %235, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.dma_pl330_desc, ptr %171, i32 0, i32 3, i32 1
  %181 = load i8, ptr %180, align 1, !range !19
  %182 = icmp ne i8 %181, 0
  %183 = load ptr, ptr %2, align 4
  %184 = getelementptr inbounds %struct.pl330_dmac, ptr %183, i32 0, i32 5, i32 1
  %185 = load i32, ptr %184, align 4
  %186 = and i32 %185, 1
  %187 = icmp eq i32 %186, 0
  %188 = select i1 %187, i1 true, i1 %182
  br i1 %188, label %192, label %189

189:                                              ; preds = %179
  %190 = getelementptr inbounds %struct.dma_device, ptr %183, i32 0, i32 15
  %191 = load ptr, ptr %190, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %191, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__._trigger, i32 noundef 1035) #12
  br label %192

192:                                              ; preds = %189, %179
  %193 = load i8, ptr %0, align 4
  %194 = load i32, ptr %173, align 4
  %195 = shl nuw nsw i8 %181, 1
  %196 = or i8 %195, -96
  %197 = and i8 %193, 7
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !57
  tail call void @arm_heavy_mb() #11
  %198 = getelementptr i8, ptr %142, i32 32
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %198) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !58
  %200 = getelementptr inbounds %struct.pl330_thread, ptr %0, i32 0, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = shl nuw i32 1, %201
  %203 = or i32 %202, %199
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %203) #11, !srcloc !18
  %204 = load ptr, ptr %2, align 4
  %205 = getelementptr inbounds %struct.pl330_dmac, ptr %204, i32 0, i32 4
  %206 = load ptr, ptr %205, align 4
  %207 = load i32, ptr @loops_per_jiffy, align 4
  %208 = udiv i32 %207, 1000
  %209 = mul nuw nsw i32 %208, 500
  %210 = getelementptr i8, ptr %206, i32 3328
  br label %211

211:                                              ; preds = %216, %192
  %212 = phi i32 [ %209, %192 ], [ %217, %216 ]
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %210) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !43
  %214 = and i32 %213, 1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %211
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !45
  %217 = add i32 %212, -1
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %221, label %211

219:                                              ; preds = %211
  %220 = icmp eq i32 %212, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %219, %216
  %222 = load ptr, ptr %2, align 4
  %223 = getelementptr inbounds %struct.dma_device, ptr %222, i32 0, i32 15
  %224 = load ptr, ptr %223, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %224, ptr noundef nonnull @.str.17) #12
  br label %234

225:                                              ; preds = %219
  %226 = zext i8 %196 to i32
  %227 = shl nuw nsw i32 %226, 16
  %228 = zext i8 %197 to i32
  %229 = shl nuw nsw i32 %228, 24
  %230 = or i32 %229, %227
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !46
  tail call void @arm_heavy_mb() #11
  %231 = getelementptr i8, ptr %206, i32 3336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %230) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !47
  tail call void @arm_heavy_mb() #11
  %232 = getelementptr i8, ptr %206, i32 3340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %194) #11, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !48
  tail call void @arm_heavy_mb() #11
  %233 = getelementptr i8, ptr %206, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 0) #11, !srcloc !18
  br label %234

234:                                              ; preds = %225, %221
  store i32 %172, ptr %176, align 4
  br label %235

235:                                              ; preds = %234, %175, %170, %166, %155, %31, %26, %21, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl330_dotask(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -148
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #11
  %4 = getelementptr i8, ptr %0, i32 24
  %5 = load i8, ptr %4, align 4, !range !19
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 28
  store i32 2, ptr %8, align 4
  %9 = getelementptr i8, ptr %0, i32 25
  store i8 1, ptr %9, align 1
  store i8 0, ptr %4, align 4
  br label %17

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 25
  %12 = load i8, ptr %11, align 1, !range !19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %0, i32 -164
  %16 = load i32, ptr %15, align 4
  br label %29

17:                                               ; preds = %10, %7
  %18 = getelementptr i8, ptr %0, i32 25
  %19 = getelementptr i8, ptr %0, i32 -4
  %20 = load ptr, ptr %19, align 4
  tail call fastcc void @_stop(ptr noundef %20)
  %21 = getelementptr i8, ptr %0, i32 -164
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 21
  %24 = and i32 %23, 15
  %25 = shl nsw i32 -1, %24
  %26 = trunc i32 %25 to i8
  %27 = xor i8 %26, -1
  %28 = getelementptr i8, ptr %0, i32 26
  store i8 %27, ptr %28, align 2
  store i8 0, ptr %18, align 1
  br label %29

29:                                               ; preds = %17, %14
  %30 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %31 = getelementptr i8, ptr %0, i32 -164
  %32 = and i32 %30, 31457280
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %107, label %34

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %0, i32 26
  %36 = getelementptr i8, ptr %0, i32 -8
  %37 = getelementptr i8, ptr %0, i32 -176
  %38 = load i8, ptr %35, align 2
  br label %39

39:                                               ; preds = %99, %34
  %40 = phi i32 [ %30, %34 ], [ %100, %99 ]
  %41 = phi i8 [ %38, %34 ], [ %101, %99 ]
  %42 = phi i32 [ %3, %34 ], [ %102, %99 ]
  %43 = phi i32 [ 0, %34 ], [ %103, %99 ]
  %44 = zext i8 %41 to i32
  %45 = shl nuw i32 1, %43
  %46 = and i32 %45, %44
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %99, label %48

48:                                               ; preds = %39
  %49 = load ptr, ptr %36, align 4
  %50 = getelementptr %struct.pl330_thread, ptr %49, i32 %43
  %51 = load ptr, ptr %37, align 4
  tail call fastcc void @_stop(ptr noundef %50)
  %52 = getelementptr i8, ptr %51, i32 52
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !59
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %42) #11
  %54 = getelementptr %struct.pl330_thread, ptr %49, i32 %43, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = sub i32 1, %55
  %57 = getelementptr %struct.pl330_thread, ptr %49, i32 %43, i32 4, i32 %56, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.dma_pl330_desc, ptr %58, i32 0, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.dma_pl330_chan, ptr %62, i32 0, i32 6
  %66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %65) #11
  %67 = getelementptr inbounds %struct.dma_pl330_desc, ptr %58, i32 0, i32 4
  store i32 3, ptr %67, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %65, i32 noundef %66) #11
  %68 = getelementptr inbounds %struct.tasklet_struct, ptr %62, i32 0, i32 1
  %69 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %68) #11
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  tail call void @__tasklet_schedule(ptr noundef nonnull %62) #11
  br label %72

72:                                               ; preds = %71, %64, %60, %48
  %73 = load i32, ptr %54, align 4
  %74 = getelementptr %struct.pl330_thread, ptr %49, i32 %43, i32 4, i32 %73, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %89, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.dma_pl330_desc, ptr %75, i32 0, i32 7
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.dma_pl330_chan, ptr %79, i32 0, i32 6
  %83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %82) #11
  %84 = getelementptr inbounds %struct.dma_pl330_desc, ptr %75, i32 0, i32 4
  store i32 3, ptr %84, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %82, i32 noundef %83) #11
  %85 = getelementptr inbounds %struct.tasklet_struct, ptr %79, i32 0, i32 1
  %86 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %85) #11
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  tail call void @__tasklet_schedule(ptr noundef nonnull %79) #11
  br label %89

89:                                               ; preds = %88, %81, %77, %72
  %90 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #11
  %91 = getelementptr %struct.pl330_thread, ptr %49, i32 %43, i32 4, i32 0, i32 2
  store ptr null, ptr %91, align 4
  %92 = getelementptr %struct.pl330_thread, ptr %49, i32 %43, i32 4, i32 1, i32 2
  store ptr null, ptr %92, align 4
  %93 = getelementptr %struct.pl330_thread, ptr %49, i32 %43, i32 6
  store i32 -1, ptr %93, align 4
  %94 = load i8, ptr %35, align 2
  %95 = trunc i32 %45 to i8
  %96 = xor i8 %95, -1
  %97 = and i8 %94, %96
  store i8 %97, ptr %35, align 2
  %98 = load i32, ptr %31, align 4
  br label %99

99:                                               ; preds = %89, %39
  %100 = phi i32 [ %98, %89 ], [ %40, %39 ]
  %101 = phi i8 [ %97, %89 ], [ %41, %39 ]
  %102 = phi i32 [ %90, %89 ], [ %42, %39 ]
  %103 = add nuw nsw i32 %43, 1
  %104 = lshr i32 %100, 21
  %105 = and i32 %104, 15
  %106 = icmp ult i32 %103, %105
  br i1 %106, label %39, label %107

107:                                              ; preds = %99, %29
  %108 = phi i32 [ %3, %29 ], [ %102, %99 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %108) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl330_tx_submit(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -24
  %7 = select i1 %5, ptr null, ptr %6
  %8 = getelementptr inbounds %struct.dma_pl330_chan, ptr %7, i32 0, i32 6
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #11
  %10 = load volatile ptr, ptr %2, align 4
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %43, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.dma_pl330_chan, ptr %7, i32 0, i32 14
  %14 = getelementptr i8, ptr %0, i32 24
  %15 = getelementptr i8, ptr %0, i32 32
  %16 = getelementptr inbounds %struct.dma_pl330_chan, ptr %7, i32 0, i32 2
  %17 = getelementptr inbounds %struct.dma_pl330_chan, ptr %7, i32 0, i32 2, i32 1
  br label %18

18:                                               ; preds = %27, %12
  %19 = phi ptr [ %10, %12 ], [ %41, %27 ]
  %20 = load i8, ptr %13, align 4, !range !19
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr inbounds %struct.dma_pl330_desc, ptr %19, i32 0, i32 1, i32 6
  store ptr %23, ptr %24, align 4
  %25 = load ptr, ptr %15, align 4
  %26 = getelementptr inbounds %struct.dma_pl330_desc, ptr %19, i32 0, i32 1, i32 8
  store ptr %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = getelementptr inbounds %struct.dma_pl330_desc, ptr %19, i32 0, i32 6
  store i8 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.dma_pl330_desc, ptr %19, i32 0, i32 1
  %30 = getelementptr inbounds %struct.dma_pl330_desc, ptr %19, i32 0, i32 1, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dma_chan, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 1) #11
  store i32 %35, ptr %32, align 4
  store i32 %35, ptr %29, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %19, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %37, ptr %39, align 4
  store volatile ptr %38, ptr %37, align 4
  %40 = load ptr, ptr %17, align 4
  store ptr %19, ptr %17, align 4
  store ptr %16, ptr %19, align 4
  store ptr %40, ptr %36, align 4
  store volatile ptr %19, ptr %40, align 4
  %41 = load volatile ptr, ptr %2, align 4
  %42 = icmp eq ptr %41, %2
  br i1 %42, label %43, label %18

43:                                               ; preds = %27, %1
  %44 = getelementptr i8, ptr %0, i32 104
  store i8 1, ptr %44, align 4
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds %struct.dma_chan, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  %49 = tail call i32 @llvm.smax.i32(i32 %48, i32 1) #11
  store i32 %49, ptr %46, align 4
  store i32 %49, ptr %0, align 4
  %50 = getelementptr inbounds %struct.dma_pl330_chan, ptr %7, i32 0, i32 2
  %51 = getelementptr inbounds %struct.dma_pl330_chan, ptr %7, i32 0, i32 2, i32 1
  %52 = load ptr, ptr %51, align 4
  store ptr %2, ptr %51, align 4
  store ptr %50, ptr %2, align 4
  %53 = getelementptr i8, ptr %0, i32 -4
  store ptr %52, ptr %53, align 4
  store volatile ptr %2, ptr %52, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #11
  ret i32 %49
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl330_tasklet(ptr noundef %0) #2 {
  %2 = alloca %struct.dmaengine_result, align 8
  %3 = alloca %struct._xfer_spec, align 8
  %4 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 6
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %187, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 14
  %11 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 4, i32 1
  br label %13

13:                                               ; preds = %38, %9
  %14 = phi ptr [ %7, %9 ], [ %15, %38 ]
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dma_pl330_desc, ptr %14, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %38

19:                                               ; preds = %13
  %20 = load i8, ptr %10, align 4, !range !19
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.dma_pl330_desc, ptr %14, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %27, !prof !28

26:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #11, !srcloc !37
  unreachable

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.dma_pl330_desc, ptr %14, i32 0, i32 1, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dma_chan, ptr %29, i32 0, i32 3
  store i32 %24, ptr %30, align 4
  store i32 0, ptr %23, align 4
  %31 = load ptr, ptr %14, align 4
  br label %32

32:                                               ; preds = %27, %19
  %33 = phi ptr [ %31, %27 ], [ %15, %19 ]
  %34 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %33, ptr %35, align 4
  %37 = load ptr, ptr %12, align 4
  store ptr %14, ptr %12, align 4
  store ptr %11, ptr %14, align 4
  store ptr %37, ptr %34, align 4
  store volatile ptr %14, ptr %37, align 4
  br label %38

38:                                               ; preds = %32, %13
  %39 = icmp eq ptr %15, %6
  br i1 %39, label %40, label %13

40:                                               ; preds = %38
  %41 = load ptr, ptr %6, align 4
  %42 = icmp eq ptr %41, %6
  br i1 %42, label %187, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 7
  %45 = getelementptr inbounds %struct._xfer_spec, ptr %3, i32 0, i32 1
  %46 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 5
  %47 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 1
  br label %48

48:                                               ; preds = %184, %43
  %49 = phi ptr [ %41, %43 ], [ %185, %184 ]
  %50 = getelementptr inbounds %struct.dma_pl330_desc, ptr %49, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %184, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %44, align 4
  %55 = getelementptr inbounds %struct.pl330_thread, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %57 = getelementptr inbounds %struct.dma_pl330_desc, ptr %49, i32 0, i32 8
  %58 = load i32, ptr %57, align 4
  %59 = icmp ult i32 %58, 3
  br i1 %59, label %60, label %169

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.pl330_dmac, ptr %56, i32 0, i32 14
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.pl330_dmac, ptr %56, i32 0, i32 13, i32 2
  %66 = load i8, ptr %65, align 2
  %67 = zext i8 %66 to i32
  %68 = load i8, ptr %54, align 4
  %69 = zext i8 %68 to i32
  %70 = shl nuw i32 1, %69
  %71 = and i32 %70, %67
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %64, %60
  %74 = getelementptr inbounds %struct.dma_device, ptr %56, i32 0, i32 15
  %75 = load ptr, ptr %74, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.pl330_submit_req, i32 noundef 1495) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %187

76:                                               ; preds = %64
  %77 = icmp eq i32 %58, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.dma_pl330_desc, ptr %49, i32 0, i32 9
  %80 = load i8, ptr %79, align 4
  %81 = and i8 %80, 31
  %82 = zext i8 %81 to i32
  %83 = getelementptr inbounds %struct.pl330_dmac, ptr %56, i32 0, i32 5, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = lshr i32 %84, 25
  %86 = and i32 %85, 63
  %87 = icmp ugt i32 %86, %82
  br i1 %87, label %91, label %88

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.dma_device, ptr %56, i32 0, i32 15
  %90 = load ptr, ptr %89, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %90, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.pl330_submit_req, i32 noundef 1504, i32 noundef %82) #12
  br label %169

91:                                               ; preds = %78, %76
  %92 = getelementptr inbounds %struct.pl330_dmac, ptr %56, i32 0, i32 6
  %93 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %92) #11
  %94 = getelementptr inbounds %struct.pl330_thread, ptr %54, i32 0, i32 4, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %91
  %98 = getelementptr %struct.pl330_thread, ptr %54, i32 0, i32 4, i32 1, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %170

101:                                              ; preds = %97, %91
  %102 = load ptr, ptr %55, align 4
  %103 = getelementptr inbounds %struct.pl330_dmac, ptr %102, i32 0, i32 5, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i8
  %109 = getelementptr inbounds %struct.dma_pl330_desc, ptr %49, i32 0, i32 3, i32 1
  store i8 %108, ptr %109, align 1
  %110 = getelementptr inbounds %struct.dma_pl330_desc, ptr %49, i32 0, i32 3
  %111 = load i8, ptr %110, align 4
  %112 = lshr i8 %111, 1
  %113 = and i8 %112, 1
  %114 = zext i8 %113 to i32
  %115 = and i8 %111, 1
  %116 = zext i8 %115 to i32
  %117 = shl nuw nsw i32 %116, 14
  %118 = or i32 %117, %114
  %119 = getelementptr inbounds %struct.dma_pl330_desc, ptr %49, i32 0, i32 3, i32 2
  %120 = load i8, ptr %119, align 2, !range !19
  %121 = icmp eq i8 %120, 0
  %122 = or i32 %118, 4194560
  %123 = select i1 %121, i32 %118, i32 %122
  %124 = or i32 %123, 8389120
  %125 = select i1 %106, i32 %123, i32 %124
  %126 = getelementptr inbounds %struct.dma_pl330_desc, ptr %49, i32 0, i32 3, i32 3
  %127 = load i8, ptr %126, align 1, !range !19
  %128 = icmp eq i8 %127, 0
  %129 = or i32 %125, 16778240
  %130 = select i1 %128, i32 %125, i32 %129
  %131 = getelementptr inbounds %struct.dma_pl330_desc, ptr %49, i32 0, i32 3, i32 4
  %132 = load i8, ptr %131, align 4
  %133 = add i8 %132, 15
  %134 = and i8 %133, 15
  %135 = zext i8 %134 to i32
  %136 = shl nuw nsw i32 %135, 4
  %137 = shl nuw nsw i32 %135, 18
  %138 = lshr i8 %132, 5
  %139 = zext i8 %138 to i32
  %140 = shl nuw nsw i32 %139, 1
  %141 = shl nuw nsw i32 %139, 15
  %142 = getelementptr inbounds %struct.dma_pl330_desc, ptr %49, i32 0, i32 3, i32 6
  %143 = load i32, ptr %142, align 4
  %144 = shl i32 %143, 11
  %145 = getelementptr inbounds %struct.dma_pl330_desc, ptr %49, i32 0, i32 3, i32 5
  %146 = load i32, ptr %145, align 4
  %147 = shl i32 %146, 25
  %148 = getelementptr inbounds %struct.dma_pl330_desc, ptr %49, i32 0, i32 3, i32 7
  %149 = load i32, ptr %148, align 4
  %150 = shl i32 %149, 28
  %151 = or i32 %140, %144
  %152 = or i32 %147, %141
  %153 = or i32 %152, %151
  %154 = or i32 %153, %136
  %155 = or i32 %150, %137
  %156 = or i32 %154, %155
  %157 = or i32 %156, %130
  %158 = load ptr, ptr %94, align 4
  %159 = icmp ne ptr %158, null
  %160 = zext i1 %159 to i32
  store i32 %157, ptr %3, align 8
  store ptr %49, ptr %45, align 4
  %161 = call fastcc i32 @_setup_req(ptr noundef %56, i32 noundef 1, ptr noundef %54, i32 noundef %160, ptr noundef nonnull %3) #11
  %162 = getelementptr inbounds %struct.pl330_dmac, ptr %56, i32 0, i32 3
  %163 = load i32, ptr %162, align 4
  %164 = lshr i32 %163, 1
  %165 = icmp ugt i32 %161, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %101
  %167 = getelementptr inbounds %struct.dma_device, ptr %56, i32 0, i32 15
  %168 = load ptr, ptr %167, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %168, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.pl330_submit_req, i32 noundef 1533, i32 noundef %161, i32 noundef %164) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %92, i32 noundef %93) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %175

169:                                              ; preds = %88, %53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %175

170:                                              ; preds = %97
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %92, i32 noundef %93) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %187

171:                                              ; preds = %101
  %172 = getelementptr inbounds %struct.pl330_thread, ptr %54, i32 0, i32 5
  store i32 %160, ptr %172, align 4
  %173 = getelementptr %struct.pl330_thread, ptr %54, i32 0, i32 4, i32 %160, i32 2
  store ptr %49, ptr %173, align 4
  %174 = call fastcc i32 @_setup_req(ptr noundef %56, i32 noundef 0, ptr noundef %54, i32 noundef %160, ptr noundef nonnull %3) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %92, i32 noundef %93) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  store i32 2, ptr %50, align 4
  br label %184

175:                                              ; preds = %169, %166
  store i32 3, ptr %50, align 4
  %176 = load ptr, ptr %46, align 4
  %177 = getelementptr inbounds %struct.dma_device, ptr %176, i32 0, i32 15
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.dma_pl330_desc, ptr %49, i32 0, i32 1
  %180 = load i32, ptr %179, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.fill_queue, i32 noundef 2057, i32 noundef %180) #12
  %181 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %47) #11
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %175
  tail call void @__tasklet_schedule(ptr noundef %0) #11
  br label %184

184:                                              ; preds = %183, %175, %171, %48
  %185 = load ptr, ptr %49, align 4
  %186 = icmp eq ptr %185, %6
  br i1 %186, label %187, label %48

187:                                              ; preds = %184, %170, %73, %40, %1
  %188 = load volatile ptr, ptr %6, align 4
  %189 = icmp eq ptr %188, %6
  %190 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 7
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.pl330_thread, ptr %191, i32 0, i32 3
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.pl330_dmac, ptr %193, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %194) #11
  %195 = load ptr, ptr %190, align 4
  br i1 %189, label %196, label %204

196:                                              ; preds = %187
  tail call fastcc void @_stop(ptr noundef %195)
  %197 = load ptr, ptr %190, align 4
  %198 = getelementptr inbounds %struct.pl330_thread, ptr %197, i32 0, i32 3
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.pl330_dmac, ptr %199, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !33
  %201 = load i16, ptr %200, align 4
  %202 = add i16 %201, 1
  store i16 %202, ptr %200, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !34
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  %203 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 15
  store i8 0, ptr %203, align 1
  br label %211

204:                                              ; preds = %187
  tail call fastcc void @_start(ptr noundef %195)
  %205 = load ptr, ptr %190, align 4
  %206 = getelementptr inbounds %struct.pl330_thread, ptr %205, i32 0, i32 3
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.pl330_dmac, ptr %207, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !33
  %209 = load i16, ptr %208, align 4
  %210 = add i16 %209, 1
  store i16 %210, ptr %208, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !34
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  br label %211

211:                                              ; preds = %204, %196
  %212 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 4
  %213 = load volatile ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, %212
  br i1 %214, label %282, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 14
  %217 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 3, i32 1
  %218 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 15
  %219 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 7
  %220 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 5
  br label %221

221:                                              ; preds = %278, %215
  %222 = phi ptr [ %213, %215 ], [ %280, %278 ]
  %223 = phi i32 [ %5, %215 ], [ %279, %278 ]
  %224 = phi i1 [ %189, %215 ], [ %262, %278 ]
  %225 = getelementptr inbounds %struct.dma_pl330_desc, ptr %222, i32 0, i32 1, i32 6
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr inbounds %struct.dma_pl330_desc, ptr %222, i32 0, i32 1, i32 7
  %228 = load ptr, ptr %227, align 4
  %229 = getelementptr inbounds %struct.dma_pl330_desc, ptr %222, i32 0, i32 1, i32 8
  %230 = load ptr, ptr %229, align 4
  %231 = load i8, ptr %216, align 4, !range !19
  %232 = icmp eq i8 %231, 0
  %233 = getelementptr inbounds %struct.dma_pl330_desc, ptr %222, i32 0, i32 4
  br i1 %232, label %252, label %234

234:                                              ; preds = %221
  store i32 1, ptr %233, align 4
  %235 = getelementptr inbounds %struct.list_head, ptr %222, i32 0, i32 1
  %236 = load ptr, ptr %235, align 4
  %237 = load ptr, ptr %222, align 4
  %238 = getelementptr inbounds %struct.list_head, ptr %237, i32 0, i32 1
  store ptr %236, ptr %238, align 4
  store volatile ptr %237, ptr %236, align 4
  %239 = load ptr, ptr %217, align 4
  store ptr %222, ptr %217, align 4
  store ptr %6, ptr %222, align 4
  store ptr %239, ptr %235, align 4
  store volatile ptr %222, ptr %239, align 4
  br i1 %224, label %240, label %261

240:                                              ; preds = %234
  store i8 1, ptr %218, align 1
  %241 = load ptr, ptr %219, align 4
  %242 = getelementptr inbounds %struct.pl330_thread, ptr %241, i32 0, i32 3
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.pl330_dmac, ptr %243, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %244) #11
  %245 = load ptr, ptr %219, align 4
  call fastcc void @_start(ptr noundef %245)
  %246 = load ptr, ptr %219, align 4
  %247 = getelementptr inbounds %struct.pl330_thread, ptr %246, i32 0, i32 3
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr inbounds %struct.pl330_dmac, ptr %248, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !33
  %250 = load i16, ptr %249, align 4
  %251 = add i16 %250, 1
  store i16 %251, ptr %249, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !34
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !35
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  br label %261

252:                                              ; preds = %221
  store i32 0, ptr %233, align 4
  %253 = load ptr, ptr %220, align 4
  %254 = getelementptr inbounds %struct.pl330_dmac, ptr %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.list_head, ptr %222, i32 0, i32 1
  %256 = load ptr, ptr %255, align 4
  %257 = load ptr, ptr %222, align 4
  %258 = getelementptr inbounds %struct.list_head, ptr %257, i32 0, i32 1
  store ptr %256, ptr %258, align 4
  store volatile ptr %257, ptr %256, align 4
  %259 = getelementptr inbounds %struct.pl330_dmac, ptr %253, i32 0, i32 1, i32 1
  %260 = load ptr, ptr %259, align 4
  store ptr %222, ptr %259, align 4
  store ptr %254, ptr %222, align 4
  store ptr %260, ptr %255, align 4
  store volatile ptr %222, ptr %260, align 4
  br label %261

261:                                              ; preds = %252, %240, %234
  %262 = phi i1 [ false, %240 ], [ false, %234 ], [ %224, %252 ]
  %263 = getelementptr inbounds %struct.dma_pl330_desc, ptr %222, i32 0, i32 1, i32 9
  %264 = load ptr, ptr %263, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %267, label %266

266:                                              ; preds = %261
  call void @dmaengine_unmap_put(ptr noundef nonnull %264) #11
  store ptr null, ptr %263, align 4
  br label %267

267:                                              ; preds = %266, %261
  %268 = icmp eq ptr %226, null
  br i1 %268, label %269, label %272

269:                                              ; preds = %267
  %270 = icmp eq ptr %228, null
  br i1 %270, label %278, label %271

271:                                              ; preds = %269
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %223) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 0, ptr %2, align 8
  br label %274

272:                                              ; preds = %267
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %223) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 0, ptr %2, align 8
  %273 = icmp eq ptr %228, null
  br i1 %273, label %275, label %274

274:                                              ; preds = %272, %271
  call void %228(ptr noundef %230, ptr noundef nonnull %2) #11
  br label %276

275:                                              ; preds = %272
  call void %226(ptr noundef %230) #11
  br label %276

276:                                              ; preds = %275, %274
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  %277 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  br label %278

278:                                              ; preds = %276, %269
  %279 = phi i32 [ %277, %276 ], [ %223, %269 ]
  %280 = load volatile ptr, ptr %212, align 4
  %281 = icmp eq ptr %280, %212
  br i1 %281, label %282, label %221

282:                                              ; preds = %278, %211
  %283 = phi i1 [ %189, %211 ], [ %262, %278 ]
  %284 = phi i32 [ %5, %211 ], [ %279, %278 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %284) #11
  br i1 %283, label %285, label %296

285:                                              ; preds = %282
  %286 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 5
  %287 = load ptr, ptr %286, align 4
  %288 = getelementptr inbounds %struct.dma_device, ptr %287, i32 0, i32 15
  %289 = load ptr, ptr %288, align 4
  %290 = call i64 @ktime_get_mono_fast_ns() #11
  %291 = getelementptr inbounds %struct.device, ptr %289, i32 0, i32 11, i32 22
  store volatile i64 %290, ptr %291, align 8
  %292 = load ptr, ptr %286, align 4
  %293 = getelementptr inbounds %struct.dma_device, ptr %292, i32 0, i32 15
  %294 = load ptr, ptr %293, align 4
  %295 = call i32 @__pm_runtime_suspend(ptr noundef %294, i32 noundef 13) #11
  br label %296

296:                                              ; preds = %285, %282
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_setup_req(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #2 {
  %6 = getelementptr %struct.pl330_thread, ptr %2, i32 0, i32 4, i32 %3, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._xfer_spec, ptr %4, i32 0, i32 1
  br label %57

11:                                               ; preds = %5
  %12 = load i32, ptr %4, align 4
  store i8 -68, ptr %7, align 1
  %13 = getelementptr i8, ptr %7, i32 1
  store i8 1, ptr %13, align 1
  %14 = trunc i32 %12 to i8
  %15 = getelementptr i8, ptr %7, i32 2
  store i8 %14, ptr %15, align 1
  %16 = lshr i32 %12, 8
  %17 = trunc i32 %16 to i8
  %18 = getelementptr i8, ptr %7, i32 3
  store i8 %17, ptr %18, align 1
  %19 = lshr i32 %12, 16
  %20 = trunc i32 %19 to i8
  %21 = getelementptr i8, ptr %7, i32 4
  store i8 %20, ptr %21, align 1
  %22 = lshr i32 %12, 24
  %23 = trunc i32 %22 to i8
  %24 = getelementptr i8, ptr %7, i32 5
  store i8 %23, ptr %24, align 1
  %25 = getelementptr i8, ptr %7, i32 6
  %26 = getelementptr inbounds %struct._xfer_spec, ptr %4, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dma_pl330_desc, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  store i8 -68, ptr %25, align 1
  %30 = getelementptr i8, ptr %7, i32 7
  store i8 0, ptr %30, align 1
  %31 = trunc i32 %29 to i8
  %32 = getelementptr i8, ptr %7, i32 8
  store i8 %31, ptr %32, align 1
  %33 = lshr i32 %29, 8
  %34 = trunc i32 %33 to i8
  %35 = getelementptr i8, ptr %7, i32 9
  store i8 %34, ptr %35, align 1
  %36 = lshr i32 %29, 16
  %37 = trunc i32 %36 to i8
  %38 = getelementptr i8, ptr %7, i32 10
  store i8 %37, ptr %38, align 1
  %39 = lshr i32 %29, 24
  %40 = trunc i32 %39 to i8
  %41 = getelementptr i8, ptr %7, i32 11
  store i8 %40, ptr %41, align 1
  %42 = getelementptr i8, ptr %7, i32 12
  %43 = getelementptr inbounds %struct.dma_pl330_desc, ptr %27, i32 0, i32 2, i32 1
  %44 = load i32, ptr %43, align 4
  store i8 -68, ptr %42, align 1
  %45 = getelementptr i8, ptr %7, i32 13
  store i8 2, ptr %45, align 1
  %46 = trunc i32 %44 to i8
  %47 = getelementptr i8, ptr %7, i32 14
  store i8 %46, ptr %47, align 1
  %48 = lshr i32 %44, 8
  %49 = trunc i32 %48 to i8
  %50 = getelementptr i8, ptr %7, i32 15
  store i8 %49, ptr %50, align 1
  %51 = lshr i32 %44, 16
  %52 = trunc i32 %51 to i8
  %53 = getelementptr i8, ptr %7, i32 16
  store i8 %52, ptr %53, align 1
  %54 = lshr i32 %44, 24
  %55 = trunc i32 %54 to i8
  %56 = getelementptr i8, ptr %7, i32 17
  store i8 %55, ptr %56, align 1
  br label %57

57:                                               ; preds = %11, %9
  %58 = phi ptr [ %26, %11 ], [ %10, %9 ]
  %59 = getelementptr i8, ptr %7, i32 18
  %60 = load ptr, ptr %58, align 4
  %61 = load i32, ptr %4, align 4
  %62 = getelementptr inbounds %struct.dma_pl330_desc, ptr %60, i32 0, i32 2, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = lshr i32 %61, 1
  %65 = and i32 %64, 7
  %66 = lshr i32 %63, %65
  %67 = lshr i32 %61, 4
  %68 = and i32 %67, 15
  %69 = add nuw nsw i32 %68, 1
  %70 = udiv i32 %66, %69
  %71 = icmp ult i32 %68, %66
  br i1 %71, label %72, label %180

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 18
  br label %74

74:                                               ; preds = %174, %72
  %75 = phi i32 [ 0, %72 ], [ %177, %174 ]
  %76 = phi i32 [ %70, %72 ], [ %178, %174 ]
  %77 = getelementptr i8, ptr %59, i32 %75
  %78 = icmp eq i32 %76, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = tail call fastcc i32 @_bursts(ptr noundef %0, i32 noundef %1, ptr noundef %77, ptr noundef %4, i32 noundef 1) #11
  br label %174

81:                                               ; preds = %74
  %82 = icmp ugt i32 %76, 65535
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = lshr i32 %76, 16
  br label %90

85:                                               ; preds = %81
  %86 = icmp ugt i32 %76, 256
  %87 = lshr i32 %76, 8
  %88 = select i1 %86, i32 %87, i32 0
  %89 = tail call i32 @llvm.umin.i32(i32 %76, i32 256) #11
  br label %90

90:                                               ; preds = %85, %83
  %91 = phi i32 [ %84, %83 ], [ 1, %85 ]
  %92 = phi i32 [ 256, %83 ], [ %88, %85 ]
  %93 = phi i32 [ 256, %83 ], [ %89, %85 ]
  %94 = load ptr, ptr %58, align 4
  %95 = getelementptr inbounds %struct.dma_pl330_desc, ptr %94, i32 0, i32 8
  %96 = load i32, ptr %95, align 4
  switch i32 %96, label %125 [
    i32 1, label %97
    i32 2, label %97
    i32 0, label %118
  ]

97:                                               ; preds = %90, %90
  %98 = load i32, ptr %73, align 4
  %99 = shl i32 %98, 1
  %100 = and i32 %99, 2
  %101 = xor i32 %100, 2
  switch i32 %96, label %106 [
    i32 2, label %102
    i32 1, label %104
  ]

102:                                              ; preds = %97
  %103 = or i32 %101, 4
  br label %114

104:                                              ; preds = %97
  %105 = add nuw nsw i32 %101, 3
  br label %111

106:                                              ; preds = %97
  %107 = add nuw nsw i32 %101, 2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 1139, i32 noundef 9, ptr noundef null) #11
  %108 = load ptr, ptr %58, align 4
  %109 = getelementptr inbounds %struct.dma_pl330_desc, ptr %108, i32 0, i32 8
  %110 = load i32, ptr %109, align 4
  switch i32 %110, label %113 [
    i32 0, label %114
    i32 2, label %114
    i32 1, label %111
  ]

111:                                              ; preds = %106, %104
  %112 = phi i32 [ %105, %104 ], [ %107, %106 ]
  br label %114

113:                                              ; preds = %106
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 1172, i32 noundef 9, ptr noundef null) #11
  br label %114

114:                                              ; preds = %113, %111, %106, %106, %102
  %115 = phi i32 [ %107, %113 ], [ %112, %111 ], [ %107, %106 ], [ %107, %106 ], [ %103, %102 ]
  %116 = phi i32 [ 0, %113 ], [ 2, %111 ], [ 1, %106 ], [ 1, %106 ], [ 1, %102 ]
  %117 = add nuw nsw i32 %116, %115
  br label %126

118:                                              ; preds = %90
  %119 = getelementptr inbounds %struct.dma_pl330_desc, ptr %94, i32 0, i32 3, i32 8
  %120 = load ptr, ptr %119, align 4
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, 15728640
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, i32 4, i32 2
  br label %126

125:                                              ; preds = %90
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 1225, i32 noundef 9, ptr noundef null) #11
  br label %126

126:                                              ; preds = %125, %118, %114
  %127 = phi i32 [ 0, %125 ], [ %117, %114 ], [ %124, %118 ]
  %128 = icmp eq i32 %92, 0
  %129 = select i1 %128, i32 251, i32 247
  %130 = sdiv i32 %129, %127
  %131 = tail call i32 @llvm.smin.i32(i32 %130, i32 %91) #11
  br i1 %128, label %138, label %132

132:                                              ; preds = %126
  br i1 %8, label %133, label %157

133:                                              ; preds = %132
  %134 = trunc i32 %92 to i8
  store i8 32, ptr %77, align 1
  %135 = add i8 %134, -1
  %136 = getelementptr i8, ptr %77, i32 1
  store i8 %135, ptr %136, align 1
  %137 = getelementptr i8, ptr %77, i32 2
  br label %143

138:                                              ; preds = %126
  br i1 %8, label %143, label %139

139:                                              ; preds = %138
  %140 = getelementptr i8, ptr %77, i32 2
  %141 = tail call fastcc i32 @_bursts(ptr noundef %0, i32 noundef %1, ptr noundef %140, ptr noundef %4, i32 noundef %131) #11
  %142 = add i32 %141, 4
  br label %169

143:                                              ; preds = %138, %133
  %144 = phi ptr [ %137, %133 ], [ %77, %138 ]
  %145 = phi i32 [ 2, %133 ], [ 0, %138 ]
  %146 = trunc i32 %93 to i8
  store i8 34, ptr %144, align 1
  %147 = add i8 %146, -1
  %148 = getelementptr i8, ptr %144, i32 1
  store i8 %147, ptr %148, align 1
  %149 = add nuw nsw i32 %145, 2
  %150 = getelementptr i8, ptr %77, i32 %149
  %151 = tail call fastcc i32 @_bursts(ptr noundef %0, i32 noundef %1, ptr noundef %150, ptr noundef %4, i32 noundef %131) #11
  %152 = add i32 %151, %149
  %153 = getelementptr i8, ptr %77, i32 %152
  %154 = trunc i32 %151 to i8
  store i8 60, ptr %153, align 1
  %155 = getelementptr i8, ptr %153, i32 1
  store i8 %154, ptr %155, align 1
  %156 = add i32 %152, 2
  br i1 %128, label %169, label %161

157:                                              ; preds = %132
  %158 = getelementptr i8, ptr %77, i32 4
  %159 = tail call fastcc i32 @_bursts(ptr noundef %0, i32 noundef %1, ptr noundef %158, ptr noundef %4, i32 noundef %131) #11
  %160 = add i32 %159, 4
  br label %166

161:                                              ; preds = %143
  %162 = getelementptr i8, ptr %77, i32 %156
  %163 = sub i32 %156, %145
  %164 = trunc i32 %163 to i8
  store i8 56, ptr %162, align 1
  %165 = getelementptr i8, ptr %162, i32 1
  store i8 %164, ptr %165, align 1
  br label %166

166:                                              ; preds = %161, %157
  %167 = phi i32 [ %160, %157 ], [ %152, %161 ]
  %168 = add i32 %167, 4
  br label %169

169:                                              ; preds = %166, %143, %139
  %170 = phi i32 [ %168, %166 ], [ %156, %143 ], [ %142, %139 ]
  %171 = select i1 %128, i32 1, i32 %92
  %172 = mul nuw nsw i32 %171, %93
  %173 = mul nsw i32 %172, %131
  br label %174

174:                                              ; preds = %169, %79
  %175 = phi i32 [ 1, %79 ], [ %173, %169 ]
  %176 = phi i32 [ %80, %79 ], [ %170, %169 ]
  %177 = add i32 %176, %75
  %178 = sub i32 %76, %175
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %74

180:                                              ; preds = %174, %57
  %181 = phi i32 [ 0, %57 ], [ %177, %174 ]
  %182 = shl i32 %70, %65
  %183 = mul i32 %182, %69
  %184 = sub i32 %63, %183
  %185 = lshr i32 %184, %65
  %186 = getelementptr i8, ptr %59, i32 %181
  %187 = icmp eq i32 %185, 0
  br i1 %187, label %258, label %188

188:                                              ; preds = %180
  %189 = load i32, ptr %4, align 4
  %190 = and i32 %189, -3932401
  %191 = add i32 %185, 15
  %192 = and i32 %191, 15
  %193 = shl nuw nsw i32 %192, 4
  %194 = or i32 %190, %193
  %195 = shl nuw nsw i32 %192, 18
  %196 = or i32 %194, %195
  %197 = load ptr, ptr %58, align 4
  %198 = getelementptr inbounds %struct.dma_pl330_desc, ptr %197, i32 0, i32 8
  %199 = load i32, ptr %198, align 4
  switch i32 %199, label %253 [
    i32 1, label %200
    i32 2, label %200
    i32 0, label %218
  ]

200:                                              ; preds = %188, %188
  br i1 %8, label %201, label %214

201:                                              ; preds = %200
  store i8 -68, ptr %186, align 1
  %202 = getelementptr i8, ptr %186, i32 1
  store i8 1, ptr %202, align 1
  %203 = trunc i32 %194 to i8
  %204 = getelementptr i8, ptr %186, i32 2
  store i8 %203, ptr %204, align 1
  %205 = lshr i32 %189, 8
  %206 = trunc i32 %205 to i8
  %207 = getelementptr i8, ptr %186, i32 3
  store i8 %206, ptr %207, align 1
  %208 = lshr i32 %196, 16
  %209 = trunc i32 %208 to i8
  %210 = getelementptr i8, ptr %186, i32 4
  store i8 %209, ptr %210, align 1
  %211 = lshr i32 %189, 24
  %212 = trunc i32 %211 to i8
  %213 = getelementptr i8, ptr %186, i32 5
  store i8 %212, ptr %213, align 1
  br label %214

214:                                              ; preds = %201, %200
  %215 = getelementptr i8, ptr %186, i32 6
  %216 = tail call fastcc i32 @_ldst_peripheral(ptr noundef %0, i32 noundef %1, ptr noundef %215, ptr noundef %4, i32 noundef 1, i32 noundef 1) #11
  %217 = add i32 %216, 6
  br label %258

218:                                              ; preds = %188
  br i1 %8, label %219, label %240

219:                                              ; preds = %218
  store i8 -68, ptr %186, align 1
  %220 = getelementptr i8, ptr %186, i32 1
  store i8 1, ptr %220, align 1
  %221 = trunc i32 %194 to i8
  %222 = getelementptr i8, ptr %186, i32 2
  store i8 %221, ptr %222, align 1
  %223 = lshr i32 %189, 8
  %224 = trunc i32 %223 to i8
  %225 = getelementptr i8, ptr %186, i32 3
  store i8 %224, ptr %225, align 1
  %226 = lshr i32 %196, 16
  %227 = trunc i32 %226 to i8
  %228 = getelementptr i8, ptr %186, i32 4
  store i8 %227, ptr %228, align 1
  %229 = lshr i32 %189, 24
  %230 = trunc i32 %229 to i8
  %231 = getelementptr i8, ptr %186, i32 5
  store i8 %230, ptr %231, align 1
  %232 = load ptr, ptr %58, align 4
  %233 = getelementptr i8, ptr %186, i32 6
  %234 = getelementptr inbounds %struct.dma_pl330_desc, ptr %232, i32 0, i32 3, i32 8
  %235 = load ptr, ptr %234, align 4
  %236 = load i32, ptr %235, align 4
  %237 = and i32 %236, 15728640
  %238 = icmp eq i32 %237, 0
  store i8 4, ptr %233, align 1
  %239 = getelementptr i8, ptr %186, i32 7
  br i1 %238, label %250, label %249

240:                                              ; preds = %218
  %241 = getelementptr inbounds %struct.dma_pl330_desc, ptr %197, i32 0, i32 3, i32 8
  %242 = load ptr, ptr %241, align 4
  %243 = load i32, ptr %242, align 4
  %244 = and i32 %243, 15728640
  %245 = icmp eq i32 %244, 0
  %246 = select i1 %245, i32 10, i32 8
  %247 = add i32 %181, 12
  %248 = add i32 %247, %246
  br label %273

249:                                              ; preds = %219
  store i8 8, ptr %239, align 1
  br label %254

250:                                              ; preds = %219
  store i8 18, ptr %239, align 1
  %251 = getelementptr i8, ptr %186, i32 8
  store i8 8, ptr %251, align 1
  %252 = getelementptr i8, ptr %186, i32 9
  store i8 19, ptr %252, align 1
  br label %254

253:                                              ; preds = %188
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 1276, i32 noundef 9, ptr noundef null) #11
  br label %258

254:                                              ; preds = %250, %249
  %255 = phi i32 [ 10, %250 ], [ 8, %249 ]
  %256 = add i32 %181, 12
  %257 = add i32 %256, %255
  br label %262

258:                                              ; preds = %253, %214, %180
  %259 = phi i32 [ 0, %180 ], [ 0, %253 ], [ %217, %214 ]
  %260 = add i32 %181, 12
  %261 = add i32 %260, %259
  br i1 %8, label %262, label %273

262:                                              ; preds = %258, %254
  %263 = phi i32 [ %257, %254 ], [ %261, %258 ]
  %264 = add i32 %263, 6
  %265 = getelementptr i8, ptr %7, i32 %264
  %266 = getelementptr inbounds %struct.pl330_thread, ptr %2, i32 0, i32 1
  %267 = load i32, ptr %266, align 4
  %268 = trunc i32 %267 to i8
  store i8 52, ptr %265, align 1
  %269 = shl i8 %268, 3
  %270 = getelementptr i8, ptr %265, i32 1
  store i8 %269, ptr %270, align 1
  %271 = add i32 %263, 8
  %272 = getelementptr i8, ptr %7, i32 %271
  store i8 0, ptr %272, align 1
  br label %273

273:                                              ; preds = %262, %258, %240
  %274 = phi i32 [ %263, %262 ], [ %248, %240 ], [ %261, %258 ]
  %275 = add i32 %274, 9
  ret i32 %275
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_bursts(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct._xfer_spec, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dma_pl330_desc, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %60 [
    i32 1, label %10
    i32 2, label %10
    i32 0, label %21
  ]

10:                                               ; preds = %5, %5
  %11 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr %3, align 4
  %16 = and i32 %15, 240
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %14, i1 true, i1 %17
  %19 = zext i1 %18 to i32
  %20 = tail call fastcc i32 @_ldst_peripheral(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %19)
  br label %61

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.dma_pl330_desc, ptr %7, i32 0, i32 3, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 15728640
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq i32 %4, 0
  br i1 %26, label %31, label %28

28:                                               ; preds = %21
  br i1 %27, label %61, label %29

29:                                               ; preds = %28
  %30 = icmp eq i32 %1, 0
  br label %34

31:                                               ; preds = %21
  br i1 %27, label %61, label %32

32:                                               ; preds = %31
  %33 = icmp eq i32 %1, 0
  br label %45

34:                                               ; preds = %42, %29
  %35 = phi i32 [ %4, %29 ], [ %37, %42 ]
  %36 = phi i32 [ 0, %29 ], [ %43, %42 ]
  %37 = add i32 %35, -1
  br i1 %30, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %2, i32 %36
  store i8 4, ptr %39, align 1
  %40 = or i32 %36, 1
  %41 = getelementptr i8, ptr %2, i32 %40
  store i8 8, ptr %41, align 1
  br label %42

42:                                               ; preds = %38, %34
  %43 = add i32 %36, 2
  %44 = icmp eq i32 %37, 0
  br i1 %44, label %61, label %34

45:                                               ; preds = %57, %32
  %46 = phi i32 [ %4, %32 ], [ %48, %57 ]
  %47 = phi i32 [ 0, %32 ], [ %58, %57 ]
  %48 = add i32 %46, -1
  br i1 %33, label %49, label %57

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %2, i32 %47
  store i8 4, ptr %50, align 1
  %51 = or i32 %47, 1
  %52 = getelementptr i8, ptr %2, i32 %51
  store i8 18, ptr %52, align 1
  %53 = or i32 %47, 2
  %54 = getelementptr i8, ptr %2, i32 %53
  store i8 8, ptr %54, align 1
  %55 = or i32 %47, 3
  %56 = getelementptr i8, ptr %2, i32 %55
  store i8 19, ptr %56, align 1
  br label %57

57:                                               ; preds = %49, %45
  %58 = add i32 %47, 4
  %59 = icmp eq i32 %48, 0
  br i1 %59, label %61, label %45

60:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 1225, i32 noundef 9, ptr noundef null) #11
  br label %61

61:                                               ; preds = %60, %57, %42, %31, %28, %10
  %62 = phi i32 [ 0, %60 ], [ %20, %10 ], [ 0, %31 ], [ 0, %28 ], [ %58, %57 ], [ %43, %42 ]
  ret i32 %62
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_ldst_peripheral(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #7 {
  %7 = getelementptr inbounds %struct.pl330_dmac, ptr %0, i32 0, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct._xfer_spec, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dma_pl330_desc, ptr %15, i32 0, i32 9
  %17 = load i8, ptr %16, align 4
  store i8 53, ptr %2, align 1
  %18 = shl i8 %17, 3
  %19 = getelementptr i8, ptr %2, i32 1
  store i8 %18, ptr %19, align 1
  br label %20

20:                                               ; preds = %13, %11, %6
  %21 = phi i32 [ 0, %6 ], [ 2, %11 ], [ 2, %13 ]
  %22 = icmp eq i32 %4, 0
  br i1 %22, label %83, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._xfer_spec, ptr %3, i32 0, i32 1
  %25 = icmp eq i32 %1, 0
  %26 = icmp eq i32 %5, 0
  %27 = select i1 %26, i8 48, i8 50
  %28 = icmp eq i32 %5, 1
  %29 = select i1 %28, i8 39, i8 37
  %30 = select i1 %28, i8 43, i8 41
  br label %31

31:                                               ; preds = %79, %23
  %32 = phi i32 [ %21, %23 ], [ %81, %79 ]
  %33 = phi i32 [ %4, %23 ], [ %34, %79 ]
  %34 = add i32 %33, -1
  br i1 %25, label %35, label %42

35:                                               ; preds = %31
  %36 = load ptr, ptr %24, align 4
  %37 = getelementptr inbounds %struct.dma_pl330_desc, ptr %36, i32 0, i32 9
  %38 = load i8, ptr %37, align 4
  %39 = getelementptr i8, ptr %2, i32 %32
  store i8 %27, ptr %39, align 1
  %40 = shl i8 %38, 3
  %41 = getelementptr i8, ptr %39, i32 1
  store i8 %40, ptr %41, align 1
  br label %42

42:                                               ; preds = %35, %31
  %43 = add i32 %32, 2
  %44 = getelementptr i8, ptr %2, i32 %43
  %45 = load ptr, ptr %24, align 4
  %46 = getelementptr inbounds %struct.dma_pl330_desc, ptr %45, i32 0, i32 8
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dma_pl330_desc, ptr %45, i32 0, i32 9
  %49 = load i8, ptr %48, align 4
  switch i32 %47, label %59 [
    i32 0, label %50
    i32 1, label %50
    i32 2, label %55
  ]

50:                                               ; preds = %42, %42
  br i1 %25, label %51, label %60

51:                                               ; preds = %50
  store i8 4, ptr %44, align 1
  switch i32 %5, label %60 [
    i32 0, label %53
    i32 1, label %52
  ]

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %51
  %54 = phi i8 [ 7, %52 ], [ 5, %51 ]
  store i8 %54, ptr %44, align 1
  br label %60

55:                                               ; preds = %42
  br i1 %25, label %56, label %60

56:                                               ; preds = %55
  store i8 %29, ptr %44, align 1
  %57 = shl i8 %49, 3
  %58 = getelementptr i8, ptr %44, i32 1
  store i8 %57, ptr %58, align 1
  br label %60

59:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 1139, i32 noundef 9, ptr noundef null) #11
  br label %60

60:                                               ; preds = %59, %56, %55, %53, %51, %50
  %61 = phi i32 [ 0, %59 ], [ 1, %50 ], [ 1, %51 ], [ 1, %53 ], [ 2, %55 ], [ 2, %56 ]
  %62 = add i32 %61, %43
  %63 = getelementptr i8, ptr %2, i32 %62
  %64 = load ptr, ptr %24, align 4
  %65 = getelementptr inbounds %struct.dma_pl330_desc, ptr %64, i32 0, i32 8
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dma_pl330_desc, ptr %64, i32 0, i32 9
  %68 = load i8, ptr %67, align 4
  switch i32 %66, label %78 [
    i32 0, label %69
    i32 2, label %69
    i32 1, label %74
  ]

69:                                               ; preds = %60, %60
  br i1 %25, label %70, label %79

70:                                               ; preds = %69
  store i8 8, ptr %63, align 1
  switch i32 %5, label %79 [
    i32 0, label %72
    i32 1, label %71
  ]

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %70
  %73 = phi i8 [ 11, %71 ], [ 9, %70 ]
  store i8 %73, ptr %63, align 1
  br label %79

74:                                               ; preds = %60
  br i1 %25, label %75, label %79

75:                                               ; preds = %74
  store i8 %30, ptr %63, align 1
  %76 = shl i8 %68, 3
  %77 = getelementptr i8, ptr %63, i32 1
  store i8 %76, ptr %77, align 1
  br label %79

78:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 1172, i32 noundef 9, ptr noundef null) #11
  br label %79

79:                                               ; preds = %78, %75, %74, %72, %70, %69
  %80 = phi i32 [ 0, %78 ], [ 1, %69 ], [ 1, %70 ], [ 1, %72 ], [ 2, %74 ], [ 2, %75 ]
  %81 = add i32 %80, %62
  %82 = icmp eq i32 %34, 0
  br i1 %82, label %83, label %31

83:                                               ; preds = %79, %20
  %84 = phi i32 [ %21, %20 ], [ %81, %79 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pl330_release_channel(ptr noundef %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %63, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pl330_thread, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4, !range !19
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %63

7:                                                ; preds = %3
  tail call fastcc void @_stop(ptr noundef nonnull %0)
  %8 = getelementptr inbounds %struct.pl330_thread, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 1, %9
  %11 = getelementptr %struct.pl330_thread, ptr %0, i32 0, i32 4, i32 %10, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.dma_pl330_desc, ptr %12, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dma_pl330_chan, ptr %16, i32 0, i32 6
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #11
  %21 = getelementptr inbounds %struct.dma_pl330_desc, ptr %12, i32 0, i32 4
  store i32 3, ptr %21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #11
  %22 = getelementptr inbounds %struct.tasklet_struct, ptr %16, i32 0, i32 1
  %23 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %22) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  tail call void @__tasklet_schedule(ptr noundef nonnull %16) #11
  br label %26

26:                                               ; preds = %25, %18, %14, %7
  %27 = load i32, ptr %8, align 4
  %28 = getelementptr %struct.pl330_thread, ptr %0, i32 0, i32 4, i32 %27, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.dma_pl330_desc, ptr %29, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.dma_pl330_chan, ptr %33, i32 0, i32 6
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #11
  %38 = getelementptr inbounds %struct.dma_pl330_desc, ptr %29, i32 0, i32 4
  store i32 3, ptr %38, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #11
  %39 = getelementptr inbounds %struct.tasklet_struct, ptr %33, i32 0, i32 1
  %40 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %39) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  tail call void @__tasklet_schedule(ptr noundef nonnull %33) #11
  br label %43

43:                                               ; preds = %42, %35, %31, %26
  %44 = getelementptr inbounds %struct.pl330_thread, ptr %0, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.pl330_thread, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp sgt i32 %45, -1
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.pl330_dmac, ptr %47, i32 0, i32 5, i32 4
  %51 = load i8, ptr %50, align 4
  %52 = and i8 %51, 63
  %53 = zext i8 %52 to i32
  %54 = icmp ult i32 %45, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = getelementptr %struct.pl330_dmac, ptr %47, i32 0, i32 7, i32 %45
  %57 = load i32, ptr %56, align 4
  %58 = load i8, ptr %0, align 4
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 -1, ptr %56, align 4
  br label %62

62:                                               ; preds = %61, %55, %49, %43
  store i8 1, ptr %4, align 4
  br label %63

63:                                               ; preds = %62, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @pl330_get_desc(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.spinlock, align 4
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 1, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pl330_dmac, ptr %5, i32 0, i32 1
  %10 = getelementptr inbounds %struct.pl330_dmac, ptr %5, i32 0, i32 2
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #11
  %12 = load volatile ptr, ptr %9, align 4
  %13 = icmp eq ptr %12, %9
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #11
  br label %23

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %16, align 4
  %20 = getelementptr inbounds %struct.dma_pl330_desc, ptr %12, i32 0, i32 4
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dma_pl330_desc, ptr %12, i32 0, i32 1, i32 6
  store ptr null, ptr %21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #11
  %22 = icmp eq ptr %12, null
  br i1 %22, label %23, label %56

23:                                               ; preds = %15, %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store ptr %3, ptr %3, align 8
  %24 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %24, align 4
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %26 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 2848, i32 noundef 136) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %55, label %28

28:                                               ; preds = %23
  %29 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %2) #11
  %30 = getelementptr %struct.dma_pl330_desc, ptr %26, i32 0, i32 3, i32 7
  store i32 0, ptr %30, align 8
  %31 = getelementptr %struct.dma_pl330_desc, ptr %26, i32 0, i32 3, i32 6
  store i32 0, ptr %31, align 4
  %32 = getelementptr %struct.dma_pl330_desc, ptr %26, i32 0, i32 3, i32 5
  store i32 0, ptr %32, align 8
  %33 = getelementptr %struct.dma_pl330_desc, ptr %26, i32 0, i32 1, i32 4
  store ptr @pl330_tx_submit, ptr %33, align 8
  store volatile ptr %26, ptr %26, align 8
  %34 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %35 = load ptr, ptr %24, align 4
  store ptr %26, ptr %24, align 4
  store ptr %3, ptr %26, align 8
  store ptr %35, ptr %34, align 4
  store volatile ptr %26, ptr %35, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %2, i32 noundef %29) #11
  %36 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %2) #11
  %37 = load volatile ptr, ptr %3, align 8
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %2, i32 noundef %36) #11
  br label %51

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %37, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  store volatile ptr %37, ptr %37, align 4
  store ptr %37, ptr %41, align 4
  %45 = getelementptr inbounds %struct.dma_pl330_desc, ptr %37, i32 0, i32 4
  store i32 1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dma_pl330_desc, ptr %37, i32 0, i32 1, i32 6
  store ptr null, ptr %46, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %2, i32 noundef %36) #11
  %47 = icmp eq ptr %37, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load volatile ptr, ptr %3, align 8
  %50 = icmp eq ptr %49, %3
  br i1 %50, label %53, label %51, !prof !60

51:                                               ; preds = %48, %40, %39
  %52 = phi ptr [ null, %39 ], [ null, %40 ], [ %37, %48 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 2599, i32 noundef 9, ptr noundef null) #11
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi ptr [ %37, %48 ], [ %52, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %56

55:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %78

56:                                               ; preds = %53, %15
  %57 = phi ptr [ %12, %15 ], [ %54, %53 ]
  %58 = getelementptr inbounds %struct.dma_pl330_desc, ptr %57, i32 0, i32 7
  store ptr %0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.dma_pl330_desc, ptr %57, i32 0, i32 1
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dma_pl330_desc, ptr %57, i32 0, i32 1, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %61, 2
  store i32 %62, ptr %60, align 4
  %63 = icmp eq ptr %8, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.dma_pl330_chan, ptr %0, i32 0, i32 1, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 31
  br label %69

69:                                               ; preds = %64, %56
  %70 = phi i8 [ %68, %64 ], [ 0, %56 ]
  %71 = getelementptr inbounds %struct.dma_pl330_desc, ptr %57, i32 0, i32 9
  %72 = load i8, ptr %71, align 4
  %73 = and i8 %72, -32
  %74 = or i8 %73, %70
  store i8 %74, ptr %71, align 4
  %75 = load ptr, ptr %4, align 4
  %76 = getelementptr inbounds %struct.pl330_dmac, ptr %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.dma_pl330_desc, ptr %57, i32 0, i32 3, i32 8
  store ptr %76, ptr %77, align 4
  call void @dma_async_tx_descriptor_init(ptr noundef %59, ptr noundef %6) #11
  br label %78

78:                                               ; preds = %69, %55
  %79 = phi ptr [ %57, %69 ], [ null, %55 ]
  ret ptr %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl330_debugfs_open(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @pl330_debugfs_show, ptr noundef %4) #11
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl330_debugfs_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pl330_dmac, ptr %4, i32 0, i32 5, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 21
  %8 = and i32 %7, 15
  %9 = getelementptr inbounds %struct.pl330_dmac, ptr %4, i32 0, i32 16
  %10 = load i32, ptr %9, align 4
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.31) #11
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.32) #11
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.33) #11
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pl330_dmac, ptr %4, i32 0, i32 10
  %14 = icmp sgt i32 %10, 0
  %15 = getelementptr inbounds %struct.pl330_dmac, ptr %4, i32 0, i32 17
  br label %16

16:                                               ; preds = %46, %12
  %17 = phi i32 [ 0, %12 ], [ %47, %46 ]
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr %struct.pl330_thread, ptr %18, i32 %17
  br i1 %14, label %23, label %20

20:                                               ; preds = %16
  %21 = load i8, ptr %19, align 4
  %22 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %22) #11
  br label %44

23:                                               ; preds = %16
  %24 = load ptr, ptr %15, align 4
  br label %25

25:                                               ; preds = %36, %23
  %26 = phi i32 [ -1, %23 ], [ %37, %36 ]
  %27 = phi i32 [ 0, %23 ], [ %38, %36 ]
  %28 = getelementptr %struct.dma_pl330_chan, ptr %24, i32 %27, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load i8, ptr %19, align 4
  %33 = load i8, ptr %29, align 4
  %34 = icmp eq i8 %32, %33
  %35 = select i1 %34, i32 %27, i32 %26
  br label %36

36:                                               ; preds = %31, %25
  %37 = phi i32 [ %26, %25 ], [ %35, %31 ]
  %38 = add nuw nsw i32 %27, 1
  %39 = icmp eq i32 %38, %10
  br i1 %39, label %40, label %25

40:                                               ; preds = %36
  %41 = load i8, ptr %19, align 4
  %42 = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %42) #11
  %43 = icmp eq i32 %37, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %20
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.35) #11
  br label %46

45:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %37) #11
  br label %46

46:                                               ; preds = %45, %44
  %47 = add nuw nsw i32 %17, 1
  %48 = icmp eq i32 %47, %8
  br i1 %48, label %49, label %16

49:                                               ; preds = %46, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{i64 911434, i64 2148401405, i64 2148401431, i64 2148401478, i64 2148401500, i64 2148401528, i64 2148401548}
!9 = !{i64 2148412820, i64 2148412846, i64 2148412875, i64 2148412909, i64 2148412940, i64 2148412963}
!10 = !{i64 3953711}
!11 = !{i64 2153839638}
!12 = !{i64 2153839959}
!13 = !{i64 2153841064}
!14 = !{i64 2153841449}
!15 = !{i64 2153841770}
!16 = !{i64 2153842668}
!17 = !{i64 2153842856}
!18 = !{i64 3953293}
!19 = !{i8 0, i8 2}
!20 = !{i64 2153845667}
!21 = !{i64 2153845998}
!22 = !{i64 2153846332}
!23 = !{i64 2153846663}
!24 = !{i64 2153847005}
!25 = !{i64 2153847330}
!26 = !{i64 2153847682}
!27 = !{i64 2153848015}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i32 0, i32 33}
!30 = !{i64 2153817439}
!31 = !{i64 2153879987}
!32 = !{i64 2153880407}
!33 = !{i64 2149080038}
!34 = !{i64 2149075862}
!35 = !{i64 2149075937, i64 2149075964, i64 2149076011, i64 2149076033, i64 2149076061, i64 2149076081}
!36 = !{i64 2149103041}
!37 = !{i64 2153816503, i64 2153816990, i64 2153816540, i64 2153816596, i64 2153816630, i64 2153816654, i64 2153816695, i64 2153816716, i64 2153816744, i64 2153816778}
!38 = !{i64 2153826113}
!39 = !{i64 2153825148}
!40 = !{i64 2153825564}
!41 = !{i64 2153826451}
!42 = !{i64 2153826293}
!43 = !{i64 2153822738}
!44 = !{i64 2153822993}
!45 = !{i64 2153822835}
!46 = !{i64 2153823859}
!47 = !{i64 2153824234}
!48 = !{i64 2153824542}
!49 = !{i64 2153826675}
!50 = !{i64 2153827023}
!51 = !{i64 2153829371}
!52 = !{i64 2153829213}
!53 = !{i64 2153829692}
!54 = !{i64 2153829534}
!55 = !{i64 2153830097}
!56 = !{i64 2153829939}
!57 = !{i64 2153828542}
!58 = !{i64 2153829013}
!59 = !{i64 2153838581}
!60 = !{!"branch_weights", i32 2000, i32 1}
